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
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char*) ; 

__attribute__((used)) static const char *FUNC3(const char *url)
{
  const char *sep;
  const char *query;

  /* Find the start of the hostname */
  sep = FUNC2(url, "//");
  if(!sep)
    sep = url;
  else
    sep += 2;

  query = FUNC0(sep, '?');
  sep = FUNC0(sep, '/');

  if(!sep)
    sep = url + FUNC1(url);

  if(!query)
    query = url + FUNC1(url);

  return sep < query ? sep : query;
}