
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t gzwrite (void*,void*,size_t) ;

__attribute__((used)) static size_t gzWrite2(void *p, size_t _size, size_t _n, void *file)
{
  return gzwrite(file, p, _size * _n);
}
