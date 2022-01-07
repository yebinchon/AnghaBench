; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_update_wifi_scan_results.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_update_wifi_scan_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64*, i32, %struct.TYPE_8__, %struct.TYPE_6__**, %struct.TYPE_6__** }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32, i32*, i32 }

@prov_ctx = common dso_local global %struct.TYPE_7__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Scan finished\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to get count of scanned APs\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Scan result empty\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to allocate memory for AP list\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to get scanned AP records\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Scan results for channel %d :\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Scan results :\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\09S.N. %-32s %-12s %s %s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"SSID\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"BSSID\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"RSSI\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"\09[%2d] %-32s %02x%02x%02x%02x%02x%02x %4d %4d\00", align 1
@MAX_SCAN_RESULTS = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"Scan starting on channel %u...\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Failed to start scan\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Scan started\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @update_wifi_scan_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @update_wifi_scan_results() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %13, i64* %1, align 8
  br label %406

14:                                               ; preds = %0
  %15 = load i32, i32* @TAG, align 4
  %16 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @ESP_FAIL, align 8
  store i64 %17, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %23, i64 %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %14
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %31, i64 %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i32 @free(%struct.TYPE_6__* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %39
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %28, %14
  %47 = call i64 @esp_wifi_scan_get_ap_num(i64* %3)
  %48 = load i64, i64* @ESP_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @TAG, align 4
  %52 = call i32 @ESP_LOGE(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %345

53:                                               ; preds = %46
  %54 = load i64, i64* %3, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @TAG, align 4
  %58 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i64, i64* @ESP_OK, align 8
  store i64 %59, i64* %2, align 8
  br label %345

60:                                               ; preds = %53
  %61 = load i64, i64* %3, align 8
  %62 = call i64 @calloc(i64 %61, i32 32)
  %63 = inttoptr i64 %62 to %struct.TYPE_6__*
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %66, i64 %67
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %70, align 8
  %72 = load i64, i64* %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %60
  %77 = load i32, i32* @TAG, align 4
  %78 = call i32 @ESP_LOGE(i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %345

79:                                               ; preds = %60
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %82, i64 %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = call i64 @esp_wifi_scan_get_ap_records(i64* %3, %struct.TYPE_6__* %85)
  %87 = load i64, i64* @ESP_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load i32, i32* @TAG, align 4
  %91 = call i32 @ESP_LOGE(i32 %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %345

92:                                               ; preds = %79
  %93 = load i64, i64* %3, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %4, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %93, i64* %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load i32, i32* @TAG, align 4
  %105 = load i64, i64* %4, align 8
  %106 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %105)
  br label %110

107:                                              ; preds = %92
  %108 = load i32, i32* @TAG, align 4
  %109 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i32, i32* @TAG, align 4
  %112 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %113

113:                                              ; preds = %228, %110
  %114 = load i64, i64* %5, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* %4, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ult i64 %114, %120
  br i1 %121, label %122, label %231

122:                                              ; preds = %113
  %123 = load i32, i32* @TAG, align 4
  %124 = load i64, i64* %5, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %126, align 8
  %128 = load i64, i64* %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %127, i64 %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i64, i64* %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %136, align 8
  %138 = load i64, i64* %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %137, i64 %138
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i64, i64* %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 5
  %149 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %148, align 8
  %150 = load i64, i64* %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %149, i64 %150
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i64, i64* %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %160, align 8
  %162 = load i64, i64* %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %161, i64 %162
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = load i64, i64* %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 5
  %173 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %172, align 8
  %174 = load i64, i64* %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %173, i64 %174
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i64, i64* %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 5
  %185 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %184, align 8
  %186 = load i64, i64* %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %185, i64 %186
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = load i64, i64* %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 4
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 5
  %197 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %196, align 8
  %198 = load i64, i64* %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %197, i64 %198
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i64, i64* %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 5
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 5
  %209 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %208, align 8
  %210 = load i64, i64* %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %209, i64 %210
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = load i64, i64* %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 5
  %219 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %218, align 8
  %220 = load i64, i64* %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %219, i64 %220
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = load i64, i64* %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %123, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i64 %124, i32 %134, i32 %146, i32 %158, i32 %170, i32 %182, i32 %194, i32 %206, i64 %216, i32 %226)
  br label %228

228:                                              ; preds = %122
  %229 = load i64, i64* %5, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %5, align 8
  br label %113

231:                                              ; preds = %113
  %232 = load i64, i64* %3, align 8
  %233 = load i32, i32* @MAX_SCAN_RESULTS, align 4
  %234 = call i32 @MIN(i64 %232, i32 %233)
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* @MAX_SCAN_RESULTS, align 4
  %236 = load i32, i32* %6, align 4
  %237 = sub nsw i32 %235, %236
  %238 = sub nsw i32 %237, 1
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %316, %279, %231
  %240 = load i32, i32* %6, align 4
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i32, i32* %7, align 4
  %244 = icmp sge i32 %243, 0
  br label %245

245:                                              ; preds = %242, %239
  %246 = phi i1 [ false, %239 ], [ %244, %242 ]
  br i1 %246, label %247, label %319

247:                                              ; preds = %245
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 6
  %250 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %250, i64 %252
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = icmp ne %struct.TYPE_6__* %254, null
  br i1 %255, label %256, label %316

256:                                              ; preds = %247
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 6
  %259 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %258, align 8
  %260 = load i32, i32* %7, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %259, i64 %261
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 5
  %268 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %267, align 8
  %269 = load i64, i64* %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %268, i64 %269
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = load i32, i32* %6, align 4
  %273 = sub nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp sgt i64 %265, %277
  br i1 %278, label %279, label %300

279:                                              ; preds = %256
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 5
  %282 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %281, align 8
  %283 = load i64, i64* %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %282, i64 %283
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = load i32, i32* %6, align 4
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i64 %288
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 6
  %292 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %291, align 8
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* %6, align 4
  %295 = add nsw i32 %293, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %292, i64 %296
  store %struct.TYPE_6__* %289, %struct.TYPE_6__** %297, align 8
  %298 = load i32, i32* %6, align 4
  %299 = add nsw i32 %298, -1
  store i32 %299, i32* %6, align 4
  br label %239

300:                                              ; preds = %256
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 6
  %303 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %303, i64 %305
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %306, align 8
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 6
  %310 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %309, align 8
  %311 = load i32, i32* %7, align 4
  %312 = load i32, i32* %6, align 4
  %313 = add nsw i32 %311, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %310, i64 %314
  store %struct.TYPE_6__* %307, %struct.TYPE_6__** %315, align 8
  br label %316

316:                                              ; preds = %300, %247
  %317 = load i32, i32* %7, align 4
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %7, align 4
  br label %239

319:                                              ; preds = %245
  br label %320

320:                                              ; preds = %323, %319
  %321 = load i32, i32* %6, align 4
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %323, label %343

323:                                              ; preds = %320
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 5
  %326 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %325, align 8
  %327 = load i64, i64* %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %326, i64 %327
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %328, align 8
  %330 = load i32, i32* %6, align 4
  %331 = sub nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i64 %332
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 6
  %336 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %335, align 8
  %337 = load i32, i32* %6, align 4
  %338 = sub nsw i32 %337, 1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %336, i64 %339
  store %struct.TYPE_6__* %333, %struct.TYPE_6__** %340, align 8
  %341 = load i32, i32* %6, align 4
  %342 = add nsw i32 %341, -1
  store i32 %342, i32* %6, align 4
  br label %320

343:                                              ; preds = %320
  %344 = load i64, i64* @ESP_OK, align 8
  store i64 %344, i64* %2, align 8
  br label %345

345:                                              ; preds = %343, %89, %76, %56, %50
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 8
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %345
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 0
  store i32 0, i32* %352, align 8
  br label %404

353:                                              ; preds = %345
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = add i64 %356, 1
  %358 = urem i64 %357, 14
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 1
  store i64 %358, i64* %360, align 8
  store i64 %358, i64* %4, align 8
  %361 = load i64, i64* %2, align 8
  %362 = load i64, i64* @ESP_OK, align 8
  %363 = icmp ne i64 %361, %362
  br i1 %363, label %367, label %364

364:                                              ; preds = %353
  %365 = load i64, i64* %4, align 8
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %364, %353
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 0
  store i32 0, i32* %369, align 8
  br label %404

370:                                              ; preds = %364
  %371 = load i64, i64* %4, align 8
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = sext i32 %374 to i64
  %376 = urem i64 %371, %375
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %370
  %379 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %380 = sdiv i32 120, %379
  %381 = call i32 @vTaskDelay(i32 %380)
  br label %382

382:                                              ; preds = %378, %370
  %383 = load i32, i32* @TAG, align 4
  %384 = load i64, i64* %4, align 8
  %385 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %383, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i64 %384)
  %386 = load i64, i64* %4, align 8
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 4
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 0
  store i64 %386, i64* %389, align 8
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 4
  %392 = call i64 @esp_wifi_scan_start(%struct.TYPE_8__* %391, i32 0)
  store i64 %392, i64* %2, align 8
  %393 = load i64, i64* %2, align 8
  %394 = load i64, i64* @ESP_OK, align 8
  %395 = icmp ne i64 %393, %394
  br i1 %395, label %396, label %401

396:                                              ; preds = %382
  %397 = load i32, i32* @TAG, align 4
  %398 = call i32 @ESP_LOGE(i32 %397, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prov_ctx, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 0
  store i32 0, i32* %400, align 8
  br label %404

401:                                              ; preds = %382
  %402 = load i32, i32* @TAG, align 4
  %403 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %402, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %404

404:                                              ; preds = %401, %396, %367, %350
  %405 = load i64, i64* %2, align 8
  store i64 %405, i64* %1, align 8
  br label %406

406:                                              ; preds = %404, %12
  %407 = load i64, i64* %1, align 8
  ret i64 %407
}

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i64 @esp_wifi_scan_get_ap_num(i64*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i64 @esp_wifi_scan_get_ap_records(i64*, %struct.TYPE_6__*) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i64 @esp_wifi_scan_start(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
