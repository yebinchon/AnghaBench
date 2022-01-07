
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kpad_poll () ;
 int kpad_ready ;

__attribute__((used)) static bool kpad_init(void *data)
{
   (void *)data;

   kpad_poll();
   kpad_ready = 1;
}
