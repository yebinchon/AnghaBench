
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int channels; } ;
typedef TYPE_1__ vorbis_info ;
struct TYPE_14__ {scalar_t__ ready_state; int vd; } ;
typedef TYPE_2__ OggVorbis_File ;


 scalar_t__ OPENED ;
 int OV_EINVAL ;
 int _analysis_output_always (char*,int ,float*,int,int ,int ,int ) ;
 int _ov_getlap (TYPE_2__*,TYPE_1__*,int *,float**,int) ;
 int _ov_initprime (TYPE_2__*) ;
 int _ov_initset (TYPE_2__*) ;
 int _ov_splice (float**,float**,int,int,int,int,float const*,float const*) ;
 void* alloca (int) ;
 int ov_halfrate_p (TYPE_2__*) ;
 TYPE_1__* ov_info (TYPE_2__*,int) ;
 int vorbis_info_blocksize (TYPE_1__*,int ) ;
 int vorbis_synthesis_lapout (int *,float***) ;
 float* vorbis_window (int *,int ) ;

int ov_crosslap(OggVorbis_File *vf1, OggVorbis_File *vf2){
  vorbis_info *vi1,*vi2;
  float **lappcm;
  float **pcm;
  const float *w1,*w2;
  int n1,n2,i,ret,hs1,hs2;

  if(vf1==vf2)return(0);
  if(vf1->ready_state<OPENED)return(OV_EINVAL);
  if(vf2->ready_state<OPENED)return(OV_EINVAL);





  ret=_ov_initset(vf1);
  if(ret)return(ret);
  ret=_ov_initprime(vf2);
  if(ret)return(ret);

  vi1=ov_info(vf1,-1);
  vi2=ov_info(vf2,-1);
  hs1=ov_halfrate_p(vf1);
  hs2=ov_halfrate_p(vf2);

  lappcm=alloca(sizeof(*lappcm)*vi1->channels);
  n1=vorbis_info_blocksize(vi1,0)>>(1+hs1);
  n2=vorbis_info_blocksize(vi2,0)>>(1+hs2);
  w1=vorbis_window(&vf1->vd,0);
  w2=vorbis_window(&vf2->vd,0);

  for(i=0;i<vi1->channels;i++)
    lappcm[i]=alloca(sizeof(**lappcm)*n1);

  _ov_getlap(vf1,vi1,&vf1->vd,lappcm,n1);




  vorbis_synthesis_lapout(&vf2->vd,&pcm);







  _ov_splice(pcm,lappcm,n1,n2,vi1->channels,vi2->channels,w1,w2);


  return(0);
}
