
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct apimsg_msg {TYPE_2__* conn; } ;
struct TYPE_3__ {scalar_t__ tcp; } ;
struct TYPE_4__ {int type; TYPE_1__ pcb; } ;


 int API_MSG_DEBUG ;
 int LWIP_DEBUGF (int ,char*) ;






__attribute__((used)) static void do_accept(struct apimsg_msg *msg)
{
 if(msg->conn->pcb.tcp) {
  switch(msg->conn->type) {
   case 132:
    LWIP_DEBUGF(API_MSG_DEBUG, ("api_msg: accept RAW: cannot accept for RAW.\n"));
    break;
   case 129:
   case 128:
   case 130:
    LWIP_DEBUGF(API_MSG_DEBUG, ("api_msg: accept UDP: cannot accept for UDP.\n"));
    break;
   case 131:
    break;
  }
 }
}
