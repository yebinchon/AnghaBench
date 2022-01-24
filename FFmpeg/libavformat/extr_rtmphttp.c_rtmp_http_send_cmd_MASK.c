#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uri ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {int /*<<< orphan*/  priv_data; } ;
struct TYPE_7__ {scalar_t__ nb_bytes_read; TYPE_4__* stream; scalar_t__ out_size; int /*<<< orphan*/  out_data; int /*<<< orphan*/  seq; int /*<<< orphan*/  client_id; int /*<<< orphan*/  port; int /*<<< orphan*/  host; } ;
typedef  TYPE_2__ RTMP_HTTPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(URLContext *h, const char *cmd)
{
    RTMP_HTTPContext *rt = h->priv_data;
    char uri[2048];
    uint8_t c;
    int ret;

    FUNC2(uri, sizeof(uri), "http", NULL, rt->host, rt->port,
                "/%s/%s/%d", cmd, rt->client_id, rt->seq++);

    FUNC0(rt->stream->priv_data, "post_data", rt->out_data,
                   rt->out_size, 0);

    /* send a new request to the server */
    if ((ret = FUNC1(rt->stream, uri)) < 0)
        return ret;

    /* re-init output buffer */
    rt->out_size = 0;

    /* read the first byte which contains the polling interval */
    if ((ret = FUNC3(rt->stream, &c, 1)) < 0)
        return ret;

    /* re-init the number of bytes read */
    rt->nb_bytes_read = 0;

    return ret;
}