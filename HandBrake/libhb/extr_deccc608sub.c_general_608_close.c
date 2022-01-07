
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_write {int list; scalar_t__ subline; scalar_t__ enc_buffer_used; scalar_t__ enc_buffer_capacity; scalar_t__ enc_buffer; } ;


 int free (scalar_t__) ;
 int hb_buffer_list_close (int *) ;

__attribute__((used)) static void general_608_close (struct s_write *wb)
{
    if( wb->enc_buffer ) {
        free(wb->enc_buffer);
        wb->enc_buffer_capacity = 0;
        wb->enc_buffer_used = 0;
    }
    if( wb->subline ) {
        free(wb->subline);
    }
    hb_buffer_list_close(&wb->list);
}
