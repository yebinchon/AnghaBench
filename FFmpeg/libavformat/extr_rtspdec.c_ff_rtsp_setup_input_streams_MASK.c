#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {scalar_t__ status_code; } ;
struct TYPE_10__ {scalar_t__ server_type; int /*<<< orphan*/  control_uri; } ;
typedef  TYPE_1__ RTSPState ;
typedef  TYPE_2__ RTSPMessageHeader ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 scalar_t__ RTSP_SERVER_REAL ; 
 scalar_t__ RTSP_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ ,char*,TYPE_2__*,unsigned char**) ; 
 int FUNC5 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 

int FUNC7(AVFormatContext *s, RTSPMessageHeader *reply)
{
    RTSPState *rt = s->priv_data;
    char cmd[1024];
    unsigned char *content = NULL;
    int ret;

    /* describe the stream */
    FUNC6(cmd, sizeof(cmd),
             "Accept: application/sdp\r\n");
    if (rt->server_type == RTSP_SERVER_REAL) {
        /**
         * The Require: attribute is needed for proper streaming from
         * Realmedia servers.
         */
        FUNC2(cmd,
                   "Require: com.real.retain-entity-for-setup\r\n",
                   sizeof(cmd));
    }
    FUNC4(s, "DESCRIBE", rt->control_uri, cmd, reply, &content);
    if (reply->status_code != RTSP_STATUS_OK) {
        FUNC0(&content);
        return FUNC3(reply->status_code, AVERROR_INVALIDDATA);
    }
    if (!content)
        return AVERROR_INVALIDDATA;

    FUNC1(s, AV_LOG_VERBOSE, "SDP:\n%s\n", content);
    /* now we got the SDP description, we parse it */
    ret = FUNC5(s, (const char *)content);
    FUNC0(&content);
    if (ret < 0)
        return ret;

    return 0;
}