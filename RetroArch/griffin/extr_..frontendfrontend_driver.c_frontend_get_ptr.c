
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int frontend_ctx_driver_t ;


 int * current_frontend_ctx ;

frontend_ctx_driver_t *frontend_get_ptr(void)
{
   return current_frontend_ctx;
}
