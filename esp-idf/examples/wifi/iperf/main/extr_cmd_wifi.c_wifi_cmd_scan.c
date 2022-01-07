
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ssid; int end; } ;
struct TYPE_3__ {int count; int ** sval; } ;


 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int arg_parse (int,char**,void**) ;
 int arg_print_errors (int ,int ,char*) ;
 TYPE_2__ scan_args ;
 int stderr ;
 int wifi_cmd_sta_scan (int *) ;

__attribute__((used)) static int wifi_cmd_scan(int argc, char** argv)
{
    int nerrors = arg_parse(argc, argv, (void**) &scan_args);

    if (nerrors != 0) {
        arg_print_errors(stderr, scan_args.end, argv[0]);
        return 1;
    }

    ESP_LOGI(TAG, "sta start to scan");
    if ( scan_args.ssid->count == 1 ) {
        wifi_cmd_sta_scan(scan_args.ssid->sval[0]);
    } else {
        wifi_cmd_sta_scan(((void*)0));
    }
    return 0;
}
