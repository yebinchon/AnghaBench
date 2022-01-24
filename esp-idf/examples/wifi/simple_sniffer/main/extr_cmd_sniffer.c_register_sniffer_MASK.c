#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int /*<<< orphan*/ * func; int /*<<< orphan*/ * hint; } ;
typedef  TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int /*<<< orphan*/  end; int /*<<< orphan*/  stop; int /*<<< orphan*/  channel; int /*<<< orphan*/  filter; void* interface; void* file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 void* FUNC4 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  do_sniffer_cmd ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*) ; 
 TYPE_2__ sniffer_args ; 

void FUNC8(void)
{
    sniffer_args.file = FUNC4("f", "file", "<file>",
                                 "name of the file storing the packets in pcap format");
    sniffer_args.interface = FUNC4("i", "interface", "<wlan>",
                                      "which interface to capture packet");
    sniffer_args.filter = FUNC5("F", "filter", "<mgmt|data|ctrl|misc|mpdu|ampdu>", 0, 6, "filter parameters");
    sniffer_args.channel = FUNC2("c", "channel", "<channel>", "communication channel to use");
    sniffer_args.stop = FUNC3(NULL, "stop", "stop running sniffer");
    sniffer_args.end = FUNC1(1);
    const esp_console_cmd_t sniffer_cmd = {
        .command = "sniffer",
        .help = "Capture specific packet and store in pcap format",
        .hint = NULL,
        .func = &do_sniffer_cmd,
        .argtable = &sniffer_args
    };
    FUNC0(FUNC7(&sniffer_cmd));

    FUNC6();
}