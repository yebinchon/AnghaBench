#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int channels; } ;
typedef  TYPE_1__ vorbis_info ;
typedef  int /*<<< orphan*/  vorbis_dsp_state ;
struct TYPE_7__ {int /*<<< orphan*/  vd; } ;
typedef  TYPE_2__ OggVorbis_File ;

/* Variables and functions */
 int OV_EOF ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,int) ; 
 int /*<<< orphan*/  FUNC2 (float*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,float***) ; 
 int FUNC4 (int /*<<< orphan*/ *,float***) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(OggVorbis_File *vf,vorbis_info *vi,vorbis_dsp_state *vd,
                       float **lappcm,int lapsize){
  int lapcount=0,i;
  float **pcm;

  /* try first to decode the lapping data */
  while(lapcount<lapsize){
    int samples=FUNC4(vd,&pcm);
    if(samples){
      if(samples>lapsize-lapcount)samples=lapsize-lapcount;
      for(i=0;i<vi->channels;i++)
        FUNC1(lappcm[i]+lapcount,pcm[i],sizeof(**pcm)*samples);
      lapcount+=samples;
      FUNC5(vd,samples);
    }else{
    /* suck in another packet */
      int ret=FUNC0(vf,NULL,1,0); /* do *not* span */
      if(ret==OV_EOF)break;
    }
  }
  if(lapcount<lapsize){
    /* failed to get lapping data from normal decode; pry it from the
       postextrapolation buffering, or the second half of the MDCT
       from the last packet */
    int samples=FUNC3(&vf->vd,&pcm);
    if(samples==0){
      for(i=0;i<vi->channels;i++)
        FUNC2(lappcm[i]+lapcount,0,sizeof(**pcm)*lapsize-lapcount);
      lapcount=lapsize;
    }else{
      if(samples>lapsize-lapcount)samples=lapsize-lapcount;
      for(i=0;i<vi->channels;i++)
        FUNC1(lappcm[i]+lapcount,pcm[i],sizeof(**pcm)*samples);
      lapcount+=samples;
    }
  }
}