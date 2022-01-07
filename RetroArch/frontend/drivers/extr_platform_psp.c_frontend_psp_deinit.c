
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int verbosity_disable () ;

__attribute__((used)) static void frontend_psp_deinit(void *data)
{
   (void)data;

   verbosity_disable();

}
