
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_hdr {int flag; } ;


 int ARG_TERMINATOR ;

int arg_nullcheck(void * *argtable)
{
    struct arg_hdr * *table = (struct arg_hdr * *)argtable;
    int tabindex;


    if (!table)
        return 1;

    tabindex = 0;
    do
    {

        if (!table[tabindex])
            return 1;
    } while(!(table[tabindex++]->flag & ARG_TERMINATOR));

    return 0;
}
