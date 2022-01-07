
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int warm_change_cb_range (int,int,int ,int ) ;

int warm_change_cb_upper(int cb, int is_set)
{
 return warm_change_cb_range(cb, is_set, 0, 0);
}
