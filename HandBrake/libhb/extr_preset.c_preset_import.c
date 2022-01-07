
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 scalar_t__ cmpVersion (int,int,int,int,int,int ) ;
 int hb_dict_get (int *,char*) ;
 int hb_preset_template ;
 int hb_value_get_bool (int ) ;
 int import_0_0_0 (int *) ;
 int import_10_0_0 (int *) ;
 int import_11_0_0 (int *) ;
 int import_11_1_0 (int *) ;
 int import_12_0_0 (int *) ;
 int import_20_0_0 (int *) ;
 int import_25_0_0 (int *) ;
 int import_35_0_0 (int *) ;
 int preset_clean (int *,int ) ;

__attribute__((used)) static int preset_import(hb_value_t *preset, int major, int minor, int micro)
{
    int result = 0;

    if (!hb_value_get_bool(hb_dict_get(preset, "Folder")))
    {
        if (cmpVersion(major, minor, micro, 0, 0, 0) <= 0)
        {

            import_0_0_0(preset);
            result = 1;
        }
        else if (cmpVersion(major, minor, micro, 10, 0, 0) <= 0)
        {
            import_10_0_0(preset);
            result = 1;
        }
        else if (cmpVersion(major, minor, micro, 11, 0, 0) <= 0)
        {
            import_11_0_0(preset);
            result = 1;
        }
        else if (cmpVersion(major, minor, micro, 11, 1, 0) <= 0)
        {
            import_11_1_0(preset);
            result = 1;
        }
        else if (cmpVersion(major, minor, micro, 12, 0, 0) <= 0)
        {
            import_12_0_0(preset);
            result = 1;
        }
        else if (cmpVersion(major, minor, micro, 20, 0, 0) <= 0)
        {
            import_20_0_0(preset);
            result = 1;
        }
        else if (cmpVersion(major, minor, micro, 25, 0, 0) <= 0)
        {
            import_25_0_0(preset);
            result = 1;
        }
        else if (cmpVersion(major, minor, micro, 35, 0, 0) <= 0)
        {
            import_35_0_0(preset);
            result = 1;
        }
        preset_clean(preset, hb_preset_template);
    }
    return result;
}
