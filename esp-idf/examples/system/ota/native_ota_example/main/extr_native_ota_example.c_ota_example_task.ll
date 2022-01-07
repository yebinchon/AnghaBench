; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/ota/native_ota_example/main/extr_native_ota_example.c_ota_example_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/ota/native_ota_example/main/extr_native_ota_example.c_ota_example_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_16__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Starting OTA example\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"Configured OTA boot partition at offset 0x%08x, but running from offset 0x%08x\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"(This can happen if either the OTA boot data or preferred boot image become corrupted somehow.)\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Running partition type %d subtype %d (offset 0x%08x)\00", align 1
@server_cert_pem_start = common dso_local global i64 0, align 8
@CONFIG_EXAMPLE_FIRMWARE_UPG_URL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to initialise HTTP connection\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to open HTTP connection: %s\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Writing to partition subtype %d at offset 0x%x\00", align 1
@ota_write_data = common dso_local global i32* null, align 8
@BUFFSIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Error: SSL data read error\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"New firmware version: %s\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Running firmware version: %s\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Last invalid firmware version: %s\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"New version is the same as invalid version.\00", align 1
@.str.12 = private unnamed_addr constant [88 x i8] c"Previously, there was an attempt to launch the firmware with %s version, but it failed.\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"The firmware has been rolled back to the previous version.\00", align 1
@.str.14 = private unnamed_addr constant [79 x i8] c"Current running version is the same as a new. We will not continue the update.\00", align 1
@OTA_SIZE_UNKNOWN = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"esp_ota_begin failed (%s)\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"esp_ota_begin succeeded\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"received package is not fit len\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Written image length %d\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Connection closed\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Total Write binary data length: %d\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Error in receiving complete file\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"esp_ota_end failed (%s)!\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"esp_ota_set_boot_partition failed (%s)!\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Prepare to restart system!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ota_example_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ota_example_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__, align 4
  %14 = alloca %struct.TYPE_16__, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_16__, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = call %struct.TYPE_14__* (...) @esp_ota_get_boot_partition()
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %6, align 8
  %20 = call %struct.TYPE_14__* (...) @esp_ota_get_running_partition()
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %7, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = icmp ne %struct.TYPE_14__* %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load i32, i32* @TAG, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %25, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load i32, i32* @TAG, align 4
  %34 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %33, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %24, %1
  %36 = load i32, i32* @TAG, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 %42, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %48 = load i64, i64* @server_cert_pem_start, align 8
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %47, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %51 = load i32, i32* @CONFIG_EXAMPLE_FIRMWARE_UPG_URL, align 4
  store i32 %51, i32* %50, align 8
  %52 = call i32* @esp_http_client_init(%struct.TYPE_15__* %8)
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %35
  %56 = load i32, i32* @TAG, align 4
  %57 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %58 = call i32 (...) @task_fatal_error()
  br label %59

59:                                               ; preds = %55, %35
  %60 = load i32*, i32** %9, align 8
  %61 = call i64 @esp_http_client_open(i32* %60, i32 0)
  store i64 %61, i64* %3, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @ESP_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i32, i32* @TAG, align 4
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @esp_err_to_name(i64 %67)
  %69 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @esp_http_client_cleanup(i32* %70)
  %72 = call i32 (...) @task_fatal_error()
  br label %73

73:                                               ; preds = %65, %59
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @esp_http_client_fetch_headers(i32* %74)
  %76 = call %struct.TYPE_14__* @esp_ota_get_next_update_partition(i32* null)
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %5, align 8
  %77 = load i32, i32* @TAG, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %77, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %80, i32 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = icmp ne %struct.TYPE_14__* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %73, %229
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** @ota_write_data, align 8
  %92 = load i32, i32* @BUFFSIZE, align 4
  %93 = call i32 @esp_http_client_read(i32* %90, i32* %91, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load i32, i32* @TAG, align 4
  %98 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @http_cleanup(i32* %99)
  %101 = call i32 (...) @task_fatal_error()
  br label %229

102:                                              ; preds = %89
  %103 = load i32, i32* %12, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %221

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %201

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp ugt i64 %110, 12
  br i1 %111, label %112, label %194

112:                                              ; preds = %108
  %113 = load i32*, i32** @ota_write_data, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 8
  %115 = call i32 @memcpy(%struct.TYPE_16__* %13, i32* %114, i32 4)
  %116 = load i32, i32* @TAG, align 4
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %121 = call i64 @esp_ota_get_partition_description(%struct.TYPE_14__* %120, %struct.TYPE_16__* %14)
  %122 = load i64, i64* @ESP_OK, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %112
  %125 = load i32, i32* @TAG, align 4
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %124, %112
  %130 = call %struct.TYPE_14__* (...) @esp_ota_get_last_invalid_partition()
  store %struct.TYPE_14__* %130, %struct.TYPE_14__** %15, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %132 = call i64 @esp_ota_get_partition_description(%struct.TYPE_14__* %131, %struct.TYPE_16__* %16)
  %133 = load i64, i64* @ESP_OK, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load i32, i32* @TAG, align 4
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %135, %129
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %142 = icmp ne %struct.TYPE_14__* %141, null
  br i1 %142, label %143, label %163

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @memcmp(i32 %145, i32 %147, i32 4)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %143
  %151 = load i32, i32* @TAG, align 4
  %152 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %151, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %153 = load i32, i32* @TAG, align 4
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %153, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.12, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @TAG, align 4
  %158 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %157, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0))
  %159 = load i32*, i32** %9, align 8
  %160 = call i32 @http_cleanup(i32* %159)
  %161 = call i32 (...) @infinite_loop()
  br label %162

162:                                              ; preds = %150, %143
  br label %163

163:                                              ; preds = %162, %140
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @memcmp(i32 %165, i32 %167, i32 4)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %163
  %171 = load i32, i32* @TAG, align 4
  %172 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %171, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.14, i64 0, i64 0))
  %173 = load i32*, i32** %9, align 8
  %174 = call i32 @http_cleanup(i32* %173)
  %175 = call i32 (...) @infinite_loop()
  br label %176

176:                                              ; preds = %170, %163
  store i32 1, i32* %11, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %178 = load i32, i32* @OTA_SIZE_UNKNOWN, align 4
  %179 = call i64 @esp_ota_begin(%struct.TYPE_14__* %177, i32 %178, i32* %4)
  store i64 %179, i64* %3, align 8
  %180 = load i64, i64* %3, align 8
  %181 = load i64, i64* @ESP_OK, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %176
  %184 = load i32, i32* @TAG, align 4
  %185 = load i64, i64* %3, align 8
  %186 = call i32 @esp_err_to_name(i64 %185)
  %187 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %186)
  %188 = load i32*, i32** %9, align 8
  %189 = call i32 @http_cleanup(i32* %188)
  %190 = call i32 (...) @task_fatal_error()
  br label %191

191:                                              ; preds = %183, %176
  %192 = load i32, i32* @TAG, align 4
  %193 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %192, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  br label %200

194:                                              ; preds = %108
  %195 = load i32, i32* @TAG, align 4
  %196 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %197 = load i32*, i32** %9, align 8
  %198 = call i32 @http_cleanup(i32* %197)
  %199 = call i32 (...) @task_fatal_error()
  br label %200

200:                                              ; preds = %194, %191
  br label %201

201:                                              ; preds = %200, %105
  %202 = load i32, i32* %4, align 4
  %203 = load i32*, i32** @ota_write_data, align 8
  %204 = bitcast i32* %203 to i8*
  %205 = load i32, i32* %12, align 4
  %206 = call i64 @esp_ota_write(i32 %202, i8* %204, i32 %205)
  store i64 %206, i64* %3, align 8
  %207 = load i64, i64* %3, align 8
  %208 = load i64, i64* @ESP_OK, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %201
  %211 = load i32*, i32** %9, align 8
  %212 = call i32 @http_cleanup(i32* %211)
  %213 = call i32 (...) @task_fatal_error()
  br label %214

214:                                              ; preds = %210, %201
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %10, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* @TAG, align 4
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @ESP_LOGD(i32 %218, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 %219)
  br label %228

221:                                              ; preds = %102
  %222 = load i32, i32* %12, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* @TAG, align 4
  %226 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %225, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  br label %230

227:                                              ; preds = %221
  br label %228

228:                                              ; preds = %227, %214
  br label %229

229:                                              ; preds = %228, %96
  br label %89

230:                                              ; preds = %224
  %231 = load i32, i32* @TAG, align 4
  %232 = load i32, i32* %10, align 4
  %233 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %231, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0), i32 %232)
  %234 = load i32*, i32** %9, align 8
  %235 = call i32 @esp_http_client_is_complete_data_received(i32* %234)
  %236 = icmp ne i32 %235, 1
  br i1 %236, label %237, label %243

237:                                              ; preds = %230
  %238 = load i32, i32* @TAG, align 4
  %239 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %238, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %240 = load i32*, i32** %9, align 8
  %241 = call i32 @http_cleanup(i32* %240)
  %242 = call i32 (...) @task_fatal_error()
  br label %243

243:                                              ; preds = %237, %230
  %244 = load i32, i32* %4, align 4
  %245 = call i64 @esp_ota_end(i32 %244)
  store i64 %245, i64* %3, align 8
  %246 = load i64, i64* %3, align 8
  %247 = load i64, i64* @ESP_OK, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %257

249:                                              ; preds = %243
  %250 = load i32, i32* @TAG, align 4
  %251 = load i64, i64* %3, align 8
  %252 = call i32 @esp_err_to_name(i64 %251)
  %253 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %250, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 %252)
  %254 = load i32*, i32** %9, align 8
  %255 = call i32 @http_cleanup(i32* %254)
  %256 = call i32 (...) @task_fatal_error()
  br label %257

257:                                              ; preds = %249, %243
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %259 = call i64 @esp_ota_set_boot_partition(%struct.TYPE_14__* %258)
  store i64 %259, i64* %3, align 8
  %260 = load i64, i64* %3, align 8
  %261 = load i64, i64* @ESP_OK, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %271

263:                                              ; preds = %257
  %264 = load i32, i32* @TAG, align 4
  %265 = load i64, i64* %3, align 8
  %266 = call i32 @esp_err_to_name(i64 %265)
  %267 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %264, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i32 %266)
  %268 = load i32*, i32** %9, align 8
  %269 = call i32 @http_cleanup(i32* %268)
  %270 = call i32 (...) @task_fatal_error()
  br label %271

271:                                              ; preds = %263, %257
  %272 = load i32, i32* @TAG, align 4
  %273 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %272, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  %274 = call i32 (...) @esp_restart()
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @esp_ota_get_boot_partition(...) #1

declare dso_local %struct.TYPE_14__* @esp_ota_get_running_partition(...) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, ...) #1

declare dso_local i32* @esp_http_client_init(%struct.TYPE_15__*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @task_fatal_error(...) #1

declare dso_local i64 @esp_http_client_open(i32*, i32) #1

declare dso_local i32 @esp_err_to_name(i64) #1

declare dso_local i32 @esp_http_client_cleanup(i32*) #1

declare dso_local i32 @esp_http_client_fetch_headers(i32*) #1

declare dso_local %struct.TYPE_14__* @esp_ota_get_next_update_partition(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @esp_http_client_read(i32*, i32*, i32) #1

declare dso_local i32 @http_cleanup(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i64 @esp_ota_get_partition_description(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_14__* @esp_ota_get_last_invalid_partition(...) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @infinite_loop(...) #1

declare dso_local i64 @esp_ota_begin(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i64 @esp_ota_write(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @esp_http_client_is_complete_data_received(i32*) #1

declare dso_local i64 @esp_ota_end(i32) #1

declare dso_local i64 @esp_ota_set_boot_partition(%struct.TYPE_14__*) #1

declare dso_local i32 @esp_restart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
