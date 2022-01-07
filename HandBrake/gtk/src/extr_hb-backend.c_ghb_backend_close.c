
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * h_live ;
 int * h_queue ;
 int * h_scan ;
 int hb_close (int **) ;
 int hb_global_close () ;

void
ghb_backend_close()
{
    if (h_live != ((void*)0))
        hb_close(&h_live);
    if (h_queue != ((void*)0))
        hb_close(&h_queue);
    if (h_scan != ((void*)0))
        hb_close(&h_scan);
    hb_global_close();
}
