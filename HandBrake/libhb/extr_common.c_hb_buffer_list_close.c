
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_buffer_t ;
typedef int hb_buffer_list_t ;


 int hb_buffer_close (int **) ;
 int * hb_buffer_list_clear (int *) ;

void hb_buffer_list_close(hb_buffer_list_t *list)
{
    hb_buffer_t *buf = hb_buffer_list_clear(list);
    hb_buffer_close(&buf);
}
