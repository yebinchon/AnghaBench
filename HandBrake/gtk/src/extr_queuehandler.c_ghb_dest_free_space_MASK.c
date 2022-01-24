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
typedef  int guint64 ;
typedef  int gint64 ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GFileInfo ;
typedef  int /*<<< orphan*/  GFile ;

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_ATTRIBUTE_FILESYSTEM_FREE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

gint64
FUNC9(GhbValue *settings)
{
    GFile       *gfile;
    GFileInfo   *info;
    guint64      size = -1;
    const gchar *dest     = FUNC7(settings, "destination");
    gchar       *destdir  = FUNC6(dest);
    gchar       *resolved = FUNC8(destdir);

    gfile = FUNC2(resolved);
    info  = FUNC3(gfile,
                                G_FILE_ATTRIBUTE_FILESYSTEM_FREE, NULL, NULL);
    if (info != NULL)
    {
        if (FUNC1(info, G_FILE_ATTRIBUTE_FILESYSTEM_FREE))
        {
            size = FUNC0(info,
                                    G_FILE_ATTRIBUTE_FILESYSTEM_FREE);
        }
        FUNC5(info);
    }
    FUNC5(gfile);
    FUNC4(resolved);
    FUNC4(destdir);

    return size;
}