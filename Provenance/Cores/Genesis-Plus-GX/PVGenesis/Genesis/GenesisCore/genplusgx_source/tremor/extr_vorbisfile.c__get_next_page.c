
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ogg_page ;
typedef scalar_t__ ogg_int64_t ;
struct TYPE_4__ {scalar_t__ offset; int oy; } ;
typedef TYPE_1__ OggVorbis_File ;


 scalar_t__ OV_EOF ;
 scalar_t__ OV_EREAD ;
 scalar_t__ OV_FALSE ;
 long _get_data (TYPE_1__*) ;
 long ogg_sync_pageseek (int ,int *) ;

__attribute__((used)) static ogg_int64_t _get_next_page(OggVorbis_File *vf,ogg_page *og,
      ogg_int64_t boundary){
  if(boundary>0)boundary+=vf->offset;
  while(1){
    long more;

    if(boundary>0 && vf->offset>=boundary)return(OV_FALSE);
    more=ogg_sync_pageseek(vf->oy,og);

    if(more<0){

      vf->offset-=more;
    }else{
      if(more==0){

 if(!boundary)return(OV_FALSE);
 {
   long ret=_get_data(vf);
   if(ret==0)return(OV_EOF);
   if(ret<0)return(OV_EREAD);
 }
      }else{


 ogg_int64_t ret=vf->offset;
 vf->offset+=more;
 return(ret);

      }
    }
  }
}
