
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int h_queue ;
 int lookup_title_index (int ,int) ;

int
ghb_lookup_queue_title_index(int title_id)
{
    return lookup_title_index(h_queue, title_id);
}
