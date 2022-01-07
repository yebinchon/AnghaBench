
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 int printf (char*,long long) ;
 int stub_state_post_print (void*) ;
 int stub_state_pre_print (void*) ;

__attribute__((used)) static int stub_read_int(int64_t value, void * data)
{
   stub_state_pre_print(data);



   printf("%lld", (signed long long)value);

   stub_state_post_print(data);
   return 0;
}
