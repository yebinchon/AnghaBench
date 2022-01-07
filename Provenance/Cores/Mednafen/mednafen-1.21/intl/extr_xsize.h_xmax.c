
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline size_t

__attribute__ ((__pure__))

xmax (size_t size1, size_t size2)
{


  return (size1 >= size2 ? size1 : size2);
}
