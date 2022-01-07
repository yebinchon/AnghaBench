
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int data_ref; } ;
typedef TYPE_1__ H265RawSlice ;


 int av_buffer_unref (int *) ;
 int av_freep (int **) ;

__attribute__((used)) static void cbs_h265_free_slice(void *opaque, uint8_t *content)
{
    H265RawSlice *slice = (H265RawSlice*)content;
    av_buffer_unref(&slice->data_ref);
    av_freep(&content);
}
