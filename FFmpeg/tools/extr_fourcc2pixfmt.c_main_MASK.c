#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_7__ {char* name; int flags; } ;
struct TYPE_6__ {scalar_t__ pix_fmt; int /*<<< orphan*/  fourcc; } ;
typedef  TYPE_1__ PixelFormatTag ;
typedef  TYPE_2__ AVPixFmtDescriptor ;

/* Variables and functions */
 int AV_PIX_FMT_FLAG_HWACCEL ; 
 scalar_t__ AV_PIX_FMT_NONE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (scalar_t__) ; 
 TYPE_2__* FUNC3 (int) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 char FUNC6 (int,char**,char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_1__ const*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(int argc, char **argv)
{
    int i, list_fourcc_pix_fmt = 0, list_pix_fmt_fourccs = 0;
    const PixelFormatTag *pix_fmt_tags = FUNC4();
    const char *pix_fmt_name = NULL;
    char c;

    if (argc == 1) {
        FUNC9();
        return 0;
    }

    while ((c = FUNC6(argc, argv, "hp:lL")) != -1) {
        switch (c) {
        case 'h':
            FUNC9();
            return 0;
        case 'l':
            list_fourcc_pix_fmt = 1;
            break;
        case 'L':
            list_pix_fmt_fourccs = 1;
            break;
        case 'p':
            pix_fmt_name = optarg;
            break;
        case '?':
            FUNC9();
            return 1;
        }
    }

    if (list_fourcc_pix_fmt)
        for (i = 0; pix_fmt_tags[i].pix_fmt != AV_PIX_FMT_NONE; i++)
            FUNC8("%s: %s\n", FUNC0(pix_fmt_tags[i].fourcc),
                   FUNC2(pix_fmt_tags[i].pix_fmt));

    if (list_pix_fmt_fourccs) {
        for (i = 0; FUNC3(i); i++) {
            const AVPixFmtDescriptor *pix_desc = FUNC3(i);
            if (!pix_desc->name || pix_desc->flags & AV_PIX_FMT_FLAG_HWACCEL)
                continue;
            FUNC8("%s: ", pix_desc->name);
            FUNC7(i, pix_fmt_tags, ' ');
            FUNC8("\n");
        }
    }

    if (pix_fmt_name) {
        enum AVPixelFormat pix_fmt = FUNC1(pix_fmt_name);
        if (pix_fmt == AV_PIX_FMT_NONE) {
            FUNC5(stderr, "Invalid pixel format selected '%s'\n", pix_fmt_name);
            return 1;
        }
        FUNC7(pix_fmt, pix_fmt_tags, '\n');
    }

    return 0;
}