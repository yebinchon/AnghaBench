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
struct Curl_URL {int /*<<< orphan*/  portnum; } ;
typedef  struct Curl_URL CURLU ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Curl_URL*,struct Curl_URL*,int /*<<< orphan*/ ) ; 
 struct Curl_URL* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_URL*) ; 
 int /*<<< orphan*/  fragment ; 
 int /*<<< orphan*/  host ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  password ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  query ; 
 int /*<<< orphan*/  scheme ; 
 int /*<<< orphan*/  user ; 

CURLU *FUNC3(CURLU *in)
{
  struct Curl_URL *u = FUNC1(sizeof(struct Curl_URL), 1);
  if(u) {
    FUNC0(u, in, scheme);
    FUNC0(u, in, user);
    FUNC0(u, in, password);
    FUNC0(u, in, options);
    FUNC0(u, in, host);
    FUNC0(u, in, port);
    FUNC0(u, in, path);
    FUNC0(u, in, query);
    FUNC0(u, in, fragment);
    u->portnum = in->portnum;
  }
  return u;
  fail:
  FUNC2(u);
  return NULL;
}