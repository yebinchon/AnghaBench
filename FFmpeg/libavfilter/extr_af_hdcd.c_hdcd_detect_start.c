
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cdt_expirations; scalar_t__ _active_count; scalar_t__ total_packets; scalar_t__ errors; } ;
typedef TYPE_1__ hdcd_detection_data ;



__attribute__((used)) static void hdcd_detect_start(hdcd_detection_data *detect) {
    detect->errors = 0;
    detect->total_packets = 0;
    detect->_active_count = 0;
    detect->cdt_expirations = -1;
}
