
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int read_random (int*,int) ;
 scalar_t__ uuid_get_ethernet (int*) ;

__attribute__((used)) static void
read_node(uint8_t *node)
{





 read_random(node, 6);
 node[0] |= 0x01;
}
