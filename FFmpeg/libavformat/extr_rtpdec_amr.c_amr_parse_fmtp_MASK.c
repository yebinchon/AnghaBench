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
struct TYPE_3__ {void* channels; void* interleaving; void* crc; void* octet_align; } ;
typedef  TYPE_1__ PayloadContext ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s,
                          AVStream *stream, PayloadContext *data,
                          const char *attr, const char *value)
{
    /* Some AMR SDP configurations contain "octet-align", without
     * the trailing =1. Therefore, if the value is empty,
     * interpret it as "1".
     */
    if (!FUNC2(value, "")) {
        FUNC1(s, AV_LOG_WARNING, "AMR fmtp attribute %s had "
                                  "nonstandard empty value\n", attr);
        value = "1";
    }
    if (!FUNC2(attr, "octet-align"))
        data->octet_align = FUNC0(value);
    else if (!FUNC2(attr, "crc"))
        data->crc = FUNC0(value);
    else if (!FUNC2(attr, "interleaving"))
        data->interleaving = FUNC0(value);
    else if (!FUNC2(attr, "channels"))
        data->channels = FUNC0(value);
    return 0;
}