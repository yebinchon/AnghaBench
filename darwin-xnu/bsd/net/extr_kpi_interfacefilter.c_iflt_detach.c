
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int interface_filter_t ;


 int dlil_detach_filter (int ) ;

void
iflt_detach(
 interface_filter_t filter_ref)
{
 dlil_detach_filter(filter_ref);
}
