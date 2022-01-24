#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_10__ {int flags; int fd; TYPE_2__* lastcmd; int /*<<< orphan*/  reply; scalar_t__ bufpos; int /*<<< orphan*/  querybuf; scalar_t__ lastinteraction; scalar_t__ ctime; TYPE_1__* name; scalar_t__ id; } ;
typedef  TYPE_3__ client ;
struct TYPE_11__ {scalar_t__ unixtime; int /*<<< orphan*/  el; } ;
struct TYPE_9__ {char* name; } ;
struct TYPE_8__ {scalar_t__ ptr; } ;

/* Variables and functions */
 int AE_READABLE ; 
 int AE_WRITABLE ; 
 int CLIENT_BLOCKED ; 
 int CLIENT_CLOSE_AFTER_REPLY ; 
 int CLIENT_CLOSE_ASAP ; 
 int CLIENT_MONITOR ; 
 int CLIENT_UNBLOCKED ; 
 int CLIENT_UNIX_SOCKET ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ,int,char*,long long,long long,char*,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,char*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 

sds FUNC7(sds s, client *client) {
    char flags[16], events[3], *p;
    int emask;

    p = flags;
    if (client->flags & CLIENT_MONITOR) *p++ = 'O';
    if (client->flags & CLIENT_BLOCKED) *p++ = 'b';
    if (client->flags & CLIENT_CLOSE_AFTER_REPLY) *p++ = 'c';
    if (client->flags & CLIENT_UNBLOCKED) *p++ = 'u';
    if (client->flags & CLIENT_CLOSE_ASAP) *p++ = 'A';
    if (client->flags & CLIENT_UNIX_SOCKET) *p++ = 'U';
    if (p == flags) *p++ = 'N';
    *p++ = '\0';

    emask = client->fd == -1 ? 0 : FUNC0(server.el,client->fd);
    p = events;
    if (emask & AE_READABLE) *p++ = 'r';
    if (emask & AE_WRITABLE) *p++ = 'w';
    *p = '\0';
    return FUNC5(s,
        "id=%U addr=%s fd=%i name=%s age=%I idle=%I flags=%s qbuf=%U qbuf-free=%U obl=%U oll=%U omem=%U events=%s cmd=%s",
        (unsigned long long) client->id,
        FUNC2(client),
        client->fd,
        client->name ? (char*)client->name->ptr : "",
        (long long)(server.unixtime - client->ctime),
        (long long)(server.unixtime - client->lastinteraction),
        flags,
        (unsigned long long) FUNC6(client->querybuf),
        (unsigned long long) FUNC4(client->querybuf),
        (unsigned long long) client->bufpos,
        (unsigned long long) FUNC3(client->reply),
        (unsigned long long) FUNC1(client),
        events,
        client->lastcmd ? client->lastcmd->name : "NULL");
}