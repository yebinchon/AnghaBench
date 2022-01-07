
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ready_state; } ;
typedef TYPE_1__ OggVorbis_File ;


 int OV_EINVAL ;
 scalar_t__ PARTOPEN ;
 int _ov_open2 (TYPE_1__*) ;

int ov_test_open(OggVorbis_File *vf){
  if(vf->ready_state!=PARTOPEN)return(OV_EINVAL);
  return _ov_open2(vf);
}
