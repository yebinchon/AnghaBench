
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int gint ;
typedef int gchar ;
struct TYPE_3__ {int title_count; int preview_count; scalar_t__ progress; scalar_t__ preview_cur; scalar_t__ title_cur; int state; } ;
struct TYPE_4__ {TYPE_1__ scan; } ;


 int GHB_STATE_SCANNING ;
 int h_scan ;
 int hb_scan (int ,int const*,int ,int ,int,int ) ;
 TYPE_2__ hb_status ;

void
ghb_backend_scan(const gchar *path, gint titleindex, gint preview_count, uint64_t min_duration)
{
    hb_scan( h_scan, path, titleindex, preview_count, 1, min_duration );
    hb_status.scan.state |= GHB_STATE_SCANNING;


    hb_status.scan.title_count = 1;
    hb_status.scan.title_cur = 0;
    hb_status.scan.preview_count = 1;
    hb_status.scan.preview_cur = 0;
    hb_status.scan.progress = 0;
}
