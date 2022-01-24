#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_value_array_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;
typedef  int /*<<< orphan*/  hb_csv_file_t ;
struct TYPE_4__ {int cell_col; int cell_row; int /*<<< orphan*/  cell_text; } ;
typedef  TYPE_1__ hb_csv_cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC9(hb_dict_t *job_dict, const char *marker_file)
{
    if (marker_file == NULL)
        return;

    hb_csv_file_t * file = FUNC5(marker_file);
    hb_csv_cell_t * cell;
    int row = 0;

    if (file == NULL)
    {
        FUNC0(stderr, "Cannot open chapter marker file, using defaults\n");
        return;
    }
    FUNC0(stderr, "Reading chapter markers from file %s\n", marker_file);

    hb_value_array_t *chapter_array;
    chapter_array = FUNC2(FUNC2(job_dict, "Destination"),
                                "ChapterList");

    if (chapter_array == NULL)
        return;

    /* Parse the cells */
    while (NULL != (cell = FUNC6(file)))
    {
        /* We have a chapter number */
        if (cell->cell_col == 0)
        {
            row = cell->cell_row;
        }

        /* We have a chapter name */
        if (cell->cell_col == 1 && row == cell->cell_row)
        {
            /* If we have a valid chapter, add chapter entry */
            hb_dict_t *chapter_dict = FUNC7(chapter_array, row);
            if (chapter_dict != NULL)
            {
                FUNC3(chapter_dict, "Name",
                            FUNC8(cell->cell_text));
            }
        }
        FUNC4( cell );
    }
    FUNC1( file );
}