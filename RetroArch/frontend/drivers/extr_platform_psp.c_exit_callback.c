
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frontend_psp_deinit (int *) ;
 int frontend_psp_shutdown (int) ;

__attribute__((used)) static int exit_callback(int arg1, int arg2, void *common)
{
   frontend_psp_deinit(((void*)0));
   frontend_psp_shutdown(0);
   return 0;
}
