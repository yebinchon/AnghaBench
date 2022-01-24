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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned int FUNC3 (char const*) ; 

void FUNC4( FILE *fp,
                          const unsigned lmargin,
                          const unsigned rmargin,
                          const char *text )
{
    const unsigned textlen = FUNC3( text );
    unsigned line_start = 0;
    unsigned line_end = textlen + 1;
    const unsigned colwidth = (rmargin - lmargin) + 1;

    /* Someone doesn't like us... */
    if ( line_end < line_start )
    { FUNC0( fp, "%s\n", text ); }

    while (line_end - 1 > line_start )
    {
        /* Eat leading whitespaces. This is essential because while
           wrapping lines, there will often be a whitespace at beginning
           of line */
        while ( FUNC2((int) *(text + line_start)) )
        { line_start++; }

        if ((line_end - line_start) > colwidth )
        { line_end = line_start + colwidth; }

        /* Find last whitespace, that fits into line */
        while ( ( line_end > line_start )
                && ( line_end - line_start > colwidth )
                && !FUNC2((int) *(text + line_end)))
        { line_end--; }

        /* Do not print trailing whitespace. If this text
           has got only one line, line_end now points to the
           last char due to initialization. */
        line_end--;

        /* Output line of text */
        while ( line_start < line_end )
        {
            FUNC1(*(text + line_start), fp );
            line_start++;
        }
        FUNC1( '\n', fp );

        /* Initialize another line */
        if ( line_end + 1 < textlen )
        {
            unsigned i;

            for (i = 0; i < lmargin; i++ )
            { FUNC1( ' ', fp ); }

            line_end = textlen;
        }

        /* If we have to print another line, get also the last char. */
        line_end++;

    } /* lines of text */
}