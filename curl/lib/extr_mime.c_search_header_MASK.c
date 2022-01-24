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
struct curl_slist {struct curl_slist* next; } ;

/* Variables and functions */
 char* FUNC0 (struct curl_slist*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static char *FUNC2(struct curl_slist *hdrlist, const char *hdr)
{
  size_t len = FUNC1(hdr);
  char *value = NULL;

  for(; !value && hdrlist; hdrlist = hdrlist->next)
    value = FUNC0(hdrlist, hdr, len);

  return value;
}