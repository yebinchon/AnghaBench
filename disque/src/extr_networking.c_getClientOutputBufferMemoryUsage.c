
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int listNode ;
struct TYPE_3__ {unsigned long reply_bytes; int reply; } ;
typedef TYPE_1__ client ;


 unsigned long listLength (int ) ;

unsigned long getClientOutputBufferMemoryUsage(client *c) {
    unsigned long list_item_size = sizeof(listNode)+5;



    return c->reply_bytes + (list_item_size*listLength(c->reply));
}
