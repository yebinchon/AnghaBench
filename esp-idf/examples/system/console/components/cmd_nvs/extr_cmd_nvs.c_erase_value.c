
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ esp_err_t ;
struct TYPE_4__ {TYPE_1__* key; int end; } ;
struct TYPE_3__ {char** sval; } ;


 int ESP_LOGE (int ,char*,int ) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int arg_parse (int,char**,void**) ;
 int arg_print_errors (int ,int ,char*) ;
 scalar_t__ erase (char const*) ;
 TYPE_2__ erase_args ;
 int esp_err_to_name (scalar_t__) ;
 int stderr ;

__attribute__((used)) static int erase_value(int argc, char **argv)
{
    int nerrors = arg_parse(argc, argv, (void **) &erase_args);
    if (nerrors != 0) {
        arg_print_errors(stderr, erase_args.end, argv[0]);
        return 1;
    }

    const char *key = erase_args.key->sval[0];

    esp_err_t err = erase(key);

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "%s", esp_err_to_name(err));
        return 1;
    }

    return 0;
}
