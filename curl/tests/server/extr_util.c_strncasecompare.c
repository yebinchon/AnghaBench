
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ raw_toupper (char const) ;

int strncasecompare(const char *first, const char *second, size_t max)
{
  while(*first && *second && max) {
    if(raw_toupper(*first) != raw_toupper(*second)) {
      break;
    }
    max--;
    first++;
    second++;
  }
  if(0 == max)
    return 1;

  return raw_toupper(*first) == raw_toupper(*second);
}
