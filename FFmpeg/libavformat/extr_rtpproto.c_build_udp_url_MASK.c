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
struct TYPE_3__ {char const* ttl; char const* buffer_size; char const* pkt_size; char const* dscp; scalar_t__ connect; } ;
typedef  TYPE_1__ RTPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,...) ; 

__attribute__((used)) static void FUNC2(RTPContext *s,
                          char *buf, int buf_size,
                          const char *hostname,
                          int port, int local_port,
                          const char *include_sources,
                          const char *exclude_sources)
{
    FUNC0(buf, buf_size, "udp", NULL, hostname, port, NULL);
    if (local_port >= 0)
        FUNC1(buf, buf_size, "localport=%d", local_port);
    if (s->ttl >= 0)
        FUNC1(buf, buf_size, "ttl=%d", s->ttl);
    if (s->buffer_size >= 0)
        FUNC1(buf, buf_size, "buffer_size=%d", s->buffer_size);
    if (s->pkt_size >= 0)
        FUNC1(buf, buf_size, "pkt_size=%d", s->pkt_size);
    if (s->connect)
        FUNC1(buf, buf_size, "connect=1");
    if (s->dscp >= 0)
        FUNC1(buf, buf_size, "dscp=%d", s->dscp);
    FUNC1(buf, buf_size, "fifo_size=0");
    if (include_sources && include_sources[0])
        FUNC1(buf, buf_size, "sources=%s", include_sources);
    if (exclude_sources && exclude_sources[0])
        FUNC1(buf, buf_size, "block=%s", exclude_sources);
}