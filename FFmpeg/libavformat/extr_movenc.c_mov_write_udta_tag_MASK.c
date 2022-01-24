#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {scalar_t__ nb_chapters; } ;
struct TYPE_12__ {int mode; int flags; } ;
typedef  TYPE_1__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FF_MOV_FLAG_DISABLE_CHPL ; 
 int FF_MOV_FLAG_USE_MDTA ; 
 int MODE_3GP ; 
 int MODE_MOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(AVIOContext *pb, MOVMuxContext *mov,
                              AVFormatContext *s)
{
    AVIOContext *pb_buf;
    int ret, size;
    uint8_t *buf;

    ret = FUNC2(&pb_buf);
    if (ret < 0)
        return ret;

    if (mov->mode & MODE_3GP) {
        FUNC6(pb_buf, s, "perf", "artist");
        FUNC6(pb_buf, s, "titl", "title");
        FUNC6(pb_buf, s, "auth", "author");
        FUNC6(pb_buf, s, "gnre", "genre");
        FUNC6(pb_buf, s, "dscp", "comment");
        FUNC6(pb_buf, s, "albm", "album");
        FUNC6(pb_buf, s, "cprt", "copyright");
        FUNC6(pb_buf, s, "yrrc", "date");
        FUNC8(s, pb_buf);
    } else if (mov->mode == MODE_MOV && !(mov->flags & FF_MOV_FLAG_USE_MDTA)) { // the title field breaks gtkpod with mp4 and my suspicion is that stuff is not valid in mp4
        FUNC11(s, pb_buf, "\251ART", "artist",      0);
        FUNC11(s, pb_buf, "\251nam", "title",       0);
        FUNC11(s, pb_buf, "\251aut", "author",      0);
        FUNC11(s, pb_buf, "\251alb", "album",       0);
        FUNC11(s, pb_buf, "\251day", "date",        0);
        FUNC11(s, pb_buf, "\251swr", "encoder",     0);
        // currently ignored by mov.c
        FUNC11(s, pb_buf, "\251des", "comment",     0);
        // add support for libquicktime, this atom is also actually read by mov.c
        FUNC11(s, pb_buf, "\251cmt", "comment",     0);
        FUNC11(s, pb_buf, "\251gen", "genre",       0);
        FUNC11(s, pb_buf, "\251cpy", "copyright",   0);
        FUNC11(s, pb_buf, "\251mak", "make",        0);
        FUNC11(s, pb_buf, "\251mod", "model",       0);
        FUNC11(s, pb_buf, "\251xyz", "location",    0);
        FUNC11(s, pb_buf, "\251key", "keywords",    0);
        FUNC10(s, pb_buf, "XMP_", "xmp");
    } else {
        /* iTunes meta data */
        FUNC9(pb_buf, mov, s);
        FUNC8(s, pb_buf);
    }

    if (s->nb_chapters && !(mov->flags & FF_MOV_FLAG_DISABLE_CHPL))
        FUNC7(pb_buf, s);

    if ((size = FUNC1(pb_buf, &buf)) > 0) {
        FUNC3(pb, size + 8);
        FUNC5(pb, "udta");
        FUNC4(pb, buf, size);
    }
    FUNC0(buf);

    return 0;
}