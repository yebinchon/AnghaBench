
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int pool; int buffer; } ;
typedef TYPE_1__ FFBufferRef ;


 int av_free (TYPE_1__*) ;
 int ffmmal_poolref_unref (int ) ;
 int mmal_buffer_header_release (int ) ;

__attribute__((used)) static void ffmmal_release_frame(void *opaque, uint8_t *data)
{
    FFBufferRef *ref = (void *)data;

    mmal_buffer_header_release(ref->buffer);
    ffmmal_poolref_unref(ref->pool);

    av_free(ref);
}
