
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rwebaudio_is_paused ;

__attribute__((used)) static bool rwebaudio_alive(void *data)
{
   (void)data;
   return !rwebaudio_is_paused;
}
