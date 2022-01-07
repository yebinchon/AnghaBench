
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int data_ref; } ;
struct TYPE_4__ {TYPE_1__ extension_data; } ;
typedef TYPE_2__ H265RawPPS ;


 int av_buffer_unref (int *) ;
 int av_freep (int **) ;

__attribute__((used)) static void cbs_h265_free_pps(void *opaque, uint8_t *content)
{
    H265RawPPS *pps = (H265RawPPS*)content;
    av_buffer_unref(&pps->extension_data.data_ref);
    av_freep(&content);
}
