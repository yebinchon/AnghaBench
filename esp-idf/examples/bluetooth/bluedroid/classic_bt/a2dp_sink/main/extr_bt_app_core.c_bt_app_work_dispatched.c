
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int param; int event; int (* cb ) (int ,int ) ;} ;
typedef TYPE_1__ bt_app_msg_t ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void bt_app_work_dispatched(bt_app_msg_t *msg)
{
    if (msg->cb) {
        msg->cb(msg->event, msg->param);
    }
}
