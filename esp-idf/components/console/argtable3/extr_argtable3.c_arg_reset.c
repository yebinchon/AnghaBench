
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_hdr {int flag; int parent; int (* resetfn ) (int ) ;} ;


 int ARG_TERMINATOR ;
 int stub1 (int ) ;

__attribute__((used)) static
void arg_reset(void * *argtable)
{
    struct arg_hdr * *table = (struct arg_hdr * *)argtable;
    int tabindex = 0;

    do
    {
        if (table[tabindex]->resetfn)
            table[tabindex]->resetfn(table[tabindex]->parent);
    } while(!(table[tabindex++]->flag & ARG_TERMINATOR));
}
