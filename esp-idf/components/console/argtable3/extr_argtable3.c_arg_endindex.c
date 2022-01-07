
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_hdr {int flag; } ;


 int ARG_TERMINATOR ;

__attribute__((used)) static
int arg_endindex(struct arg_hdr * *table)
{
    int tabindex = 0;
    while (!(table[tabindex]->flag & ARG_TERMINATOR))
        tabindex++;
    return tabindex;
}
