
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_2__ {int comment_count; int comment_refs; int name; int descriptor_ref; int package_uid; int package_ul; int tracks_count; int tracks_refs; } ;
typedef TYPE_1__ MXFPackage ;
typedef int AVIOContext ;


 int avio_read (int *,int ,int) ;
 int mxf_read_strong_ref_array (int *,int *,int *) ;
 int mxf_read_utf16be_string (int *,int,int *) ;

__attribute__((used)) static int mxf_read_package(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFPackage *package = arg;
    switch(tag) {
    case 0x4403:
        return mxf_read_strong_ref_array(pb, &package->tracks_refs,
                                             &package->tracks_count);
    case 0x4401:

        avio_read(pb, package->package_ul, 16);
        avio_read(pb, package->package_uid, 16);
        break;
    case 0x4701:
        avio_read(pb, package->descriptor_ref, 16);
        break;
    case 0x4402:
        return mxf_read_utf16be_string(pb, size, &package->name);
    case 0x4406:
        return mxf_read_strong_ref_array(pb, &package->comment_refs,
                                             &package->comment_count);
    }
    return 0;
}
