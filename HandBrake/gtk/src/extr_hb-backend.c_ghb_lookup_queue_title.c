
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_title_t ;


 int h_queue ;
 int const* lookup_title (int ,int,int*) ;

const hb_title_t*
ghb_lookup_queue_title(int title_id, int *index)
{
    return lookup_title(h_queue, title_id, index);
}
