; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_start_service.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_start_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, i32*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (i32, i8*, i8*)*, i64 (i32*, i32)*, i32 (i32*)* }

@prov_ctx = common dso_local global %struct.TYPE_6__* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to create new protocomm instance\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to configure service\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to start service\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"proto-ver\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to set version endpoint\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"prov-session\00", align 1
@protocomm_security0 = common dso_local global i32 0, align 4
@protocomm_security1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Unsupported protocomm security version %d\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to set security endpoint\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Failed to allocate memory for provisioning handlers\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"prov-config\00", align 1
@wifi_prov_config_data_handler = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"Failed to set provisioning endpoint\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Failed to allocate memory for Wi-Fi scan handlers\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"prov-scan\00", align 1
@wifi_prov_scan_handler = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"Failed to set Wi-Fi scan endpoint\00", align 1
@WIFI_EVENT = common dso_local global i32 0, align 4
@ESP_EVENT_ANY_ID = common dso_local global i32 0, align 4
@wifi_prov_mgr_event_handler_internal = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"Failed to register WiFi event handler\00", align 1
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"Failed to register IP event handler\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"Provisioning started with service name : %s \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*)* @wifi_prov_mgr_start_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wifi_prov_mgr_start_service(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = call i32* (...) @protocomm_new()
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  store i32* %13, i32** %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* @ESP_FAIL, align 8
  store i64 %23, i64* %3, align 8
  br label %346

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64 (i32, i8*, i8*)*, i64 (i32, i8*, i8*)** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 %27(i32 %30, i8* %31, i8* %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @ESP_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %24
  %38 = load i32, i32* @TAG, align 4
  %39 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @protocomm_delete(i32* %42)
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %3, align 8
  br label %346

45:                                               ; preds = %24
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64 (i32*, i32)*, i64 (i32*, i32)** %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i64 %48(i32* %51, i32 %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @ESP_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %45
  %60 = load i32, i32* @TAG, align 4
  %61 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @protocomm_delete(i32* %64)
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %3, align 8
  br label %346

67:                                               ; preds = %45
  %68 = call i32* (...) @wifi_prov_get_info_json()
  store i32* %68, i32** %8, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i8* @cJSON_Print(i32* %69)
  store i8* %70, i8** %9, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i64 @protocomm_set_version(i32* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  store i64 %75, i64* %7, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @cJSON_Delete(i32* %78)
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @ESP_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %67
  %84 = load i32, i32* @TAG, align 4
  %85 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32 (i32*)*, i32 (i32*)** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 %88(i32* %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @protocomm_delete(i32* %95)
  %97 = load i64, i64* %7, align 8
  store i64 %97, i64* %3, align 8
  br label %346

98:                                               ; preds = %67
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @protocomm_set_security(i32* %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* @protocomm_security0, i32* null)
  store i64 %107, i64* %7, align 8
  br label %128

108:                                              ; preds = %98
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 4
  %119 = call i64 @protocomm_set_security(i32* %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* @protocomm_security1, i32* %118)
  store i64 %119, i64* %7, align 8
  br label %127

120:                                              ; preds = %108
  %121 = load i32, i32* @TAG, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  %126 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %126, i64* %7, align 8
  br label %127

127:                                              ; preds = %120, %113
  br label %128

128:                                              ; preds = %127, %103
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @ESP_OK, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %128
  %133 = load i32, i32* @TAG, align 4
  %134 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i32 (i32*)*, i32 (i32*)** %136, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 %137(i32* %140)
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @protocomm_delete(i32* %144)
  %146 = load i64, i64* %7, align 8
  store i64 %146, i64* %3, align 8
  br label %346

147:                                              ; preds = %128
  %148 = call i8* @malloc(i32 4)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @get_wifi_prov_handlers(i8* %153)
  store i64 %154, i64* %7, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load i64, i64* @ESP_OK, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %147
  %159 = load i32, i32* @TAG, align 4
  %160 = call i32 @ESP_LOGD(i32 %159, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load i32 (i32*)*, i32 (i32*)** %162, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 %163(i32* %166)
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @protocomm_delete(i32* %170)
  %172 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %172, i64* %3, align 8
  br label %346

173:                                              ; preds = %147
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* @wifi_prov_config_data_handler, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @protocomm_add_endpoint(i32* %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %177, i8* %180)
  store i64 %181, i64* %7, align 8
  %182 = load i64, i64* %7, align 8
  %183 = load i64, i64* @ESP_OK, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %204

185:                                              ; preds = %173
  %186 = load i32, i32* @TAG, align 4
  %187 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %186, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @free(i8* %190)
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load i32 (i32*)*, i32 (i32*)** %193, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 %194(i32* %197)
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @protocomm_delete(i32* %201)
  %203 = load i64, i64* %7, align 8
  store i64 %203, i64* %3, align 8
  br label %346

204:                                              ; preds = %173
  %205 = call i8* @malloc(i32 4)
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  store i8* %205, i8** %207, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = call i64 @get_wifi_scan_handlers(i8* %210)
  store i64 %211, i64* %7, align 8
  %212 = load i64, i64* %7, align 8
  %213 = load i64, i64* @ESP_OK, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %234

215:                                              ; preds = %204
  %216 = load i32, i32* @TAG, align 4
  %217 = call i32 @ESP_LOGD(i32 %216, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @free(i8* %220)
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 2
  %224 = load i32 (i32*)*, i32 (i32*)** %223, align 8
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 3
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 %224(i32* %227)
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @protocomm_delete(i32* %231)
  %233 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %233, i64* %3, align 8
  br label %346

234:                                              ; preds = %204
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 3
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* @wifi_prov_scan_handler, align 4
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  %241 = load i8*, i8** %240, align 8
  %242 = call i64 @protocomm_add_endpoint(i32* %237, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %238, i8* %241)
  store i64 %242, i64* %7, align 8
  %243 = load i64, i64* %7, align 8
  %244 = load i64, i64* @ESP_OK, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %269

246:                                              ; preds = %234
  %247 = load i32, i32* @TAG, align 4
  %248 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %247, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 2
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @free(i8* %251)
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @free(i8* %255)
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 2
  %259 = load i32 (i32*)*, i32 (i32*)** %258, align 8
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 3
  %262 = load i32*, i32** %261, align 8
  %263 = call i32 %259(i32* %262)
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = call i32 @protocomm_delete(i32* %266)
  %268 = load i64, i64* %7, align 8
  store i64 %268, i64* %3, align 8
  br label %346

269:                                              ; preds = %234
  %270 = load i32, i32* @WIFI_EVENT, align 4
  %271 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %272 = load i32, i32* @wifi_prov_mgr_event_handler_internal, align 4
  %273 = call i64 @esp_event_handler_register(i32 %270, i32 %271, i32 %272, i32* null)
  store i64 %273, i64* %7, align 8
  %274 = load i64, i64* %7, align 8
  %275 = load i64, i64* @ESP_OK, align 8
  %276 = icmp ne i64 %274, %275
  br i1 %276, label %277, label %300

277:                                              ; preds = %269
  %278 = load i32, i32* @TAG, align 4
  %279 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %278, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 2
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @free(i8* %282)
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 1
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @free(i8* %286)
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 2
  %290 = load i32 (i32*)*, i32 (i32*)** %289, align 8
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = call i32 %290(i32* %293)
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 3
  %297 = load i32*, i32** %296, align 8
  %298 = call i32 @protocomm_delete(i32* %297)
  %299 = load i64, i64* %7, align 8
  store i64 %299, i64* %3, align 8
  br label %346

300:                                              ; preds = %269
  %301 = load i32, i32* @IP_EVENT, align 4
  %302 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %303 = load i32, i32* @wifi_prov_mgr_event_handler_internal, align 4
  %304 = call i64 @esp_event_handler_register(i32 %301, i32 %302, i32 %303, i32* null)
  store i64 %304, i64* %7, align 8
  %305 = load i64, i64* %7, align 8
  %306 = load i64, i64* @ESP_OK, align 8
  %307 = icmp ne i64 %305, %306
  br i1 %307, label %308, label %335

308:                                              ; preds = %300
  %309 = load i32, i32* @TAG, align 4
  %310 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %309, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  %311 = load i32, i32* @WIFI_EVENT, align 4
  %312 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %313 = load i32, i32* @wifi_prov_mgr_event_handler_internal, align 4
  %314 = call i32 @esp_event_handler_unregister(i32 %311, i32 %312, i32 %313)
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 2
  %317 = load i8*, i8** %316, align 8
  %318 = call i32 @free(i8* %317)
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 1
  %321 = load i8*, i8** %320, align 8
  %322 = call i32 @free(i8* %321)
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 2
  %325 = load i32 (i32*)*, i32 (i32*)** %324, align 8
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 3
  %328 = load i32*, i32** %327, align 8
  %329 = call i32 %325(i32* %328)
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 3
  %332 = load i32*, i32** %331, align 8
  %333 = call i32 @protocomm_delete(i32* %332)
  %334 = load i64, i64* %7, align 8
  store i64 %334, i64* %3, align 8
  br label %346

335:                                              ; preds = %300
  %336 = load i32, i32* @TAG, align 4
  %337 = load i8*, i8** %4, align 8
  %338 = icmp ne i8* %337, null
  br i1 %338, label %339, label %341

339:                                              ; preds = %335
  %340 = load i8*, i8** %4, align 8
  br label %342

341:                                              ; preds = %335
  br label %342

342:                                              ; preds = %341, %339
  %343 = phi i8* [ %340, %339 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), %341 ]
  %344 = call i32 @ESP_LOGI(i32 %336, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i8* %343)
  %345 = load i64, i64* @ESP_OK, align 8
  store i64 %345, i64* %3, align 8
  br label %346

346:                                              ; preds = %342, %308, %277, %246, %215, %185, %158, %132, %83, %59, %37, %20
  %347 = load i64, i64* %3, align 8
  ret i64 %347
}

declare dso_local i32* @protocomm_new(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @protocomm_delete(i32*) #1

declare dso_local i32* @wifi_prov_get_info_json(...) #1

declare dso_local i8* @cJSON_Print(i32*) #1

declare dso_local i64 @protocomm_set_version(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cJSON_Delete(i32*) #1

declare dso_local i64 @protocomm_set_security(i32*, i8*, i32*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @get_wifi_prov_handlers(i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i64 @protocomm_add_endpoint(i32*, i8*, i32, i8*) #1

declare dso_local i64 @get_wifi_scan_handlers(i8*) #1

declare dso_local i64 @esp_event_handler_register(i32, i32, i32, i32*) #1

declare dso_local i32 @esp_event_handler_unregister(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
