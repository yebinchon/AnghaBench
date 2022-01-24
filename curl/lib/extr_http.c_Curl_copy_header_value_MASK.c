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
 scalar_t__ FUNC0 (char const) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 char* FUNC3 (char const*,char) ; 

char *FUNC4(const char *header)
{
  const char *start;
  const char *end;
  char *value;
  size_t len;

  /* Find the end of the header name */
  while(*header && (*header != ':'))
    ++header;

  if(*header)
    /* Skip over colon */
    ++header;

  /* Find the first non-space letter */
  start = header;
  while(*start && FUNC0(*start))
    start++;

  /* data is in the host encoding so
     use '\r' and '\n' instead of 0x0d and 0x0a */
  end = FUNC3(start, '\r');
  if(!end)
    end = FUNC3(start, '\n');
  if(!end)
    end = FUNC3(start, '\0');
  if(!end)
    return NULL;

  /* skip all trailing space letters */
  while((end > start) && FUNC0(*end))
    end--;

  /* get length of the type */
  len = end - start + 1;

  value = FUNC1(len + 1);
  if(!value)
    return NULL;

  FUNC2(value, start, len);
  value[len] = 0; /* zero terminate */

  return value;
}