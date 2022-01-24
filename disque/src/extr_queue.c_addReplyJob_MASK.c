#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  num_deliv; int /*<<< orphan*/  num_nacks; int /*<<< orphan*/  body; int /*<<< orphan*/  id; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ job ;
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 int GETJOB_FLAG_WITHCOUNTERS ; 
 int /*<<< orphan*/  JOB_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(client *c, job *j, int flags) {
    int bulklen = 3;

    if (flags & GETJOB_FLAG_WITHCOUNTERS) bulklen += 4;
    FUNC4(c,bulklen);

    FUNC0(c,j->queue);
    FUNC1(c,j->id,JOB_ID_LEN);
    FUNC1(c,j->body,FUNC5(j->body));
    /* Job additional information is returned as key-value pairs. */
    if (flags & GETJOB_FLAG_WITHCOUNTERS) {
        FUNC2(c,"nacks");
        FUNC3(c,j->num_nacks);

        FUNC2(c,"additional-deliveries");
        FUNC3(c,j->num_deliv);
    }
}