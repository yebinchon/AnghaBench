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

/* Variables and functions */
 struct curl_slist* FUNC0 (struct curl_slist*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct curl_slist*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static struct curl_slist *
FUNC4(int dccsid, struct curl_slist *from, int sccsid)

{
  struct curl_slist *to = (struct curl_slist *) NULL;

  for(; from; from = from->next) {
    struct curl_slist *nl;
    char *cp = FUNC2(dccsid, from->data, -1, sccsid);

    if(!cp) {
      FUNC1(to);
      return (struct curl_slist *) NULL;
    }
    nl = FUNC0(to, cp);
    if(!nl) {
      FUNC1(to);
      FUNC3(cp);
      return NULL;
    }
    to = nl;
  }
  return to;
}