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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  URLContext ;
struct TYPE_9__ {double nb_invokes; char* flashver; char* swfurl; char* swfverify; char* pageurl; char* conn; scalar_t__ is_input; int /*<<< orphan*/  auth_params; int /*<<< orphan*/  tcurl; int /*<<< orphan*/  app; } ;
struct TYPE_8__ {int size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ RTMPPacket ;
typedef  TYPE_2__ RTMPContext ;

/* Variables and functions */
 scalar_t__ APP_MAX_LENGTH ; 
 int /*<<< orphan*/  RTMP_PT_INVOKE ; 
 int /*<<< orphan*/  RTMP_SYSTEM_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_2__*,TYPE_1__*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 char* FUNC11 (char*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static int FUNC13(URLContext *s, RTMPContext *rt)
{
    RTMPPacket pkt;
    uint8_t *p;
    int ret;

    if ((ret = FUNC7(&pkt, RTMP_SYSTEM_CHANNEL, RTMP_PT_INVOKE,
                                     0, 4096 + APP_MAX_LENGTH)) < 0)
        return ret;

    p = pkt.data;

    FUNC5(&p, "connect");
    FUNC2(&p, ++rt->nb_invokes);
    FUNC4(&p);
    FUNC1(&p, "app");
    FUNC6(&p, rt->app, rt->auth_params);

    if (!rt->is_input) {
        FUNC1(&p, "type");
        FUNC5(&p, "nonprivate");
    }
    FUNC1(&p, "flashVer");
    FUNC5(&p, rt->flashver);

    if (rt->swfurl || rt->swfverify) {
        FUNC1(&p, "swfUrl");
        if (rt->swfurl)
            FUNC5(&p, rt->swfurl);
        else
            FUNC5(&p, rt->swfverify);
    }

    FUNC1(&p, "tcUrl");
    FUNC6(&p, rt->tcurl, rt->auth_params);
    if (rt->is_input) {
        FUNC1(&p, "fpad");
        FUNC0(&p, 0);
        FUNC1(&p, "capabilities");
        FUNC2(&p, 15.0);

        /* Tell the server we support all the audio codecs except
         * SUPPORT_SND_INTEL (0x0008) and SUPPORT_SND_UNUSED (0x0010)
         * which are unused in the RTMP protocol implementation. */
        FUNC1(&p, "audioCodecs");
        FUNC2(&p, 4071.0);
        FUNC1(&p, "videoCodecs");
        FUNC2(&p, 252.0);
        FUNC1(&p, "videoFunction");
        FUNC2(&p, 1.0);

        if (rt->pageurl) {
            FUNC1(&p, "pageUrl");
            FUNC5(&p, rt->pageurl);
        }
    }
    FUNC3(&p);

    if (rt->conn) {
        char *param = rt->conn;

        // Write arbitrary AMF data to the Connect message.
        while (param) {
            char *sep;
            param += FUNC12(param, " ");
            if (!*param)
                break;
            sep = FUNC11(param, ' ');
            if (sep)
                *sep = '\0';
            if ((ret = FUNC10(s, param, &p)) < 0) {
                // Invalid AMF parameter.
                FUNC8(&pkt);
                return ret;
            }

            if (sep)
                param = sep + 1;
            else
                break;
        }
    }

    pkt.size = p - pkt.data;

    return FUNC9(rt, &pkt, 1);
}