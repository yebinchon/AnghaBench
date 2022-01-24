#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_5__ {int /*<<< orphan*/  rtcp_hd; int /*<<< orphan*/  rtp_hd; } ;
typedef  TYPE_2__ RTPContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ *,char*,int,char*,char*) ; 
 char* FUNC4 (char const*,char) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

int FUNC6(URLContext *h, const char *uri)
{
    RTPContext *s = h->priv_data;
    char hostname[256];
    int port, rtcp_port;
    const char *p;

    char buf[1024];
    char path[1024];

    FUNC1(NULL, 0, NULL, 0, hostname, sizeof(hostname), &port,
                 path, sizeof(path), uri);
    rtcp_port = port + 1;

    p = FUNC4(uri, '?');
    if (p) {
        if (FUNC0(buf, sizeof(buf), "rtcpport", p)) {
            rtcp_port = FUNC5(buf, NULL, 10);
        }
    }

    FUNC3(buf, sizeof(buf), "udp", NULL, hostname, port, "%s", path);
    FUNC2(s->rtp_hd, buf);

    FUNC3(buf, sizeof(buf), "udp", NULL, hostname, rtcp_port, "%s", path);
    FUNC2(s->rtcp_hd, buf);
    return 0;
}