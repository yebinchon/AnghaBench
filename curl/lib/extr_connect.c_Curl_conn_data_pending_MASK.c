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
 int CURL_CSELECT_IN ; 
 scalar_t__ FUNC0 (struct connectdata*,int) ; 
 scalar_t__ FUNC1 (struct connectdata*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC3(struct connectdata *conn, int sockindex)
{
  int readable;

  if(FUNC1(conn, sockindex) ||
     FUNC0(conn, sockindex))
    return true;

  readable = FUNC2(conn->sock[sockindex], 0);
  return (readable > 0 && (readable & CURL_CSELECT_IN));
}