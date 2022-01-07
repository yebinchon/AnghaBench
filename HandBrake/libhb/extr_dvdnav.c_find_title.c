
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; } ;
typedef TYPE_1__ hb_title_t ;
typedef int hb_list_t ;


 int hb_list_count (int *) ;
 TYPE_1__* hb_list_item (int *,int) ;

__attribute__((used)) static int find_title( hb_list_t * list_title, int title )
{
    int ii;

    for ( ii = 0; ii < hb_list_count( list_title ); ii++ )
    {
        hb_title_t * hbtitle = hb_list_item( list_title, ii );
        if ( hbtitle->index == title )
            return ii;
    }
    return -1;
}
