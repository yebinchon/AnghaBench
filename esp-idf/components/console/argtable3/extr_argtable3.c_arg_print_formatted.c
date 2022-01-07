
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*) ;
 int fputc (char const,int *) ;
 scalar_t__ isspace (int) ;
 unsigned int strlen (char const*) ;

void arg_print_formatted( FILE *fp,
                          const unsigned lmargin,
                          const unsigned rmargin,
                          const char *text )
{
    const unsigned textlen = strlen( text );
    unsigned line_start = 0;
    unsigned line_end = textlen + 1;
    const unsigned colwidth = (rmargin - lmargin) + 1;


    if ( line_end < line_start )
    { fprintf( fp, "%s\n", text ); }

    while (line_end - 1 > line_start )
    {



        while ( isspace((int) *(text + line_start)) )
        { line_start++; }

        if ((line_end - line_start) > colwidth )
        { line_end = line_start + colwidth; }


        while ( ( line_end > line_start )
                && ( line_end - line_start > colwidth )
                && !isspace((int) *(text + line_end)))
        { line_end--; }




        line_end--;


        while ( line_start < line_end )
        {
            fputc(*(text + line_start), fp );
            line_start++;
        }
        fputc( '\n', fp );


        if ( line_end + 1 < textlen )
        {
            unsigned i;

            for (i = 0; i < lmargin; i++ )
            { fputc( ' ', fp ); }

            line_end = textlen;
        }


        line_end++;

    }
}
