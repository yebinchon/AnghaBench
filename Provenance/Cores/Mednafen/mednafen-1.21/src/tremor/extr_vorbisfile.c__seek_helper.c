
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ogg_int64_t ;
struct TYPE_4__ {int (* seek_func ) (scalar_t__,scalar_t__,int ) ;} ;
struct TYPE_5__ {scalar_t__ offset; int oy; scalar_t__ datasource; TYPE_1__ callbacks; } ;
typedef TYPE_2__ OggVorbis_File ;


 int OV_EFAULT ;
 int OV_EREAD ;
 int SEEK_SET ;
 int ogg_sync_reset (int *) ;
 int stub1 (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int _seek_helper(OggVorbis_File *vf,ogg_int64_t offset){
  if(vf->datasource){

    if(vf->offset != offset){
      if(!(vf->callbacks.seek_func)||
         (vf->callbacks.seek_func)(vf->datasource, offset, SEEK_SET) == -1)
        return OV_EREAD;
      vf->offset=offset;
      ogg_sync_reset(&vf->oy);
    }
  }else{

    return OV_EFAULT;
  }
  return 0;
}
