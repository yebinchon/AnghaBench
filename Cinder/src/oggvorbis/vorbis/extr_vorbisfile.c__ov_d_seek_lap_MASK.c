#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int channels; } ;
typedef  TYPE_1__ vorbis_info ;
struct TYPE_15__ {scalar_t__ ready_state; int /*<<< orphan*/  vd; } ;
typedef  TYPE_2__ OggVorbis_File ;

/* Variables and functions */
 scalar_t__ OPENED ; 
 int OV_EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,float**,int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (float**,float**,int,int,int,int,float const*,float const*) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (TYPE_2__*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,float***) ; 
 float* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(OggVorbis_File *vf,double pos,
                           int (*localseek)(OggVorbis_File *,double)){
  vorbis_info *vi;
  float **lappcm;
  float **pcm;
  const float *w1,*w2;
  int n1,n2,ch1,ch2,hs;
  int i,ret;

  if(vf->ready_state<OPENED)return(OV_EINVAL);
  ret=FUNC2(vf);
  if(ret)return(ret);
  vi=FUNC6(vf,-1);
  hs=FUNC5(vf);

  ch1=vi->channels;
  n1=FUNC7(vi,0)>>(1+hs);
  w1=FUNC9(&vf->vd,0);  /* window arrays from libvorbis are
                                   persistent; even if the decode state
                                   from this link gets dumped, this
                                   window array continues to exist */

  lappcm=FUNC4(sizeof(*lappcm)*ch1);
  for(i=0;i<ch1;i++)
    lappcm[i]=FUNC4(sizeof(**lappcm)*n1);
  FUNC0(vf,vi,&vf->vd,lappcm,n1);

  /* have lapping data; seek and prime the buffer */
  ret=localseek(vf,pos);
  if(ret)return ret;
  ret=FUNC1(vf);
  if(ret)return(ret);

 /* Guard against cross-link changes; they're perfectly legal */
  vi=FUNC6(vf,-1);
  ch2=vi->channels;
  n2=FUNC7(vi,0)>>(1+hs);
  w2=FUNC9(&vf->vd,0);

  /* consolidate and expose the buffer. */
  FUNC8(&vf->vd,&pcm);

  /* splice */
  FUNC3(pcm,lappcm,n1,n2,ch1,ch2,w1,w2);

  /* done */
  return(0);
}