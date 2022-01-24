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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (struct connectdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct connectdata*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static CURLcode FUNC4(struct connectdata *conn, bool *dophase_done)
{
  CURLcode result = FUNC2(conn, dophase_done);

  if(result)
    FUNC0(FUNC3(conn->data, "DO phase failed\n"));
  else if(*dophase_done) {
    result = FUNC1(conn, FALSE /* not connected */);

    FUNC0(FUNC3(conn->data, "DO phase is complete\n"));
  }

  return result;
}