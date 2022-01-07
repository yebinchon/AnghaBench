
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* title; } ;
typedef TYPE_1__ hb_chapter_t ;


 int free (TYPE_1__*) ;

void hb_chapter_close(hb_chapter_t **chap)
{
    if ( chap && *chap )
    {
        free((*chap)->title);
        free(*chap);
        *chap = ((void*)0);
    }
}
