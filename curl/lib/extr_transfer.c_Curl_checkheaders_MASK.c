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
struct curl_slist {char* data; struct curl_slist* next; } ;
struct connectdata {struct Curl_easy* data; } ;
struct TYPE_2__ {struct curl_slist* headers; } ;
struct Curl_easy {TYPE_1__ set; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*,size_t) ; 

char *FUNC3(const struct connectdata *conn,
                        const char *thisheader)
{
  struct curl_slist *head;
  size_t thislen = FUNC1(thisheader);
  struct Curl_easy *data = conn->data;

  for(head = data->set.headers; head; head = head->next) {
    if(FUNC2(head->data, thisheader, thislen) &&
       FUNC0(head->data[thislen]) )
      return head->data;
  }

  return NULL;
}