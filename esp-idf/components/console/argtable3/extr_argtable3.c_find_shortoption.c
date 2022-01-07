
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_hdr {int flag; scalar_t__ shortopts; } ;


 int ARG_TERMINATOR ;
 scalar_t__ strchr (scalar_t__,char) ;

__attribute__((used)) static
int find_shortoption(struct arg_hdr * *table, char shortopt)
{
    int tabindex;
    for(tabindex = 0; !(table[tabindex]->flag & ARG_TERMINATOR); tabindex++)
    {
        if (table[tabindex]->shortopts &&
            strchr(table[tabindex]->shortopts, shortopt))
            return tabindex;
    }
    return -1;
}
