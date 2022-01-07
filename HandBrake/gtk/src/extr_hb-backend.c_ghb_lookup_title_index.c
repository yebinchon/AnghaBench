
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int h_scan ;
 int lookup_title_index (int ,int) ;

int
ghb_lookup_title_index(int title_id)
{
    return lookup_title_index(h_scan, title_id);
}
