
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int setup_values () ;

__attribute__((used)) static void do_exception(void)
{
    setup_values();
    *(int*) (0x40000001) = 0;
}
