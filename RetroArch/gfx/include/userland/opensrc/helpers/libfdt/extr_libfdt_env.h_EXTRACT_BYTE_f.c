
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint8_t ;



__attribute__((used)) static inline unsigned long long EXTRACT_BYTE_f(void *x, int n)
{
 return ((uint8_t *)x)[n];
}
