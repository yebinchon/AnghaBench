
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GhbValue ;


 int G_FILE_TEST_IS_REGULAR ;
 scalar_t__ g_file_test (int const*,int ) ;
 int * ghb_json_parse_file (int const*) ;
 int * hb_plist_parse_file (int const*) ;

GhbValue*
ghb_read_settings_file(const gchar *path)
{
    GhbValue *gval = ((void*)0);

    if (g_file_test(path, G_FILE_TEST_IS_REGULAR))
    {
        gval = ghb_json_parse_file(path);
        if (gval == ((void*)0))
            gval = hb_plist_parse_file(path);
    }
    return gval;
}
