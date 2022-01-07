
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* post_test ) (void*) ;int (* loop ) (void*,void*) ;int (* def_param ) (void*) ;int (* pre_test ) (void**) ;} ;
typedef TYPE_1__ ptest_func_t ;
struct TYPE_6__ {int pset_num; int pset_size; void* param_group; int name; } ;
typedef TYPE_2__ param_group_t ;


 int ESP_LOGI (char*,char*,int ) ;
 int free (void*) ;
 int stub1 (void**) ;
 int stub2 (void*) ;
 int stub3 (void*,void*) ;
 int stub4 (void*) ;

void test_serializer(const param_group_t *param_group, const ptest_func_t* test_func)
{
    ESP_LOGI("test", "run test: %s", param_group->name);

    void *context = ((void*)0);
    test_func->pre_test(&context);

    void *pset = param_group->param_group;
    for (int i = param_group->pset_num; i >0; i--) {
        if (test_func->def_param) test_func->def_param(pset);
        test_func->loop(pset, context);
        pset+=param_group->pset_size;
    }

    test_func->post_test(context);
    free(context);
    context = ((void*)0);
}
