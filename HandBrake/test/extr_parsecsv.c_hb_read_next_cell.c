
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_7__ {int eof; scalar_t__ curr_col; int curr_row; } ;
typedef TYPE_1__ hb_csv_file_t ;
struct TYPE_8__ {char* cell_text; scalar_t__ cell_col; int cell_row; } ;
typedef TYPE_2__ hb_csv_cell_t ;


 scalar_t__ CSV_CHAR_COLSEP ;
 scalar_t__ CSV_CHAR_EOF ;
 scalar_t__ CSV_CHAR_ROWSEP ;
 scalar_t__ hb_parse_character (TYPE_1__*) ;
 int hb_trim_end (char*) ;
 TYPE_2__* malloc (int) ;

hb_csv_cell_t *hb_read_next_cell( hb_csv_file_t *file )
{
    hb_csv_cell_t *cell = ((void*)0);
    uint16_t c;
    int index;

    if( file == ((void*)0) )
    {
        return cell;
    }

    if( file->eof )
    {
        return cell;
    }

    cell = malloc( sizeof( hb_csv_cell_t ) );
    if( cell == ((void*)0) )
    {
        return cell;
    }

    cell->cell_row = file->curr_row;
    cell->cell_col = file->curr_col;
    index = 0;
    while( CSV_CHAR_EOF != (c = hb_parse_character( file ) ) )
    {
        if( c == CSV_CHAR_ROWSEP )
        {
            file->curr_row++;
            file->curr_col = 0;
            break;
        }
        else if( c == CSV_CHAR_COLSEP )
        {
            file->curr_col++;
            break;
        }
        else
        {
            if( index < 1023 )
            {
                cell->cell_text[index] = (char)c;
                index++;
            }
        }
    }

    if( c == CSV_CHAR_EOF )
    {
        file->eof = 1;
    }


    cell->cell_text[index] = '\0';
    hb_trim_end( cell->cell_text );
    return cell;
}
