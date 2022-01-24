#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct scaler_ctx {int in_width; int in_height; int out_width; int out_height; int in_stride; int out_stride; int /*<<< orphan*/  scaler_type; int /*<<< orphan*/  out_fmt; int /*<<< orphan*/  in_fmt; } ;
struct TYPE_4__ {int width; int height; } ;
struct TYPE_5__ {int pbo_readback_enable; int /*<<< orphan*/ * pbo_readback; TYPE_1__ vp; struct scaler_ctx pbo_readback_scaler; } ;
typedef  TYPE_2__ gl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SCALER_FMT_ARGB8888 ; 
 int /*<<< orphan*/  SCALER_FMT_BGR24 ; 
 int /*<<< orphan*/  SCALER_TYPE_POINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct scaler_ctx*) ; 

__attribute__((used)) static bool FUNC7(gl_t *gl)
{
#if !defined(HAVE_OPENGLES2) && !defined(HAVE_PSGL)
   unsigned i;

   FUNC5(4, gl->pbo_readback);

   for (i = 0; i < 4; i++)
   {
      FUNC1(gl->pbo_readback[i]);
      FUNC2(gl->vp.width *
            gl->vp.height * sizeof(uint32_t), NULL);
   }
   FUNC3();

#ifndef HAVE_OPENGLES3
   {
      struct scaler_ctx *scaler = &gl->pbo_readback_scaler;
      scaler->in_width          = gl->vp.width;
      scaler->in_height         = gl->vp.height;
      scaler->out_width         = gl->vp.width;
      scaler->out_height        = gl->vp.height;
      scaler->in_stride         = gl->vp.width * sizeof(uint32_t);
      scaler->out_stride        = gl->vp.width * 3;
      scaler->in_fmt            = SCALER_FMT_ARGB8888;
      scaler->out_fmt           = SCALER_FMT_BGR24;
      scaler->scaler_type       = SCALER_TYPE_POINT;

      if (!FUNC6(scaler))
      {
         gl->pbo_readback_enable = false;
         FUNC0("[GL]: Failed to initialize pixel conversion for PBO.\n");
         FUNC4(4, gl->pbo_readback);
         return false;
      }
   }
#endif

   return true;
#else
   /* If none of these are bound, we have to assume
    * we are not going to use PBOs */
   return false;
#endif
}