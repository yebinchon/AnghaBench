
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int extra_information_ref; } ;
struct TYPE_5__ {TYPE_1__ extra_information_slice; } ;
struct TYPE_6__ {int data_ref; TYPE_2__ header; } ;
typedef TYPE_3__ MPEG2RawSlice ;


 int av_buffer_unref (int *) ;
 int av_freep (int **) ;

__attribute__((used)) static void cbs_mpeg2_free_slice(void *opaque, uint8_t *content)
{
    MPEG2RawSlice *slice = (MPEG2RawSlice*)content;
    av_buffer_unref(&slice->header.extra_information_slice.extra_information_ref);
    av_buffer_unref(&slice->data_ref);
    av_freep(&content);
}
