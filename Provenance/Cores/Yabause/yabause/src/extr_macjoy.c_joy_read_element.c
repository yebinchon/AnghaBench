
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__** iface; } ;
typedef TYPE_1__ joydata_t ;
struct TYPE_10__ {int cookie; } ;
typedef TYPE_2__ joy_elemdata_t ;
struct TYPE_12__ {int (* getElementValue ) (TYPE_4__**,int ,TYPE_3__*) ;} ;
struct TYPE_11__ {int value; } ;
typedef TYPE_3__ IOHIDEventStruct ;


 int memset (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_4__**,int ,TYPE_3__*) ;

int joy_read_element(joydata_t *joy, joy_elemdata_t *elem) {
    IOHIDEventStruct ev;

    memset(&ev, 0, sizeof(IOHIDEventStruct));

    (*joy->iface)->getElementValue(joy->iface, elem->cookie, &ev);

    return ev.value;
}
