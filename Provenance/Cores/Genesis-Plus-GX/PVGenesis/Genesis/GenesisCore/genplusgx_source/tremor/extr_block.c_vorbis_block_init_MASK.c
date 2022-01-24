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
struct TYPE_4__ {int /*<<< orphan*/ * localstore; scalar_t__ localalloc; int /*<<< orphan*/ * vd; } ;
typedef  TYPE_1__ vorbis_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC1(vorbis_dsp_state *v, vorbis_block *vb){
  FUNC0(vb,0,sizeof(*vb));
  vb->vd=v;
  vb->localalloc=0;
  vb->localstore=NULL;
  
  return(0);
}