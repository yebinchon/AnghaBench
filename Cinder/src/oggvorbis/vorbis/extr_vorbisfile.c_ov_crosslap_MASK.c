#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int channels; } ;
typedef  TYPE_1__ vorbis_info ;
struct TYPE_14__ {scalar_t__ ready_state; int /*<<< orphan*/  vd; } ;
typedef  TYPE_2__ OggVorbis_File ;

/* Variables and functions */
 scalar_t__ OPENED ; 
 int OV_EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,float*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,float**,int) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (float**,float**,int,int,int,int,float const*,float const*) ; 
 void* FUNC5 (int) ; 
 int FUNC6 (TYPE_2__*) ; 
 TYPE_1__* FUNC7 (TYPE_2__*,int) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,float***) ; 
 float* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC11(OggVorbis_File *vf1, OggVorbis_File *vf2){
  vorbis_info *vi1,*vi2;
  float **lappcm;
  float **pcm;
  const float *w1,*w2;
  int n1,n2,i,ret,hs1,hs2;

  if(vf1==vf2)return(0); /* degenerate case */
  if(vf1->ready_state<OPENED)return(OV_EINVAL);
  if(vf2->ready_state<OPENED)return(OV_EINVAL);

  /* the relevant overlap buffers must be pre-checked and pre-primed
     before looking at settings in the event that priming would cross
     a bitstream boundary.  So, do it now */

  ret=FUNC3(vf1);
  if(ret)return(ret);
  ret=FUNC2(vf2);
  if(ret)return(ret);

  vi1=FUNC7(vf1,-1);
  vi2=FUNC7(vf2,-1);
  hs1=FUNC6(vf1);
  hs2=FUNC6(vf2);

  lappcm=FUNC5(sizeof(*lappcm)*vi1->channels);
  n1=FUNC8(vi1,0)>>(1+hs1);
  n2=FUNC8(vi2,0)>>(1+hs2);
  w1=FUNC10(&vf1->vd,0);
  w2=FUNC10(&vf2->vd,0);

  for(i=0;i<vi1->channels;i++)
    lappcm[i]=FUNC5(sizeof(**lappcm)*n1);

  FUNC1(vf1,vi1,&vf1->vd,lappcm,n1);

  /* have a lapping buffer from vf1; now to splice it into the lapping
     buffer of vf2 */
  /* consolidate and expose the buffer. */
  FUNC9(&vf2->vd,&pcm);

#if 0
  _analysis_output_always("pcmL",0,pcm[0],n1*2,0,0,0);
  _analysis_output_always("pcmR",0,pcm[1],n1*2,0,0,0);
#endif

  /* splice */
  FUNC4(pcm,lappcm,n1,n2,vi1->channels,vi2->channels,w1,w2);

  /* done */
  return(0);
}