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
struct TYPE_2__ {scalar_t__ size; scalar_t__ curpos; int /*<<< orphan*/ * config; scalar_t__ data; } ;
typedef  TYPE_1__ tool_mime ;
typedef  scalar_t__ curl_off_t ;

/* Variables and functions */
 size_t CURL_READFUNC_ABORT ; 
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

size_t FUNC7(char *buffer,
                            size_t size, size_t nitems, void *arg)
{
  tool_mime *sip = (tool_mime *) arg;
  curl_off_t bytesleft;
  (void) size;  /* Always 1: ignored. */

  if(sip->size >= 0) {
    if(sip->curpos >= sip->size)
      return 0;  /* At eof. */
    bytesleft = sip->size - sip->curpos;
    if(FUNC1(nitems) > bytesleft)
      nitems = FUNC0(bytesleft);
  }
  if(nitems) {
    if(sip->data) {
      /* Return data from memory. */
      FUNC4(buffer, sip->data + FUNC0(sip->curpos), nitems);
    }
    else {
      /* Read from stdin. */
      nitems = FUNC3(buffer, 1, nitems, stdin);
      if(FUNC2(stdin)) {
        /* Show error only once. */
        if(sip->config) {
          FUNC6(sip->config, "stdin: %s\n", FUNC5(errno));
          sip->config = NULL;
        }
        return CURL_READFUNC_ABORT;
      }
    }
    sip->curpos += FUNC1(nitems);
  }
  return nitems;
}