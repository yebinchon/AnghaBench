
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct port_args {int req_size; int reply_size; size_t server_num; int port; void* reply_msg; void* req_msg; } ;
typedef int mach_msg_trailer_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_trivial_message ;
typedef int ipc_inline_message ;
typedef int ipc_complex_message ;


 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_RIGHT_RECEIVE ;
 int exit (int) ;
 int mach_error (char*,scalar_t__) ;
 scalar_t__ mach_port_allocate (int ,int ,int *) ;
 int mach_task_self () ;
 void* malloc (int) ;
 int msg_type ;



 int num_ints ;
 int num_msgs ;
 scalar_t__ oneway ;
 int printf (char*,int,char*,char*,char*) ;
 char** server_port_name ;
 scalar_t__ verbose ;

void setup_client_ports(struct port_args *ports)
{
 kern_return_t ret = 0;
 switch(msg_type) {
  case 128:
   ports->req_size = sizeof(ipc_trivial_message);
   break;
  case 129:
   ports->req_size = sizeof(ipc_inline_message) +
    sizeof(u_int32_t) * num_ints;
   break;
  case 130:
   ports->req_size = sizeof(ipc_complex_message);
   break;
 }
 ports->req_size -= sizeof(mach_msg_trailer_t);
 ports->reply_size = sizeof(ipc_trivial_message);
 ports->req_msg = malloc(ports->req_size);
 ports->reply_msg = malloc(ports->reply_size);

 ret = mach_port_allocate(mach_task_self(),
   MACH_PORT_RIGHT_RECEIVE,
   &(ports->port));
 if (KERN_SUCCESS != ret) {
  mach_error("mach_port_allocate(): ", ret);
  exit(1);
 }
 if (verbose) {
  printf("Client sending %d %s IPC messages to port '%s' in %s mode\n",
    num_msgs, (msg_type == 129) ?
    "inline" : ((msg_type == 130) ?
     "complex" : "trivial"),
    server_port_name[ports->server_num],
    (oneway ? "oneway" : "rpc"));
 }
}
