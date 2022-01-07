
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_gethostname_by_accept ;

void DisableGetHostNameWhenAcceptInit()
{
 disable_gethostname_by_accept = 1;
}
