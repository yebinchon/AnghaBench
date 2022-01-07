
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ title; } ;
typedef TYPE_1__ hb_chapter_t ;


 TYPE_1__* calloc (int,int) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;
 scalar_t__ strdup (scalar_t__) ;

hb_chapter_t *hb_chapter_copy(const hb_chapter_t *src)
{
    hb_chapter_t *chap = ((void*)0);

    if ( src )
    {
        chap = calloc( 1, sizeof(*chap) );
        memcpy( chap, src, sizeof(*chap) );
        if ( src->title )
        {
            chap->title = strdup( src->title );
        }
    }
    return chap;
}
