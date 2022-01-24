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
struct TYPE_8__ {TYPE_1__* preview; int /*<<< orphan*/  builder; int /*<<< orphan*/  settings; } ;
typedef  TYPE_2__ signal_user_data_t ;
typedef  int /*<<< orphan*/  hb_title_t ;
typedef  int /*<<< orphan*/  gint ;
struct TYPE_7__ {size_t frame; int /*<<< orphan*/ * pix; int /*<<< orphan*/ * scaled_pix; scalar_t__* encoded; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,size_t,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int,int) ; 

void
FUNC15(signal_user_data_t *ud)
{
    GtkWidget *widget;
    gint width, height;

    gint title_id, titleindex;
    const hb_title_t *title;

    FUNC13(ud);

    title_id = FUNC5(ud->settings, "title");
    title = FUNC7(title_id, &titleindex);
    if (title == NULL && ud->preview->pix != NULL)
    {
        FUNC2(ud->preview->pix);
        ud->preview->pix = NULL;
    }
    widget = FUNC0 (ud->builder, "preview_frame");
    ud->preview->frame = FUNC8(widget) - 1;
    if (ud->preview->encoded[ud->preview->frame])
    {
        widget = FUNC0(ud->builder, "live_progress_box");
        FUNC11 (widget);
        widget = FUNC0(ud->builder, "live_preview_progress");
        FUNC12 (widget);
    }
    else
    {
        widget = FUNC0(ud->builder, "live_preview_progress");
        FUNC11 (widget);
        widget = FUNC0(ud->builder, "live_progress_box");
        FUNC12 (widget);
        widget = FUNC0(ud->builder, "live_encode_progress");
        FUNC10(FUNC1(widget), "");
        FUNC9 (FUNC1(widget), 0);
    }
    if (ud->preview->pix != NULL)
        FUNC2(ud->preview->pix);
    if (ud->preview->scaled_pix != NULL)
        FUNC2(ud->preview->scaled_pix);

    ud->preview->pix = FUNC6(title, ud->preview->frame,
                                             ud, &width, &height);
    if (ud->preview->pix == NULL)
        return;

    int pix_width, pix_height;
    pix_width  = FUNC4(ud->preview->pix);
    pix_height = FUNC3(ud->preview->pix);
    FUNC14(ud, pix_width, pix_height);
}