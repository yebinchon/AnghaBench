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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ VCOS_STATUS_T ;
typedef  int /*<<< orphan*/  VCHI_INSTANCE_T ;
typedef  int /*<<< orphan*/  VCHI_CONNECTION_T ;
struct TYPE_6__ {int initialised; int num_connections; int /*<<< orphan*/ * open_handle; int /*<<< orphan*/  message_available_event; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_9; int /*<<< orphan*/  member_8; int /*<<< orphan*/  member_7; int /*<<< orphan*/ * member_6; int /*<<< orphan*/ * member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SERVICE_CREATION_T ;
typedef  int /*<<< orphan*/  GENCMD_SERVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  VC_FALSE ; 
 int /*<<< orphan*/  VC_GENCMD_VER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  gencmd_callback ; 
 TYPE_3__ gencmd_client ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 

void FUNC9 (VCHI_INSTANCE_T initialise_instance, VCHI_CONNECTION_T **connections, uint32_t num_connections )
{
   VCOS_STATUS_T status;
   int32_t success;
   int i;

   if (gencmd_client.initialised)
     return;

   // record the number of connections
   FUNC3( &gencmd_client, 0, sizeof(GENCMD_SERVICE_T) );
   gencmd_client.num_connections = (int) num_connections;

   status = FUNC8(&gencmd_client.lock, "HGencmd");
   FUNC6(status == VCOS_SUCCESS);
   status = FUNC7(&gencmd_client.message_available_event, "HGencmd");
   FUNC6(status == VCOS_SUCCESS);

   for (i=0; i<gencmd_client.num_connections; i++) {

      // Create a 'LONG' service on the each of the connections
      SERVICE_CREATION_T gencmd_parameters = { FUNC1(VC_GENCMD_VER),
                                               FUNC0("GCMD"),      // 4cc service code
                                               *connections[i],           // passed in fn ptrs
                                               0,                        // tx fifo size (unused)
                                               0,                        // tx fifo size (unused)
                                               gencmd_callback,         // service callback
                                               gencmd_client.message_available_event, // callback parameter
                                               &VC_FALSE,                 // want_unaligned_bulk_rx
                                               VC_FALSE,                 // want_unaligned_bulk_tx
                                               VC_FALSE                  // want_crc
                                               };

      success = FUNC5( initialise_instance, &gencmd_parameters, &gencmd_client.open_handle[i] );
      FUNC2( success == 0 );
   }

   gencmd_client.initialised = 1;
   FUNC4();
}