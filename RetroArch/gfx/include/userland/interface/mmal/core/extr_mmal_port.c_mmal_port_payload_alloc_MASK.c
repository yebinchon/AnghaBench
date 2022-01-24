#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_12__ {TYPE_1__* priv; int /*<<< orphan*/  name; scalar_t__ index; scalar_t__ type; TYPE_2__* component; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/ * (* pf_payload_alloc ) (TYPE_3__*,scalar_t__) ;} ;
typedef  TYPE_3__ MMAL_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,TYPE_3__*,int) ; 
 int /*<<< orphan*/  MEM_FLAG_DIRECT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,char*) ; 

uint8_t *FUNC7(MMAL_PORT_T *port, uint32_t payload_size)
{
   uint8_t *mem;

   if (!port || !port->priv)
      return NULL;

   FUNC1("%s(%i:%i) port %p, size %i", port->component->name,
             (int)port->type, (int)port->index, port, (int)payload_size);

   if (!payload_size)
      return NULL;

   /* TODO: keep track of the allocs so we can free them when the component is destroyed */

   if (!port->priv->pf_payload_alloc)
   {
      /* Revert to using the heap */
#ifdef _VIDEOCORE
      mem = (void *)mem_alloc(payload_size, 32, MEM_FLAG_DIRECT, port->name);
#else
      mem = FUNC6(payload_size, "mmal payload");
#endif
      goto end;
   }

   FUNC0(port);
   mem = port->priv->pf_payload_alloc(port, payload_size);
   FUNC2(port);

 end:
   /* Acquire the port if the allocation was successful.
    * This will ensure that the component is not destroyed until the payload has been freed. */
   if (mem)
      FUNC4(port);
   return mem;
}