
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int bit (int) ;

__attribute__((used)) static __inline__ u_char
bits_lower(int b)
{
    return ((u_char)(bit(b) - 1));
}
