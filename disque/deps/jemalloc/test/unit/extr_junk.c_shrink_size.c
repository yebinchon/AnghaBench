
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t nallocx (size_t,int ) ;

__attribute__((used)) static size_t
shrink_size(size_t size)
{
 size_t shrink_size;

 for (shrink_size = size - 1; nallocx(shrink_size, 0) == size;
     shrink_size--)
  ;

 return (shrink_size);
}
