
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UID ;
struct TYPE_8__ {int packages_count; int * packages_refs; } ;
struct TYPE_7__ {int package_uid; int package_ul; } ;
typedef TYPE_1__ MXFPackage ;
typedef TYPE_2__ MXFContext ;


 int SourcePackage ;
 int memcmp (int ,int ,int) ;
 TYPE_1__* mxf_resolve_strong_ref (TYPE_2__*,int *,int ) ;

__attribute__((used)) static MXFPackage* mxf_resolve_source_package(MXFContext *mxf, UID package_ul, UID package_uid)
{
    MXFPackage *package = ((void*)0);
    int i;

    for (i = 0; i < mxf->packages_count; i++) {
        package = mxf_resolve_strong_ref(mxf, &mxf->packages_refs[i], SourcePackage);
        if (!package)
            continue;

        if (!memcmp(package->package_ul, package_ul, 16) && !memcmp(package->package_uid, package_uid, 16))
            return package;
    }
    return ((void*)0);
}
