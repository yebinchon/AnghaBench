
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vorbis_info ;
typedef int vorbis_comment ;
typedef int ogg_uint32_t ;
typedef int ogg_page ;
typedef int ogg_packet ;
typedef int ogg_int64_t ;
struct TYPE_8__ {scalar_t__ serialno; } ;
struct TYPE_7__ {scalar_t__ ready_state; TYPE_2__ os; } ;
typedef TYPE_1__ OggVorbis_File ;


 int CHUNKSIZE ;
 void* OPENED ;
 int OV_EBADHEADER ;
 int OV_ENOTVORBIS ;
 int OV_EREAD ;
 scalar_t__ STREAMSET ;
 int _add_serialno (int *,int **,int*) ;
 scalar_t__ _get_next_page (TYPE_1__*,int *,int ) ;
 scalar_t__ _lookup_page_serialno (int *,int *,int) ;
 int _ogg_free (int *) ;
 scalar_t__ ogg_page_bos (int *) ;
 scalar_t__ ogg_page_serialno (int *) ;
 int ogg_stream_packetout (TYPE_2__*,int *) ;
 int ogg_stream_pagein (TYPE_2__*,int *) ;
 int ogg_stream_reset_serialno (TYPE_2__*,scalar_t__) ;
 int vorbis_comment_clear (int *) ;
 int vorbis_comment_init (int *) ;
 int vorbis_info_clear (int *) ;
 int vorbis_info_init (int *) ;
 int vorbis_synthesis_headerin (int *,int *,int *) ;
 scalar_t__ vorbis_synthesis_idheader (int *) ;

__attribute__((used)) static int _fetch_headers(OggVorbis_File *vf,vorbis_info *vi,vorbis_comment *vc,
                          ogg_uint32_t **serialno_list, int *serialno_n,
                          ogg_page *og_ptr){
  ogg_page og;
  ogg_packet op;
  int i,ret;
  int allbos=0;

  if(!og_ptr){
    ogg_int64_t llret=_get_next_page(vf,&og,CHUNKSIZE);
    if(llret==OV_EREAD)return(OV_EREAD);
    if(llret<0)return(OV_ENOTVORBIS);
    og_ptr=&og;
  }

  vorbis_info_init(vi);
  vorbis_comment_init(vc);
  vf->ready_state=OPENED;




  while(ogg_page_bos(og_ptr)){
    if(serialno_list){
      if(_lookup_page_serialno(og_ptr,*serialno_list,*serialno_n)){

        if(*serialno_list)_ogg_free(*serialno_list);
        *serialno_list=0;
        *serialno_n=0;
        ret=OV_EBADHEADER;
        goto bail_header;
      }

      _add_serialno(og_ptr,serialno_list,serialno_n);
    }

    if(vf->ready_state<STREAMSET){


      ogg_stream_reset_serialno(&vf->os,ogg_page_serialno(og_ptr));
      ogg_stream_pagein(&vf->os,og_ptr);

      if(ogg_stream_packetout(&vf->os,&op) > 0 &&
         vorbis_synthesis_idheader(&op)){

        vf->ready_state=STREAMSET;
        if((ret=vorbis_synthesis_headerin(vi,vc,&op))){
          ret=OV_EBADHEADER;
          goto bail_header;
        }
      }
    }


    {
      ogg_int64_t llret=_get_next_page(vf,og_ptr,CHUNKSIZE);
      if(llret==OV_EREAD){
        ret=OV_EREAD;
        goto bail_header;
      }
      if(llret<0){
        ret=OV_ENOTVORBIS;
        goto bail_header;
      }


      if(vf->ready_state==STREAMSET &&
         vf->os.serialno == ogg_page_serialno(og_ptr)){
        ogg_stream_pagein(&vf->os,og_ptr);
        break;
      }
    }
  }

  if(vf->ready_state!=STREAMSET){
    ret = OV_ENOTVORBIS;
    goto bail_header;
  }

  while(1){

    i=0;
    while(i<2){

      while(i<2){

        int result=ogg_stream_packetout(&vf->os,&op);
        if(result==0)break;
        if(result==-1){
          ret=OV_EBADHEADER;
          goto bail_header;
        }

        if((ret=vorbis_synthesis_headerin(vi,vc,&op)))
          goto bail_header;

        i++;
      }

      while(i<2){
        if(_get_next_page(vf,og_ptr,CHUNKSIZE)<0){
          ret=OV_EBADHEADER;
          goto bail_header;
        }


        if(vf->os.serialno == ogg_page_serialno(og_ptr)){
          ogg_stream_pagein(&vf->os,og_ptr);
          break;
        }



        if(ogg_page_bos(og_ptr)){
          if(allbos){
            ret = OV_EBADHEADER;
            goto bail_header;
          }else
            allbos=1;
        }


      }
    }

    return 0;
  }

 bail_header:
  vorbis_info_clear(vi);
  vorbis_comment_clear(vc);
  vf->ready_state=OPENED;

  return ret;
}
