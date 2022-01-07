
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; int addr; int len; } ;
typedef TYPE_1__ network_address ;


 int S (int ) ;
 int g_string_assign_len (int ,int ) ;
 TYPE_1__* network_address_new () ;

network_address *network_address_copy(network_address *dst, network_address *src) {
 if (!dst) dst = network_address_new();

 dst->len = src->len;
 dst->addr = src->addr;
 g_string_assign_len(dst->name, S(src->name));

 return dst;
}
