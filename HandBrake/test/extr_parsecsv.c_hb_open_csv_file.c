
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ curr_row; scalar_t__ curr_col; int parse_state; scalar_t__ eof; int * fileref; } ;
typedef TYPE_1__ hb_csv_file_t ;
typedef int FILE ;


 int CSV_PARSE_SEEK ;
 int * hb_fopen (char const*,char*) ;
 TYPE_1__* malloc (int) ;

hb_csv_file_t *hb_open_csv_file( const char *filepath )
{
    hb_csv_file_t *file = ((void*)0);
    FILE * fileref;

    if( filepath == ((void*)0) )
    {
        return file;
    }

    fileref = hb_fopen(filepath, "r");
    if( fileref == ((void*)0) )
    {
        return file;
    }

    file = malloc( sizeof( hb_csv_file_t ) );
    if( file == ((void*)0) )
    {
        return file;
    }

    file->fileref = fileref;
    file->eof = 0;
    file->parse_state = CSV_PARSE_SEEK;
    file->curr_col = 0;
    file->curr_row = 0;
    return file;
}
