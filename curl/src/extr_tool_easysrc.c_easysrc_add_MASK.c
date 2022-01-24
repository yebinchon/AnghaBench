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
struct slist_wc {int dummy; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct slist_wc* FUNC1 (struct slist_wc*,char const*) ; 

CURLcode FUNC2(struct slist_wc **plist, const char *line)
{
  CURLcode ret = CURLE_OK;
  struct slist_wc *list = FUNC1(*plist, line);
  if(!list) {
    FUNC0();
    ret = CURLE_OUT_OF_MEMORY;
  }
  else
    *plist = list;
  return ret;
}