
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int gsize ;
typedef int gint ;
typedef int gdouble ;
typedef int gchar ;
typedef int gboolean ;
struct TYPE_11__ {scalar_t__ code; int message; } ;
struct TYPE_10__ {int arg; int * arg_data; scalar_t__ long_name; } ;
typedef TYPE_1__ GOptionEntry ;
typedef int GKeyFile ;
typedef TYPE_2__ GError ;


 scalar_t__ G_KEY_FILE_ERROR_KEY_NOT_FOUND ;







 int G_STRLOC ;
 int g_error (char*,int ,int) ;
 int g_error_free (TYPE_2__*) ;
 int g_key_file_get_boolean (int *,int const*,scalar_t__,TYPE_2__**) ;
 int g_key_file_get_double (int *,int const*,scalar_t__,TYPE_2__**) ;
 int g_key_file_get_integer (int *,int const*,scalar_t__,TYPE_2__**) ;
 int * g_key_file_get_string (int *,int const*,scalar_t__,TYPE_2__**) ;
 int ** g_key_file_get_string_list (int *,int const*,scalar_t__,int *,TYPE_2__**) ;
 int g_key_file_has_group (int *,int const*) ;
 int g_message (char*,int ) ;
 int * g_strchomp (int *) ;
 int * g_strstrip (int *) ;

int chassis_keyfile_to_options(GKeyFile *keyfile, const gchar *ini_group_name, GOptionEntry *config_entries) {
 GError *gerr = ((void*)0);
 int ret = 0;
 int i, j;



 if (!keyfile) return -1;
 if (!g_key_file_has_group(keyfile, ini_group_name)) return 0;


 for (i = 0; config_entries[i].long_name; i++) {
  GOptionEntry *entry = &(config_entries[i]);
  gchar *arg_string;
  gchar **arg_string_array;
  gboolean arg_bool = 0;
  gint arg_int = 0;
  gdouble arg_double = 0;
  gsize len = 0;

  switch (entry->arg) {
  case 133:
  case 129:

   if (((void*)0) == entry->arg_data || ((void*)0) != *(gchar **)(entry->arg_data)) break;

   arg_string = g_key_file_get_string(keyfile, ini_group_name, entry->long_name, &gerr);
   if (!gerr) {

    *(gchar **)(entry->arg_data) = g_strchomp(arg_string);
   }
   break;
  case 132:
  case 128:

   if (((void*)0) == entry->arg_data || ((void*)0) != *(gchar ***)(entry->arg_data)) break;

   arg_string_array = g_key_file_get_string_list(keyfile, ini_group_name, entry->long_name, &len, &gerr);
   if (!gerr) {
    for (j = 0; arg_string_array[j]; j++) {
     arg_string_array[j] = g_strstrip(arg_string_array[j]);
    }
    *(gchar ***)(entry->arg_data) = arg_string_array;
   }
   break;
  case 130:
   arg_bool = g_key_file_get_boolean(keyfile, ini_group_name, entry->long_name, &gerr);
   if (!gerr) {
    *(int *)(entry->arg_data) = arg_bool;
   }
   break;
  case 131:
   arg_int = g_key_file_get_integer(keyfile, ini_group_name, entry->long_name, &gerr);
   if (!gerr) {
    *(gint *)(entry->arg_data) = arg_int;
   }
   break;
  default:
   g_error("%s: (keyfile) the option %d can't be handled", G_STRLOC, entry->arg);
   break;
  }

  if (gerr) {
   if (gerr->code != G_KEY_FILE_ERROR_KEY_NOT_FOUND) {
    g_message("%s", gerr->message);
    ret = -1;
   }

   g_error_free(gerr);
   gerr = ((void*)0);
  }
 }

 return ret;
}
