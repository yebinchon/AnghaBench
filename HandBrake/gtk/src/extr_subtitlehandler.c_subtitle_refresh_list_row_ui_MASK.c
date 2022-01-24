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
typedef  scalar_t__ gint ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,char*,int,...) ; 
 char* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(
    GtkTreeModel *tm,
    GtkTreeIter *ti,
    GhbValue *settings,
    GhbValue *subsettings)
{
    GtkTreeIter cti;
    gboolean forced, burned, def;
    char *info_src, *info_src_2;
    char *info_dst, *info_dst_2;
    char *desc;


    info_src_2 = NULL;
    info_dst_2 = NULL;

    forced = FUNC8(subsettings, "Forced");
    burned = FUNC8(subsettings, "Burn");
    def = FUNC8(subsettings, "Default");
    desc = FUNC14(settings, subsettings);
    info_src = FUNC3("<small>%s</small>", desc);
    FUNC1(desc);
    if (FUNC7(subsettings, "Import") != NULL)
    {
        gint offset;
        offset = FUNC9(subsettings, "Offset");
        if (offset != 0)
        {
            info_dst_2 = FUNC3("Offset: %dms", offset);
        }
    }

    GString *str = FUNC6("<small>");
    FUNC4(str, "%s ", burned ? "Burned Into Video" :
                                                "Passthrough");
    if (forced)
    {
        FUNC4(str, "(Forced Subtitles Only)");
    }
    if (def)
    {
        FUNC4(str, "(Default)");
    }
    FUNC4(str, "</small>");

    info_dst = FUNC5(str, FALSE);

    FUNC13(FUNC0(tm), ti,
        // These are displayed in list
        0, info_src,
        1, "-->",
        2, info_dst,
        3, "hb-edit",
        4, "hb-remove",
        5, 0.5,
        -1);

    if (info_src_2 != NULL || info_dst_2 != NULL)
    {
        if (info_src_2 == NULL)
            info_src_2 = FUNC2("");
        if (info_dst_2 == NULL)
            info_dst_2 = FUNC2("");

        if (!FUNC10(tm, &cti, ti))
        {
            FUNC11(FUNC0(tm), &cti, ti);
        }
        FUNC13(FUNC0(tm), &cti,
            // These are displayed in list
            0, info_src_2,
            2, info_dst_2,
            5, 0.0,
            -1);
    }
    else
    {
        if (FUNC10(tm, &cti, ti))
        {
            FUNC12(FUNC0(tm), &cti);
        }
    }

    FUNC1(info_src);
    FUNC1(info_src_2);
    FUNC1(info_dst);
    FUNC1(info_dst_2);
}