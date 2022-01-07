
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int input; int fifo_event; } ;
typedef TYPE_1__ GlobalInfo ;


 int event_del (int *) ;
 int fclose (int ) ;
 int fifo ;
 int unlink (int ) ;

__attribute__((used)) static void clean_fifo(GlobalInfo *g)
{
    event_del(&g->fifo_event);
    fclose(g->input);
    unlink(fifo);
}
