
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int data_ref; } ;
typedef TYPE_1__ JPEGRawScan ;


 int av_buffer_unref (int *) ;
 int av_freep (int **) ;

__attribute__((used)) static void cbs_jpeg_free_scan(void *opaque, uint8_t *content)
{
    JPEGRawScan *scan = (JPEGRawScan*)content;
    av_buffer_unref(&scan->data_ref);
    av_freep(&content);
}
