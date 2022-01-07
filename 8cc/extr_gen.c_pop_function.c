
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dumpstack ;
 int functions ;
 int vec_pop (int ) ;

__attribute__((used)) static void pop_function(void *ignore) {
    if (dumpstack)
        vec_pop(functions);
}
