
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int payload_ref; } ;
struct TYPE_6__ {TYPE_1__ itut_t35; } ;
struct TYPE_7__ {int metadata_type; TYPE_2__ metadata; } ;
typedef TYPE_3__ AV1RawMetadata ;



 int av_buffer_unref (int *) ;

__attribute__((used)) static void cbs_av1_free_metadata(AV1RawMetadata *md)
{
    switch (md->metadata_type) {
    case 128:
        av_buffer_unref(&md->metadata.itut_t35.payload_ref);
        break;
    }
}
