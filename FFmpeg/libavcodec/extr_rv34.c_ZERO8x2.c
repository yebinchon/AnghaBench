
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;


 int fill_rectangle (void*,int,int,int,int ,int) ;

__attribute__((used)) static inline void ZERO8x2(void* dst, int stride)
{
    fill_rectangle(dst, 1, 2, stride, 0, 4);
    fill_rectangle(((uint8_t*)(dst))+4, 1, 2, stride, 0, 4);
}
