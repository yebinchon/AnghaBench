#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_7__ {int /*<<< orphan*/  hModel; int /*<<< orphan*/  axis; int /*<<< orphan*/  origin; } ;
typedef  TYPE_2__ refEntity_t ;
typedef  int /*<<< orphan*/  qhandle_t ;
struct TYPE_6__ {scalar_t__ trTime; int /*<<< orphan*/  trDelta; int /*<<< orphan*/  trBase; int /*<<< orphan*/  trType; } ;
struct TYPE_8__ {float bounceFactor; int /*<<< orphan*/  leMarkType; int /*<<< orphan*/  leBounceSoundType; TYPE_1__ pos; scalar_t__ startTime; scalar_t__ endTime; int /*<<< orphan*/  leType; TYPE_2__ refEntity; } ;
typedef  TYPE_3__ localEntity_t ;
struct TYPE_9__ {scalar_t__ time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  LEBS_BLOOD ; 
 int /*<<< orphan*/  LEMT_BLOOD ; 
 int /*<<< orphan*/  LE_FRAGMENT ; 
 int /*<<< orphan*/  TR_GRAVITY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  axisDefault ; 
 TYPE_4__ cg ; 
 int FUNC3 () ; 

void FUNC4( vec3_t origin, vec3_t velocity, qhandle_t hModel ) {
	localEntity_t	*le;
	refEntity_t		*re;

	le = FUNC1();
	re = &le->refEntity;

	le->leType = LE_FRAGMENT;
	le->startTime = cg.time;
	le->endTime = le->startTime + 5000 + FUNC3() * 3000;

	FUNC2( origin, re->origin );
	FUNC0( axisDefault, re->axis );
	re->hModel = hModel;

	le->pos.trType = TR_GRAVITY;
	FUNC2( origin, le->pos.trBase );
	FUNC2( velocity, le->pos.trDelta );
	le->pos.trTime = cg.time;

	le->bounceFactor = 0.6f;

	le->leBounceSoundType = LEBS_BLOOD;
	le->leMarkType = LEMT_BLOOD;
}