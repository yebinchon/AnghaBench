
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int package_uid; int package_ul; } ;
typedef TYPE_1__ MXFPackage ;
typedef int AVDictionary ;


 int AV_DICT_DONT_STRDUP_VAL ;
 int av_dict_set (int **,char const*,char*,int ) ;
 int mxf_umid_to_str (int ,int ,char**) ;

__attribute__((used)) static int mxf_add_umid_metadata(AVDictionary **pm, const char *key, MXFPackage* package)
{
    char *str;
    int ret;
    if (!package)
        return 0;
    if ((ret = mxf_umid_to_str(package->package_ul, package->package_uid, &str)) < 0)
        return ret;
    av_dict_set(pm, key, str, AV_DICT_DONT_STRDUP_VAL);
    return 0;
}
