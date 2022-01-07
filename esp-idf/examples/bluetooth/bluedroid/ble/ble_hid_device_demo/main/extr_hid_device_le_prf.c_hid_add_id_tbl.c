
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* mode; scalar_t__ cccdHandle; scalar_t__ handle; void* type; void* id; } ;
struct TYPE_5__ {scalar_t__* att_tbl; } ;
struct TYPE_6__ {TYPE_1__ hidd_inst; } ;


 size_t HIDD_LE_IDX_BOOT_KB_IN_REPORT_VAL ;
 size_t HIDD_LE_IDX_BOOT_KB_OUT_REPORT_VAL ;
 size_t HIDD_LE_IDX_BOOT_MOUSE_IN_REPORT_VAL ;
 size_t HIDD_LE_IDX_REPORT_CC_IN_CCC ;
 size_t HIDD_LE_IDX_REPORT_CC_IN_VAL ;
 size_t HIDD_LE_IDX_REPORT_KEY_IN_CCC ;
 size_t HIDD_LE_IDX_REPORT_KEY_IN_VAL ;
 size_t HIDD_LE_IDX_REPORT_LED_OUT_VAL ;
 size_t HIDD_LE_IDX_REPORT_MOUSE_IN_VAL ;
 size_t HIDD_LE_IDX_REPORT_VAL ;
 int HID_NUM_REPORTS ;
 void* HID_PROTOCOL_MODE_BOOT ;
 void* HID_PROTOCOL_MODE_REPORT ;
 void** hidReportRefCCIn ;
 void** hidReportRefFeature ;
 void** hidReportRefKeyIn ;
 void** hidReportRefLedOut ;
 void** hidReportRefMouseIn ;
 int hid_dev_register_reports (int ,TYPE_3__*) ;
 TYPE_3__* hid_rpt_map ;
 TYPE_2__ hidd_le_env ;

__attribute__((used)) static void hid_add_id_tbl(void)
{

      hid_rpt_map[0].id = hidReportRefMouseIn[0];
      hid_rpt_map[0].type = hidReportRefMouseIn[1];
      hid_rpt_map[0].handle = hidd_le_env.hidd_inst.att_tbl[HIDD_LE_IDX_REPORT_MOUSE_IN_VAL];
      hid_rpt_map[0].cccdHandle = hidd_le_env.hidd_inst.att_tbl[HIDD_LE_IDX_REPORT_MOUSE_IN_VAL];
      hid_rpt_map[0].mode = HID_PROTOCOL_MODE_REPORT;


      hid_rpt_map[1].id = hidReportRefKeyIn[0];
      hid_rpt_map[1].type = hidReportRefKeyIn[1];
      hid_rpt_map[1].handle = hidd_le_env.hidd_inst.att_tbl[HIDD_LE_IDX_REPORT_KEY_IN_VAL];
      hid_rpt_map[1].cccdHandle = hidd_le_env.hidd_inst.att_tbl[HIDD_LE_IDX_REPORT_KEY_IN_CCC];
      hid_rpt_map[1].mode = HID_PROTOCOL_MODE_REPORT;


      hid_rpt_map[2].id = hidReportRefCCIn[0];
      hid_rpt_map[2].type = hidReportRefCCIn[1];
      hid_rpt_map[2].handle = hidd_le_env.hidd_inst.att_tbl[HIDD_LE_IDX_REPORT_CC_IN_VAL];
      hid_rpt_map[2].cccdHandle = hidd_le_env.hidd_inst.att_tbl[HIDD_LE_IDX_REPORT_CC_IN_CCC];
      hid_rpt_map[2].mode = HID_PROTOCOL_MODE_REPORT;


      hid_rpt_map[3].id = hidReportRefLedOut[0];
      hid_rpt_map[3].type = hidReportRefLedOut[1];
      hid_rpt_map[3].handle = hidd_le_env.hidd_inst.att_tbl[HIDD_LE_IDX_REPORT_LED_OUT_VAL];
      hid_rpt_map[3].cccdHandle = 0;
      hid_rpt_map[3].mode = HID_PROTOCOL_MODE_REPORT;



      hid_rpt_map[4].id = hidReportRefKeyIn[0];
      hid_rpt_map[4].type = hidReportRefKeyIn[1];
      hid_rpt_map[4].handle = hidd_le_env.hidd_inst.att_tbl[HIDD_LE_IDX_BOOT_KB_IN_REPORT_VAL];
      hid_rpt_map[4].cccdHandle = 0;
      hid_rpt_map[4].mode = HID_PROTOCOL_MODE_BOOT;



      hid_rpt_map[5].id = hidReportRefLedOut[0];
      hid_rpt_map[5].type = hidReportRefLedOut[1];
      hid_rpt_map[5].handle = hidd_le_env.hidd_inst.att_tbl[HIDD_LE_IDX_BOOT_KB_OUT_REPORT_VAL];
      hid_rpt_map[5].cccdHandle = 0;
      hid_rpt_map[5].mode = HID_PROTOCOL_MODE_BOOT;



      hid_rpt_map[6].id = hidReportRefMouseIn[0];
      hid_rpt_map[6].type = hidReportRefMouseIn[1];
      hid_rpt_map[6].handle = hidd_le_env.hidd_inst.att_tbl[HIDD_LE_IDX_BOOT_MOUSE_IN_REPORT_VAL];
      hid_rpt_map[6].cccdHandle = 0;
      hid_rpt_map[6].mode = HID_PROTOCOL_MODE_BOOT;


      hid_rpt_map[7].id = hidReportRefFeature[0];
      hid_rpt_map[7].type = hidReportRefFeature[1];
      hid_rpt_map[7].handle = hidd_le_env.hidd_inst.att_tbl[HIDD_LE_IDX_REPORT_VAL];
      hid_rpt_map[7].cccdHandle = 0;
      hid_rpt_map[7].mode = HID_PROTOCOL_MODE_REPORT;



  hid_dev_register_reports(HID_NUM_REPORTS, hid_rpt_map);
}
