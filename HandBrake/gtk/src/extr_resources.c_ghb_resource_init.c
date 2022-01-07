
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gsize ;
typedef int gconstpointer ;
typedef int GhbValue ;
typedef int GResource ;
typedef int GBytes ;


 int g_bytes_get_data (int *,int *) ;
 int g_bytes_unref (int *) ;
 int * g_resource_lookup_data (int *,char*,int ,int *) ;
 int * ghb_data_get_resource () ;
 int ghb_data_register_resource () ;
 int ghb_dict_new () ;
 int ghb_dict_set (int ,char*,int *) ;
 int * ghb_json_parse (int ) ;
 int resources ;

void
ghb_resource_init()
{
    GhbValue *val;
    gsize data_size;
    GBytes *gbytes;
    gconstpointer data;

    resources = ghb_dict_new();

    ghb_data_register_resource();
    GResource *data_res = ghb_data_get_resource();

    gbytes = g_resource_lookup_data(data_res,
                    "/fr/handbrake/ghb/data/internal_defaults.json", 0, ((void*)0));
    data = g_bytes_get_data(gbytes, &data_size);
    val = ghb_json_parse(data);
    g_bytes_unref(gbytes);
    ghb_dict_set(resources, "internal-defaults", val);

    gbytes = g_resource_lookup_data(data_res,
                    "/fr/handbrake/ghb/data/widget.deps", 0, ((void*)0));
    data = g_bytes_get_data(gbytes, &data_size);
    val = ghb_json_parse(data);
    g_bytes_unref(gbytes);
    ghb_dict_set(resources, "widget-deps", val);

    gbytes = g_resource_lookup_data(data_res,
                    "/fr/handbrake/ghb/data/widget_reverse.deps", 0, ((void*)0));
    data = g_bytes_get_data(gbytes, &data_size);
    val = ghb_json_parse(data);
    g_bytes_unref(gbytes);
    ghb_dict_set(resources, "widget-reverse-deps", val);
}
