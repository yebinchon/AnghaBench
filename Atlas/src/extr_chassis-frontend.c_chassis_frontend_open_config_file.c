
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GKeyFile ;
typedef int GError ;


 scalar_t__ FALSE ;
 int G_KEY_FILE_NONE ;
 int g_key_file_free (int *) ;
 scalar_t__ g_key_file_load_from_file (int *,char const*,int ,int **) ;
 int * g_key_file_new () ;
 int g_key_file_set_list_separator (int *,char) ;

GKeyFile *chassis_frontend_open_config_file(const char *filename, GError **gerr) {
 GKeyFile *keyfile;





 keyfile = g_key_file_new();
 g_key_file_set_list_separator(keyfile, ',');

 if (FALSE == g_key_file_load_from_file(keyfile, filename, G_KEY_FILE_NONE, gerr)) {
  g_key_file_free(keyfile);

  return ((void*)0);
 }

 return keyfile;
}
