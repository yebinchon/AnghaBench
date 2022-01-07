
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ test_func; } ;


 int run_test (TYPE_1__*) ;
 TYPE_1__* tests ;

int main(int argc, char *argv[])
{
    int i, ret, ret_all = 0;

    for (i = 0; tests[i].test_func; i++) {
        ret = run_test(&tests[i]);
        if (!ret_all && ret < 0)
            ret_all = ret;
    }

    return ret;
}
