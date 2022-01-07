
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hb_value_array_t ;
typedef int hb_dict_t ;
typedef int hb_csv_file_t ;
struct TYPE_4__ {int cell_col; int cell_row; int cell_text; } ;
typedef TYPE_1__ hb_csv_cell_t ;


 int fprintf (int ,char*,...) ;
 int hb_close_csv_file (int *) ;
 int * hb_dict_get (int *,char*) ;
 int hb_dict_set (int *,char*,int ) ;
 int hb_dispose_cell (TYPE_1__*) ;
 int * hb_open_csv_file (char const*) ;
 TYPE_1__* hb_read_next_cell (int *) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_string (int ) ;
 int stderr ;

void write_chapter_names(hb_dict_t *job_dict, const char *marker_file)
{
    if (marker_file == ((void*)0))
        return;

    hb_csv_file_t * file = hb_open_csv_file(marker_file);
    hb_csv_cell_t * cell;
    int row = 0;

    if (file == ((void*)0))
    {
        fprintf(stderr, "Cannot open chapter marker file, using defaults\n");
        return;
    }
    fprintf(stderr, "Reading chapter markers from file %s\n", marker_file);

    hb_value_array_t *chapter_array;
    chapter_array = hb_dict_get(hb_dict_get(job_dict, "Destination"),
                                "ChapterList");

    if (chapter_array == ((void*)0))
        return;


    while (((void*)0) != (cell = hb_read_next_cell(file)))
    {

        if (cell->cell_col == 0)
        {
            row = cell->cell_row;
        }


        if (cell->cell_col == 1 && row == cell->cell_row)
        {

            hb_dict_t *chapter_dict = hb_value_array_get(chapter_array, row);
            if (chapter_dict != ((void*)0))
            {
                hb_dict_set(chapter_dict, "Name",
                            hb_value_string(cell->cell_text));
            }
        }
        hb_dispose_cell( cell );
    }
    hb_close_csv_file( file );
}
