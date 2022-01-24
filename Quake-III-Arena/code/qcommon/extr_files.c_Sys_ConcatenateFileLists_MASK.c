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

/* Variables and functions */
 scalar_t__ FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (int) ; 

__attribute__((used)) static char** FUNC3( char **list0, char **list1, char **list2 )
{
  int totalLength = 0;
  char** cat = NULL, **dst, **src;

  totalLength += FUNC0(list0);
  totalLength += FUNC0(list1);
  totalLength += FUNC0(list2);

  /* Create new list. */
  dst = cat = FUNC2( ( totalLength + 1 ) * sizeof( char* ) );

  /* Copy over lists. */
  if (list0)
  {
    for (src = list0; *src; src++, dst++)
      *dst = *src;
  }
  if (list1)
  {
    for (src = list1; *src; src++, dst++)
      *dst = *src;
  }
  if (list2)
  {
    for (src = list2; *src; src++, dst++)
      *dst = *src;
  }

  // Terminate the list
  *dst = NULL;

  // Free our old lists.
  // NOTE: not freeing their content, it's been merged in dst and still being used
  if (list0) FUNC1( list0 );
  if (list1) FUNC1( list1 );
  if (list2) FUNC1( list2 );

  return cat;
}