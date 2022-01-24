#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ encoder_id; int count_modes; TYPE_1__* modes; } ;
struct TYPE_9__ {scalar_t__ encoder_id; } ;
struct TYPE_8__ {int count_encoders; int /*<<< orphan*/ * encoders; } ;
struct TYPE_7__ {int /*<<< orphan*/  vrefresh; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_4__* g_drm_connector ; 
 TYPE_3__* g_drm_encoder ; 
 TYPE_2__* g_drm_resources ; 

bool FUNC4(int fd)
{
   unsigned i;

   for (i = 0; (int)i < g_drm_resources->count_encoders; i++)
   {
      g_drm_encoder = FUNC3(fd, g_drm_resources->encoders[i]);

      if (!g_drm_encoder)
         continue;

      if (g_drm_encoder->encoder_id == g_drm_connector->encoder_id)
         break;

      FUNC2(g_drm_encoder);
      g_drm_encoder = NULL;
   }

   if (!g_drm_encoder)
   {
      FUNC1("[DRM]: Couldn't find DRM encoder.\n");
      return false;
   }

   for (i = 0; (int)i < g_drm_connector->count_modes; i++)
   {
      FUNC0("[DRM]: Mode %d: (%s) %d x %d, %u Hz\n",
            i,
            g_drm_connector->modes[i].name,
            g_drm_connector->modes[i].hdisplay,
            g_drm_connector->modes[i].vdisplay,
            g_drm_connector->modes[i].vrefresh);
   }

   return true;
}