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
struct connectdata {int /*<<< orphan*/ * sock; } ;

/* Variables and functions */
 int CURL_CSELECT_ERR ; 
 int CURL_CSELECT_IN ; 
 int /*<<< orphan*/  FUNC0 (struct connectdata*) ; 
 int FALSE ; 
 size_t FIRSTSOCKET ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRUE ; 

__attribute__((used)) static bool FUNC2(struct connectdata *check)
{
  int sval;
  bool ret_val = TRUE;

  sval = FUNC1(check->sock[FIRSTSOCKET], 0);
  if(sval == 0) {
    /* timeout */
    ret_val = FALSE;
  }
  else if(sval & CURL_CSELECT_ERR) {
    /* socket is in an error state */
    ret_val = TRUE;
  }
  else if(sval & CURL_CSELECT_IN) {
    /* readable with no error. could still be closed */
    ret_val = !FUNC0(check);
  }

  return ret_val;
}