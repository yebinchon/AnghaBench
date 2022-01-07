
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int kern_return_t ;
struct TYPE_4__ {scalar_t__ maxitems; scalar_t__ pool_maxitems; int npools; int pools; int pool_capacity; } ;
typedef int KXLDArrayPool ;
typedef TYPE_1__ KXLDArray ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int STAILQ_INSERT_TAIL (int *,int *,int ) ;
 int entries ;
 int finish ;
 int * pool_create (int ) ;
 scalar_t__ reinit_pools (TYPE_1__*,scalar_t__) ;
 int require_action (int,int ,int ) ;

kern_return_t
kxld_array_resize(KXLDArray *array, u_int nitems)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDArrayPool *pool = ((void*)0);



    while (nitems > array->maxitems) {
        pool = pool_create(array->pool_capacity);
        require_action(pool, finish, rval=KERN_FAILURE);

        STAILQ_INSERT_TAIL(&array->pools, pool, entries);

        array->maxitems += array->pool_maxitems;
        array->npools += 1;
    }

    nitems = reinit_pools(array, nitems);
    require_action(nitems == 0, finish, rval=KERN_FAILURE);

    rval = KERN_SUCCESS;
finish:
    return rval;
}
