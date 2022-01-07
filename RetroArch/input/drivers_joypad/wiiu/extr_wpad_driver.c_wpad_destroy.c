
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wpad_ready ;

__attribute__((used)) static void wpad_destroy(void)
{
   wpad_ready = 0;
}
