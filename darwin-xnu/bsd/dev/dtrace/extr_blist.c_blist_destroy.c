
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* blist_t ;
struct TYPE_4__ {struct TYPE_4__* bl_root; } ;


 int M_SWAP ;
 int free (TYPE_1__*,int ) ;

void
blist_destroy(blist_t bl)
{
 free(bl->bl_root, M_SWAP);
 free(bl, M_SWAP);
}
