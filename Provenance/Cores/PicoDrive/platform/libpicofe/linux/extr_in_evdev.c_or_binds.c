
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_BINDTYPE_COUNT ;
 size_t IN_BIND_OFFS (int,int) ;

__attribute__((used)) static void or_binds(const int *binds, int key, int *result)
{
 int t;
 for (t = 0; t < IN_BINDTYPE_COUNT; t++)
  result[t] |= binds[IN_BIND_OFFS(key, t)];
}
