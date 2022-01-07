
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gint ;
typedef int gchar ;
struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ queue; } ;


 int GHB_STATE_SCANNING ;
 int g_debug (char*) ;
 int h_queue ;
 int hb_scan (int ,int const*,int ,int,int ,int ) ;
 TYPE_2__ hb_status ;

void
ghb_backend_queue_scan(const gchar *path, gint titlenum)
{
    g_debug("ghb_backend_queue_scan()");
    hb_scan( h_queue, path, titlenum, -1, 0, 0 );
    hb_status.queue.state |= GHB_STATE_SCANNING;
}
