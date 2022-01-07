
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* DetachCurrentThread ) (TYPE_1__**) ;} ;


 TYPE_1__** java_vm ;
 int stub1 (TYPE_1__**) ;

__attribute__((used)) static void jni_detach_env(void *data)
{
    if (java_vm) {
        (*java_vm)->DetachCurrentThread(java_vm);
    }
}
