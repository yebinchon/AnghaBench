
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int hb_value_t ;
typedef scalar_t__ gint ;
typedef double gdouble ;
typedef int gchar ;
typedef int GtkTreeIter ;
typedef int GtkListStore ;
typedef int GtkComboBox ;


 int GHB_WIDGET (int ,int const*) ;
 int * GTK_COMBO_BOX (int ) ;
 int * GTK_LIST_STORE (int ) ;
 int TRUE ;
 char** calloc (scalar_t__,int) ;
 char* g_strdup (char const*) ;
 int g_strfreev (char**) ;
 scalar_t__ ghb_strv_contains (char const**,char const*) ;
 int gtk_combo_box_get_model (int *) ;
 int gtk_list_store_append (int *,int *) ;
 int gtk_list_store_clear (int *) ;
 int gtk_list_store_set (int *,int *,int ,char const*,int,int ,int,char const*,int,double,int) ;
 int hb_dict_get (int *,char*) ;
 int * hb_presets_get () ;
 int * hb_value_array_get (int *,scalar_t__) ;
 scalar_t__ hb_value_array_len (int *) ;
 int hb_value_get_bool (int ) ;
 char* hb_value_get_string (int ) ;

__attribute__((used)) static void
preset_category_opts_set(signal_user_data_t *ud, const gchar *name,
                         void *opts, const void* data)
{
    (void)opts;
    (void)data;
    GtkTreeIter iter;
    GtkListStore * store;
    gint ii, jj, count;
    hb_value_t * presets;
    GtkComboBox * combo;
    char ** categories;

    presets = hb_presets_get();
    count = hb_value_array_len(presets);

    combo = GTK_COMBO_BOX(GHB_WIDGET(ud->builder, name));
    store = GTK_LIST_STORE(gtk_combo_box_get_model (combo));
    gtk_list_store_clear(store);

    categories = calloc(count + 1, sizeof(char*));
    for (ii = 0, jj = 0; ii < count; ii++)
    {
        const char * name;
        hb_value_t * folder = hb_value_array_get(presets, ii);

        if (!hb_value_get_bool(hb_dict_get(folder, "Folder")))
        {

            continue;
        }

        name = hb_value_get_string(hb_dict_get(folder, "PresetName"));
        if (name == ((void*)0) || name[0] == 0)
        {
            continue;
        }

        if (ghb_strv_contains((const char**)categories, name))
        {

            continue;
        }

        categories[jj++] = g_strdup(name);
        gtk_list_store_append(store, &iter);
        gtk_list_store_set(store, &iter,
                           0, name,
                           1, TRUE,
                           2, name,
                           3, (gdouble)ii,
                           -1);
    }
    g_strfreev(categories);

    gtk_list_store_append(store, &iter);
    gtk_list_store_set(store, &iter,
                       0, "Add New Category",
                       1, TRUE,
                       2, "new",
                       3, -1.0,
                       -1);
}
