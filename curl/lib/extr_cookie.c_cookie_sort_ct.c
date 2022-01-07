
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Cookie {scalar_t__ creationtime; } ;



__attribute__((used)) static int cookie_sort_ct(const void *p1, const void *p2)
{
  struct Cookie *c1 = *(struct Cookie **)p1;
  struct Cookie *c2 = *(struct Cookie **)p2;

  return (c2->creationtime > c1->creationtime) ? 1 : -1;
}
