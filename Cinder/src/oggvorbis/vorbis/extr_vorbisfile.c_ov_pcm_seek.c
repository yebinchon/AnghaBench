
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ogg_page ;
struct TYPE_13__ {int granulepos; } ;
typedef TYPE_1__ ogg_packet ;
typedef int ogg_int64_t ;
struct TYPE_14__ {int current_link; int pcm_offset; int* pcmlengths; scalar_t__ ready_state; int links; long* serialnos; float bittrack; float samptrack; int vd; scalar_t__ vi; int os; void* current_serialno; int vb; } ;
typedef TYPE_2__ OggVorbis_File ;


 int OV_HOLE ;
 scalar_t__ STREAMSET ;
 int _decode_clear (TYPE_2__*) ;
 scalar_t__ _fetch_and_process_packet (TYPE_2__*,int *,int,int) ;
 scalar_t__ _get_next_page (TYPE_2__*,int *,int) ;
 int _make_decode_ready (TYPE_2__*) ;
 scalar_t__ ogg_page_bos (int *) ;
 void* ogg_page_serialno (int *) ;
 int ogg_stream_packetout (int *,int *) ;
 int ogg_stream_packetpeek (int *,TYPE_1__*) ;
 int ogg_stream_pagein (int *,int *) ;
 int ogg_stream_reset_serialno (int *,long) ;
 int ov_pcm_seek_page (TYPE_2__*,int) ;
 long ov_pcm_total (TYPE_2__*,int) ;
 int vorbis_info_blocksize (scalar_t__,int) ;
 int vorbis_packet_blocksize (scalar_t__,TYPE_1__*) ;
 int vorbis_synthesis_blockin (int *,int *) ;
 int vorbis_synthesis_halfrate_p (scalar_t__) ;
 long vorbis_synthesis_pcmout (int *,int *) ;
 int vorbis_synthesis_read (int *,long) ;
 int vorbis_synthesis_trackonly (int *,TYPE_1__*) ;

int ov_pcm_seek(OggVorbis_File *vf,ogg_int64_t pos){
  int thisblock,lastblock=0;
  int ret=ov_pcm_seek_page(vf,pos);
  if(ret<0)return(ret);
  if((ret=_make_decode_ready(vf)))return ret;




  while(1){
    ogg_packet op;
    ogg_page og;

    int ret=ogg_stream_packetpeek(&vf->os,&op);
    if(ret>0){
      thisblock=vorbis_packet_blocksize(vf->vi+vf->current_link,&op);
      if(thisblock<0){
        ogg_stream_packetout(&vf->os,((void*)0));
        continue;
      }
      if(lastblock)vf->pcm_offset+=(lastblock+thisblock)>>2;

      if(vf->pcm_offset+((thisblock+
                          vorbis_info_blocksize(vf->vi,1))>>2)>=pos)break;


      ogg_stream_packetout(&vf->os,((void*)0));
      vorbis_synthesis_trackonly(&vf->vb,&op);


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
      if(ogg_page_bos(&og))_decode_clear(vf);

      if(vf->ready_state<STREAMSET){
        long serialno=ogg_page_serialno(&og);
        int link;

        for(link=0;link<vf->links;link++)
          if(vf->serialnos[link]==serialno)break;
        if(link==vf->links) continue;
        vf->current_link=link;

        vf->ready_state=STREAMSET;
        vf->current_serialno=ogg_page_serialno(&og);
        ogg_stream_reset_serialno(&vf->os,serialno);
        ret=_make_decode_ready(vf);
        if(ret)return ret;
        lastblock=0;
      }

      ogg_stream_pagein(&vf->os,&og);
    }
  }

  vf->bittrack=0.f;
  vf->samptrack=0.f;


  {


    int hs=vorbis_synthesis_halfrate_p(vf->vi);
    while(vf->pcm_offset<((pos>>hs)<<hs)){
      ogg_int64_t target=(pos-vf->pcm_offset)>>hs;
      long samples=vorbis_synthesis_pcmout(&vf->vd,((void*)0));

      if(samples>target)samples=target;
      vorbis_synthesis_read(&vf->vd,samples);
      vf->pcm_offset+=samples<<hs;

      if(samples<target)
        if(_fetch_and_process_packet(vf,((void*)0),1,1)<=0)
          vf->pcm_offset=ov_pcm_total(vf,-1);
    }
  }
  return 0;
}
