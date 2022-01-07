
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * current_frontend_ctx ;

void frontend_driver_free(void)
{
   current_frontend_ctx = ((void*)0);
}
