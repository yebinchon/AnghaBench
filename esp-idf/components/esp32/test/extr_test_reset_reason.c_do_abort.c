
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int setup_values () ;

__attribute__((used)) static void do_abort(void)
{
    setup_values();
    abort();
}
