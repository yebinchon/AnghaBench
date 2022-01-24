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
typedef  int /*<<< orphan*/  WriterContext ;
struct TYPE_7__ {int nb_components; int flags; int log2_chroma_w; int log2_chroma_h; TYPE_1__* comp; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int depth; } ;
typedef  TYPE_2__ AVPixFmtDescriptor ;

/* Variables and functions */
 int /*<<< orphan*/  ALPHA ; 
 int AV_PIX_FMT_FLAG_RGB ; 
 int /*<<< orphan*/  BE ; 
 int /*<<< orphan*/  BITSTREAM ; 
 int /*<<< orphan*/  HWACCEL ; 
 int /*<<< orphan*/  PAL ; 
 int /*<<< orphan*/  PLANAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PSEUDOPAL ; 
 int /*<<< orphan*/  RGB ; 
 int /*<<< orphan*/  SECTION_ID_PIXEL_FORMAT ; 
 int /*<<< orphan*/  SECTION_ID_PIXEL_FORMATS ; 
 int /*<<< orphan*/  SECTION_ID_PIXEL_FORMAT_COMPONENT ; 
 int /*<<< orphan*/  SECTION_ID_PIXEL_FORMAT_COMPONENTS ; 
 int /*<<< orphan*/  SECTION_ID_PIXEL_FORMAT_FLAGS ; 
 int FUNC1 (TYPE_2__ const*) ; 
 TYPE_2__* FUNC2 (TYPE_2__ const*) ; 
 scalar_t__ do_show_pixel_format_components ; 
 scalar_t__ do_show_pixel_format_flags ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(WriterContext *w)
{
    const AVPixFmtDescriptor *pixdesc = NULL;
    int i, n;

    FUNC7(w, SECTION_ID_PIXEL_FORMATS);
    while ((pixdesc = FUNC2(pixdesc))) {
        FUNC7(w, SECTION_ID_PIXEL_FORMAT);
        FUNC4("name", pixdesc->name);
        FUNC3("nb_components", pixdesc->nb_components);
        if ((pixdesc->nb_components >= 3) && !(pixdesc->flags & AV_PIX_FMT_FLAG_RGB)) {
            FUNC3    ("log2_chroma_w", pixdesc->log2_chroma_w);
            FUNC3    ("log2_chroma_h", pixdesc->log2_chroma_h);
        } else {
            FUNC5("log2_chroma_w", "N/A");
            FUNC5("log2_chroma_h", "N/A");
        }
        n = FUNC1(pixdesc);
        if (n) FUNC3    ("bits_per_pixel", n);
        else   FUNC5("bits_per_pixel", "N/A");
        if (do_show_pixel_format_flags) {
            FUNC7(w, SECTION_ID_PIXEL_FORMAT_FLAGS);
            FUNC0(BE,        "big_endian");
            FUNC0(PAL,       "palette");
            FUNC0(BITSTREAM, "bitstream");
            FUNC0(HWACCEL,   "hwaccel");
            FUNC0(PLANAR,    "planar");
            FUNC0(RGB,       "rgb");
#if FF_API_PSEUDOPAL
            PRINT_PIX_FMT_FLAG(PSEUDOPAL, "pseudopal");
#endif
            FUNC0(ALPHA,     "alpha");
            FUNC6(w);
        }
        if (do_show_pixel_format_components && (pixdesc->nb_components > 0)) {
            FUNC7(w, SECTION_ID_PIXEL_FORMAT_COMPONENTS);
            for (i = 0; i < pixdesc->nb_components; i++) {
                FUNC7(w, SECTION_ID_PIXEL_FORMAT_COMPONENT);
                FUNC3("index", i + 1);
                FUNC3("bit_depth", pixdesc->comp[i].depth);
                FUNC6(w);
            }
            FUNC6(w);
        }
        FUNC6(w);
    }
    FUNC6(w);
}