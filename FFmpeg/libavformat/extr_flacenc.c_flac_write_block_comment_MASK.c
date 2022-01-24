#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* LIBAVFORMAT_IDENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_vorbiscomment_metadata_conv ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVIOContext *pb, AVDictionary **m,
                                    int last_block, int bitexact)
{
    const char *vendor = bitexact ? "ffmpeg" : LIBAVFORMAT_IDENT;
    int64_t len;
    uint8_t *p, *p0;

    FUNC6(m, ff_vorbiscomment_metadata_conv, NULL);

    len = FUNC7(*m, vendor, NULL, 0);
    if (len >= ((1<<24) - 4))
        return FUNC0(EINVAL);
    p0 = FUNC2(len+4);
    if (!p0)
        return FUNC0(ENOMEM);
    p = p0;

    FUNC5(&p, last_block ? 0x84 : 0x04);
    FUNC4(&p, len);
    FUNC8(&p, m, vendor, NULL, 0);

    FUNC3(pb, p0, len+4);
    FUNC1(&p0);
    p = NULL;

    return 0;
}