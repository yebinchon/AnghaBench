; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_scan.c_cmd_scan_result_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_scan.c_cmd_scan_result_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { %struct.TYPE_21__, i32, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 (i64, %struct.TYPE_22__*, i32*)* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Command invoked without handlers\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error allocating memory\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@STATUS__Success = common dso_local global i32 0, align 4
@WI_FI_SCAN_PAYLOAD__PAYLOAD_RESP_SCAN_RESULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to allocate memory for results array\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@STATUS__InternalError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to allocate memory for result entry\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Failed to allocate memory for scan result entry SSID\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Failed to allocate memory for scan result entry BSSID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_25__*, i8*)* @cmd_scan_result_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_scan_result_handler(%struct.TYPE_25__* %0, %struct.TYPE_25__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__, align 4
  %10 = alloca %struct.TYPE_24__**, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = bitcast %struct.TYPE_22__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 40, i1 false)
  store %struct.TYPE_24__** null, %struct.TYPE_24__*** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %11, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %18 = icmp ne %struct.TYPE_23__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @TAG, align 4
  %21 = call i32 @ESP_LOGE(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %22, i32* %4, align 4
  br label %226

23:                                               ; preds = %3
  %24 = call i64 @malloc(i32 16)
  %25 = inttoptr i64 %24 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %12, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @TAG, align 4
  %30 = call i32 @ESP_LOGE(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %31, i32* %4, align 4
  br label %226

32:                                               ; preds = %23
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %34 = call i32 @resp_scan_result__init(%struct.TYPE_16__* %33)
  %35 = load i32, i32* @STATUS__Success, align 4
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @WI_FI_SCAN_PAYLOAD__PAYLOAD_RESP_SCAN_RESULT, align 4
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 2
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %43, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @calloc(i64 %48, i32 8)
  %50 = inttoptr i64 %49 to %struct.TYPE_24__**
  store %struct.TYPE_24__** %50, %struct.TYPE_24__*** %10, align 8
  %51 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %52 = icmp ne %struct.TYPE_24__** %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %32
  %54 = load i32, i32* @TAG, align 4
  %55 = call i32 @ESP_LOGE(i32 %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %56, i32* %4, align 4
  br label %226

57:                                               ; preds = %32
  %58 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  store %struct.TYPE_24__** %58, %struct.TYPE_24__*** %60, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  store i64 0, i64* %13, align 8
  br label %68

68:                                               ; preds = %221, %57
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %69, %74
  br i1 %75, label %76, label %224

76:                                               ; preds = %68
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = load i32 (i64, %struct.TYPE_22__*, i32*)*, i32 (i64, %struct.TYPE_22__*, i32*)** %78, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %80, %85
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = call i32 %79(i64 %86, %struct.TYPE_22__* %9, i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @ESP_OK, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %76
  %94 = load i32, i32* @STATUS__InternalError, align 4
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %224

97:                                               ; preds = %76
  %98 = call i64 @malloc(i32 48)
  %99 = inttoptr i64 %98 to %struct.TYPE_24__*
  %100 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %100, i64 %101
  store %struct.TYPE_24__* %99, %struct.TYPE_24__** %102, align 8
  %103 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %103, i64 %104
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %105, align 8
  %107 = icmp ne %struct.TYPE_24__* %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %97
  %109 = load i32, i32* @TAG, align 4
  %110 = call i32 @ESP_LOGE(i32 %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %111, i32* %4, align 4
  br label %226

112:                                              ; preds = %97
  %113 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %114 = load i64, i64* %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %113, i64 %114
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = call i32 @wi_fi_scan_result__init(%struct.TYPE_24__* %116)
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @strnlen(i32 %119, i32 32)
  %121 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %122 = load i64, i64* %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %121, i64 %122
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  store i32 %120, i32* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @strndup(i32 %128, i32 32)
  %130 = inttoptr i64 %129 to i32*
  %131 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %132 = load i64, i64* %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %131, i64 %132
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  store i32* %130, i32** %136, align 8
  %137 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %138 = load i64, i64* %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %137, i64 %138
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %112
  %146 = load i32, i32* @TAG, align 4
  %147 = call i32 @ESP_LOGE(i32 %146, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %148 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %148, i32* %4, align 4
  br label %226

149:                                              ; preds = %112
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %153 = load i64, i64* %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %152, i64 %153
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 3
  store i32 %151, i32* %156, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %160 = load i64, i64* %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %159, i64 %160
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 2
  store i32 %158, i32* %163, align 4
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %167 = load i64, i64* %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %166, i64 %167
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 1
  store i32 %165, i32* %170, align 8
  %171 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %172 = load i64, i64* %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %171, i64 %172
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  store i32 4, i32* %176, align 8
  %177 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %178 = load i64, i64* %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %177, i64 %178
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @malloc(i32 %183)
  %185 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %186 = load i64, i64* %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %185, i64 %186
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 1
  store i64 %184, i64* %190, align 8
  %191 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %192 = load i64, i64* %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %191, i64 %192
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %149
  %200 = load i32, i32* @TAG, align 4
  %201 = call i32 @ESP_LOGE(i32 %200, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %202 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %202, i32* %4, align 4
  br label %226

203:                                              ; preds = %149
  %204 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %205 = load i64, i64* %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %204, i64 %205
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %214 = load i64, i64* %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %213, i64 %214
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @memcpy(i64 %210, i32 %212, i32 %219)
  br label %221

221:                                              ; preds = %203
  %222 = load i64, i64* %13, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %13, align 8
  br label %68

224:                                              ; preds = %93, %68
  %225 = load i32, i32* @ESP_OK, align 4
  store i32 %225, i32* %4, align 4
  br label %226

226:                                              ; preds = %224, %199, %145, %108, %53, %28, %19
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @resp_scan_result__init(%struct.TYPE_16__*) #2

declare dso_local i64 @calloc(i64, i32) #2

declare dso_local i32 @wi_fi_scan_result__init(%struct.TYPE_24__*) #2

declare dso_local i32 @strnlen(i32, i32) #2

declare dso_local i64 @strndup(i32, i32) #2

declare dso_local i32 @memcpy(i64, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
