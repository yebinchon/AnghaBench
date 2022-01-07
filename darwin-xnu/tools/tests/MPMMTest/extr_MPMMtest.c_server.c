
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_address_t ;
typedef int uint64_t ;
struct port_args {int server_num; int* set; int reply_size; TYPE_3__* reply_msg; TYPE_3__* req_msg; int req_size; int port; int rcv_set; } ;
typedef int mach_port_t ;
typedef int kern_return_t ;
struct TYPE_4__ {int size; scalar_t__ address; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;
typedef TYPE_2__ ipc_complex_message ;
struct TYPE_6__ {int msgh_bits; int msgh_id; int msgh_local_port; int msgh_remote_port; int msgh_size; } ;


 int KERN_SUCCESS ;
 int MACH_MSGH_BITS (int ,int ) ;
 int MACH_MSGH_BITS_COMPLEX ;
 int MACH_MSG_SUCCESS ;
 int MACH_MSG_TIMEOUT_NONE ;
 int MACH_MSG_TYPE_MOVE_SEND_ONCE ;
 int MACH_PORT_NULL ;
 int MACH_PORT_RIGHT_PORT_SET ;
 int MACH_RCV_INTERRUPT ;
 int MACH_RCV_INTERRUPTED ;
 int MACH_RCV_LARGE ;
 int MACH_RCV_MSG ;
 int MACH_SEND_MSG ;
 scalar_t__ abs_to_ns (int) ;
 int exit (int) ;
 int mach_absolute_time () ;
 int mach_error (char*,int) ;
 int mach_msg (TYPE_3__*,int,int ,int ,int ,int ,int ) ;
 int mach_port_mod_refs (int ,int,int ,int) ;
 int mach_task_self () ;
 int num_clients ;
 int num_msgs ;
 scalar_t__ portcount ;
 int printf (char*,int,...) ;
 struct port_args* server_port_args ;
 int setcount ;
 int setup_server_ports (struct port_args*) ;
 int thread_setup (int) ;
 scalar_t__ useset ;
 int verbose ;
 int vm_deallocate (int ,int ,int ) ;

void *
server(void *serverarg)
{
 int idx;
 kern_return_t ret;
 int totalmsg = num_msgs * num_clients;
 mach_port_t recv_port;
 uint64_t starttm, endtm;

 int svr_num = (int)(uintptr_t)serverarg;
 struct port_args *args = &server_port_args[svr_num];

 args->server_num = svr_num;
 setup_server_ports(args);

 thread_setup(args->server_num + 1);

 recv_port = (useset) ? args->rcv_set : args->port;

 for (idx = 0; idx < totalmsg; idx++) {
  if (verbose > 2)
   printf("server awaiting message %d\n", idx);
  ret = mach_msg(args->req_msg,
    MACH_RCV_MSG|MACH_RCV_INTERRUPT|MACH_RCV_LARGE,
    0,
    args->req_size,
    recv_port,
    MACH_MSG_TIMEOUT_NONE,
    MACH_PORT_NULL);
  if (MACH_RCV_INTERRUPTED == ret)
   break;
  if (MACH_MSG_SUCCESS != ret) {
   if (verbose)
    printf("mach_msg() ret=%d", ret);
   mach_error("mach_msg (receive): ", ret);
   exit(1);
  }
  if (verbose > 2)
   printf("server received message %d\n", idx);
  if (args->req_msg->msgh_bits & MACH_MSGH_BITS_COMPLEX) {
   ret = vm_deallocate(mach_task_self(),
     (vm_address_t)((ipc_complex_message *)args->req_msg)->descriptor.address,
     ((ipc_complex_message *)args->req_msg)->descriptor.size);
  }

  if (1 == args->req_msg->msgh_id) {
   if (verbose > 2)
    printf("server sending reply %d\n", idx);
   args->reply_msg->msgh_bits = MACH_MSGH_BITS(MACH_MSG_TYPE_MOVE_SEND_ONCE, 0);
   args->reply_msg->msgh_size = args->reply_size;
   args->reply_msg->msgh_remote_port = args->req_msg->msgh_remote_port;
   args->reply_msg->msgh_local_port = MACH_PORT_NULL;
   args->reply_msg->msgh_id = 2;
   ret = mach_msg(args->reply_msg,
     MACH_SEND_MSG,
     args->reply_size,
     0,
     MACH_PORT_NULL,
     MACH_MSG_TIMEOUT_NONE,
     MACH_PORT_NULL);
   if (MACH_MSG_SUCCESS != ret) {
    mach_error("mach_msg (send): ", ret);
    exit(1);
   }
  }
 }

 if (!useset)
  return ((void*)0);

 if (verbose < 1)
  return ((void*)0);

 uint64_t deltans = 0;




 for (int ns = 0; ns < setcount; ns++) {
  if (verbose > 1)
   printf("\tTearing down set[%d] %#x...\n", ns, args->set[ns]);
  starttm = mach_absolute_time();
  ret = mach_port_mod_refs(mach_task_self(), args->set[ns], MACH_PORT_RIGHT_PORT_SET, -1);
  endtm = mach_absolute_time();
  deltans += abs_to_ns(endtm - starttm);
  if (ret != KERN_SUCCESS) {
   mach_error("mach_port_mod_refs(): ", ret);
   exit(1);
  }
 }

 uint64_t nlinks = (uint64_t)setcount * (uint64_t)portcount;

 printf("\tteardown of %llu links took %llu ns\n", nlinks, deltans);
 printf("\t%lluns per set\n", deltans / (uint64_t)setcount);

 return ((void*)0);
}
