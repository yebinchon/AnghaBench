
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ parse_state; int fileref; } ;
typedef TYPE_1__ hb_csv_file_t ;


 scalar_t__ CSV_CHAR_COLSEP ;
 scalar_t__ CSV_CHAR_EOF ;
 scalar_t__ CSV_CHAR_ERROR ;
 scalar_t__ CSV_CHAR_ROWSEP ;
 scalar_t__ CSV_PARSE_ESC ;
 void* CSV_PARSE_NORMAL ;
 scalar_t__ CSV_PARSE_SEEK ;
 scalar_t__ feof (int ) ;
 scalar_t__ ferror (int ) ;
 int fgetc (int ) ;
 scalar_t__ is_esc (int) ;
 scalar_t__ is_newline (int) ;
 scalar_t__ is_sep (int) ;
 scalar_t__ is_white (int) ;

__attribute__((used)) static uint16_t hb_parse_character( hb_csv_file_t * file )
{
    int byte;
    uint16_t c = 0;
    int need_char = 1;

    if( file == ((void*)0) )
    {
        return CSV_CHAR_ERROR;
    }

    while( need_char )
    {
        byte = fgetc( file->fileref );
        if( feof( file->fileref ) )
        {
            return CSV_CHAR_EOF;
        }
        if( ferror( file->fileref ) )
        {
            return CSV_CHAR_ERROR;
        }

        if( file->parse_state == CSV_PARSE_SEEK && is_white(byte) )
        {
            continue;
        }
        else if( file->parse_state != CSV_PARSE_ESC && is_esc(byte) )
        {
            file->parse_state = CSV_PARSE_ESC;
            continue;
        }
        else if( file->parse_state != CSV_PARSE_ESC && is_sep(byte) )
        {
            file->parse_state = CSV_PARSE_SEEK;
            need_char = 0;
            c = CSV_CHAR_COLSEP;
        }
        else if( file->parse_state == CSV_PARSE_ESC )
        {
            file->parse_state = CSV_PARSE_NORMAL;
            need_char = 0;
            c = (uint16_t)byte;
        }
        else if( is_newline(byte) )
        {
            file->parse_state = CSV_PARSE_SEEK;
            need_char = 0;
            c = CSV_CHAR_ROWSEP;
        }
        else
        {
            file->parse_state = CSV_PARSE_NORMAL;
            need_char = 0;
            c = (uint16_t)byte;
        }
    }

    return c;
}
