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
struct TYPE_3__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  size_t gint ;
typedef  scalar_t__ gdouble ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkListStore ;
typedef  int /*<<< orphan*/  GtkComboBox ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int HB_VCODEC_X264_MASK ; 
 int HB_VCODEC_X265_MASK ; 
 int /*<<< orphan*/  TRUE ; 
 char const* const FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const* const,int,int /*<<< orphan*/ ,int,char const* const,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 char** FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char const* const,char*) ; 

__attribute__((used)) static void
FUNC13(signal_user_data_t *ud, const gchar *name,
                    void *opts, const void* data)
{
    (void)opts; // Silence "unused variable" warning
    (void)data; // Silence "unused variable" warning
    GtkTreeIter iter;
    GtkListStore *store;
    gint ii, count = 0;

    // Check if encoder has been set yet.
    // If not, bail
    GhbValue *value = FUNC4(ud->settings, "VideoEncoder");
    if (value == NULL) return;

    int encoder = FUNC5(ud->settings);
    const char * const *tunes;
    tunes = FUNC11(encoder);

    while (tunes && tunes[count]) count++;
    GtkWidget *w = FUNC0(ud->builder, "VideoTune");
    FUNC10(w, count > 0);
    w = FUNC0(ud->builder, "VideoTuneLabel");
    FUNC10(w, count > 0);
    if (count == 0) return;

    GtkComboBox *combo = FUNC1(FUNC0(ud->builder, name));
    store = FUNC2(FUNC6 (combo));
    FUNC8(store);

    FUNC7(store, &iter);
    FUNC9(store, &iter,
                       0, FUNC3("None"),
                       1, TRUE,
                       2, "none",
                       3, (gdouble)0,
                       -1);

    for (ii = 0; ii < count; ii++)
    {
        if (((encoder & HB_VCODEC_X264_MASK) &&
             !FUNC12(tunes[ii], "fastdecode")) ||
            ((encoder & (HB_VCODEC_X264_MASK | HB_VCODEC_X265_MASK)) &&
             !FUNC12(tunes[ii], "zerolatency")))
        {
            continue;
        }
        FUNC7(store, &iter);
        FUNC9(store, &iter,
                           0, tunes[ii],
                           1, TRUE,
                           2, tunes[ii],
                           3, (gdouble)ii + 1,
                           -1);
    }
}