
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int h_scan ;
 int hb_scan_stop (int ) ;

void ghb_backend_scan_stop()
{
    hb_scan_stop( h_scan );
}
