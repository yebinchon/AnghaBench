
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mdns_txt_item_t ;
struct TYPE_8__ {TYPE_3__* txt; TYPE_2__* proto; TYPE_1__* service; int end; } ;
struct TYPE_7__ {scalar_t__ count; int sval; } ;
struct TYPE_6__ {int * sval; } ;
struct TYPE_5__ {int * sval; } ;


 int ESP_ERROR_CHECK (int ) ;
 int * _convert_items (int ,scalar_t__) ;
 int arg_parse (int,char**,void**) ;
 int arg_print_errors (int ,int ,char*) ;
 int free (int *) ;
 int mdns_service_txt_set (int ,int ,int *,scalar_t__) ;
 TYPE_4__ mdns_txt_replace_args ;
 int printf (char*) ;
 int stderr ;

__attribute__((used)) static int cmd_mdns_service_txt_replace(int argc, char** argv)
{
    mdns_txt_item_t * items = ((void*)0);
    int nerrors = arg_parse(argc, argv, (void**) &mdns_txt_replace_args);
    if (nerrors != 0) {
        arg_print_errors(stderr, mdns_txt_replace_args.end, argv[0]);
        return 1;
    }

    if (!mdns_txt_replace_args.service->sval[0] || !mdns_txt_replace_args.proto->sval[0]) {
        printf("ERROR: Bad arguments!\n");
        return 1;
    }

    if (mdns_txt_replace_args.txt->count) {
        items = _convert_items(mdns_txt_replace_args.txt->sval, mdns_txt_replace_args.txt->count);
        if (!items) {
            printf("ERROR: No Memory!\n");
            return 1;

        }
    }
    ESP_ERROR_CHECK( mdns_service_txt_set(mdns_txt_replace_args.service->sval[0], mdns_txt_replace_args.proto->sval[0], items, mdns_txt_replace_args.txt->count) );
    free(items);
    return 0;
}
