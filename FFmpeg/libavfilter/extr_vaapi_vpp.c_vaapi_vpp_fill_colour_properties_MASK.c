#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VAProcColorStandardType ;
struct TYPE_6__ {int /*<<< orphan*/  va_color_range; int /*<<< orphan*/  va_chroma_sample_location; int /*<<< orphan*/  va_color_standard; int /*<<< orphan*/  chroma_sample_location; int /*<<< orphan*/  color_trc; int /*<<< orphan*/  color_primaries; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  color_range; } ;
typedef  TYPE_1__ VAAPIColourProperties ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(AVFilterContext *avctx,
                                             VAAPIColourProperties *props,
                                             VAProcColorStandardType *vacs,
                                             int nb_vacs)
{
    FUNC8(props, vacs, nb_vacs);
    FUNC6(props);
    FUNC7(props);

    FUNC5(avctx, AV_LOG_DEBUG, "Mapped colour properties %s %s/%s/%s %s "
           "to VA standard %d chroma siting %#x range %#x.\n",
           FUNC2(props->color_range),
           FUNC3(props->colorspace),
           FUNC1(props->color_primaries),
           FUNC4(props->color_trc),
           FUNC0(props->chroma_sample_location),
           props->va_color_standard,
           props->va_chroma_sample_location, props->va_color_range);
}