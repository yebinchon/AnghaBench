
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t tickpos; } ;
typedef TYPE_1__ Conn ;



void
conn_setpos(void *c, size_t i)
{
    ((Conn *)c)->tickpos = i;
}
