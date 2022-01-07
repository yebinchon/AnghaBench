
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum MXFMetadataSetType { ____Placeholder_MXFMetadataSetType } MXFMetadataSetType ;
struct TYPE_2__ {int duration; int pix_fmt; } ;
typedef int MXFMetadataSet ;
typedef TYPE_1__ MXFDescriptor ;


 int AV_NOPTS_VALUE ;
 int AV_PIX_FMT_NONE ;



__attribute__((used)) static int mxf_metadataset_init(MXFMetadataSet *ctx, enum MXFMetadataSetType type)
{
    switch (type){
    case 128:
    case 129:
        ((MXFDescriptor*)ctx)->pix_fmt = AV_PIX_FMT_NONE;
        ((MXFDescriptor*)ctx)->duration = AV_NOPTS_VALUE;
        break;
    default:
        break;
    }
    return 0;
}
