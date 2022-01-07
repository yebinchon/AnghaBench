
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias_map {scalar_t__ alias; } ;


 scalar_t__ isupper (unsigned char const) ;
 int strcasecmp (scalar_t__,scalar_t__) ;
 unsigned char const tolower (unsigned char const) ;

__attribute__((used)) static int
alias_compare (const struct alias_map *map1, const struct alias_map *map2)
{



  const unsigned char *p1 = (const unsigned char *) map1->alias;
  const unsigned char *p2 = (const unsigned char *) map2->alias;
  unsigned char c1, c2;

  if (p1 == p2)
    return 0;

  do
    {


      c1 = isupper (*p1) ? tolower (*p1) : *p1;
      c2 = isupper (*p2) ? tolower (*p2) : *p2;
      if (c1 == '\0')
 break;
      ++p1;
      ++p2;
    }
  while (c1 == c2);

  return c1 - c2;

}
