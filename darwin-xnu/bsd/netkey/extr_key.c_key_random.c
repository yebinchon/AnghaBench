
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int u_int32_t ;


 int key_randomfill (int *,int) ;

u_int32_t
key_random(void)
{
 u_int32_t value;

 key_randomfill(&value, sizeof(value));
 return value;
}
