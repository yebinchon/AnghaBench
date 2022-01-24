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
struct TYPE_6__ {int nb_chapters; int /*<<< orphan*/  pb; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ ID3v2EncContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ ID3v2_HEADER_SIZE ; 
 int FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s, ID3v2EncContext *id3, int enc)
{
    uint8_t *dyn_buf = NULL;
    AVIOContext *dyn_bc = NULL;
    char name[123];
    int len, ret;

    if (s->nb_chapters == 0)
        return 0;

    if ((ret = FUNC3(&dyn_bc)) < 0)
        goto fail;

    id3->len += FUNC4(dyn_bc, "toc");
    FUNC5(dyn_bc, 0x03);
    FUNC5(dyn_bc, s->nb_chapters);
    for (int i = 0; i < s->nb_chapters; i++) {
        FUNC9(name, 122, "ch%d", i);
        id3->len += FUNC4(dyn_bc, name);
    }
    len = FUNC2(dyn_bc, &dyn_buf);
    id3->len += 16 + ID3v2_HEADER_SIZE;

    FUNC7(s->pb, FUNC0('C', 'T', 'O', 'C'));
    FUNC7(s->pb, len);
    FUNC6(s->pb, 0);
    FUNC8(s->pb, dyn_buf, len);

fail:
    if (dyn_bc && !dyn_buf)
        FUNC2(dyn_bc, &dyn_buf);
    FUNC1(&dyn_buf);

    return ret;
}