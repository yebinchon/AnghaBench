
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct dirent {char const* d_name; } ;
struct TYPE_12__ {int count; TYPE_1__** namelist; } ;
struct TYPE_11__ {char** strings; int num_strings; } ;
struct TYPE_10__ {char const* d_name; } ;
typedef TYPE_2__ STRING_VEC_T ;
typedef TYPE_3__ STATE_T ;
typedef int DIR ;


 int closedir (int *) ;
 int error (char*) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int * opendir (int ) ;
 int overlay_src_dir ;
 int printf (char*,...) ;
 struct dirent* readdir (int *) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* string_vec_add (TYPE_2__*,char const*,int) ;
 int string_vec_find (TYPE_2__*,char const*,int) ;
 int string_vec_init (TYPE_2__*) ;
 int string_vec_sort (TYPE_2__*) ;
 int string_vec_uninit (TYPE_2__*) ;
 int strlen (char const*) ;

__attribute__((used)) static int dtoverlay_list_all(STATE_T *state)
{
    int i;
    DIR *dh;
    struct dirent *de;
    STRING_VEC_T strings;

    string_vec_init(&strings);


    dh = opendir(overlay_src_dir);
    while ((de = readdir(dh)) != ((void*)0))
    {
 int len = strlen(de->d_name) - 5;
 if ((len >= 0) && strcmp(de->d_name + len, ".dtbo") == 0)
        {
     char *str = string_vec_add(&strings, de->d_name, len + 2);
            str[len] = '\0';
            str[len + 1] = ' ';
        }
    }
    closedir(dh);


    for (i = 0; i < state->count; i++)
    {
 const char *left, *right;
 char *str;
 int len, idx;

 left = strchr(state->namelist[i]->d_name, '_');
 if (!left)
     return error("Internal error");
 left++;
 right = strchr(left, '.');
 if (!right)
     return error("Internal error");

        len = right - left;
        if ((len == 7) && (memcmp(left, "dtparam", 7) == 0))
            continue;
 idx = string_vec_find(&strings, left, len);
 if (idx >= 0)
 {
     str = strings.strings[idx];
            len = strlen(str);
 }
 else
        {
     str = string_vec_add(&strings, left, len + 2);
            str[len] = '\0';
        }
 str[len + 1] = '*';
    }

    if (strings.num_strings == 0)
    {
 printf("No overlays found\n");
    }
    else
    {

 string_vec_sort(&strings);


 printf("All overlays (* = loaded):\n");

 for (i = 0; i < strings.num_strings; i++)
 {
            const char *str = strings.strings[i];
     printf("%c %s\n", str[strlen(str)+1], str);
 }
    }

    string_vec_uninit(&strings);

    return 0;
}
