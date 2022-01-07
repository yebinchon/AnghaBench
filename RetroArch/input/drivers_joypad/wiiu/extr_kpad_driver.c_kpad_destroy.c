
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kpad_ready ;

__attribute__((used)) static void kpad_destroy(void)
{
   kpad_ready = 0;
}
