#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* shader; int /*<<< orphan*/  lut_textures; } ;
typedef  TYPE_1__ cg_shader_data_t ;
struct TYPE_4__ {scalar_t__ luts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(void *data)
{
   cg_shader_data_t *cg = (cg_shader_data_t*)data;
   if (!cg)
      return;

   FUNC3(data);

   FUNC2(data);

   if (cg->shader && cg->shader->luts)
   {
      FUNC1(cg->shader->luts, cg->lut_textures);
      FUNC4(cg->lut_textures, 0, sizeof(cg->lut_textures));
   }

   FUNC0(cg->shader);
   cg->shader = NULL;
}