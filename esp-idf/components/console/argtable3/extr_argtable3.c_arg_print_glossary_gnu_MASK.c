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
typedef  int /*<<< orphan*/  syntax ;
struct arg_hdr {int flag; char* glossary; char* shortopts; char* longopts; char* datatype; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ARG_HASOPTVALUE ; 
 int ARG_TERMINATOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char const*,char const*,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,int) ; 
 int FUNC5 (char*) ; 

void FUNC6(FILE *fp, void * *argtable )
{
    struct arg_hdr * *table = (struct arg_hdr * *)argtable;
    int tabindex;

    for(tabindex = 0; !(table[tabindex]->flag & ARG_TERMINATOR); tabindex++)
    {
        if (table[tabindex]->glossary)
        {
            char syntax[200] = "";
            const char *shortopts = table[tabindex]->shortopts;
            const char *longopts  = table[tabindex]->longopts;
            const char *datatype  = table[tabindex]->datatype;
            const char *glossary  = table[tabindex]->glossary;

            if ( !shortopts && longopts )
            {
                /* Indent trailing line by 4 spaces... */
                FUNC4( syntax, ' ', 4 );
                *(syntax + 4) = '\0';
            }

            FUNC0(syntax,
                            sizeof(syntax),
                            shortopts,
                            longopts,
                            datatype,
                            table[tabindex]->flag & ARG_HASOPTVALUE,
                            ", ");

            /* If syntax fits not into column, print glossary in new line... */
            if ( FUNC5(syntax) > 25 )
            {
                FUNC2( fp, "  %-25s %s\n", syntax, "" );
                *syntax = '\0';
            }

            FUNC2( fp, "  %-25s ", syntax );
            FUNC1( fp, 28, 79, glossary );
        }
    } /* for each table entry */

    FUNC3( '\n', fp );
}