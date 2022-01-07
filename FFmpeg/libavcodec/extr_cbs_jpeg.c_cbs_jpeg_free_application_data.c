
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int Ap_ref; } ;
typedef TYPE_1__ JPEGRawApplicationData ;


 int av_buffer_unref (int *) ;
 int av_freep (int **) ;

__attribute__((used)) static void cbs_jpeg_free_application_data(void *opaque, uint8_t *content)
{
    JPEGRawApplicationData *ad = (JPEGRawApplicationData*)content;
    av_buffer_unref(&ad->Ap_ref);
    av_freep(&content);
}
