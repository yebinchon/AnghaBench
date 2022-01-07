
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int num ;


 int CHAR_BIT ;
 int __builtin_clz (unsigned int) ;

__attribute__((used)) static inline int
clz(unsigned int num)
{





 return num ? __builtin_clz(num) : sizeof(num) * CHAR_BIT;

}
