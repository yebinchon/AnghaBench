
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ ogg_uint32_t ;
struct TYPE_20__ {int header_len; } ;
typedef TYPE_1__ ogg_page ;
struct TYPE_21__ {int granulepos; int bytes; int e_o_s; } ;
typedef TYPE_2__ ogg_packet ;
typedef int ogg_int64_t ;
struct TYPE_23__ {scalar_t__ serialno; } ;
struct TYPE_22__ {scalar_t__ ready_state; int samptrack; int bittrack; int current_link; int pcm_offset; scalar_t__ current_serialno; int links; scalar_t__* serialnos; TYPE_5__ os; int vc; int vi; scalar_t__ seekable; scalar_t__* pcmlengths; int vd; int vb; } ;
typedef TYPE_3__ OggVorbis_File ;


 scalar_t__ INITSET ;
 scalar_t__ OPENED ;
 int OV_EFAULT ;
 int OV_EOF ;
 int OV_HOLE ;
 scalar_t__ STREAMSET ;
 int _decode_clear (TYPE_3__*) ;
 int _fetch_headers (TYPE_3__*,int ,int ,int *,int *,TYPE_1__*) ;
 int _get_next_page (TYPE_3__*,TYPE_1__*,int) ;
 int _make_decode_ready (TYPE_3__*) ;
 scalar_t__ ogg_page_bos (TYPE_1__*) ;
 scalar_t__ ogg_page_serialno (TYPE_1__*) ;
 int ogg_stream_packetout (TYPE_5__*,TYPE_2__*) ;
 int ogg_stream_pagein (TYPE_5__*,TYPE_1__*) ;
 int ogg_stream_reset_serialno (TYPE_5__*,scalar_t__) ;
 int vorbis_comment_clear (int ) ;
 int vorbis_info_clear (int ) ;
 int vorbis_synthesis (int *,TYPE_2__*) ;
 int vorbis_synthesis_blockin (int *,int *) ;
 int vorbis_synthesis_pcmout (int *,int *) ;

__attribute__((used)) static int _fetch_and_process_packet(OggVorbis_File *vf,
                                     ogg_packet *op_in,
                                     int readp,
                                     int spanp){
  ogg_page og;



  while(1){

    if(vf->ready_state==STREAMSET){
      int ret=_make_decode_ready(vf);
      if(ret<0)return ret;
    }



    if(vf->ready_state==INITSET){
      while(1) {
              ogg_packet op;
              ogg_packet *op_ptr=(op_in?op_in:&op);
        int result=ogg_stream_packetout(&vf->os,op_ptr);
        ogg_int64_t granulepos;

        op_in=((void*)0);
        if(result==-1)return(OV_HOLE);
        if(result>0){

          granulepos=op_ptr->granulepos;
          if(!vorbis_synthesis(&vf->vb,op_ptr)){
            {
              int oldsamples=vorbis_synthesis_pcmout(&vf->vd,((void*)0));


              if(oldsamples)return(OV_EFAULT);

              vorbis_synthesis_blockin(&vf->vd,&vf->vb);
              vf->samptrack+=vorbis_synthesis_pcmout(&vf->vd,((void*)0));
              vf->bittrack+=op_ptr->bytes*8;
            }


            if(granulepos!=-1 && !op_ptr->e_o_s){
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
            return(1);
          }
        }
        else
          break;
      }
    }

    if(vf->ready_state>=OPENED){
      ogg_int64_t ret;

      while(1){






        if(!readp)return(0);
        if((ret=_get_next_page(vf,&og,-1))<0){
          return(OV_EOF);
        }



        vf->bittrack+=og.header_len*8;

        if(vf->ready_state==INITSET){
          if(vf->current_serialno!=ogg_page_serialno(&og)){





            if(ogg_page_bos(&og)){

              if(!spanp)
                return(OV_EOF);

              _decode_clear(vf);

              if(!vf->seekable){
                vorbis_info_clear(vf->vi);
                vorbis_comment_clear(vf->vc);
              }
              break;

            }else
              continue;
          }
        }

        break;
      }
    }
    if(vf->ready_state!=INITSET){
      int link;

      if(vf->ready_state<STREAMSET){
        if(vf->seekable){
          ogg_uint32_t serialno = ogg_page_serialno(&og);





          for(link=0;link<vf->links;link++)
            if(vf->serialnos[link]==serialno)break;

          if(link==vf->links) continue;



          vf->current_serialno=serialno;
          vf->current_link=link;

          ogg_stream_reset_serialno(&vf->os,vf->current_serialno);
          vf->ready_state=STREAMSET;

        }else{



          int ret=_fetch_headers(vf,vf->vi,vf->vc,((void*)0),((void*)0),&og);
          if(ret)return(ret);
          vf->current_serialno=vf->os.serialno;
          vf->current_link++;
          link=0;
        }
      }
    }



    ogg_stream_pagein(&vf->os,&og);

  }
}
