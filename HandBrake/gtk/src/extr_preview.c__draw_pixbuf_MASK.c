#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* preview; } ;
typedef  TYPE_2__ signal_user_data_t ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_4__ {int render_width; int render_height; } ;
typedef  int /*<<< orphan*/  GdkPixbuf ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_OPERATOR_CLEAR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(signal_user_data_t * ud, cairo_t *cr, GdkPixbuf *pix)
{
    int pix_width, pix_height, hoff, voff;

    FUNC5(cr);
    FUNC3(cr, 0, 0, ud->preview->render_width,
                              ud->preview->render_height);
    FUNC6(cr, CAIRO_OPERATOR_CLEAR);
    FUNC1(cr);
    FUNC4(cr);

    pix_width  = FUNC10(pix);
    pix_height = FUNC9(pix);
    hoff = FUNC0((ud->preview->render_width  - pix_width)  / 2, 0);
    voff = FUNC0((ud->preview->render_height - pix_height) / 2, 0);
    if (voff > 0 || hoff > 0)
    {
        FUNC7(cr, hoff, voff);
    }

    FUNC8(cr, pix, 0, 0);
    FUNC2(cr);
}