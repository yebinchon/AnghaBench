#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* command; char* help; int /*<<< orphan*/ * func; int /*<<< orphan*/ * hint; TYPE_2__* argtable; } ;
typedef  TYPE_1__ esp_console_cmd_t ;
struct TYPE_8__ {void* end; void* abort; void* time; void* interval; void* port; void* udp; void* server; void* ip; void* password; void* ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ ap_args ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (char*,char*,char*,char*) ; 
 void* FUNC3 (char*,char*,char*) ; 
 void* FUNC4 (char*,char*,char*,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  heap_size ; 
 TYPE_2__ iperf_args ; 
 int /*<<< orphan*/  restart ; 
 TYPE_2__ scan_args ; 
 TYPE_2__ sta_args ; 
 int /*<<< orphan*/  wifi_cmd_ap ; 
 int /*<<< orphan*/  wifi_cmd_iperf ; 
 int /*<<< orphan*/  wifi_cmd_query ; 
 int /*<<< orphan*/  wifi_cmd_scan ; 
 int /*<<< orphan*/  wifi_cmd_sta ; 

void FUNC7(void)
{
    sta_args.ssid = FUNC5(NULL, NULL, "<ssid>", "SSID of AP");
    sta_args.password = FUNC4(NULL, NULL, "<pass>", "password of AP");
    sta_args.end = FUNC1(2);

    const esp_console_cmd_t sta_cmd = {
        .command = "sta",
        .help = "WiFi is station mode, join specified soft-AP",
        .hint = NULL,
        .func = &wifi_cmd_sta,
        .argtable = &sta_args
    };

    FUNC0( FUNC6(&sta_cmd) );

    scan_args.ssid = FUNC4(NULL, NULL, "<ssid>", "SSID of AP want to be scanned");
    scan_args.end = FUNC1(1);

    const esp_console_cmd_t scan_cmd = {
        .command = "scan",
        .help = "WiFi is station mode, start scan ap",
        .hint = NULL,
        .func = &wifi_cmd_scan,
        .argtable = &scan_args
    };

    ap_args.ssid = FUNC5(NULL, NULL, "<ssid>", "SSID of AP");
    ap_args.password = FUNC4(NULL, NULL, "<pass>", "password of AP");
    ap_args.end = FUNC1(2);


    FUNC0( FUNC6(&scan_cmd) );

    const esp_console_cmd_t ap_cmd = {
        .command = "ap",
        .help = "AP mode, configure ssid and password",
        .hint = NULL,
        .func = &wifi_cmd_ap,
        .argtable = &ap_args
    };

    FUNC0( FUNC6(&ap_cmd) );

    const esp_console_cmd_t query_cmd = {
        .command = "query",
        .help = "query WiFi info",
        .hint = NULL,
        .func = &wifi_cmd_query,
    };
    FUNC0( FUNC6(&query_cmd) );

    const esp_console_cmd_t restart_cmd = {
        .command = "restart",
        .help = "Restart the program",
        .hint = NULL,
        .func = &restart,
    };
    FUNC0( FUNC6(&restart_cmd) );

    iperf_args.ip = FUNC4("c", "client", "<ip>", "run in client mode, connecting to <host>");
    iperf_args.server = FUNC3("s", "server", "run in server mode");
    iperf_args.udp = FUNC3("u", "udp", "use UDP rather than TCP");
    iperf_args.port = FUNC2("p", "port", "<port>", "server port to listen on/connect to");
    iperf_args.interval = FUNC2("i", "interval", "<interval>", "seconds between periodic bandwidth reports");
    iperf_args.time = FUNC2("t", "time", "<time>", "time in seconds to transmit for (default 10 secs)");
    iperf_args.abort = FUNC3("a", "abort", "abort running iperf");
    iperf_args.end = FUNC1(1);
    const esp_console_cmd_t iperf_cmd = {
        .command = "iperf",
        .help = "iperf command",
        .hint = NULL,
        .func = &wifi_cmd_iperf,
        .argtable = &iperf_args
    };

    FUNC0( FUNC6(&iperf_cmd) );

    const esp_console_cmd_t heap_cmd = {
        .command = "heap",
        .help = "get min free heap size during test",
        .hint = NULL,
        .func = &heap_size,
    };
    FUNC0( FUNC6(&heap_cmd) );
}