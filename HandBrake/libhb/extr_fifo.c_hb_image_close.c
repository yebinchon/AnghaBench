
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ hb_image_t ;


 int av_free (int ) ;
 int free (TYPE_1__*) ;

void hb_image_close(hb_image_t **_image)
{
    if (_image == ((void*)0))
        return;

    hb_image_t * image = *_image;
    if (image != ((void*)0))
    {
        av_free(image->data);
        free(image);
        *_image = ((void*)0);
    }
}
