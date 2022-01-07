
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *ret2name(int i)
{
  switch(i) {
  case 0:
    return "MATCH";
  case 1:
    return "NOMATCH";
  case 2:
    return "FAIL";
  default:
    return "unknown";
  }

}
