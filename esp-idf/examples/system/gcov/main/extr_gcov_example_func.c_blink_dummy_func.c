
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int ) ;

void blink_dummy_func(void)
{
    static int i;
    printf("Counter = %d\n", i++);
}
