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
struct timeval {long tv_sec; long tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  char CURLSH ;
typedef  int /*<<< orphan*/  CURLM ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_COOKIEFILE ; 
 int /*<<< orphan*/  CURLOPT_COOKIEJAR ; 
 int /*<<< orphan*/  CURLOPT_COOKIELIST ; 
 int /*<<< orphan*/  CURLOPT_SHARE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLSHOPT_SHARE ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

int FUNC16(char *URL)
{
  CURLSH *sh = NULL;
  CURL *ch = NULL;
  int unfinished;

  CURLM *cm = FUNC8();
  if(!cm)
    return 1;
  sh = FUNC13();
  if(!sh)
    goto cleanup;

  FUNC14(sh, CURLSHOPT_SHARE, CURL_LOCK_DATA_COOKIE);
  FUNC14(sh, CURLSHOPT_SHARE, CURL_LOCK_DATA_COOKIE);

  ch = FUNC2();
  if(!ch)
    goto cleanup;

  FUNC3(ch, CURLOPT_SHARE, sh);
  FUNC3(ch, CURLOPT_URL, URL);
  FUNC3(ch, CURLOPT_COOKIEFILE, "log/cookies1905");
  FUNC3(ch, CURLOPT_COOKIEJAR, "log/cookies1905");

  FUNC5(cm, ch);

  unfinished = 1;
  while(unfinished) {
    int MAX = 0;
    long max_tout;
    fd_set R, W, E;
    struct timeval timeout;

    FUNC0(&R);
    FUNC0(&W);
    FUNC0(&E);
    FUNC9(cm, &unfinished);

    FUNC7(cm, &R, &W, &E, &MAX);
    FUNC11(cm, &max_tout);

    if(max_tout > 0) {
      timeout.tv_sec = max_tout / 1000;
      timeout.tv_usec = (max_tout % 1000) * 1000;
    }
    else {
      timeout.tv_sec = 0;
      timeout.tv_usec = 1000;
    }

    FUNC15(MAX + 1, &R, &W, &E, &timeout);
  }

  FUNC3(ch, CURLOPT_COOKIELIST, "FLUSH");
  FUNC3(ch, CURLOPT_SHARE, NULL);

  FUNC10(cm, ch);
  cleanup:
  FUNC1(ch);
  FUNC12(sh);
  FUNC6(cm);
  FUNC4();

  return 0;
}