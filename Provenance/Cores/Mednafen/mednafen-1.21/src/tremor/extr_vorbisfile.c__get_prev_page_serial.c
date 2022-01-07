
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ogg_uint32_t ;
typedef int ogg_page ;
typedef int ogg_int64_t ;
struct TYPE_5__ {int offset; } ;
typedef TYPE_1__ OggVorbis_File ;


 int CHUNKSIZE ;
 int OV_EREAD ;
 int _get_next_page (TYPE_1__*,int *,int) ;
 int _lookup_serialno (int,int*,int) ;
 int _seek_helper (TYPE_1__*,int) ;
 int ogg_page_granulepos (int *) ;
 int ogg_page_serialno (int *) ;

__attribute__((used)) static ogg_int64_t _get_prev_page_serial(OggVorbis_File *vf, ogg_int64_t begin,
                                         ogg_uint32_t *serial_list, int serial_n,
                                         int *serialno, ogg_int64_t *granpos){
  ogg_page og;
  ogg_int64_t end=begin;
  ogg_int64_t ret;

  ogg_int64_t prefoffset=-1;
  ogg_int64_t offset=-1;
  ogg_int64_t ret_serialno=-1;
  ogg_int64_t ret_gran=-1;

  while(offset==-1){
    begin-=CHUNKSIZE;
    if(begin<0)
      begin=0;

    ret=_seek_helper(vf,begin);
    if(ret)return(ret);

    while(vf->offset<end){
      ret=_get_next_page(vf,&og,end-vf->offset);
      if(ret==OV_EREAD)return(OV_EREAD);
      if(ret<0){
        break;
      }else{
        ret_serialno=ogg_page_serialno(&og);
        ret_gran=ogg_page_granulepos(&og);
        offset=ret;

        if((ogg_uint32_t)ret_serialno == *serialno){
          prefoffset=ret;
          *granpos=ret_gran;
        }

        if(!_lookup_serialno((ogg_uint32_t)ret_serialno,serial_list,serial_n)){




          prefoffset=-1;
        }
      }
    }
  }


  if(prefoffset>=0)return(prefoffset);

  *serialno = ret_serialno;
  *granpos = ret_gran;
  return(offset);

}
