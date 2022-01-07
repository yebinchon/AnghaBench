
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ogg_int64_t ;
struct TYPE_3__ {scalar_t__ ready_state; int pcm_offset; } ;
typedef TYPE_1__ OggVorbis_File ;


 scalar_t__ OPENED ;
 int OV_EINVAL ;

ogg_int64_t ov_pcm_tell(OggVorbis_File *vf){
  if(vf->ready_state<OPENED)return(OV_EINVAL);
  return(vf->pcm_offset);
}
