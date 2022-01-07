
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * list_chapter; } ;
typedef TYPE_1__ hb_chapter_queue_t ;


 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int * hb_list_init () ;

hb_chapter_queue_t * hb_chapter_queue_init(void)
{
    hb_chapter_queue_t * q;

    q = calloc(1, sizeof(*q));
    if (q != ((void*)0))
    {
        q->list_chapter = hb_list_init();
        if (q->list_chapter == ((void*)0))
        {
            free(q);
            q = ((void*)0);
        }
    }
    return q;
}
