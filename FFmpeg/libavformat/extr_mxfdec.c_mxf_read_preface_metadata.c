
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_2__ {int * fc; } ;
typedef TYPE_1__ MXFContext ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 scalar_t__ IS_KLV_KEY (int ,int ) ;
 int SET_STR_METADATA (int *,char*,char*) ;
 int mxf_avid_project_name ;

__attribute__((used)) static int mxf_read_preface_metadata(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFContext *mxf = arg;
    AVFormatContext *s = mxf->fc;
    int ret;
    char *str = ((void*)0);

    if (tag >= 0x8000 && (IS_KLV_KEY(uid, mxf_avid_project_name))) {
        SET_STR_METADATA(pb, "project_name", str);
    }
    return 0;
}
