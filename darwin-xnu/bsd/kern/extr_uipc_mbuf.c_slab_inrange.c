
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {uintptr_t sl_len; scalar_t__ sl_base; } ;
typedef TYPE_1__ mcl_slab_t ;
typedef int boolean_t ;



__attribute__((used)) static boolean_t
slab_inrange(mcl_slab_t *sp, void *buf)
{
 return ((uintptr_t)buf >= (uintptr_t)sp->sl_base &&
     (uintptr_t)buf < ((uintptr_t)sp->sl_base + sp->sl_len));
}
