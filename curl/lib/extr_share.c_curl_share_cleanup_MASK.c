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
struct Curl_share {size_t max_ssl_sessions; int /*<<< orphan*/  clientdata; int /*<<< orphan*/  (* unlockfunc ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  psl; struct Curl_share* sslsession; int /*<<< orphan*/  cookies; int /*<<< orphan*/  hostcache; int /*<<< orphan*/  conn_cache; scalar_t__ dirty; int /*<<< orphan*/  (* lockfunc ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  CURLSHcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLSHE_INVALID ; 
 int /*<<< orphan*/  CURLSHE_IN_USE ; 
 int /*<<< orphan*/  CURLSHE_OK ; 
 int /*<<< orphan*/  CURL_LOCK_ACCESS_SINGLE ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_SHARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct Curl_share*) ; 
 int /*<<< orphan*/  FUNC6 (struct Curl_share*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

CURLSHcode
FUNC10(struct Curl_share *share)
{
  if(share == NULL)
    return CURLSHE_INVALID;

  if(share->lockfunc)
    share->lockfunc(NULL, CURL_LOCK_DATA_SHARE, CURL_LOCK_ACCESS_SINGLE,
                    share->clientdata);

  if(share->dirty) {
    if(share->unlockfunc)
      share->unlockfunc(NULL, CURL_LOCK_DATA_SHARE, share->clientdata);
    return CURLSHE_IN_USE;
  }

  FUNC0(&share->conn_cache);
  FUNC1(&share->conn_cache);
  FUNC3(&share->hostcache);

#if !defined(CURL_DISABLE_HTTP) && !defined(CURL_DISABLE_COOKIES)
  FUNC2(share->cookies);
#endif

#ifdef USE_SSL
  if(share->sslsession) {
    size_t i;
    for(i = 0; i < share->max_ssl_sessions; i++)
      Curl_ssl_kill_session(&(share->sslsession[i]));
    free(share->sslsession);
  }
#endif

  FUNC4(&share->psl);

  if(share->unlockfunc)
    share->unlockfunc(NULL, CURL_LOCK_DATA_SHARE, share->clientdata);
  FUNC6(share);

  return CURLSHE_OK;
}