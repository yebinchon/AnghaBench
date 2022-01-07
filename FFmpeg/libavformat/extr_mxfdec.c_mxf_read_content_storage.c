
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_2__ {int essence_container_data_count; int essence_container_data_refs; int packages_count; int packages_refs; int fc; } ;
typedef TYPE_1__ MXFContext ;
typedef int AVIOContext ;


 int AV_LOG_VERBOSE ;
 int av_free (int ) ;
 int av_log (int ,int ,char*) ;
 int mxf_read_strong_ref_array (int *,int *,int *) ;

__attribute__((used)) static int mxf_read_content_storage(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFContext *mxf = arg;
    switch (tag) {
    case 0x1901:
        if (mxf->packages_refs)
            av_log(mxf->fc, AV_LOG_VERBOSE, "Multiple packages_refs\n");
        av_free(mxf->packages_refs);
        return mxf_read_strong_ref_array(pb, &mxf->packages_refs, &mxf->packages_count);
    case 0x1902:
        av_free(mxf->essence_container_data_refs);
        return mxf_read_strong_ref_array(pb, &mxf->essence_container_data_refs, &mxf->essence_container_data_count);
    }
    return 0;
}
