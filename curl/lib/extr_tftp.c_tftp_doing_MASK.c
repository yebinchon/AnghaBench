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
struct connectdata {int /*<<< orphan*/  data; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_ABORTED_BY_CALLBACK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct connectdata*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct connectdata*,int*) ; 

__attribute__((used)) static CURLcode FUNC6(struct connectdata *conn, bool *dophase_done)
{
  CURLcode result;
  result = FUNC5(conn, dophase_done);

  if(*dophase_done) {
    FUNC3(FUNC4(conn->data, "DO phase is complete\n"));
  }
  else if(!result) {
    /* The multi code doesn't have this logic for the DOING state so we
       provide it for TFTP since it may do the entire transfer in this
       state. */
    if(FUNC1(conn))
      result = CURLE_ABORTED_BY_CALLBACK;
    else
      result = FUNC2(conn->data, FUNC0());
  }
  return result;
}