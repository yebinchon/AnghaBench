; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_hid_device_demo/main/extr_hid_device_le_prf.c_hid_add_id_tbl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_hid_device_demo/main/extr_hid_device_le_prf.c_hid_add_id_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64, i64, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }

@hidReportRefMouseIn = common dso_local global i8** null, align 8
@hid_rpt_map = common dso_local global %struct.TYPE_7__* null, align 8
@hidd_le_env = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@HIDD_LE_IDX_REPORT_MOUSE_IN_VAL = common dso_local global i64 0, align 8
@HID_PROTOCOL_MODE_REPORT = common dso_local global i8* null, align 8
@hidReportRefKeyIn = common dso_local global i8** null, align 8
@HIDD_LE_IDX_REPORT_KEY_IN_VAL = common dso_local global i64 0, align 8
@HIDD_LE_IDX_REPORT_KEY_IN_CCC = common dso_local global i64 0, align 8
@hidReportRefCCIn = common dso_local global i8** null, align 8
@HIDD_LE_IDX_REPORT_CC_IN_VAL = common dso_local global i64 0, align 8
@HIDD_LE_IDX_REPORT_CC_IN_CCC = common dso_local global i64 0, align 8
@hidReportRefLedOut = common dso_local global i8** null, align 8
@HIDD_LE_IDX_REPORT_LED_OUT_VAL = common dso_local global i64 0, align 8
@HIDD_LE_IDX_BOOT_KB_IN_REPORT_VAL = common dso_local global i64 0, align 8
@HID_PROTOCOL_MODE_BOOT = common dso_local global i8* null, align 8
@HIDD_LE_IDX_BOOT_KB_OUT_REPORT_VAL = common dso_local global i64 0, align 8
@HIDD_LE_IDX_BOOT_MOUSE_IN_REPORT_VAL = common dso_local global i64 0, align 8
@hidReportRefFeature = common dso_local global i8** null, align 8
@HIDD_LE_IDX_REPORT_VAL = common dso_local global i64 0, align 8
@HID_NUM_REPORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hid_add_id_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_add_id_tbl() #0 {
  %1 = load i8**, i8*** @hidReportRefMouseIn, align 8
  %2 = getelementptr inbounds i8*, i8** %1, i64 0
  %3 = load i8*, i8** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i64 0
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i8* %3, i8** %6, align 8
  %7 = load i8**, i8*** @hidReportRefMouseIn, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  store i8* %9, i8** %12, align 8
  %13 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hidd_le_env, i32 0, i32 0, i32 0), align 8
  %14 = load i64, i64* @HIDD_LE_IDX_REPORT_MOUSE_IN_VAL, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  store i64 %16, i64* %19, align 8
  %20 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hidd_le_env, i32 0, i32 0, i32 0), align 8
  %21 = load i64, i64* @HIDD_LE_IDX_REPORT_MOUSE_IN_VAL, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i64 %23, i64* %26, align 8
  %27 = load i8*, i8** @HID_PROTOCOL_MODE_REPORT, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load i8**, i8*** @hidReportRefKeyIn, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  store i8* %33, i8** %36, align 8
  %37 = load i8**, i8*** @hidReportRefKeyIn, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  store i8* %39, i8** %42, align 8
  %43 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hidd_le_env, i32 0, i32 0, i32 0), align 8
  %44 = load i64, i64* @HIDD_LE_IDX_REPORT_KEY_IN_VAL, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i64 %46, i64* %49, align 8
  %50 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hidd_le_env, i32 0, i32 0, i32 0), align 8
  %51 = load i64, i64* @HIDD_LE_IDX_REPORT_KEY_IN_CCC, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i64 %53, i64* %56, align 8
  %57 = load i8*, i8** @HID_PROTOCOL_MODE_REPORT, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load i8**, i8*** @hidReportRefCCIn, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  store i8* %63, i8** %66, align 8
  %67 = load i8**, i8*** @hidReportRefCCIn, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  store i8* %69, i8** %72, align 8
  %73 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hidd_le_env, i32 0, i32 0, i32 0), align 8
  %74 = load i64, i64* @HIDD_LE_IDX_REPORT_CC_IN_VAL, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store i64 %76, i64* %79, align 8
  %80 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hidd_le_env, i32 0, i32 0, i32 0), align 8
  %81 = load i64, i64* @HIDD_LE_IDX_REPORT_CC_IN_CCC, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i64 %83, i64* %86, align 8
  %87 = load i8*, i8** @HID_PROTOCOL_MODE_REPORT, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 2
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  %91 = load i8**, i8*** @hidReportRefLedOut, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 3
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  store i8* %93, i8** %96, align 8
  %97 = load i8**, i8*** @hidReportRefLedOut, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 3
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  store i8* %99, i8** %102, align 8
  %103 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hidd_le_env, i32 0, i32 0, i32 0), align 8
  %104 = load i64, i64* @HIDD_LE_IDX_REPORT_LED_OUT_VAL, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 3
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  store i64 %106, i64* %109, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 3
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load i8*, i8** @HID_PROTOCOL_MODE_REPORT, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 3
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i8* %113, i8** %116, align 8
  %117 = load i8**, i8*** @hidReportRefKeyIn, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 4
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 4
  store i8* %119, i8** %122, align 8
  %123 = load i8**, i8*** @hidReportRefKeyIn, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 4
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  store i8* %125, i8** %128, align 8
  %129 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hidd_le_env, i32 0, i32 0, i32 0), align 8
  %130 = load i64, i64* @HIDD_LE_IDX_BOOT_KB_IN_REPORT_VAL, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 4
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  store i64 %132, i64* %135, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 4
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  store i64 0, i64* %138, align 8
  %139 = load i8*, i8** @HID_PROTOCOL_MODE_BOOT, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 4
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i8* %139, i8** %142, align 8
  %143 = load i8**, i8*** @hidReportRefLedOut, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 0
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 5
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 4
  store i8* %145, i8** %148, align 8
  %149 = load i8**, i8*** @hidReportRefLedOut, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 1
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 5
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  store i8* %151, i8** %154, align 8
  %155 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hidd_le_env, i32 0, i32 0, i32 0), align 8
  %156 = load i64, i64* @HIDD_LE_IDX_BOOT_KB_OUT_REPORT_VAL, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 5
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  store i64 %158, i64* %161, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 5
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load i8*, i8** @HID_PROTOCOL_MODE_BOOT, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 5
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  store i8* %165, i8** %168, align 8
  %169 = load i8**, i8*** @hidReportRefMouseIn, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i64 6
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 4
  store i8* %171, i8** %174, align 8
  %175 = load i8**, i8*** @hidReportRefMouseIn, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 1
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 6
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 3
  store i8* %177, i8** %180, align 8
  %181 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hidd_le_env, i32 0, i32 0, i32 0), align 8
  %182 = load i64, i64* @HIDD_LE_IDX_BOOT_MOUSE_IN_REPORT_VAL, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i64 6
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  store i64 %184, i64* %187, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 6
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  store i64 0, i64* %190, align 8
  %191 = load i8*, i8** @HID_PROTOCOL_MODE_BOOT, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i64 6
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  store i8* %191, i8** %194, align 8
  %195 = load i8**, i8*** @hidReportRefFeature, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 0
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i64 7
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 4
  store i8* %197, i8** %200, align 8
  %201 = load i8**, i8*** @hidReportRefFeature, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 1
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i64 7
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 3
  store i8* %203, i8** %206, align 8
  %207 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hidd_le_env, i32 0, i32 0, i32 0), align 8
  %208 = load i64, i64* @HIDD_LE_IDX_REPORT_VAL, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i64 7
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 2
  store i64 %210, i64* %213, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i64 7
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  store i64 0, i64* %216, align 8
  %217 = load i8*, i8** @HID_PROTOCOL_MODE_REPORT, align 8
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i64 7
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  store i8* %217, i8** %220, align 8
  %221 = load i32, i32* @HID_NUM_REPORTS, align 4
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hid_rpt_map, align 8
  %223 = call i32 @hid_dev_register_reports(i32 %221, %struct.TYPE_7__* %222)
  ret void
}

declare dso_local i32 @hid_dev_register_reports(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
