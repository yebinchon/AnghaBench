#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; int /*<<< orphan*/  flags; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_9__ {int rw_timeout; int /*<<< orphan*/  state; scalar_t__ position; int /*<<< orphan*/  conn_data; int /*<<< orphan*/  server_data_port; int /*<<< orphan*/  hostname; } ;
typedef  TYPE_2__ FTPContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int CONTROL_BUFFER_SIZE ; 
 int /*<<< orphan*/  READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(URLContext *h)
{
    int err;
    char buf[CONTROL_BUFFER_SIZE];
    AVDictionary *opts = NULL;
    FTPContext *s = h->priv_data;

    if (!s->conn_data) {
        /* Enter passive mode */
        if (FUNC5(s) < 0) {
            /* Use PASV as fallback */
            if ((err = FUNC4(s)) < 0)
                return err;
        }
        /* Open data connection */
        FUNC2(buf, sizeof(buf), "tcp", NULL, s->hostname, s->server_data_port, NULL);
        if (s->rw_timeout != -1) {
            FUNC1(&opts, "timeout", s->rw_timeout, 0);
        } /* if option is not given, don't pass it and let tcp use its own default */
        err = FUNC3(&s->conn_data, buf, h->flags,
                                   &h->interrupt_callback, &opts,
                                   h->protocol_whitelist, h->protocol_blacklist, h);
        FUNC0(&opts);
        if (err < 0)
            return err;

        if (s->position)
            if ((err = FUNC6(s, s->position)) < 0)
                return err;
    }
    s->state = READY;
    return 0;
}