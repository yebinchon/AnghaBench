
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vcos_argc ;
 char const** vcos_argv ;

void vcos_set_args(int argc, const char **argv)
{
   vcos_argc = argc;
   vcos_argv = argv;
}
