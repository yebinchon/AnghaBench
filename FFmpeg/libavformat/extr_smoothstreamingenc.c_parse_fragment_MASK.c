#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int int64_t ;
struct TYPE_5__ {int (* io_open ) (TYPE_1__*,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (unsigned char,unsigned char,char,char) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int*,int const*,int) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s, const char *filename, int64_t *start_ts, int64_t *duration, int64_t *moof_size, int64_t size)
{
    AVIOContext *in;
    int ret;
    uint32_t len;
    if ((ret = s->io_open(s, &in, filename, AVIO_FLAG_READ, NULL)) < 0)
        return ret;
    ret = FUNC0(EIO);
    *moof_size = FUNC2(in);
    if (*moof_size < 8 || *moof_size > size)
        goto fail;
    if (FUNC5(in) != FUNC1('m','o','o','f'))
        goto fail;
    len = FUNC2(in);
    if (len > *moof_size)
        goto fail;
    if (FUNC5(in) != FUNC1('m','f','h','d'))
        goto fail;
    FUNC6(in, len - 8, SEEK_CUR);
    FUNC2(in); /* traf size */
    if (FUNC5(in) != FUNC1('t','r','a','f'))
        goto fail;
    while (FUNC7(in) < *moof_size) {
        uint32_t len = FUNC2(in);
        uint32_t tag = FUNC5(in);
        int64_t end = FUNC7(in) + len - 8;
        if (len < 8 || len >= *moof_size)
            goto fail;
        if (tag == FUNC1('u','u','i','d')) {
            static const uint8_t tfxd[] = {
                0x6d, 0x1d, 0x9b, 0x05, 0x42, 0xd5, 0x44, 0xe6,
                0x80, 0xe2, 0x14, 0x1d, 0xaf, 0xf7, 0x57, 0xb2
            };
            uint8_t uuid[16];
            FUNC4(in, uuid, 16);
            if (!FUNC9(uuid, tfxd, 16) && len >= 8 + 16 + 4 + 16) {
                FUNC6(in, 4, SEEK_CUR);
                *start_ts = FUNC3(in);
                *duration = FUNC3(in);
                ret = 0;
                break;
            }
        }
        FUNC6(in, end, SEEK_SET);
    }
fail:
    FUNC8(s, &in);
    return ret;
}