
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ogg_page ;
typedef int ogg_int64_t ;
struct TYPE_5__ {int offset; } ;
typedef TYPE_1__ OggVorbis_File ;


 int CHUNKSIZE ;
 int OV_EFAULT ;
 int OV_EREAD ;
 int _get_next_page (TYPE_1__*,int *,int) ;
 int _seek_helper (TYPE_1__*,int) ;

__attribute__((used)) static ogg_int64_t _get_prev_page(OggVorbis_File *vf,ogg_page *og){
  ogg_int64_t begin=vf->offset;
  ogg_int64_t end=begin;
  ogg_int64_t ret;
  ogg_int64_t offset=-1;

  while(offset==-1){
    begin-=CHUNKSIZE;
    if(begin<0)
      begin=0;
    _seek_helper(vf,begin);
    while(vf->offset<end){
      ret=_get_next_page(vf,og,end-vf->offset);
      if(ret==OV_EREAD)return(OV_EREAD);
      if(ret<0){
 break;
      }else{
 offset=ret;
      }
    }
  }


  _seek_helper(vf,offset);
  ret=_get_next_page(vf,og,CHUNKSIZE);
  if(ret<0)

    return(OV_EFAULT);

  return(offset);
}
