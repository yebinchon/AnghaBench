
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvs_type_t ;
typedef int * nvs_iterator_t ;
struct TYPE_3__ {char* namespace_name; char* key; int type; } ;
typedef TYPE_1__ nvs_entry_info_t ;


 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int * nvs_entry_find (char const*,int *,int ) ;
 int nvs_entry_info (int *,TYPE_1__*) ;
 int * nvs_entry_next (int *) ;
 int printf (char*,char*,char*,char*) ;
 int str_to_type (char const*) ;
 char* type_to_str (int ) ;

__attribute__((used)) static int list(const char *part, const char *name, const char *str_type)
{
    nvs_type_t type = str_to_type(str_type);

    nvs_iterator_t it = nvs_entry_find(part, ((void*)0), type);
    if (it == ((void*)0)) {
        ESP_LOGE(TAG, "No such enty was found");
        return 1;
    }

    do {
        nvs_entry_info_t info;
        nvs_entry_info(it, &info);
        it = nvs_entry_next(it);

        printf("namespace '%s', key '%s', type '%s' \n",
               info.namespace_name, info.key, type_to_str(info.type));
    } while (it != ((void*)0));

    return 0;
}
