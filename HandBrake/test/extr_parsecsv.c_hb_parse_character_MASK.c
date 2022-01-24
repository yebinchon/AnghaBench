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
typedef  scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ parse_state; int /*<<< orphan*/  fileref; } ;
typedef  TYPE_1__ hb_csv_file_t ;

/* Variables and functions */
 scalar_t__ CSV_CHAR_COLSEP ; 
 scalar_t__ CSV_CHAR_EOF ; 
 scalar_t__ CSV_CHAR_ERROR ; 
 scalar_t__ CSV_CHAR_ROWSEP ; 
 scalar_t__ CSV_PARSE_ESC ; 
 void* CSV_PARSE_NORMAL ; 
 scalar_t__ CSV_PARSE_SEEK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static uint16_t FUNC7( hb_csv_file_t * file )
{
    int byte;
    uint16_t c = 0;
    int need_char = 1;

    if( file == NULL )
    {
        return CSV_CHAR_ERROR;
    }

    while( need_char )
    {
        byte = FUNC2( file->fileref );
        if( FUNC0( file->fileref ) )
        {
            return CSV_CHAR_EOF;
        }
        if( FUNC1( file->fileref ) )
        {
            return CSV_CHAR_ERROR;
        }

        if( file->parse_state == CSV_PARSE_SEEK && FUNC6(byte) )
        {
            continue;
        }
        else if( file->parse_state != CSV_PARSE_ESC && FUNC3(byte) )
        {
            file->parse_state = CSV_PARSE_ESC;
            continue;
        }
        else if( file->parse_state != CSV_PARSE_ESC && FUNC5(byte) )
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
        else if( FUNC4(byte) )
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