
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int extra_information_ref; } ;
struct TYPE_4__ {TYPE_1__ extra_information_picture; } ;
typedef TYPE_2__ MPEG2RawPictureHeader ;


 int av_buffer_unref (int *) ;
 int av_freep (int **) ;

__attribute__((used)) static void cbs_mpeg2_free_picture_header(void *opaque, uint8_t *content)
{
    MPEG2RawPictureHeader *picture = (MPEG2RawPictureHeader*)content;
    av_buffer_unref(&picture->extra_information_picture.extra_information_ref);
    av_freep(&content);
}
