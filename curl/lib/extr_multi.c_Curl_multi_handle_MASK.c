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
struct Curl_multi {int maxconnects; int /*<<< orphan*/  pending; int /*<<< orphan*/  msglist; int /*<<< orphan*/  conn_cache; int /*<<< orphan*/  hostcache; int /*<<< orphan*/  sockhash; int /*<<< orphan*/  multiplexing; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURL_MULTI_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 struct Curl_multi* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct Curl_multi*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 

struct Curl_multi *FUNC9(int hashsize, /* socket hash */
                                     int chashsize) /* connection hash */
{
  struct Curl_multi *multi = FUNC6(1, sizeof(struct Curl_multi));

  if(!multi)
    return NULL;

  multi->type = CURL_MULTI_HANDLE;

  if(FUNC5(&multi->hostcache))
    goto error;

  if(FUNC8(&multi->sockhash, hashsize))
    goto error;

  if(FUNC1(&multi->conn_cache, chashsize))
    goto error;

  FUNC4(&multi->msglist, NULL);
  FUNC4(&multi->pending, NULL);

  multi->multiplexing = TRUE;

  /* -1 means it not set by user, use the default value */
  multi->maxconnects = -1;
  return multi;

  error:

  FUNC2(&multi->sockhash);
  FUNC2(&multi->hostcache);
  FUNC0(&multi->conn_cache);
  FUNC3(&multi->msglist, NULL);
  FUNC3(&multi->pending, NULL);

  FUNC7(multi);
  return NULL;
}