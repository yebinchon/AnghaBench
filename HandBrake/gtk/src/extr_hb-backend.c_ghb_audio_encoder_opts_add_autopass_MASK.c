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
struct TYPE_3__ {scalar_t__ codec; int /*<<< orphan*/  short_name; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ hb_encoder_t ;
typedef  int /*<<< orphan*/  gdouble ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkListStore ;
typedef  int /*<<< orphan*/  GtkComboBox ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HB_ACODEC_AUTO_PASS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(GtkComboBox *combo)
{
    GtkTreeIter iter;
    GtkListStore *store;
    gchar *str;
    const hb_encoder_t *enc;

    enc = FUNC6(HB_ACODEC_AUTO_PASS);
    if (enc != NULL)
    {
        store = FUNC0(FUNC3 (combo));
        FUNC4(store, &iter);
        str = FUNC2("<small>%s</small>", enc->name);
        FUNC5(store, &iter,
                           0, str,
                           1, TRUE,
                           2, enc->short_name,
                           3, (gdouble)enc->codec,
                           -1);
        FUNC1(str);
    }
}