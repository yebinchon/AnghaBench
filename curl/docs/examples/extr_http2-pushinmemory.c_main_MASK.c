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
struct CURLMsg {scalar_t__ msg; int /*<<< orphan*/ * easy_handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  memory; } ;
typedef  scalar_t__ CURLMcode ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLMOPT_PIPELINING ; 
 int /*<<< orphan*/  CURLMOPT_PUSHDATA ; 
 int /*<<< orphan*/  CURLMOPT_PUSHFUNCTION ; 
 scalar_t__ CURLMSG_DONE ; 
 int* CURLPIPE_MULTIPLEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct CURLMsg* FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 TYPE_1__* files ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int pushindex ; 
 int* server_push_callback ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(void)
{
  CURL *easy;
  CURLM *multi;
  int still_running; /* keep number of running handles */
  int transfers = 1; /* we start with one */
  int i;
  struct CURLMsg *m;

  /* init a multi stack */
  multi = FUNC5();

  easy = FUNC1();

  /* set options */
  FUNC11(easy);

  /* add the easy transfer */
  FUNC2(multi, easy);

  FUNC8(multi, CURLMOPT_PIPELINING, CURLPIPE_MULTIPLEX);
  FUNC8(multi, CURLMOPT_PUSHFUNCTION, server_push_callback);
  FUNC8(multi, CURLMOPT_PUSHDATA, &transfers);

  while(transfers) {
    int rc;
    CURLMcode mcode = FUNC6(multi, &still_running);
    if(mcode)
      break;

    mcode = FUNC9(multi, NULL, 0, 1000, &rc);
    if(mcode)
      break;


    /*
     * When doing server push, libcurl itself created and added one or more
     * easy handles but *we* need to clean them up when they are done.
     */
    do {
      int msgq = 0;;
      m = FUNC4(multi, &msgq);
      if(m && (m->msg == CURLMSG_DONE)) {
        CURL *e = m->easy_handle;
        transfers--;
        FUNC7(multi, e);
        FUNC0(e);
      }
    } while(m);

  }


  FUNC3(multi);

  /* 'pushindex' is now the number of received transfers */
  for(i = 0; i < pushindex; i++) {
    /* do something fun with the data, and then free it when done */
    FUNC10(files[i].memory);
  }

  return 0;
}