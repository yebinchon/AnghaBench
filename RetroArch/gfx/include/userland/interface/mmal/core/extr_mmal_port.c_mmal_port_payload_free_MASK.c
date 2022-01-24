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
struct TYPE_12__ {TYPE_2__* priv; scalar_t__ index; scalar_t__ type; TYPE_1__* component; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* pf_payload_free ) (TYPE_3__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  pf_payload_alloc; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MEM_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(MMAL_PORT_T *port, uint8_t *payload)
{
   if (!port || !port->priv)
      return;

   FUNC1("%s(%i:%i) port %p, payload %p", port->component->name,
             (int)port->type, (int)port->index, port, payload);

   if (!port->priv->pf_payload_alloc)
   {
      /* Revert to using the heap */
#ifdef _VIDEOCORE
      mem_release((MEM_HANDLE_T)payload);
#else
      FUNC6(payload);
#endif
      FUNC4(port);
      return;
   }

   FUNC0(port);
   port->priv->pf_payload_free(port, payload);
   FUNC2(port);
   FUNC4(port);
}