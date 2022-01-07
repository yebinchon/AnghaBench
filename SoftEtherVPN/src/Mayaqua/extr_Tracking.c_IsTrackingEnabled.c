
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IsDebug () ;
 scalar_t__ IsMemCheck () ;
 scalar_t__ kernel_status_inited ;

bool IsTrackingEnabled()
{
 return (IsDebug() || IsMemCheck()) && kernel_status_inited;
}
