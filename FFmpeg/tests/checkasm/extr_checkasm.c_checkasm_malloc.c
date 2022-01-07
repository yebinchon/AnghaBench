
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int funcs; } ;


 void* calloc (int,size_t) ;
 int destroy_func_tree (int ) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 TYPE_1__ state ;
 int stderr ;

__attribute__((used)) static void *checkasm_malloc(size_t size)
{
    void *ptr = calloc(1, size);
    if (!ptr) {
        fprintf(stderr, "checkasm: malloc failed\n");
        destroy_func_tree(state.funcs);
        exit(1);
    }
    return ptr;
}
