#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  is_threaded; } ;
typedef  TYPE_2__ video_info_t ;
typedef  int /*<<< orphan*/  settings_t ;
struct TYPE_15__ {int size; int /*<<< orphan*/  buffer; scalar_t__ offset; } ;
struct TYPE_17__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  mvp_transposed; int /*<<< orphan*/  mvp; TYPE_1__ menu_display; scalar_t__ needs_restore; } ;
typedef  TYPE_3__ d3d8_video_t ;
typedef  int /*<<< orphan*/  Vertex ;
typedef  int /*<<< orphan*/  D3DPRESENT_PARAMETERS ;

/* Variables and functions */
 int /*<<< orphan*/  D3DCULL_NONE ; 
 int D3DFVF_DIFFUSE ; 
 int D3DFVF_TEX1 ; 
 int D3DFVF_XYZ ; 
 int /*<<< orphan*/  D3DPOOL_DEFAULT ; 
 int /*<<< orphan*/  D3DRS_CULLMODE ; 
 int /*<<< orphan*/  D3DUSAGE_WRITEONLY ; 
 int /*<<< orphan*/  FONT_DRIVER_RENDER_D3D8_API ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_DEINIT ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,unsigned int,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_pD3D8 ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int*,unsigned int*) ; 

__attribute__((used)) static bool FUNC18(d3d8_video_t *d3d, const video_info_t *info)
{
   unsigned width, height;
   bool ret             = true;
   settings_t *settings = FUNC2();

   if (!d3d)
      return false;

   if (!g_pD3D8)
      ret = FUNC5(d3d, info);
   else if (d3d->needs_restore)
   {
      D3DPRESENT_PARAMETERS d3dpp;

      FUNC7(d3d, info, &d3dpp);

      /* the D3DX font driver uses POOL_DEFAULT resources
       * and will prevent a clean reset here
       * another approach would be to keep track of all created D3D
       * font objects and free/realloc them around the d3d_reset call  */
#ifdef HAVE_MENU
      menu_driver_ctl(RARCH_MENU_CTL_DEINIT, NULL);
#endif

      if (!FUNC8(d3d->dev, &d3dpp))
      {
         FUNC3(d3d);
         FUNC4(NULL, g_pD3D8);
         g_pD3D8 = NULL;

         ret = FUNC5(d3d, info);
         if (ret)
            FUNC1("[D3D8]: Recovered from dead state.\n");
      }

#ifdef HAVE_MENU
      menu_driver_init(info->is_threaded);
#endif
   }

   if (!ret)
      return ret;

   if (!FUNC6(d3d, info))
   {
      FUNC0("[D3D8]: Failed to initialize render chain.\n");
      return false;
   }

   FUNC17(&width, &height);
   FUNC10(d3d,
	   width, height, false, true);

   FUNC14(d3d, false,
         info->is_threaded,
         FONT_DRIVER_RENDER_D3D8_API);

   d3d->menu_display.offset = 0;
   d3d->menu_display.size   = 1024;
   d3d->menu_display.buffer = FUNC11(
         d3d->dev, d3d->menu_display.size * sizeof(Vertex),
         D3DUSAGE_WRITEONLY,
         D3DFVF_XYZ | D3DFVF_TEX1 | D3DFVF_DIFFUSE,
         D3DPOOL_DEFAULT,
         NULL);

   if (!d3d->menu_display.buffer)
      return false;

   FUNC12(&d3d->mvp_transposed, 0, 1, 0, 1, 0, 1);
   FUNC13(&d3d->mvp, &d3d->mvp_transposed);

   FUNC9(d3d->dev, D3DRS_CULLMODE, D3DCULL_NONE);

   return true;
}