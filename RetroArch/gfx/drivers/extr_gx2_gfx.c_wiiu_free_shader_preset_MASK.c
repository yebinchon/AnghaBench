#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_8__* shader_preset; TYPE_4__* luts; TYPE_7__* pass; } ;
typedef  TYPE_5__ wiiu_video_t ;
struct TYPE_15__ {unsigned int passes; unsigned int luts; } ;
struct TYPE_9__ {int /*<<< orphan*/ * image; } ;
struct TYPE_10__ {TYPE_1__ surface; } ;
struct TYPE_14__ {TYPE_2__ texture; scalar_t__ mem1; int /*<<< orphan*/ ** ps_ubos; int /*<<< orphan*/ ** vs_ubos; int /*<<< orphan*/  gfd; } ;
struct TYPE_11__ {int /*<<< orphan*/ * image; } ;
struct TYPE_12__ {TYPE_3__ surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(wiiu_video_t *wiiu)
{
   unsigned i;
   if (!wiiu->shader_preset)
      return;

   for (i = 0; i < wiiu->shader_preset->passes; i++)
   {
      FUNC3(wiiu->pass[i].gfd);
      FUNC1(wiiu->pass[i].vs_ubos[0]);
      FUNC1(wiiu->pass[i].vs_ubos[1]);
      FUNC1(wiiu->pass[i].ps_ubos[0]);
      FUNC1(wiiu->pass[i].ps_ubos[1]);
      if(wiiu->pass[i].mem1)
         FUNC0(wiiu->pass[i].texture.surface.image);
      else
         FUNC1(wiiu->pass[i].texture.surface.image);
   }

   FUNC4(wiiu->pass, 0, sizeof(wiiu->pass));

   for (i = 0; i < wiiu->shader_preset->luts; i++)
   {
      FUNC1(wiiu->luts[i].surface.image);
      wiiu->luts[i].surface.image = NULL;
   }

   FUNC2(wiiu->shader_preset);
   wiiu->shader_preset = NULL;
}