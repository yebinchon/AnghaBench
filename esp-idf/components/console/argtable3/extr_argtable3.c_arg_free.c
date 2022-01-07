
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_hdr {int flag; } ;


 int ARG_TERMINATOR ;
 int free (struct arg_hdr*) ;

void arg_free(void * *argtable)
{
    struct arg_hdr * *table = (struct arg_hdr * *)argtable;
    int tabindex = 0;
    int flag;

    do
    {






        if (table[tabindex] == ((void*)0))
            break;

        flag = table[tabindex]->flag;
        free(table[tabindex]);
        table[tabindex++] = ((void*)0);

    } while(!(flag & ARG_TERMINATOR));
}
