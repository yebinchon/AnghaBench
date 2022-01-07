
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bug_report_start; } ;


 int LL_WARNING ;
 TYPE_1__ server ;
 int serverLog (int ,char*) ;

void bugReportStart(void) {
    if (server.bug_report_start == 0) {
        serverLog(LL_WARNING,
            "\n\n=== DISQUE BUG REPORT START: Cut & paste starting from here ===");
        server.bug_report_start = 1;
    }
}
