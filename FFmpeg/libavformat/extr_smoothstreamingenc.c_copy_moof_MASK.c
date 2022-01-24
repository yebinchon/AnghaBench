#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int (* io_open ) (TYPE_1__*,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s, const char* infile, const char *outfile, int64_t size)
{
    AVIOContext *in, *out;
    int ret = 0;
    if ((ret = s->io_open(s, &in, infile, AVIO_FLAG_READ, NULL)) < 0)
        return ret;
    if ((ret = s->io_open(s, &out, outfile, AVIO_FLAG_WRITE, NULL)) < 0) {
        FUNC5(s, &in);
        return ret;
    }
    while (size > 0) {
        uint8_t buf[8192];
        int n = FUNC1(size, sizeof(buf));
        n = FUNC3(in, buf, n);
        if (n <= 0) {
            ret = FUNC0(EIO);
            break;
        }
        FUNC4(out, buf, n);
        size -= n;
    }
    FUNC2(out);
    FUNC5(s, &out);
    FUNC5(s, &in);
    return ret;
}