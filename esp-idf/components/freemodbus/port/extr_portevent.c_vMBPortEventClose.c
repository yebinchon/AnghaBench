
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vQueueDelete (int *) ;
 int * xQueueHdl ;

void
vMBPortEventClose( void )
{
    if(xQueueHdl != ((void*)0))
    {
        vQueueDelete(xQueueHdl);
        xQueueHdl = ((void*)0);
    }
}
