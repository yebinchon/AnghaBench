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
struct TYPE_3__ {int /*<<< orphan*/  ready_state; int /*<<< orphan*/  vb; int /*<<< orphan*/  vd; } ;
typedef  TYPE_1__ OggVorbis_File ;

/* Variables and functions */
 int /*<<< orphan*/  OPENED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(OggVorbis_File *vf){
  FUNC1(&vf->vd);
  FUNC0(&vf->vb);
  vf->ready_state=OPENED;
}