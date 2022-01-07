
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int first_run ;

__attribute__((used)) static void crt_check_first_run(void)
{
   if (!first_run)
      return;

   first_run = 0;
}
