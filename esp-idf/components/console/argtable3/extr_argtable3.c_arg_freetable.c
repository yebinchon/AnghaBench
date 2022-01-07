
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_hdr {int dummy; } ;


 int free (struct arg_hdr*) ;

void arg_freetable(void * *argtable, size_t n)
{
    struct arg_hdr * *table = (struct arg_hdr * *)argtable;
    size_t tabindex = 0;

    for (tabindex = 0; tabindex < n; tabindex++)
    {
        if (table[tabindex] == ((void*)0))
            continue;

        free(table[tabindex]);
        table[tabindex] = ((void*)0);
    };
}
