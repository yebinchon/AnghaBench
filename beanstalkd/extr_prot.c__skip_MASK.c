#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64 ;
struct TYPE_5__ {scalar_t__ in_job_read; char* reply; int reply_len; int /*<<< orphan*/  state; scalar_t__ reply_sent; scalar_t__ in_job; } ;
typedef  TYPE_1__ Conn ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_BITBUCKET ; 
 int /*<<< orphan*/  STATE_SEND_WORD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(Conn *c, int64 n, char *msg, int msglen)
{
    /* Invert the meaning of in_job_read while throwing away data -- it
     * counts the bytes that remain to be thrown away. */
    c->in_job = 0;
    c->in_job_read = n;
    FUNC0(c);

    if (c->in_job_read == 0) {
        FUNC1(c, msg, msglen, STATE_SEND_WORD);
        return;
    }

    c->reply = msg;
    c->reply_len = msglen;
    c->reply_sent = 0;
    c->state = STATE_BITBUCKET;
}