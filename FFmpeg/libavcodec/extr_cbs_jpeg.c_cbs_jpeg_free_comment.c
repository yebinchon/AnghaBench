
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int Cm_ref; } ;
typedef TYPE_1__ JPEGRawComment ;


 int av_buffer_unref (int *) ;
 int av_freep (int **) ;

__attribute__((used)) static void cbs_jpeg_free_comment(void *opaque, uint8_t *content)
{
    JPEGRawComment *comment = (JPEGRawComment*)content;
    av_buffer_unref(&comment->Cm_ref);
    av_freep(&content);
}
