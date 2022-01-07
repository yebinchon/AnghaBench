
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * retro_proc_address_t ;
struct TYPE_4__ {TYPE_1__* ctx_driver; } ;
typedef TYPE_2__ gl_core_t ;
struct TYPE_3__ {int * (* get_proc_address ) (char const*) ;} ;


 int * stub1 (char const*) ;

__attribute__((used)) static retro_proc_address_t gl_core_get_proc_address(
      void *data, const char *sym)
{
   gl_core_t *gl = (gl_core_t*)data;
   if (gl && gl->ctx_driver->get_proc_address)
      return gl->ctx_driver->get_proc_address(sym);

   return ((void*)0);
}
