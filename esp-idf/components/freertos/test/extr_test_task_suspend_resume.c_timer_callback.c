
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int duration_timer_ms ;

__attribute__((used)) static void timer_callback(void *arg)
{
    ++duration_timer_ms;
}
