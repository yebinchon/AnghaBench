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
struct TYPE_2__ {scalar_t__ rewindaftersend; } ;
struct connectdata {TYPE_1__ bits; } ;
struct SingleRequest {int /*<<< orphan*/  keepon; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*) ; 
 scalar_t__ FUNC2 (struct connectdata*) ; 
 int /*<<< orphan*/  KEEP_SEND ; 

CURLcode FUNC3(struct connectdata *conn,
                           struct SingleRequest *k)
{
  k->keepon &= ~KEEP_SEND; /* we're done writing */

  /* These functions should be moved into the handler struct! */
  FUNC0(conn);
  FUNC1(conn);

  if(conn->bits.rewindaftersend) {
    CURLcode result = FUNC2(conn);
    if(result)
      return result;
  }
  return CURLE_OK;
}