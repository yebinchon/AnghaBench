
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int store8 (int *,int) ;

__attribute__((used)) static inline void lz4_fill16(uint8_t * ptr)
{
  store8(ptr,-1);
  store8(ptr+8,-1);
}
