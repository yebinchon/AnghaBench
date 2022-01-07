
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int oss_is_paused ;

__attribute__((used)) static bool oss_start(void *data, bool is_shutdown)
{
   (void)data;
   oss_is_paused = 0;
   return 1;
}
