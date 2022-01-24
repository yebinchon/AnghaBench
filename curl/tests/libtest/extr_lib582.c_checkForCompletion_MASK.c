#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ result; } ;
struct TYPE_5__ {scalar_t__ msg; TYPE_1__ data; } ;
typedef  TYPE_2__ CURLMsg ;
typedef  int /*<<< orphan*/  CURLM ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLMSG_DONE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC2(CURLM *curl, int *success)
{
  int numMessages;
  CURLMsg *message;
  int result = 0;
  *success = 0;
  while((message = FUNC0(curl, &numMessages)) != NULL) {
    if(message->msg == CURLMSG_DONE) {
      result = 1;
      if(message->data.result == CURLE_OK)
        *success = 1;
      else
        *success = 0;
    }
    else {
      FUNC1(stderr, "Got an unexpected message from curl: %i\n",
              (int)message->msg);
      result = 1;
      *success = 0;
    }
  }
  return result;
}