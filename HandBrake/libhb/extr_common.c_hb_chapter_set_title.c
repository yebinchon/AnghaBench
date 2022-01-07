
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int title; } ;
typedef TYPE_1__ hb_chapter_t ;


 int hb_update_str (int *,char const*) ;

void hb_chapter_set_title( hb_chapter_t *chapter, const char *title )
{
    if ( chapter )
    {
        hb_update_str( &chapter->title, title );
    }
}
