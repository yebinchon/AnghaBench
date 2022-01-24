#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_5__* modifications; } ;
typedef  TYPE_1__ png_modifier ;
struct TYPE_10__ {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
typedef  TYPE_2__ color_encoding ;
struct TYPE_12__ {struct TYPE_12__* next; int /*<<< orphan*/  add; int /*<<< orphan*/  modify_fn; int /*<<< orphan*/  chunk; } ;
struct TYPE_11__ {TYPE_5__ this; void* by; void* bx; void* gy; void* gx; void* ry; void* rx; void* wy; void* wx; TYPE_2__ const* encoding; } ;
typedef  TYPE_3__ chrm_modification ;
typedef  int /*<<< orphan*/  CIE_color ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNK_PLTE ; 
 int /*<<< orphan*/  CHUNK_cHRM ; 
 int /*<<< orphan*/  chrm_modify ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*) ; 

__attribute__((used)) static void
FUNC5(chrm_modification *me, png_modifier *pm,
   const color_encoding *encoding)
{
   CIE_color white = FUNC4(encoding);

   /* Original end points: */
   me->encoding = encoding;

   /* Chromaticities (in fixed point): */
   me->wx = FUNC2(FUNC0(white));
   me->wy = FUNC2(FUNC1(white));

   me->rx = FUNC2(FUNC0(encoding->red));
   me->ry = FUNC2(FUNC1(encoding->red));
   me->gx = FUNC2(FUNC0(encoding->green));
   me->gy = FUNC2(FUNC1(encoding->green));
   me->bx = FUNC2(FUNC0(encoding->blue));
   me->by = FUNC2(FUNC1(encoding->blue));

   FUNC3(&me->this);
   me->this.chunk = CHUNK_cHRM;
   me->this.modify_fn = chrm_modify;
   me->this.add = CHUNK_PLTE;
   me->this.next = pm->modifications;
   pm->modifications = &me->this;
}