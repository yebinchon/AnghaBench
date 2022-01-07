
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int hb_work_private_t ;
struct TYPE_11__ {scalar_t__ split; int id; } ;
struct TYPE_12__ {int size; scalar_t__ data; TYPE_1__ s; } ;
typedef TYPE_2__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 int * get_splice_list (int *,int ) ;
 int hb_buffer_close (TYPE_2__**) ;
 TYPE_2__* hb_buffer_init (int) ;
 int hb_buffer_list_append (int *,TYPE_2__*) ;
 TYPE_2__* hb_buffer_list_clear (int *) ;
 int hb_buffer_list_count (int *) ;
 TYPE_2__* hb_buffer_list_head (int *) ;
 TYPE_2__* hb_buffer_list_rem_head (int *) ;
 int hb_buffer_list_size (int *) ;
 int memcpy (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static hb_buffer_t * splice_discontinuity( hb_work_private_t *r, hb_buffer_t *buf )
{


    hb_buffer_list_t * list = get_splice_list(r, buf->s.id);
    if (list != ((void*)0))
    {
        hb_buffer_list_append(list, buf);
        if (buf->s.split)
        {
            return ((void*)0);
        }

        int count = hb_buffer_list_count(list);
        if (count > 1)
        {
            int size = hb_buffer_list_size(list);
            hb_buffer_t * b = hb_buffer_init(size);
            buf = hb_buffer_list_head(list);
            b->s = buf->s;

            int pos = 0;
            while ((buf = hb_buffer_list_rem_head(list)) != ((void*)0))
            {
                memcpy(b->data + pos, buf->data, buf->size);
                pos += buf->size;
                hb_buffer_close(&buf);
            }
            buf = b;
        }
        else
        {
            buf = hb_buffer_list_clear(list);
        }
    }
    return buf;
}
