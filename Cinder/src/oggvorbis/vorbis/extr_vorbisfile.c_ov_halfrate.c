
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ogg_int64_t ;
struct TYPE_4__ {scalar_t__ ready_state; int pcm_offset; int links; int * vi; int vb; int vd; } ;
typedef TYPE_1__ OggVorbis_File ;


 int OV_EINVAL ;
 scalar_t__ STREAMSET ;
 int ov_pcm_seek (TYPE_1__*,int) ;
 int vorbis_block_clear (int *) ;
 int vorbis_dsp_clear (int *) ;
 scalar_t__ vorbis_synthesis_halfrate (int *,int) ;

int ov_halfrate(OggVorbis_File *vf,int flag){
  int i;
  if(vf->vi==((void*)0))return OV_EINVAL;
  if(vf->ready_state>STREAMSET){


    vorbis_dsp_clear(&vf->vd);
    vorbis_block_clear(&vf->vb);
    vf->ready_state=STREAMSET;
    if(vf->pcm_offset>=0){
      ogg_int64_t pos=vf->pcm_offset;
      vf->pcm_offset=-1;
      ov_pcm_seek(vf,pos);
    }
  }

  for(i=0;i<vf->links;i++){
    if(vorbis_synthesis_halfrate(vf->vi+i,flag)){
      if(flag) ov_halfrate(vf,0);
      return OV_EINVAL;
    }
  }
  return 0;
}
