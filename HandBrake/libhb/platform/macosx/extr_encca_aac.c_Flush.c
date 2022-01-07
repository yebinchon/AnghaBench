
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_work_object_t ;
typedef int hb_buffer_t ;
typedef int hb_buffer_list_t ;


 int * Encode (int *) ;
 int hb_buffer_list_append (int *,int *) ;

__attribute__((used)) static void Flush(hb_work_object_t *w, hb_buffer_list_t * list)
{
    hb_buffer_t *buf = Encode(w);
    while (buf)
    {
        hb_buffer_list_append(list, buf);
        buf = Encode(w);
    }
}
