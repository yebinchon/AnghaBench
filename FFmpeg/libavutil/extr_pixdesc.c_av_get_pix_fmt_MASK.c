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
typedef  int /*<<< orphan*/  name2 ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;

/* Variables and functions */
 int AV_PIX_FMT_NONE ; 
 int AV_PIX_FMT_VAAPI ; 
 char* FUNC0 (char*,char*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

enum AVPixelFormat FUNC4(const char *name)
{
    enum AVPixelFormat pix_fmt;

    if (!FUNC3(name, "rgb32"))
        name = FUNC0("argb", "bgra");
    else if (!FUNC3(name, "bgr32"))
        name = FUNC0("abgr", "rgba");

    pix_fmt = FUNC1(name);
    if (pix_fmt == AV_PIX_FMT_NONE) {
        char name2[32];

        FUNC2(name2, sizeof(name2), "%s%s", name, FUNC0("be", "le"));
        pix_fmt = FUNC1(name2);
    }

#if FF_API_VAAPI
    if (pix_fmt == AV_PIX_FMT_NONE && !strcmp(name, "vaapi"))
        pix_fmt = AV_PIX_FMT_VAAPI;
#endif
    return pix_fmt;
}