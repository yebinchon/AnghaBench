#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_9__ {scalar_t__ is_zero_copy; int /*<<< orphan*/  opaque_allocs; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; TYPE_2__* format; TYPE_1__* priv; } ;
struct TYPE_7__ {int /*<<< orphan*/  encoding; } ;
struct TYPE_6__ {TYPE_4__* module; } ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_PORT_MODULE_T ;
typedef  scalar_t__ MMAL_OPAQUE_IMAGE_HANDLE_T ;
typedef  scalar_t__ MMAL_BOOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MMAL_ENCODING_OPAQUE ; 
 scalar_t__ MMAL_FALSE ; 
 scalar_t__ MMAL_TRUE ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (scalar_t__) ; 
 void* FUNC7 (int,scalar_t__,char*) ; 

__attribute__((used)) static uint8_t *FUNC8(MMAL_PORT_T *port, uint32_t payload_size)
{
   MMAL_PORT_MODULE_T *module = port->priv->module;
   MMAL_BOOL_T can_deref = MMAL_TRUE;
   char buf[5];
   void *ret;
   (void)buf;

   FUNC2("%s: allocating %d bytes, format %s, is_zero_copy %d",
             port->name,
             payload_size,
             FUNC4(buf, sizeof(buf), port->format->encoding),
             module->is_zero_copy);

   if (port->format->encoding == MMAL_ENCODING_OPAQUE &&
       module->is_zero_copy)
   {
      MMAL_OPAQUE_IMAGE_HANDLE_T h = FUNC5(port->name);
      can_deref = MMAL_FALSE;
      ret = (void*)h;
      if (!ret)
      {
         FUNC1("%s: failed to allocate %d bytes opaque memory",
                   port->name, payload_size);
         return NULL;
      }
      module->opaque_allocs++;
   }

   else if (module->is_zero_copy)
   {
      ret = FUNC6(payload_size);
      if (!ret)
      {
         FUNC1("%s: failed to allocate %d bytes of shared memory",
                   port->name, payload_size);
         return NULL;
      }
   }

   else
   {
      /* Allocate conventional memory */
      ret = FUNC7(1, payload_size, "mmal_vc_port payload");
      if (!ret)
      {
         FUNC1("could not allocate %i bytes", (int)payload_size);
         return NULL;
      }
   }

   /* Ensure that newly minted opaque buffers are always in a sensible
    * state, and don't have random garbage in them.
    */
   if (can_deref && port->format->encoding == MMAL_ENCODING_OPAQUE)
      FUNC3(ret, 0, payload_size);

   FUNC0("%s: allocated at %p", port->name, ret);
   return ret;
}