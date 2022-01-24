#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  filesys_parameters ;
typedef  int /*<<< orphan*/  VCOS_THREAD_ATTR_T ;
typedef  scalar_t__ VCOS_STATUS_T ;
typedef  int /*<<< orphan*/  VCHI_INSTANCE_T ;
typedef  int /*<<< orphan*/  VCHI_CONNECTION_T ;
struct TYPE_6__ {void* version_min; void* version; } ;
struct TYPE_7__ {int num_connections; int initialised; int /*<<< orphan*/  open_handle; int /*<<< orphan*/  filesys_thread; TYPE_1__ version; scalar_t__ want_crc; scalar_t__ want_unaligned_bulk_tx; scalar_t__ want_unaligned_bulk_rx; int /*<<< orphan*/  filesys_msg_avail; int /*<<< orphan*/ * callback_param; int /*<<< orphan*/ * callback; scalar_t__ tx_fifo_size; scalar_t__ rx_fifo_size; int /*<<< orphan*/ * connection; int /*<<< orphan*/  service_id; scalar_t__ cur_xid; int /*<<< orphan*/  bulk_buffer; int /*<<< orphan*/  response_event; int /*<<< orphan*/  filesys_lock; } ;
typedef  TYPE_2__ SERVICE_CREATION_T ;
typedef  int /*<<< orphan*/  FILESYS_SERVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FILESERV_4CC ; 
 int /*<<< orphan*/  FILESERV_MAX_BULK ; 
 scalar_t__ VCOS_SUCCESS ; 
 void* VC_FILESERV_VER ; 
 int /*<<< orphan*/  filesys_callback ; 
 int /*<<< orphan*/  filesys_task_func ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ vc_filesys_client ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int FUNC12 (VCHI_INSTANCE_T initialise_instance, VCHI_CONNECTION_T **connections, uint32_t num_connections )
{
   int32_t success = 0;
   SERVICE_CREATION_T filesys_parameters;
   VCOS_THREAD_ATTR_T attrs;
   VCOS_STATUS_T status;

   // record the number of connections
   FUNC0( &vc_filesys_client, 0, sizeof(FILESYS_SERVICE_T) );
   vc_filesys_client.num_connections = num_connections;

   if(!FUNC11(vc_filesys_client.num_connections < 2))
      return -1;

   status = FUNC6(&vc_filesys_client.filesys_lock, "HFilesys");
   FUNC3(status == VCOS_SUCCESS);

   status = FUNC4(&vc_filesys_client.filesys_msg_avail, "HFilesys");
   FUNC3(status == VCOS_SUCCESS);

   //create sema used to signal cmd response has arrived
   status = FUNC4(&vc_filesys_client.response_event, "HFilesys");
   FUNC3(status == VCOS_SUCCESS);

   vc_filesys_client.bulk_buffer = FUNC5(FILESERV_MAX_BULK, 16, "HFilesys bulk_recv");
   vc_filesys_client.cur_xid = 0;

   FUNC0(&filesys_parameters, 0, sizeof(filesys_parameters));
   filesys_parameters.service_id = FILESERV_4CC;   // 4cc service code
   filesys_parameters.connection = connections[0]; // passed in fn ptrs
   filesys_parameters.rx_fifo_size = 0;            // rx fifo size (unused)
   filesys_parameters.tx_fifo_size = 0;            // tx fifo size (unused)
   filesys_parameters.callback = &filesys_callback;
   filesys_parameters.callback_param = &vc_filesys_client.filesys_msg_avail;
   filesys_parameters.want_unaligned_bulk_rx = 0;
   filesys_parameters.want_unaligned_bulk_tx = 0;
   filesys_parameters.want_crc = 0;
   filesys_parameters.version.version = VC_FILESERV_VER;
   filesys_parameters.version.version_min = VC_FILESERV_VER;

   success = FUNC1( initialise_instance, &filesys_parameters, &vc_filesys_client.open_handle );
   FUNC3( success == 0 );

   FUNC7(&attrs);
   FUNC8(&attrs, 4000);
   FUNC9(&attrs, 1);

   vc_filesys_client.initialised = 1;

   status = FUNC10(&vc_filesys_client.filesys_thread, "HFilesys", &attrs, filesys_task_func, NULL);
   FUNC3(status == VCOS_SUCCESS);

   /* Not using service immediately - release videocore */
   FUNC2(vc_filesys_client.open_handle);

   return (int)success;
}