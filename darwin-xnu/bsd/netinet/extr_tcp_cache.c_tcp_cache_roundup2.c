
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;



__attribute__((used)) static u_int32_t tcp_cache_roundup2(u_int32_t a)
{
 a--;
 a |= a >> 1;
 a |= a >> 2;
 a |= a >> 4;
 a |= a >> 8;
 a |= a >> 16;
 a++;

 return a;
}
