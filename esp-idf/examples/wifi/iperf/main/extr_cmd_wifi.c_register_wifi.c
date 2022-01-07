
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* command; char* help; TYPE_2__* argtable; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;
struct TYPE_8__ {void* end; void* abort; void* time; void* interval; void* port; void* udp; void* server; void* ip; void* password; void* ssid; } ;


 int ESP_ERROR_CHECK (int ) ;
 TYPE_2__ ap_args ;
 void* arg_end (int) ;
 void* arg_int0 (char*,char*,char*,char*) ;
 void* arg_lit0 (char*,char*,char*) ;
 void* arg_str0 (char*,char*,char*,char*) ;
 void* arg_str1 (int *,int *,char*,char*) ;
 int esp_console_cmd_register (TYPE_1__ const*) ;
 TYPE_2__ iperf_args ;
 TYPE_2__ scan_args ;
 TYPE_2__ sta_args ;
 int wifi_cmd_ap ;
 int wifi_cmd_iperf ;
 int wifi_cmd_query ;
 int wifi_cmd_scan ;
 int wifi_cmd_sta ;

void register_wifi(void)
{
    sta_args.ssid = arg_str1(((void*)0), ((void*)0), "<ssid>", "SSID of AP");
    sta_args.password = arg_str0(((void*)0), ((void*)0), "<pass>", "password of AP");
    sta_args.end = arg_end(2);

    const esp_console_cmd_t sta_cmd = {
        .command = "sta",
        .help = "WiFi is station mode, join specified soft-AP",
        .hint = ((void*)0),
        .func = &wifi_cmd_sta,
        .argtable = &sta_args
    };

    ESP_ERROR_CHECK( esp_console_cmd_register(&sta_cmd) );

    scan_args.ssid = arg_str0(((void*)0), ((void*)0), "<ssid>", "SSID of AP want to be scanned");
    scan_args.end = arg_end(1);

    const esp_console_cmd_t scan_cmd = {
        .command = "scan",
        .help = "WiFi is station mode, start scan ap",
        .hint = ((void*)0),
        .func = &wifi_cmd_scan,
        .argtable = &scan_args
    };

    ap_args.ssid = arg_str1(((void*)0), ((void*)0), "<ssid>", "SSID of AP");
    ap_args.password = arg_str0(((void*)0), ((void*)0), "<pass>", "password of AP");
    ap_args.end = arg_end(2);


    ESP_ERROR_CHECK( esp_console_cmd_register(&scan_cmd) );

    const esp_console_cmd_t ap_cmd = {
        .command = "ap",
        .help = "AP mode, configure ssid and password",
        .hint = ((void*)0),
        .func = &wifi_cmd_ap,
        .argtable = &ap_args
    };

    ESP_ERROR_CHECK( esp_console_cmd_register(&ap_cmd) );

    const esp_console_cmd_t query_cmd = {
        .command = "query",
        .help = "query WiFi info",
        .hint = ((void*)0),
        .func = &wifi_cmd_query,
    };
    ESP_ERROR_CHECK( esp_console_cmd_register(&query_cmd) );

    iperf_args.ip = arg_str0("c", "client", "<ip>", "run in client mode, connecting to <host>");
    iperf_args.server = arg_lit0("s", "server", "run in server mode");
    iperf_args.udp = arg_lit0("u", "udp", "use UDP rather than TCP");
    iperf_args.port = arg_int0("p", "port", "<port>", "server port to listen on/connect to");
    iperf_args.interval = arg_int0("i", "interval", "<interval>", "seconds between periodic bandwidth reports");
    iperf_args.time = arg_int0("t", "time", "<time>", "time in seconds to transmit for (default 10 secs)");
    iperf_args.abort = arg_lit0("a", "abort", "abort running iperf");
    iperf_args.end = arg_end(1);
    const esp_console_cmd_t iperf_cmd = {
        .command = "iperf",
        .help = "iperf command",
        .hint = ((void*)0),
        .func = &wifi_cmd_iperf,
        .argtable = &iperf_args
    };

    ESP_ERROR_CHECK( esp_console_cmd_register(&iperf_cmd) );
}
