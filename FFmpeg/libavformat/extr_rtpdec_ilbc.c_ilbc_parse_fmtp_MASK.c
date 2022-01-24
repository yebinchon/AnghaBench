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
struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {int block_align; } ;
typedef  int /*<<< orphan*/  PayloadContext ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s,
                           AVStream *stream, PayloadContext *data,
                           const char *attr, const char *value)
{
    if (!FUNC3(attr, "mode")) {
        int mode = FUNC1(value);
        switch (mode) {
        case 20:
            stream->codecpar->block_align = 38;
            break;
        case 30:
            stream->codecpar->block_align = 50;
            break;
        default:
            FUNC2(s, AV_LOG_ERROR, "Unsupported iLBC mode %d\n", mode);
            return FUNC0(EINVAL);
        }
    }
    return 0;
}