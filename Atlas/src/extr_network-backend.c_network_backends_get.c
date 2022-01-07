
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* backends; } ;
typedef TYPE_2__ network_backends_t ;
typedef int network_backend_t ;
typedef size_t guint ;
struct TYPE_5__ {int ** pdata; } ;


 size_t network_backends_count (TYPE_2__*) ;

network_backend_t *network_backends_get(network_backends_t *bs, guint ndx) {
 if (ndx >= network_backends_count(bs)) return ((void*)0);


 return bs->backends->pdata[ndx];
}
