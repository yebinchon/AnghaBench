
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int stub_state_post_print (void*) ;
 int stub_state_pre_print (void*) ;

__attribute__((used)) static int stub_read_bool(int value, void * data)
{
   stub_state_pre_print(data);
   if (value)
      printf("true");
   else
      printf("false");
   stub_state_post_print(data);
   return 0;
}
