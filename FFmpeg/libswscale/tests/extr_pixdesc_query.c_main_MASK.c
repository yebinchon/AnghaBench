#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_8__ {char* class; scalar_t__ (* cond ) (int) ;} ;
struct TYPE_7__ {char* name; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;

/* Variables and functions */
 int AV_PIX_FMT_BGR32 ; 
 int AV_PIX_FMT_BGR32_1 ; 
 int AV_PIX_FMT_RGB32 ; 
 int AV_PIX_FMT_RGB32_1 ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char const***,int*,void*) ; 
 int /*<<< orphan*/  FUNC2 (char const**) ; 
 int FUNC3 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC4 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  cmp_str ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* query_tab ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(void)
{
    int i, j;

    for (i = 0; i < FUNC0(query_tab); i++) {
        const char **pix_fmts = NULL;
        int nb_pix_fmts = 0;
        const AVPixFmtDescriptor *pix_desc = NULL;

        while ((pix_desc = FUNC4(pix_desc))) {
            enum AVPixelFormat pix_fmt = FUNC3(pix_desc);
            if (query_tab[i].cond(pix_fmt)) {
                const char *pix_name = pix_desc->name;
                if      (pix_fmt == AV_PIX_FMT_RGB32)   pix_name = "rgb32";
                else if (pix_fmt == AV_PIX_FMT_RGB32_1) pix_name = "rgb32_1";
                else if (pix_fmt == AV_PIX_FMT_BGR32)   pix_name = "bgr32";
                else if (pix_fmt == AV_PIX_FMT_BGR32_1) pix_name = "bgr32_1";

                FUNC1(&pix_fmts, &nb_pix_fmts, (void *)pix_name);
            }
        }

        if (pix_fmts) {
            FUNC6(pix_fmts, nb_pix_fmts, sizeof(*pix_fmts), cmp_str);

            FUNC5("%s:\n", query_tab[i].class);
            for (j = 0; j < nb_pix_fmts; j++)
                FUNC5("  %s\n", pix_fmts[j]);
            FUNC5("\n");

            FUNC2(pix_fmts);
        }
    }
    return 0;
}