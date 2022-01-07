
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; struct TYPE_4__* data; } ;
typedef TYPE_1__ hb_attachment_t ;


 int free (TYPE_1__*) ;

void hb_attachment_close( hb_attachment_t **attachment )
{
    if ( attachment && *attachment )
    {
        free((*attachment)->data);
        free((*attachment)->name);
        free(*attachment);
        *attachment = ((void*)0);
    }
}
