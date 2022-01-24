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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  offset; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
typedef  int /*<<< orphan*/  GUIDParseTable ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ ASFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const* const,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, const GUIDParseTable *g)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    int i;
    static const char *const titles[] =
    { "Title", "Author", "Copyright", "Description", "Rate" };
    uint16_t len[5], buflen[5] = { 0 };
    uint8_t *ch;
    uint64_t size = FUNC6(pb);

    for (i = 0; i < 5; i++) {
        len[i]  = FUNC5(pb);
        // utf8 string should be <= 2 * utf16 string, extra byte for the terminator
        buflen[i]  = 2 * len[i] + 1;
    }

    for (i = 0; i < 5; i++) {
        ch = FUNC4(buflen[i]);
        if (!ch)
            return(FUNC0(ENOMEM));
        FUNC2(s, titles[i], len[i], ch, buflen[i]);
        FUNC3(&ch);
    }
    FUNC1(pb, asf->offset, size);

    return 0;
}