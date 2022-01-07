
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t write_cb(char *d, size_t n, size_t l, void *p)
{

  (void)d;
  (void)p;
  return n*l;
}
