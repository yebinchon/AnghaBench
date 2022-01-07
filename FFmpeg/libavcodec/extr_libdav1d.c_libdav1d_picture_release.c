
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * allocator_data; } ;
typedef TYPE_1__ Dav1dPicture ;
typedef int AVBufferRef ;


 int av_buffer_unref (int **) ;

__attribute__((used)) static void libdav1d_picture_release(Dav1dPicture *p, void *cookie)
{
    AVBufferRef *buf = p->allocator_data;

    av_buffer_unref(&buf);
}
