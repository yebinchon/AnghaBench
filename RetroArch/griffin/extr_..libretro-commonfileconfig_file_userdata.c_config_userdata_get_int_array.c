
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct config_file_userdata {int conf; int * prefix; } ;
typedef int key ;
struct TYPE_2__ {int data; } ;


 scalar_t__ calloc (unsigned int,int) ;
 scalar_t__ config_get_string (int ,char*,char**) ;
 int fill_pathname_join_delim (char*,int ,char const*,char,int) ;
 int free (char*) ;
 int memcpy (int*,int const*,int) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char*,char*) ;
 scalar_t__ strtod (int ,int *) ;

int config_userdata_get_int_array(void *userdata, const char *key_str,
      int **values, unsigned *out_num_values,
      const int *default_values, unsigned num_default_values)
{
   char key[2][256];
   struct config_file_userdata *usr = (struct config_file_userdata*)userdata;
   char *str = ((void*)0);
   fill_pathname_join_delim(key[0], usr->prefix[0], key_str, '_', sizeof(key[0]));
   fill_pathname_join_delim(key[1], usr->prefix[1], key_str, '_', sizeof(key[1]));

   if ( config_get_string(usr->conf, key[0], &str) ||
         config_get_string(usr->conf, key[1], &str))
   {
      unsigned i;
      struct string_list *list = string_split(str, " ");
      *values = (int*)calloc(list->size, sizeof(int));
      for (i = 0; i < list->size; i++)
         (*values)[i] = (int)strtod(list->elems[i].data, ((void*)0));
      *out_num_values = (unsigned)list->size;
      string_list_free(list);
      free(str);
      return 1;
   }

   *values = (int*)calloc(num_default_values, sizeof(int));
   memcpy(*values, default_values, sizeof(int) * num_default_values);
   *out_num_values = num_default_values;
   return 0;
}
