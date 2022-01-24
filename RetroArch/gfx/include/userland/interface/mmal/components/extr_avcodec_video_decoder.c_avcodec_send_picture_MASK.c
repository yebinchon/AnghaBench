#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_22__ {int length; TYPE_4__* type; scalar_t__ flags; int /*<<< orphan*/  pts; int /*<<< orphan*/  alloc_size; int /*<<< orphan*/  data; } ;
struct TYPE_19__ {int /*<<< orphan*/ * linesize; scalar_t__* data; } ;
struct TYPE_21__ {scalar_t__ width; scalar_t__ height; scalar_t__ pix_fmt; TYPE_5__ layout; int /*<<< orphan*/  planes; int /*<<< orphan*/  pts; int /*<<< orphan*/  queue_out; scalar_t__ picture; TYPE_2__* codec_context; } ;
struct TYPE_20__ {TYPE_1__* priv; } ;
struct TYPE_17__ {int /*<<< orphan*/ * pitch; scalar_t__* offset; int /*<<< orphan*/  planes; } ;
struct TYPE_18__ {TYPE_3__ video; } ;
struct TYPE_16__ {scalar_t__ width; scalar_t__ height; scalar_t__ pix_fmt; } ;
struct TYPE_15__ {TYPE_7__* module; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_PORT_T ;
typedef  TYPE_6__ MMAL_COMPONENT_T ;
typedef  TYPE_7__ MMAL_COMPONENT_MODULE_T ;
typedef  TYPE_8__ MMAL_BUFFER_HEADER_T ;
typedef  int /*<<< orphan*/  AVPicture ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMAL_EAGAIN ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 TYPE_8__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_8__*) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC7(MMAL_COMPONENT_T *component, MMAL_PORT_T *port)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_BUFFER_HEADER_T *out;
   int i, size;

   /* Detect format changes */
   if (module->codec_context->width != module->width ||
       module->codec_context->height != module->height ||
       module->codec_context->pix_fmt != module->pix_fmt)
   {
      FUNC1(component, port);
      return MMAL_EAGAIN;
   }

   out = FUNC5(module->queue_out);
   if (!out)
      return MMAL_EAGAIN;

   size = FUNC2((AVPicture *)module->picture, module->pix_fmt,
                           module->width, module->height, out->data, out->alloc_size);
   if (size < 0)
   {
      FUNC6(module->queue_out, out);
      FUNC0("avpicture_layout failed: %i, %i, %i, %i",module->pix_fmt,
                module->width, module->height, out->alloc_size );
      FUNC3(component, MMAL_EINVAL);
      return MMAL_EINVAL;
   }

   out->length = size;
   out->pts    = module->pts;
   out->flags  = 0;

   out->type->video.planes = module->planes;
   for (i = 0; i < 3; i++)
   {
      out->type->video.offset[i] = (uint64_t)module->layout.data[i];
      out->type->video.pitch[i] = module->layout.linesize[i];
   }

   FUNC4(port, out);
   return MMAL_SUCCESS;
}