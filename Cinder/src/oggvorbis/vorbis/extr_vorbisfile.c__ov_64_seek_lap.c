
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int channels; } ;
typedef TYPE_1__ vorbis_info ;
typedef int ogg_int64_t ;
struct TYPE_15__ {scalar_t__ ready_state; int vd; } ;
typedef TYPE_2__ OggVorbis_File ;


 scalar_t__ OPENED ;
 int OV_EINVAL ;
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

__attribute__((used)) static int _ov_64_seek_lap(OggVorbis_File *vf,ogg_int64_t pos,
                           int (*localseek)(OggVorbis_File *,ogg_int64_t)){
  vorbis_info *vi;
  float **lappcm;
  float **pcm;
  const float *w1,*w2;
  int n1,n2,ch1,ch2,hs;
  int i,ret;

  if(vf->ready_state<OPENED)return(OV_EINVAL);
  ret=_ov_initset(vf);
  if(ret)return(ret);
  vi=ov_info(vf,-1);
  hs=ov_halfrate_p(vf);

  ch1=vi->channels;
  n1=vorbis_info_blocksize(vi,0)>>(1+hs);
  w1=vorbis_window(&vf->vd,0);




  lappcm=alloca(sizeof(*lappcm)*ch1);
  for(i=0;i<ch1;i++)
    lappcm[i]=alloca(sizeof(**lappcm)*n1);
  _ov_getlap(vf,vi,&vf->vd,lappcm,n1);


  ret=localseek(vf,pos);
  if(ret)return ret;
  ret=_ov_initprime(vf);
  if(ret)return(ret);


  vi=ov_info(vf,-1);
  ch2=vi->channels;
  n2=vorbis_info_blocksize(vi,0)>>(1+hs);
  w2=vorbis_window(&vf->vd,0);


  vorbis_synthesis_lapout(&vf->vd,&pcm);


  _ov_splice(pcm,lappcm,n1,n2,ch1,ch2,w1,w2);


  return(0);
}
