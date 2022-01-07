
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _active_count; int hdcd_detected; scalar_t__ peak_extend; scalar_t__ max_gain_adjustment; } ;
typedef TYPE_1__ hdcd_detection_data ;


 int HDCD_EFFECTUAL ;
 int HDCD_NO_EFFECT ;

__attribute__((used)) static void hdcd_detect_end(hdcd_detection_data *detect, int channels) {


    if (detect->_active_count == channels) {
        if (detect->max_gain_adjustment || detect->peak_extend)
            detect->hdcd_detected = HDCD_EFFECTUAL;
        else
            detect->hdcd_detected = HDCD_NO_EFFECT;
    }
}
