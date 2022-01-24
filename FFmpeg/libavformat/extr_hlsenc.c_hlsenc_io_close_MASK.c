#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  URLContext ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {scalar_t__ encrypt; scalar_t__ key_info_file; int /*<<< orphan*/  http_persistent; } ;
typedef  TYPE_1__ HLSContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, AVIOContext **pb, char *filename)
{
    HLSContext *hls = s->priv_data;
    int http_base_proto = filename ? FUNC4(filename) : 0;
    int ret = 0;
    if (!*pb)
        return ret;
    if (!http_base_proto || !hls->http_persistent || hls->key_info_file || hls->encrypt) {
        FUNC2(s, pb);
#if CONFIG_HTTP_PROTOCOL
    } else {
        URLContext *http_url_context = ffio_geturlcontext(*pb);
        av_assert0(http_url_context);
        avio_flush(*pb);
        ffurl_shutdown(http_url_context, AVIO_FLAG_WRITE);
        ret = ff_http_get_shutdown_status(http_url_context);
#endif
    }
    return ret;
}