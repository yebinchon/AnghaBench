
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* blist_t ;
struct TYPE_3__ {int bl_skip; int bl_radix; int bl_root; } ;


 int blst_radix_print (int ,int ,int ,int ,int) ;
 int printf (char*) ;

void
blist_print(blist_t bl)
{
 printf("BLIST {\n");
 blst_radix_print(bl->bl_root, 0, bl->bl_radix, bl->bl_skip, 4);
 printf("}\n");
}
