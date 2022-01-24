#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct alias_map {scalar_t__ alias; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char const) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 unsigned char const FUNC2 (unsigned char const) ; 

__attribute__((used)) static int
FUNC3 (const struct alias_map *map1, const struct alias_map *map2)
{
#if defined _LIBC || defined HAVE_STRCASECMP
  return strcasecmp (map1->alias, map2->alias);
#else
  const unsigned char *p1 = (const unsigned char *) map1->alias;
  const unsigned char *p2 = (const unsigned char *) map2->alias;
  unsigned char c1, c2;

  if (p1 == p2)
    return 0;

  do
    {
      /* I know this seems to be odd but the tolower() function in
	 some systems libc cannot handle nonalpha characters.  */
      c1 = FUNC0 (*p1) ? FUNC2 (*p1) : *p1;
      c2 = FUNC0 (*p2) ? FUNC2 (*p2) : *p2;
      if (c1 == '\0')
	break;
      ++p1;
      ++p2;
    }
  while (c1 == c2);

  return c1 - c2;
#endif
}