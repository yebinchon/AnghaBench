
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iokit_post_constructor_init () ;

__attribute__((used)) static void last_kernel_constructor(void)
{
    iokit_post_constructor_init();
}
