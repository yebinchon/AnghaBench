
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metadata_sets_count; int ** metadata_sets; } ;
typedef int MXFMetadataSet ;
typedef TYPE_1__ MXFContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int ** av_realloc_array (int **,int,int) ;

__attribute__((used)) static int mxf_add_metadata_set(MXFContext *mxf, void *metadata_set)
{
    MXFMetadataSet **tmp;

    tmp = av_realloc_array(mxf->metadata_sets, mxf->metadata_sets_count + 1, sizeof(*mxf->metadata_sets));
    if (!tmp)
        return AVERROR(ENOMEM);
    mxf->metadata_sets = tmp;
    mxf->metadata_sets[mxf->metadata_sets_count] = metadata_set;
    mxf->metadata_sets_count++;
    return 0;
}
