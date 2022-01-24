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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

char *FUNC3(const char *str)
{
  size_t len;
  char *newstr;

  if(!str)
    return (char *)NULL;

  len = FUNC2(str);

  if(len >= ((size_t)-1) / sizeof(char))
    return (char *)NULL;

  newstr = FUNC0((len + 1)*sizeof(char));
  if(!newstr)
    return (char *)NULL;

  FUNC1(newstr, str, (len + 1)*sizeof(char));

  return newstr;

}