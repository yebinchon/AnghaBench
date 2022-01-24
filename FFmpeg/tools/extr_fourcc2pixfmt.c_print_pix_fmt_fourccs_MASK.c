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
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {scalar_t__ pix_fmt; int /*<<< orphan*/  fourcc; } ;
typedef  TYPE_1__ PixelFormatTag ;

/* Variables and functions */
 scalar_t__ AV_PIX_FMT_NONE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char) ; 

__attribute__((used)) static void FUNC2(enum AVPixelFormat pix_fmt, const PixelFormatTag *pix_fmt_tags, char sep)
{
    int i;

    for (i = 0; pix_fmt_tags[i].pix_fmt != AV_PIX_FMT_NONE; i++)
        if (pix_fmt_tags[i].pix_fmt == pix_fmt)
            FUNC1("%s%c", FUNC0(pix_fmt_tags[i].fourcc), sep);
}