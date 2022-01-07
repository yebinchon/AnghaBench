
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct port_args {int req_size; int reply_size; size_t server_num; int port; int pset; void* reply_msg; void* req_msg; } ;
typedef int mach_port_t ;
typedef int mach_msg_trailer_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_trivial_message ;
typedef int ipc_inline_message ;
typedef int ipc_complex_message ;


 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_TYPE_MAKE_SEND ;
 int MACH_PORT_RIGHT_PORT_SET ;
 int MACH_PORT_RIGHT_RECEIVE ;
 int MAX (int,int) ;
 scalar_t__ bootstrap_register (int ,char*,int ) ;
 int exit (int) ;
 int mach_error (char*,scalar_t__) ;
 scalar_t__ mach_port_allocate (int ,int ,int *) ;
 scalar_t__ mach_port_insert_member (int ,int ,int ) ;
 scalar_t__ mach_port_insert_right (int ,int ,int ,int ) ;
 int mach_task_self () ;
 void* malloc (int) ;
 int num_ints ;
 int printf (char*,char*) ;
 char** server_port_name ;
 scalar_t__ task_get_bootstrap_port (int ,int *) ;
 scalar_t__ verbose ;

void setup_server_ports(struct port_args *ports)
{
 kern_return_t ret = 0;
 mach_port_t bsport;

 ports->req_size = MAX(sizeof(ipc_inline_message) +
   sizeof(u_int32_t) * num_ints,
   sizeof(ipc_complex_message));
 ports->reply_size = sizeof(ipc_trivial_message) -
  sizeof(mach_msg_trailer_t);
 ports->req_msg = malloc(ports->req_size);
 ports->reply_msg = malloc(ports->reply_size);

 ret = mach_port_allocate(mach_task_self(),
   MACH_PORT_RIGHT_RECEIVE,
   &(ports->port));
 if (KERN_SUCCESS != ret) {
  mach_error("mach_port_allocate(): ", ret);
  exit(1);
 }

 ret = mach_port_allocate(mach_task_self(),
   MACH_PORT_RIGHT_PORT_SET,
   &(ports->pset));
 if (KERN_SUCCESS != ret) {
  mach_error("mach_port_allocate(): ", ret);
  exit(1);
 }

 ret = mach_port_insert_member(mach_task_self(),
   ports->port,
   ports->pset);
 if (KERN_SUCCESS != ret) {
  mach_error("mach_port_insert_member(): ", ret);
  exit(1);
 }

 ret = mach_port_insert_right(mach_task_self(),
   ports->port,
   ports->port,
   MACH_MSG_TYPE_MAKE_SEND);
 if (KERN_SUCCESS != ret) {
  mach_error("mach_port_insert_right(): ", ret);
  exit(1);
 }

 ret = task_get_bootstrap_port(mach_task_self(), &bsport);
 if (KERN_SUCCESS != ret) {
  mach_error("task_get_bootstrap_port(): ", ret);
  exit(1);
 }

 if (verbose) {
  printf("server waiting for IPC messages from client on port '%s'.\n",
   server_port_name[ports->server_num]);
 }
 ret = bootstrap_register(bsport,
     server_port_name[ports->server_num],
     ports->port);
 if (KERN_SUCCESS != ret) {
  mach_error("bootstrap_register(): ", ret);
  exit(1);
 }
}
