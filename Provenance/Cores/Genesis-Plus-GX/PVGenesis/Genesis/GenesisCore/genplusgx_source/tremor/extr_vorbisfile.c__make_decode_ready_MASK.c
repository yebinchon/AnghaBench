#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ready_state; scalar_t__ samptrack; scalar_t__ bittrack; int /*<<< orphan*/  vb; int /*<<< orphan*/  vd; scalar_t__ vi; scalar_t__ current_link; scalar_t__ seekable; } ;
typedef  TYPE_1__ OggVorbis_File ;

/* Variables and functions */
 scalar_t__ INITSET ; 
 scalar_t__ STREAMSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC2(OggVorbis_File *vf){
  if(vf->ready_state!=STREAMSET)return;
  if(vf->seekable){
    FUNC1(&vf->vd,vf->vi+vf->current_link);
  }else{
    FUNC1(&vf->vd,vf->vi);
  }    
  FUNC0(&vf->vd,&vf->vb);
  vf->ready_state=INITSET;
  vf->bittrack=0;
  vf->samptrack=0;
  return;
}