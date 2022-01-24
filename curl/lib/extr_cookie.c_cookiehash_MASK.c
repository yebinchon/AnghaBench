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
 size_t FUNC0 (char const*,size_t) ; 
 char* FUNC1 (char const* const,size_t*) ; 
 scalar_t__ FUNC2 (char const* const) ; 

__attribute__((used)) static size_t FUNC3(const char * const domain)
{
  const char *top;
  size_t len;

  if(!domain || FUNC2(domain))
    return 0;

  top = FUNC1(domain, &len);
  return FUNC0(top, len);
}