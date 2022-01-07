
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ogg_stream_state ;
typedef int ogg_page ;
struct TYPE_11__ {int granulepos; } ;
typedef TYPE_1__ ogg_packet ;
typedef scalar_t__ ogg_int64_t ;
struct TYPE_13__ {scalar_t__ codec_setup; } ;
struct TYPE_12__ {scalar_t__ ready_state; scalar_t__ end; scalar_t__* offsets; size_t current_link; int pcm_offset; long current_serialno; scalar_t__* pcmlengths; int links; long* serialnos; scalar_t__* dataoffsets; float bittrack; float samptrack; int os; TYPE_3__* vi; int vd; int seekable; } ;
typedef TYPE_2__ OggVorbis_File ;


 scalar_t__ OPENED ;
 int OV_EBADLINK ;
 int OV_EINVAL ;
 int OV_ENOSEEK ;
 scalar_t__ STREAMSET ;
 int _decode_clear (TYPE_2__*) ;
 scalar_t__ _get_next_page (TYPE_2__*,int *,int) ;
 int _seek_helper (TYPE_2__*,scalar_t__) ;
 scalar_t__ ogg_page_bos (int *) ;
 int ogg_page_eos (int *) ;
 long ogg_page_serialno (int *) ;
 int ogg_stream_clear (int *) ;
 int ogg_stream_init (int *,long) ;
 int ogg_stream_packetout (int *,TYPE_1__*) ;
 int ogg_stream_pagein (int *,int *) ;
 int ogg_stream_reset (int *) ;
 int ogg_stream_reset_serialno (int *,long) ;
 scalar_t__ ov_pcm_total (TYPE_2__*,int) ;
 int vorbis_packet_blocksize (TYPE_3__*,TYPE_1__*) ;
 int vorbis_synthesis_restart (int *) ;

int ov_raw_seek(OggVorbis_File *vf,ogg_int64_t pos){
  ogg_stream_state work_os;
  int ret;

  if(vf->ready_state<OPENED)return(OV_EINVAL);
  if(!vf->seekable)
    return(OV_ENOSEEK);

  if(pos<0 || pos>vf->end)return(OV_EINVAL);


  if(vf->ready_state>=STREAMSET){
    if(pos<vf->offsets[vf->current_link] || pos>=vf->offsets[vf->current_link+1])
      _decode_clear(vf);
  }





  vf->pcm_offset=-1;
  ogg_stream_reset_serialno(&vf->os,
                            vf->current_serialno);
  vorbis_synthesis_restart(&vf->vd);

  ret=_seek_helper(vf,pos);
  if(ret)goto seek_error;
  {
    ogg_page og;
    ogg_packet op;
    int lastblock=0;
    int accblock=0;
    int thisblock=0;
    int lastflag=0;
    int firstflag=0;
    ogg_int64_t pagepos=-1;

    ogg_stream_init(&work_os,vf->current_serialno);
    ogg_stream_reset(&work_os);



    while(1){
      if(vf->ready_state>=STREAMSET){

        int result=ogg_stream_packetout(&work_os,&op);

        if(result>0){

          if(vf->vi[vf->current_link].codec_setup){
            thisblock=vorbis_packet_blocksize(vf->vi+vf->current_link,&op);
            if(thisblock<0){
              ogg_stream_packetout(&vf->os,((void*)0));
              thisblock=0;
            }else{
              if(lastflag && !firstflag)
                ogg_stream_packetout(&vf->os,((void*)0));
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
              if(vf->pcm_offset<0)vf->pcm_offset=0;
              break;
            }
            lastblock=thisblock;
            continue;
          }else
            ogg_stream_packetout(&vf->os,((void*)0));
        }
      }

      if(!lastblock){
        pagepos=_get_next_page(vf,&og,-1);
        if(pagepos<0){
          vf->pcm_offset=ov_pcm_total(vf,-1);
          break;
        }
      }else{

        vf->pcm_offset=-1;
        break;
      }


      if(vf->ready_state>=STREAMSET){
        if(vf->current_serialno!=ogg_page_serialno(&og)){





          if(ogg_page_bos(&og)){

            _decode_clear(vf);
            ogg_stream_clear(&work_os);
          }
        }
      }

      if(vf->ready_state<STREAMSET){
        int link;
        long serialno = ogg_page_serialno(&og);

        for(link=0;link<vf->links;link++)
          if(vf->serialnos[link]==serialno)break;

        if(link==vf->links) continue;


        vf->current_link=link;
        vf->current_serialno=serialno;
        ogg_stream_reset_serialno(&vf->os,serialno);
        ogg_stream_reset_serialno(&work_os,serialno);
        vf->ready_state=STREAMSET;
        firstflag=(pagepos<=vf->dataoffsets[link]);
      }

      ogg_stream_pagein(&vf->os,&og);
      ogg_stream_pagein(&work_os,&og);
      lastflag=ogg_page_eos(&og);

    }
  }

  ogg_stream_clear(&work_os);
  vf->bittrack=0.f;
  vf->samptrack=0.f;
  return(0);

 seek_error:

  vf->pcm_offset=-1;
  ogg_stream_clear(&work_os);
  _decode_clear(vf);
  return OV_EBADLINK;
}
