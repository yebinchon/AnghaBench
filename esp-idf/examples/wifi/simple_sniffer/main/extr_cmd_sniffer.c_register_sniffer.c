
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int end; int stop; int channel; int filter; void* interface; void* file; } ;


 int ESP_ERROR_CHECK (int ) ;
 int arg_end (int) ;
 int arg_int0 (char*,char*,char*,char*) ;
 int arg_lit0 (int *,char*,char*) ;
 void* arg_str0 (char*,char*,char*,char*) ;
 int arg_strn (char*,char*,char*,int ,int,char*) ;
 int create_wifi_filter_hashtable () ;
 int do_sniffer_cmd ;
 int esp_console_cmd_register (TYPE_1__ const*) ;
 TYPE_2__ sniffer_args ;

void register_sniffer(void)
{
    sniffer_args.file = arg_str0("f", "file", "<file>",
                                 "name of the file storing the packets in pcap format");
    sniffer_args.interface = arg_str0("i", "interface", "<wlan>",
                                      "which interface to capture packet");
    sniffer_args.filter = arg_strn("F", "filter", "<mgmt|data|ctrl|misc|mpdu|ampdu>", 0, 6, "filter parameters");
    sniffer_args.channel = arg_int0("c", "channel", "<channel>", "communication channel to use");
    sniffer_args.stop = arg_lit0(((void*)0), "stop", "stop running sniffer");
    sniffer_args.end = arg_end(1);
    const esp_console_cmd_t sniffer_cmd = {
        .command = "sniffer",
        .help = "Capture specific packet and store in pcap format",
        .hint = ((void*)0),
        .func = &do_sniffer_cmd,
        .argtable = &sniffer_args
    };
    ESP_ERROR_CHECK(esp_console_cmd_register(&sniffer_cmd));

    create_wifi_filter_hashtable();
}
