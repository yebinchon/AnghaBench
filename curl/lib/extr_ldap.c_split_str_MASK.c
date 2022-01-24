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
 int FALSE ; 
 int TRUE ; 
 char** FUNC0 (size_t,int) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char*,char*,char**) ; 

__attribute__((used)) static bool FUNC3(char *str, char ***out, size_t *count)
{
  char **res;
  char *lasts;
  char *s;
  size_t  i;
  size_t items = 1;

  s = FUNC1(str, ',');
  while(s) {
    items++;
    s = FUNC1(++s, ',');
  }

  res = FUNC0(items, sizeof(char *));
  if(!res)
    return FALSE;

  for(i = 0, s = FUNC2(str, ",", &lasts); s && i < items;
      s = FUNC2(NULL, ",", &lasts), i++)
    res[i] = s;

  *out = res;
  *count = items;

  return TRUE;
}