
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ready_state; int * datasource; scalar_t__ seekable; } ;
typedef TYPE_1__ OggVorbis_File ;


 scalar_t__ OPENED ;
 int _open_seekable2 (TYPE_1__*) ;
 int ov_clear (TYPE_1__*) ;

__attribute__((used)) static int _ov_open2(OggVorbis_File *vf){
  if(vf->ready_state < OPENED)
    vf->ready_state=OPENED;
  if(vf->seekable){
    int ret=_open_seekable2(vf);
    if(ret){
      vf->datasource=((void*)0);
      ov_clear(vf);
    }
    return(ret);
  }
  return 0;
}
