
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_3__ {int ref_count; int udata_free; int udata; } ;
typedef TYPE_1__ GRef ;
typedef int GDestroyNotify ;


 int g_return_if_fail (int) ;

void g_ref_set(GRef *ref, gpointer udata, GDestroyNotify udata_free) {
 g_return_if_fail(ref->ref_count == 0);

 ref->udata = udata;
 ref->udata_free = udata_free;
 ref->ref_count = 1;
}
