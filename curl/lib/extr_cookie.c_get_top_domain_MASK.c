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
 char* FUNC0 (char const* const,char,int) ; 
 size_t FUNC1 (char const* const) ; 

__attribute__((used)) static const char *FUNC2(const char * const domain, size_t *outlen)
{
  size_t len;
  const char *first = NULL, *last;

  if(!domain)
    return NULL;

  len = FUNC1(domain);
  last = FUNC0(domain, '.', len);
  if(last) {
    first = FUNC0(domain, '.', (last - domain));
    if(first)
      len -= (++first - domain);
  }

  if(outlen)
    *outlen = len;

  return first? first: domain;
}