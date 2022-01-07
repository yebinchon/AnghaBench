
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ref_count; } ;
typedef TYPE_1__ GRef ;


 int g_return_if_fail (int) ;

void g_ref_ref(GRef *ref) {
 g_return_if_fail(ref->ref_count > 0);

 ref->ref_count++;
}
