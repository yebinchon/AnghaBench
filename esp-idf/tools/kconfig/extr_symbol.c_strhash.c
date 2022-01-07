
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned strhash(const char *s)
{

 unsigned hash = 2166136261U;
 for (; *s; s++)
  hash = (hash ^ *s) * 0x01000193;
 return hash;
}
