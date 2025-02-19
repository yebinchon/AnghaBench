
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int text; } ;
typedef TYPE_1__ json_error_t ;
typedef int hb_dict_t ;


 int HB_PROJECT_HOST_ARCH ;
 int HB_PROJECT_HOST_SYSTEMF ;
 int HB_PROJECT_NAME ;
 int HB_PROJECT_REPO_DATE ;
 int HB_PROJECT_REPO_HASH ;
 int HB_PROJECT_REPO_OFFICIAL ;
 int HB_PROJECT_REPO_TYPE ;
 int HB_PROJECT_VERSION ;
 int HB_PROJECT_VERSION_MAJOR ;
 int HB_PROJECT_VERSION_MINOR ;
 int HB_PROJECT_VERSION_POINT ;
 int hb_error (char*,int ) ;
 int hb_value_bool (int ) ;
 int hb_value_int (int ) ;
 int hb_value_string (int ) ;
 int * json_pack_ex (TYPE_1__*,int ,char*,char*,int ,char*,int ,char*,int ,char*,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ) ;

hb_dict_t * hb_version_dict()
{
    hb_dict_t * dict;
    json_error_t error;

    dict = json_pack_ex(&error, 0,
        "{s:o, s:o, s:o, s{s:o, s:o, s:o}, s:o, s:o, s:o, s:o, s:o}",
        "Name", hb_value_string(HB_PROJECT_NAME),
        "Official", hb_value_bool(HB_PROJECT_REPO_OFFICIAL),
        "Type", hb_value_string(HB_PROJECT_REPO_TYPE),
        "Version",
            "Major", hb_value_int(HB_PROJECT_VERSION_MAJOR),
            "Minor", hb_value_int(HB_PROJECT_VERSION_MINOR),
            "Point", hb_value_int(HB_PROJECT_VERSION_POINT),
        "VersionString", hb_value_string(HB_PROJECT_VERSION),
        "RepoHash", hb_value_string(HB_PROJECT_REPO_HASH),
        "RepoDate", hb_value_string(HB_PROJECT_REPO_DATE),
        "System", hb_value_string(HB_PROJECT_HOST_SYSTEMF),
        "Arch", hb_value_string(HB_PROJECT_HOST_ARCH));
    if (dict == ((void*)0))
    {
        hb_error("json pack failure: %s", error.text);
        return ((void*)0);
    }

    return dict;
}
