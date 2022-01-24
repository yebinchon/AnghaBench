#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct curl_slist {char* data; struct curl_slist* next; } ;
struct TYPE_3__ {struct curl_slist* first; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  easysrc_code ; 
 TYPE_1__* easysrc_toohard ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char** srchard ; 

CURLcode FUNC3(void)
{
  /* Note any setopt calls which we could not convert */
  if(easysrc_toohard) {
    int i;
    struct curl_slist *ptr;
    const char *c;
    FUNC0(FUNC1(&easysrc_code, ""));
    /* Preamble comment */
    for(i = 0; ((c = srchard[i]) != NULL); i++)
      FUNC0(FUNC1(&easysrc_code, c));
    /* Each unconverted option */
    if(easysrc_toohard) {
      for(ptr = easysrc_toohard->first; ptr; ptr = ptr->next)
        FUNC0(FUNC1(&easysrc_code, ptr->data));
    }
    FUNC0(FUNC1(&easysrc_code, ""));
    FUNC0(FUNC1(&easysrc_code, "*/"));

    FUNC2(easysrc_toohard);
    easysrc_toohard = NULL;
  }

  FUNC0(FUNC1(&easysrc_code, ""));
  FUNC0(FUNC1(&easysrc_code, "ret = curl_easy_perform(hnd);"));
  FUNC0(FUNC1(&easysrc_code, ""));

  return CURLE_OK;
}