
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ ogg_page ;
struct TYPE_20__ {int granulepos; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ ogg_packet ;
typedef long ogg_int64_t ;
struct TYPE_21__ {int current_link; long pcm_offset; long* pcmlengths; scalar_t__ current_serialno; scalar_t__ ready_state; int links; scalar_t__* serialnos; int vd; scalar_t__ samptrack; scalar_t__ bittrack; int os; int vb; scalar_t__ vi; } ;
typedef TYPE_3__ OggVorbis_File ;


 int OV_EBADLINK ;
 int OV_HOLE ;
 scalar_t__ STREAMSET ;
 int _decode_clear (TYPE_3__*) ;
 scalar_t__ _fetch_and_process_packet (TYPE_3__*,int,int) ;
 scalar_t__ _get_next_page (TYPE_3__*,TYPE_1__*,int) ;
 int _make_decode_ready (TYPE_3__*) ;
 int ogg_packet_release (TYPE_2__*) ;
 int ogg_page_release (TYPE_1__*) ;
 scalar_t__ ogg_page_serialno (TYPE_1__*) ;
 int ogg_stream_packetout (int ,int *) ;
 int ogg_stream_packetpeek (int ,TYPE_2__*) ;
 int ogg_stream_pagein (int ,TYPE_1__*) ;
 int ogg_stream_reset_serialno (int ,scalar_t__) ;
 int ov_pcm_seek_page (TYPE_3__*,long) ;
 long ov_pcm_total (TYPE_3__*,int) ;
 int vorbis_info_blocksize (scalar_t__,int) ;
 int vorbis_packet_blocksize (scalar_t__,TYPE_2__*) ;
 int vorbis_synthesis (int *,TYPE_2__*,int ) ;
 int vorbis_synthesis_blockin (int *,int *) ;
 long vorbis_synthesis_pcmout (int *,int *) ;
 int vorbis_synthesis_read (int *,long) ;

int ov_pcm_seek(OggVorbis_File *vf,ogg_int64_t pos){
  ogg_packet op={0,0,0,0,0,0};
  ogg_page og={0,0,0,0};
  int thisblock,lastblock=0;
  int ret=ov_pcm_seek_page(vf,pos);
  if(ret<0)return(ret);
  _make_decode_ready(vf);




  while(1){

    int ret=ogg_stream_packetpeek(vf->os,&op);
    if(ret>0){
      thisblock=vorbis_packet_blocksize(vf->vi+vf->current_link,&op);
      if(thisblock<0){
 ogg_stream_packetout(vf->os,((void*)0));
 continue;
      }
      if(lastblock)vf->pcm_offset+=(lastblock+thisblock)>>2;

      if(vf->pcm_offset+((thisblock+
     vorbis_info_blocksize(vf->vi,1))>>2)>=pos)break;


      ogg_stream_packetout(vf->os,((void*)0));
      vorbis_synthesis(&vf->vb,&op,0);


      vorbis_synthesis_blockin(&vf->vd,&vf->vb);




      if(op.granulepos>-1){
 int i;

 vf->pcm_offset=op.granulepos-vf->pcmlengths[vf->current_link*2];
 if(vf->pcm_offset<0)vf->pcm_offset=0;
 for(i=0;i<vf->current_link;i++)
   vf->pcm_offset+=vf->pcmlengths[i*2+1];
      }

      lastblock=thisblock;

    }else{
      if(ret<0 && ret!=OV_HOLE)break;


      if(_get_next_page(vf,&og,-1)<0)break;
      if(vf->current_serialno!=ogg_page_serialno(&og))_decode_clear(vf);

      if(vf->ready_state<STREAMSET){
 int link;

 vf->current_serialno=ogg_page_serialno(&og);
 for(link=0;link<vf->links;link++)
   if(vf->serialnos[link]==vf->current_serialno)break;
 if(link==vf->links){
   ogg_page_release(&og);
   ogg_packet_release(&op);
   return(OV_EBADLINK);
 }
 vf->current_link=link;

 ogg_stream_reset_serialno(vf->os,vf->current_serialno);
 vf->ready_state=STREAMSET;
 _make_decode_ready(vf);
 lastblock=0;
      }

      ogg_stream_pagein(vf->os,&og);
    }
  }

  vf->bittrack=0;
  vf->samptrack=0;


  while(vf->pcm_offset<pos){
    ogg_int64_t target=pos-vf->pcm_offset;
    long samples=vorbis_synthesis_pcmout(&vf->vd,((void*)0));

    if(samples>target)samples=target;
    vorbis_synthesis_read(&vf->vd,samples);
    vf->pcm_offset+=samples;

    if(samples<target)
      if(_fetch_and_process_packet(vf,1,1)<=0)
 vf->pcm_offset=ov_pcm_total(vf,-1);
  }

  ogg_page_release(&og);
  ogg_packet_release(&op);
  return 0;
}
