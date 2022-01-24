#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vorbis_dsp_state ;
struct TYPE_4__ {scalar_t__ ready_state; int /*<<< orphan*/  vd; } ;
typedef  TYPE_1__ OggVorbis_File ;

/* Variables and functions */
 scalar_t__ INITSET ; 
 int OV_HOLE ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(OggVorbis_File *vf){
  vorbis_dsp_state *vd=&vf->vd;
  while(1){
    if(vf->ready_state==INITSET)
      if(FUNC1(vd,NULL))break;

    /* suck in another packet */
    {
      int ret=FUNC0(vf,NULL,1,0);
      if(ret<0 && ret!=OV_HOLE)return(ret);
    }
  }
  return 0;
}