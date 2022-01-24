#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct exynos_data {int /*<<< orphan*/  drmname; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int /*<<< orphan*/  connector_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  page_flip_handler; int /*<<< orphan*/  version; } ;
struct TYPE_4__ {int fd; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_EVENT_CONTEXT_VERSION ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  exynos_page_flip_handler ; 
 TYPE_3__* g_drm_connector ; 
 TYPE_2__ g_drm_evctx ; 
 int g_drm_fd ; 
 TYPE_1__ g_drm_fds ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC11(struct exynos_data *pdata)
{
   unsigned i;
   int fd                                 = -1;
   char buf[32]                           = {0};
   int devidx                             = FUNC7();

   if (pdata)
      g_drm_fd                            = -1;

   if (devidx != -1)
      FUNC9(buf, sizeof(buf), "/dev/dri/card%d", devidx);
   else
   {
      FUNC0("[video_exynos]: no compatible DRM device found\n");
      return -1;
   }

   fd = FUNC8(buf, O_RDWR);

   if (fd < 0)
   {
      FUNC0("[video_exynos]: can't open DRM device\n");
      return -1;
   }

   if (!FUNC6(fd))
      goto fail;

   if (!FUNC4(fd))
      goto fail;

   if (!FUNC5(fd))
      goto fail;

   /* Setup the flip handler. */
   g_drm_fds.fd                         = fd;
   g_drm_fds.events                     = POLLIN;
   g_drm_evctx.version                  = DRM_EVENT_CONTEXT_VERSION;
   g_drm_evctx.page_flip_handler        = exynos_page_flip_handler;

   FUNC10(pdata->drmname, buf, sizeof(buf));
   g_drm_fd = fd;

   FUNC1("[video_exynos]: using DRM device \"%s\" with connector id %u.\n",
         pdata->drmname, g_drm_connector->connector_id);

   return 0;

fail:
   FUNC3();
   FUNC2(g_drm_fd);

   return -1;
}