#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  message ;
typedef  enum RTSPStatusCode { ____Placeholder_RTSPStatusCode } RTSPStatusCode ;
struct TYPE_8__ {int code; char* message; } ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  rtsp_hd_out; } ;
typedef  TYPE_1__ RTSPState ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LIBAVFORMAT_IDENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,char*) ; 
 TYPE_3__* status_messages ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, enum RTSPStatusCode code,
                           const char *extracontent, uint16_t seq)
{
    RTSPState *rt = s->priv_data;
    char message[4096];
    int index = 0;
    while (status_messages[index].code) {
        if (status_messages[index].code == code) {
            FUNC5(message, sizeof(message), "RTSP/1.0 %d %s\r\n",
                     code, status_messages[index].message);
            break;
        }
        index++;
    }
    if (!status_messages[index].code)
        return FUNC0(EINVAL);
    FUNC3(message, sizeof(message), "CSeq: %d\r\n", seq);
    FUNC3(message, sizeof(message), "Server: %s\r\n", LIBAVFORMAT_IDENT);
    if (extracontent)
        FUNC2(message, extracontent, sizeof(message));
    FUNC2(message, "\r\n", sizeof(message));
    FUNC1(s, AV_LOG_TRACE, "Sending response:\n%s", message);
    FUNC4(rt->rtsp_hd_out, message, FUNC6(message));

    return 0;
}