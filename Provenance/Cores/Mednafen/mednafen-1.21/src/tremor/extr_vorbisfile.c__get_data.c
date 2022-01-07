
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long (* read_func ) (char*,int,int ,scalar_t__) ;} ;
struct TYPE_5__ {int oy; scalar_t__ datasource; TYPE_1__ callbacks; } ;
typedef TYPE_2__ OggVorbis_File ;


 int READSIZE ;
 scalar_t__ errno ;
 char* ogg_sync_buffer (int *,int ) ;
 int ogg_sync_wrote (int *,long) ;
 long stub1 (char*,int,int ,scalar_t__) ;

__attribute__((used)) static long _get_data(OggVorbis_File *vf){
  errno=0;
  if(!(vf->callbacks.read_func))return(-1);
  if(vf->datasource){
    char *buffer=ogg_sync_buffer(&vf->oy,READSIZE);
    long bytes=(vf->callbacks.read_func)(buffer,1,READSIZE,vf->datasource);
    if(bytes>0)ogg_sync_wrote(&vf->oy,bytes);
    if(bytes==0 && errno)return(-1);
    return(bytes);
  }else
    return(0);
}
