#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct curl_slist {int dummy; } ;
struct Curl_easy {TYPE_1__* cookies; } ;
struct Cookie {int /*<<< orphan*/  domain; struct Cookie* next; } ;
struct TYPE_2__ {scalar_t__ numcookies; struct Cookie** cookies; } ;

/* Variables and functions */
 unsigned int COOKIE_HASH_SIZE ; 
 struct curl_slist* FUNC0 (struct curl_slist*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (struct Cookie*) ; 

__attribute__((used)) static struct curl_slist *FUNC4(struct Curl_easy *data)
{
  struct curl_slist *list = NULL;
  struct curl_slist *beg;
  struct Cookie *c;
  char *line;
  unsigned int i;

  if((data->cookies == NULL) ||
      (data->cookies->numcookies == 0))
    return NULL;

  for(i = 0; i < COOKIE_HASH_SIZE; i++) {
    for(c = data->cookies->cookies[i]; c; c = c->next) {
      if(!c->domain)
        continue;
      line = FUNC3(c);
      if(!line) {
        FUNC1(list);
        return NULL;
      }
      beg = FUNC0(list, line);
      if(!beg) {
        FUNC2(line);
        FUNC1(list);
        return NULL;
      }
      list = beg;
    }
  }

  return list;
}