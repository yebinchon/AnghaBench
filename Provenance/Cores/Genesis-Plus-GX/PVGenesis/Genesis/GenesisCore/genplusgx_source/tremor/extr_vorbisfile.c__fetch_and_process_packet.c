
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int header_len; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ ogg_page ;
struct TYPE_18__ {int granulepos; int bytes; int e_o_s; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ ogg_packet ;
typedef int ogg_int64_t ;
struct TYPE_19__ {scalar_t__ ready_state; int bittrack; int current_link; int pcm_offset; scalar_t__ current_serialno; int links; scalar_t__* serialnos; int os; int vc; int vi; scalar_t__ seekable; scalar_t__* pcmlengths; int vd; int samptrack; int vb; } ;
typedef TYPE_3__ OggVorbis_File ;


 scalar_t__ INITSET ;
 scalar_t__ OPENED ;
 int OV_EBADLINK ;
 int OV_EFAULT ;
 int OV_EOF ;
 int OV_HOLE ;
 scalar_t__ STREAMSET ;
 int _decode_clear (TYPE_3__*) ;
 int _fetch_headers (TYPE_3__*,int ,int ,scalar_t__*,TYPE_1__*) ;
 int _get_next_page (TYPE_3__*,TYPE_1__*,int) ;
 int _make_decode_ready (TYPE_3__*) ;
 int ogg_packet_release (TYPE_2__*) ;
 int ogg_page_release (TYPE_1__*) ;
 scalar_t__ ogg_page_serialno (TYPE_1__*) ;
 int ogg_stream_packetout (int ,TYPE_2__*) ;
 int ogg_stream_pagein (int ,TYPE_1__*) ;
 int ogg_stream_reset_serialno (int ,scalar_t__) ;
 int vorbis_comment_clear (int ) ;
 int vorbis_info_clear (int ) ;
 int vorbis_synthesis (int *,TYPE_2__*,int) ;
 int vorbis_synthesis_blockin (int *,int *) ;
 int vorbis_synthesis_pcmout (int *,int *) ;

__attribute__((used)) static int _fetch_and_process_packet(OggVorbis_File *vf,
         int readp,
         int spanp){
  ogg_page og={0,0,0,0};
  ogg_packet op={0,0,0,0,0,0};
  int ret=0;



  while(1){



    if(vf->ready_state==INITSET){
      while(1) {
 int result=ogg_stream_packetout(vf->os,&op);
 ogg_int64_t granulepos;

 if(result<0){
   ret=OV_HOLE;
   goto cleanup;
 }
 if(result>0){

   granulepos=op.granulepos;
   if(!vorbis_synthesis(&vf->vb,&op,1)){
     {
       int oldsamples=vorbis_synthesis_pcmout(&vf->vd,((void*)0));


       if(oldsamples){
  ret=OV_EFAULT;
  goto cleanup;
       }

       vorbis_synthesis_blockin(&vf->vd,&vf->vb);
       vf->samptrack+=vorbis_synthesis_pcmout(&vf->vd,((void*)0))-oldsamples;
       vf->bittrack+=op.bytes*8;
     }


     if(granulepos!=-1 && !op.e_o_s){
       int link=(vf->seekable?vf->current_link:0);
       int i,samples;
       if(vf->seekable && link>0)
  granulepos-=vf->pcmlengths[link*2];
       if(granulepos<0)granulepos=0;




       samples=vorbis_synthesis_pcmout(&vf->vd,((void*)0));

       granulepos-=samples;
       for(i=0;i<link;i++)
         granulepos+=vf->pcmlengths[i*2+1];
       vf->pcm_offset=granulepos;
     }
     ret=1;
     goto cleanup;
   }
 }
 else
   break;
      }
    }

    if(vf->ready_state>=OPENED){
      int ret;
      if(!readp){
 ret=0;
 goto cleanup;
      }
      if((ret=_get_next_page(vf,&og,-1))<0){
 ret=OV_EOF;
 goto cleanup;
      }



      vf->bittrack+=og.header_len*8;


      if(vf->ready_state==INITSET){
 if(vf->current_serialno!=ogg_page_serialno(&og)){
   if(!spanp){
     ret=OV_EOF;
     goto cleanup;
   }

   _decode_clear(vf);

   if(!vf->seekable){
     vorbis_info_clear(vf->vi);
     vorbis_comment_clear(vf->vc);
   }
 }
      }
    }
    if(vf->ready_state!=INITSET){
      int link;

      if(vf->ready_state<STREAMSET){
 if(vf->seekable){
   vf->current_serialno=ogg_page_serialno(&og);




   for(link=0;link<vf->links;link++)
     if(vf->serialnos[link]==vf->current_serialno)break;
   if(link==vf->links){
     ret=OV_EBADLINK;

     goto cleanup;
   }

   vf->current_link=link;

   ogg_stream_reset_serialno(vf->os,vf->current_serialno);
   vf->ready_state=STREAMSET;

 }else{



   int ret=_fetch_headers(vf,vf->vi,vf->vc,&vf->current_serialno,&og);
   if(ret) goto cleanup;
   vf->current_link++;
   link=0;
 }
      }

      _make_decode_ready(vf);
    }
    ogg_stream_pagein(vf->os,&og);
  }
 cleanup:
  ogg_packet_release(&op);
  ogg_page_release(&og);
  return ret;
}
