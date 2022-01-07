
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int payload_count; int * payload; } ;
typedef TYPE_1__ H265RawSEI ;


 int av_freep (int **) ;
 int cbs_h265_free_sei_payload (int *) ;

__attribute__((used)) static void cbs_h265_free_sei(void *opaque, uint8_t *content)
{
    H265RawSEI *sei = (H265RawSEI*)content;
    int i;
    for (i = 0; i < sei->payload_count; i++)
        cbs_h265_free_sei_payload(&sei->payload[i]);
    av_freep(&content);
}
