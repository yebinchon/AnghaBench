
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ n_value; } ;
typedef TYPE_1__ kernel_nlist_t ;



__attribute__((used)) static int
fbt_sym_cmp(const void *ap, const void *bp)
{
 return (int)(((const kernel_nlist_t*)ap)->n_value - ((const kernel_nlist_t*)bp)->n_value);
}
