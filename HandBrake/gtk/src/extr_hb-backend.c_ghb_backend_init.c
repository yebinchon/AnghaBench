
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;


 void* h_live ;
 void* h_queue ;
 void* h_scan ;
 int hb_global_init () ;
 void* hb_init (int ) ;

void
ghb_backend_init(gint debug)
{

    hb_global_init();
    h_scan = hb_init( debug );
    h_queue = hb_init( debug );
    h_live = hb_init( debug );
}
