
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static __inline__ u_char
bit(int b)
{
    return ((u_char)(1 << b));
}
