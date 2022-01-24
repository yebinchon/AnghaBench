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
struct curl_slist {int /*<<< orphan*/  data; struct curl_slist* next; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURL_ZERO_TERMINATED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int easysrc_slist_count ; 

__attribute__((used)) static CURLcode FUNC6(struct curl_slist *slist, int *slistno)
{
  CURLcode ret = CURLE_OK;
  char *escaped = NULL;

  /* May need several slist variables, so invent name */
  *slistno = ++easysrc_slist_count;

  FUNC4("struct curl_slist *slist%d;", *slistno);
  FUNC2("slist%d = NULL;", *slistno);
  FUNC0("curl_slist_free_all(slist%d);", *slistno);
  FUNC0("slist%d = NULL;", *slistno);
  for(; slist; slist = slist->next) {
    FUNC1(escaped);
    escaped = FUNC5(slist->data, CURL_ZERO_TERMINATED);
    if(!escaped)
      return CURLE_OUT_OF_MEMORY;
    FUNC3("slist%d = curl_slist_append(slist%d, \"%s\");",
                                       *slistno, *slistno, escaped);
  }

 nomem:
  FUNC1(escaped);
  return ret;
}