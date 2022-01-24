#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gfx_fbo_scale {int /*<<< orphan*/  abs_y; int /*<<< orphan*/  scale_y; int /*<<< orphan*/  type_y; int /*<<< orphan*/  abs_x; int /*<<< orphan*/  scale_x; int /*<<< orphan*/  type_x; int /*<<< orphan*/  valid; int /*<<< orphan*/  srgb_fbo; int /*<<< orphan*/  fp_fbo; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static void FUNC3(config_file_t *conf,
      const struct gfx_fbo_scale *fbo, unsigned i)
{
   char key[64];

   key[0] = '\0';

   FUNC2(key, sizeof(key), "float_framebuffer%u", i);
   FUNC0(conf, key, fbo->fp_fbo);
   FUNC2(key, sizeof(key), "srgb_framebuffer%u", i);
   FUNC0(conf, key, fbo->srgb_fbo);

   if (!fbo->valid)
      return;

   FUNC1(conf, "x", fbo->type_x,
         fbo->scale_x, fbo->abs_x, i);
   FUNC1(conf, "y", fbo->type_y,
         fbo->scale_y, fbo->abs_y, i);
}