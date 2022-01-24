#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  queues; int /*<<< orphan*/ * job; scalar_t__ flags; scalar_t__ timeout; } ;
struct TYPE_10__ {int fd; int bulklen; int /*<<< orphan*/ * peerid; TYPE_1__ bpop; int /*<<< orphan*/  btype; int /*<<< orphan*/  reply; scalar_t__ obuf_soft_limit_reached_time; scalar_t__ reply_bytes; scalar_t__ authenticated; int /*<<< orphan*/  lastinteraction; int /*<<< orphan*/  ctime; scalar_t__ flags; scalar_t__ sentlen; scalar_t__ multibulklen; int /*<<< orphan*/ * lastcmd; int /*<<< orphan*/  cmd; int /*<<< orphan*/ * argv; scalar_t__ argc; scalar_t__ reqtype; scalar_t__ querybuf_peak; int /*<<< orphan*/  querybuf; scalar_t__ bufpos; int /*<<< orphan*/ * name; scalar_t__ id; } ;
typedef  TYPE_2__ client ;
struct TYPE_11__ {int /*<<< orphan*/  clients; int /*<<< orphan*/  unixtime; int /*<<< orphan*/  next_client_id; int /*<<< orphan*/  el; scalar_t__ tcpkeepalive; } ;

/* Variables and functions */
 scalar_t__ AE_ERR ; 
 int /*<<< orphan*/  AE_READABLE ; 
 int /*<<< orphan*/  BLOCKED_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dupClientReplyValue ; 
 int /*<<< orphan*/  freeClientReplyValue ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  readQueryFromClient ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_5__ server ; 
 int /*<<< orphan*/  setDictType ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 TYPE_2__* FUNC12 (int) ; 

client *FUNC13(int fd) {
    client *c = FUNC12(sizeof(client));

    /* passing -1 as fd it is possible to create a non connected client.
     * This is useful since all the commands needs to be executed
     * in the context of a client. When commands are executed in other
     * contexts (for instance a Lua script) we need a non connected client. */
    if (fd != -1) {
        FUNC3(NULL,fd);
        FUNC1(NULL,fd);
        if (server.tcpkeepalive)
            FUNC2(NULL,fd,server.tcpkeepalive);
        if (FUNC0(server.el,fd,AE_READABLE,
            readQueryFromClient, c) == AE_ERR)
        {
            FUNC4(fd);
            FUNC11(c);
            return NULL;
        }
    }

    c->id = server.next_client_id++;
    c->fd = fd;
    c->name = NULL;
    c->bufpos = 0;
    c->querybuf = FUNC10();
    c->querybuf_peak = 0;
    c->reqtype = 0;
    c->argc = 0;
    c->argv = NULL;
    c->cmd = *(c->lastcmd = NULL);
    c->multibulklen = 0;
    c->bulklen = -1;
    c->sentlen = 0;
    c->flags = 0;
    c->ctime = c->lastinteraction = server.unixtime;
    c->authenticated = 0;
    c->reply = FUNC7();
    c->reply_bytes = 0;
    c->obuf_soft_limit_reached_time = 0;
    FUNC9(c->reply,freeClientReplyValue);
    FUNC8(c->reply,dupClientReplyValue);
    c->btype = BLOCKED_NONE;
    c->bpop.timeout = 0;
    c->bpop.flags = 0;
    c->bpop.job = NULL;
    c->bpop.queues = FUNC5(&setDictType,NULL);
    c->peerid = NULL;
    if (fd != -1) FUNC6(server.clients,c);
    return c;
}