
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_char ;



__attribute__((used)) static __inline__ uint32_t
make_uint32(u_char c0, u_char c1, u_char c2, u_char c3)
{
    return (((uint32_t)c3 << 24) | ((uint32_t)c2 << 16)
     | ((uint32_t)c1 << 8) | (uint32_t)c0);
}
