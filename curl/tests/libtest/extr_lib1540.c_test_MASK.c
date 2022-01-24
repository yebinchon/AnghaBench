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
struct transfer_status {int /*<<< orphan*/ * easy; } ;
typedef  int /*<<< orphan*/  st ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_HEADERDATA ; 
 int /*<<< orphan*/  CURLOPT_HEADERFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_NOPROGRESS ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_XFERINFODATA ; 
 int /*<<< orphan*/  CURLOPT_XFERINFOFUNCTION ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 long header_callback ; 
 int /*<<< orphan*/  FUNC6 (struct transfer_status*,int /*<<< orphan*/ ,int) ; 
 long please_continue ; 
 int /*<<< orphan*/  FUNC7 () ; 
 long write_callback ; 

int FUNC8(char *URL)
{
  CURL *curls = NULL;
  int i = 0;
  int res = 0;
  struct transfer_status st;

  FUNC7();

  FUNC6(&st, 0, sizeof(st));

  FUNC5(CURL_GLOBAL_ALL);

  FUNC3(curls);
  st.easy = curls; /* to allow callbacks access */

  FUNC4(curls, CURLOPT_URL, URL);
  FUNC4(curls, CURLOPT_WRITEFUNCTION, write_callback);
  FUNC4(curls, CURLOPT_WRITEDATA, &st);
  FUNC4(curls, CURLOPT_HEADERFUNCTION, header_callback);
  FUNC4(curls, CURLOPT_HEADERDATA, &st);

  FUNC4(curls, CURLOPT_XFERINFOFUNCTION, please_continue);
  FUNC4(curls, CURLOPT_XFERINFODATA, &st);
  FUNC4(curls, CURLOPT_NOPROGRESS, 0L);

  res = FUNC1(curls);

test_cleanup:

  FUNC0(curls);
  FUNC2();

  if(res)
    i = res;

  return i; /* return the final return code */
}