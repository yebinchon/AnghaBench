
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vi; } ;
typedef TYPE_1__ OggVorbis_File ;


 int OV_EINVAL ;
 int vorbis_synthesis_halfrate_p (int *) ;

int ov_halfrate_p(OggVorbis_File *vf){
  if(vf->vi==((void*)0))return OV_EINVAL;
  return vorbis_synthesis_halfrate_p(vf->vi);
}
