
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* get_proc_address ) (char const*) ;} ;


 int RETRO_LOG_ERROR ;
 TYPE_1__ hw_render ;
 int log_cb (int ,char*,char const*) ;
 scalar_t__ stub1 (char const*) ;

__attribute__((used)) static void *get_proc_address_mpv(void *fn_ctx, const char *name)
{



#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
 void *proc_addr = (void *) hw_render.get_proc_address(name);
#pragma GCC diagnostic pop

 if(proc_addr == ((void*)0))
  log_cb(RETRO_LOG_ERROR, "Failure obtaining %s proc address\n", name);

 return proc_addr;
}
