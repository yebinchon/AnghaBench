
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ref_count; int * udata; int (* udata_free ) (int *) ;} ;
typedef TYPE_1__ GRef ;


 int g_free (TYPE_1__*) ;
 int stub1 (int *) ;

void g_ref_unref(GRef *ref) {
 if (ref->ref_count == 0) {

 } else if (--ref->ref_count == 0) {
  if (ref->udata_free) {
   ref->udata_free(ref->udata);
   ref->udata = ((void*)0);
  }
  g_free(ref);
 }
}
