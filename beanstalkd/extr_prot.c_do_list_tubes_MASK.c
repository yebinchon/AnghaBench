#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* name; } ;
typedef  TYPE_2__ Tube ;
struct TYPE_10__ {int /*<<< orphan*/  state; } ;
struct TYPE_14__ {char* body; TYPE_1__ r; } ;
struct TYPE_13__ {scalar_t__ out_job_sent; TYPE_9__* out_job; } ;
struct TYPE_12__ {size_t len; TYPE_2__** items; } ;
typedef  TYPE_3__ Ms ;
typedef  TYPE_4__ Conn ;

/* Variables and functions */
 int /*<<< orphan*/  Copy ; 
 int /*<<< orphan*/  MSG_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  STATE_SEND_JOB ; 
 TYPE_9__* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(Conn *c, Ms *l)
{
    char *buf;
    Tube *t;
    size_t i, resp_z;

    /* first, measure how big a buffer we will need */
    resp_z = 6; /* initial "---\n" and final "\r\n" */
    for (i = 0; i < l->len; i++) {
        t = l->items[i];
        resp_z += 3 + FUNC4(t->name); /* including "- " and "\n" */
    }

    c->out_job = FUNC0(resp_z); /* fake job to hold response data */
    if (!c->out_job) {
        FUNC2(c, MSG_OUT_OF_MEMORY);
        return;
    }

    /* Mark this job as a copy so it can be appropriately freed later on */
    c->out_job->r.state = Copy;

    /* now actually format the response */
    buf = c->out_job->body;
    buf += FUNC3(buf, 5, "---\n");
    for (i = 0; i < l->len; i++) {
        t = l->items[i];
        buf += FUNC3(buf, 4 + FUNC4(t->name), "- %s\n", t->name);
    }
    buf[0] = '\r';
    buf[1] = '\n';

    c->out_job_sent = 0;
    FUNC1(c, STATE_SEND_JOB, "OK %zu\r\n", resp_z - 2);
}