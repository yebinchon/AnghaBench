
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_array_t ;


 int MIN (int,size_t) ;
 int hb_value_array_append (int *,int ) ;
 int hb_value_array_get (int const*,int) ;
 size_t hb_value_array_len (int const*) ;
 int hb_value_dup (int ) ;
 int json_array_clear (int *) ;

void
hb_value_array_copy(hb_value_array_t *dst,
                    const hb_value_array_t *src, int count)
{
    size_t len;
    int ii;


    json_array_clear(dst);

    len = hb_value_array_len(src);
    count = MIN(count, len);
    for (ii = 0; ii < count; ii++)
        hb_value_array_append(dst, hb_value_dup(hb_value_array_get(src, ii)));
}
