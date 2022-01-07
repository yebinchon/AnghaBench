
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static __inline void
swap_bytes(u_char *a, u_char *b)
{
 u_char temp;

 temp = *a;
 *a = *b;
 *b = temp;
}
