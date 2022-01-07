
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int ogg_stream_state ;
struct TYPE_20__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ ogg_page ;
struct TYPE_21__ {int granulepos; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ ogg_packet ;
typedef scalar_t__ ogg_int64_t ;
struct TYPE_23__ {scalar_t__ codec_setup; } ;
struct TYPE_22__ {scalar_t__ ready_state; scalar_t__ end; int pcm_offset; scalar_t__ current_serialno; size_t current_link; scalar_t__* pcmlengths; int links; scalar_t__* serialnos; scalar_t__ samptrack; scalar_t__ bittrack; int * os; TYPE_4__* vi; int vd; int seekable; } ;
typedef TYPE_3__ OggVorbis_File ;


 scalar_t__ OPENED ;
 int OV_EBADLINK ;
 int OV_EINVAL ;
 int OV_ENOSEEK ;
 scalar_t__ STREAMSET ;
 int _decode_clear (TYPE_3__*) ;
 scalar_t__ _get_next_page (TYPE_3__*,TYPE_1__*,int) ;
 int _seek_helper (TYPE_3__*,scalar_t__) ;
 int ogg_packet_release (TYPE_2__*) ;
 int ogg_page_dup (TYPE_1__*,TYPE_1__*) ;
 int ogg_page_eos (TYPE_1__*) ;
 int ogg_page_release (TYPE_1__*) ;
 scalar_t__ ogg_page_serialno (TYPE_1__*) ;
 int * ogg_stream_create (scalar_t__) ;
 int ogg_stream_destroy (int *) ;
 int ogg_stream_packetout (int *,TYPE_2__*) ;
 int ogg_stream_pagein (int *,TYPE_1__*) ;
 int ogg_stream_reset_serialno (int *,scalar_t__) ;
 int ov_pcm_total (TYPE_3__*,int) ;
 int vorbis_packet_blocksize (TYPE_4__*,TYPE_2__*) ;
 int vorbis_synthesis_restart (int *) ;

int ov_raw_seek(OggVorbis_File *vf,ogg_int64_t pos){
  ogg_stream_state *work_os=((void*)0);
  ogg_page og={0,0,0,0};
  ogg_packet op={0,0,0,0,0,0};

  if(vf->ready_state<OPENED)return(OV_EINVAL);
  if(!vf->seekable)
    return(OV_ENOSEEK);

  if(pos<0 || pos>vf->end)return(OV_EINVAL);





  vf->pcm_offset=-1;
  ogg_stream_reset_serialno(vf->os,
       vf->current_serialno);
  vorbis_synthesis_restart(&vf->vd);

  _seek_helper(vf,pos);
  {
    int lastblock=0;
    int accblock=0;
    int thisblock;
    int eosflag=0;

    work_os=ogg_stream_create(vf->current_serialno);
    while(1){
      if(vf->ready_state>=STREAMSET){

 int result=ogg_stream_packetout(work_os,&op);

 if(result>0){

   if(vf->vi[vf->current_link].codec_setup){
     thisblock=vorbis_packet_blocksize(vf->vi+vf->current_link,&op);
     if(thisblock<0){
       ogg_stream_packetout(vf->os,((void*)0));
       thisblock=0;
     }else{

       if(eosflag)
  ogg_stream_packetout(vf->os,((void*)0));
       else
  if(lastblock)accblock+=(lastblock+thisblock)>>2;
     }

     if(op.granulepos!=-1){
       int i,link=vf->current_link;
       ogg_int64_t granulepos=op.granulepos-vf->pcmlengths[link*2];
       if(granulepos<0)granulepos=0;

       for(i=0;i<link;i++)
  granulepos+=vf->pcmlengths[i*2+1];
       vf->pcm_offset=granulepos-accblock;
       break;
     }
     lastblock=thisblock;
     continue;
   }else
     ogg_stream_packetout(vf->os,((void*)0));
 }
      }

      if(!lastblock){
 if(_get_next_page(vf,&og,-1)<0){
   vf->pcm_offset=ov_pcm_total(vf,-1);
   break;
 }
      }else{

 vf->pcm_offset=-1;
 break;
      }


      if(vf->ready_state>=STREAMSET)
 if(vf->current_serialno!=ogg_page_serialno(&og)){
   _decode_clear(vf);
   ogg_stream_destroy(work_os);
 }

      if(vf->ready_state<STREAMSET){
 int link;

 vf->current_serialno=ogg_page_serialno(&og);
 for(link=0;link<vf->links;link++)
   if(vf->serialnos[link]==vf->current_serialno)break;
 if(link==vf->links)
   goto seek_error;


 vf->current_link=link;

 ogg_stream_reset_serialno(vf->os,vf->current_serialno);
 ogg_stream_reset_serialno(work_os,vf->current_serialno);
 vf->ready_state=STREAMSET;

      }

      {
 ogg_page dup;
 ogg_page_dup(&dup,&og);
 eosflag=ogg_page_eos(&og);
 ogg_stream_pagein(vf->os,&og);
 ogg_stream_pagein(work_os,&dup);
      }
    }
  }

  ogg_packet_release(&op);
  ogg_page_release(&og);
  ogg_stream_destroy(work_os);
  vf->bittrack=0;
  vf->samptrack=0;
  return(0);

 seek_error:
  ogg_packet_release(&op);
  ogg_page_release(&og);


  vf->pcm_offset=-1;
  ogg_stream_destroy(work_os);
  _decode_clear(vf);
  return OV_EBADLINK;
}
