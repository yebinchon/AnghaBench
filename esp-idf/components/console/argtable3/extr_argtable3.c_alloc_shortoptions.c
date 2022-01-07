
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_hdr {int flag; char* shortopts; } ;


 int ARG_HASOPTVALUE ;
 int ARG_HASVALUE ;
 int ARG_TERMINATOR ;
 char* malloc (size_t) ;
 int strlen (char*) ;

__attribute__((used)) static
char * alloc_shortoptions(struct arg_hdr * *table)
{
    char *result;
    size_t len = 2;
    int tabindex;


    for(tabindex = 0; !(table[tabindex]->flag & ARG_TERMINATOR); tabindex++)
    {
        struct arg_hdr *hdr = table[tabindex];
        len += 3 * (hdr->shortopts ? strlen(hdr->shortopts) : 0);
    }

    result = malloc(len);
    if (result)
    {
        char *res = result;



        *res++ = ':';

        for(tabindex = 0; !(table[tabindex]->flag & ARG_TERMINATOR); tabindex++)
        {
            struct arg_hdr *hdr = table[tabindex];
            const char *shortopts = hdr->shortopts;
            while(shortopts && *shortopts)
            {
                *res++ = *shortopts++;
                if (hdr->flag & ARG_HASVALUE)
                    *res++ = ':';
                if (hdr->flag & ARG_HASOPTVALUE)
                    *res++ = ':';
            }
        }

        *res = 0;
    }


    return result;
}
