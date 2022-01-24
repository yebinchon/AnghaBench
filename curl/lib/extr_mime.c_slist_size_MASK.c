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
struct curl_slist {char const* data; struct curl_slist* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct curl_slist*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static size_t FUNC2(struct curl_slist *s,
                         size_t overhead, const char *skip)
{
  size_t size = 0;
  size_t skiplen = skip? FUNC1(skip): 0;

  for(; s; s = s->next)
    if(!skip || !FUNC0(s, skip, skiplen))
      size += FUNC1(s->data) + overhead;
  return size;
}