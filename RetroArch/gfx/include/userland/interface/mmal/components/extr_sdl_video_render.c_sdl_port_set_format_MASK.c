#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int width; int height; scalar_t__ sdl_overlay; int /*<<< orphan*/  sdl_surface; } ;
struct TYPE_15__ {TYPE_1__* priv; } ;
struct TYPE_14__ {int buffer_size_min; TYPE_4__* format; TYPE_6__* component; } ;
struct TYPE_13__ {scalar_t__ encoding; TYPE_3__* es; } ;
struct TYPE_11__ {int width; int height; } ;
struct TYPE_12__ {TYPE_2__ video; } ;
struct TYPE_10__ {TYPE_7__* module; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_5__ MMAL_PORT_T ;
typedef  TYPE_6__ MMAL_COMPONENT_T ;
typedef  TYPE_7__ MMAL_COMPONENT_MODULE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ MMAL_ENCODING_I420 ; 
 int /*<<< orphan*/  MMAL_ENOSPC ; 
 int /*<<< orphan*/  MMAL_ENOSYS ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  SDL_YV12_OVERLAY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC4(MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_STATUS_T status;

   if ((status=FUNC3(module)) != MMAL_SUCCESS)
      return status;

   /* We only support I420 */
   if (port->format->encoding != MMAL_ENCODING_I420)
      return MMAL_ENOSYS;

   /* Check if we need to re-create an overlay */
   if (module->sdl_overlay &&
       module->width == port->format->es->video.width &&
       module->height == port->format->es->video.height)
      return MMAL_SUCCESS; /* Nothing to do */

   if (module->sdl_overlay)
      FUNC2(module->sdl_overlay);

   /* Create overlay */
   module->sdl_overlay =
      FUNC1(port->format->es->video.width,
                           port->format->es->video.height,
                           SDL_YV12_OVERLAY, module->sdl_surface);
   if (!module->sdl_overlay)
   {
      FUNC0("cannot create SDL overlay");
      return MMAL_ENOSPC;
   }
   module->width = port->format->es->video.width;
   module->height = port->format->es->video.height;

   port->buffer_size_min = module->width * module->height * 3 / 2;
   return MMAL_SUCCESS;
}