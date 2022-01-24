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
struct curl_slist {int dummy; } ;

/* Variables and functions */
 struct curl_slist* FUNC0 (struct curl_slist*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 

struct curl_slist *FUNC3(struct curl_slist *list,
                                     const char *data)
{
  char *dupdata = FUNC2(data);

  if(!dupdata)
    return NULL;

  list = FUNC0(list, dupdata);
  if(!list)
    FUNC1(dupdata);

  return list;
}