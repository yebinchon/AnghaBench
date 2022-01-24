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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {char* value; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  metadata; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int AVFMT_FLAG_BITEXACT ; 
 char* LIBAVCODEC_IDENT ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVIOContext *pb, AVFormatContext *s)
{
    AVDictionaryEntry *title = FUNC0(s->metadata, "title", NULL, 0);
    int64_t pos, pos2;

    if (title) {
        pos = FUNC1(pb);
        FUNC3(pb, 0); /* size placeholder*/
        FUNC4(pb, "uuid");
        FUNC4(pb, "USMT");
        FUNC3(pb, 0x21d24fce); /* 96 bit UUID */
        FUNC3(pb, 0xbb88695c);
        FUNC3(pb, 0xfac9c740);

        pos2 = FUNC1(pb);
        FUNC3(pb, 0); /* size placeholder*/
        FUNC4(pb, "MTDT");
        FUNC2(pb, 4);

        // ?
        FUNC2(pb, 0x0C);                 /* size */
        FUNC3(pb, 0x0B);                 /* type */
        FUNC2(pb, FUNC5("und")); /* language */
        FUNC2(pb, 0x0);                  /* ? */
        FUNC2(pb, 0x021C);               /* data */

        if (!(s->flags & AVFMT_FLAG_BITEXACT))
            FUNC6(pb, LIBAVCODEC_IDENT,      "eng", 0x04);
        FUNC6(pb, title->value,          "eng", 0x01);
        FUNC6(pb, "2006/04/01 11:11:11", "und", 0x03);

        FUNC7(pb, pos2);
        return FUNC7(pb, pos);
    }

    return 0;
}