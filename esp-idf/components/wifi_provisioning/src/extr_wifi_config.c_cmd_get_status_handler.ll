; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_config.c_cmd_get_status_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_config.c_cmd_get_status_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32, i32, i8*, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__*, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_17__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_20__ = type { i64 (%struct.TYPE_21__*, i32*)*, i32 }
%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Enter cmd_get_status_handler\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Command invoked without handlers\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Error allocating memory\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@WIFI_PROV_STA_CONNECTING = common dso_local global i64 0, align 8
@WIFI_STATION_STATE__Connecting = common dso_local global i32 0, align 4
@RESP_GET_STATUS__STATE_CONNECTED = common dso_local global i8* null, align 8
@WIFI_PROV_STA_CONNECTED = common dso_local global i64 0, align 8
@WIFI_STATION_STATE__Connected = common dso_local global i32 0, align 4
@WIFI_PROV_STA_DISCONNECTED = common dso_local global i64 0, align 8
@WIFI_STATION_STATE__ConnectionFailed = common dso_local global i32 0, align 4
@RESP_GET_STATUS__STATE_FAIL_REASON = common dso_local global i8* null, align 8
@WIFI_PROV_STA_AUTH_ERROR = common dso_local global i64 0, align 8
@WIFI_CONNECT_FAILED_REASON__AuthError = common dso_local global i32 0, align 4
@WIFI_PROV_STA_AP_NOT_FOUND = common dso_local global i64 0, align 8
@WIFI_CONNECT_FAILED_REASON__NetworkNotFound = common dso_local global i32 0, align 4
@STATUS__Success = common dso_local global i32 0, align 4
@WI_FI_CONFIG_PAYLOAD__PAYLOAD_RESP_GET_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_24__*, %struct.TYPE_24__*, i8*)* @cmd_get_status_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cmd_get_status_handler(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 @ESP_LOGD(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %8, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %17 = icmp ne %struct.TYPE_20__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @TAG, align 4
  %20 = call i32 @ESP_LOGE(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %21, i64* %4, align 8
  br label %208

22:                                               ; preds = %3
  %23 = call i64 @malloc(i32 32)
  %24 = inttoptr i64 %23 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %9, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %26 = icmp ne %struct.TYPE_22__* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @TAG, align 4
  %29 = call i32 @ESP_LOGE(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %30, i64* %4, align 8
  br label %208

31:                                               ; preds = %22
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %33 = call i32 @resp_get_status__init(%struct.TYPE_22__* %32)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i64 (%struct.TYPE_21__*, i32*)*, i64 (%struct.TYPE_21__*, i32*)** %35, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = call i64 %36(%struct.TYPE_21__* %10, i32* %38)
  %40 = load i64, i64* @ESP_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %200

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @WIFI_PROV_STA_CONNECTING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* @WIFI_STATION_STATE__Connecting, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** @RESP_GET_STATUS__STATE_CONNECTED, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  br label %196

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WIFI_PROV_STA_CONNECTED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %163

59:                                               ; preds = %54
  %60 = load i32, i32* @WIFI_STATION_STATE__Connected, align 4
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** @RESP_GET_STATUS__STATE_CONNECTED, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = call i64 @malloc(i32 48)
  %67 = inttoptr i64 %66 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %67, %struct.TYPE_23__** %11, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %69 = icmp ne %struct.TYPE_23__* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* @TAG, align 4
  %72 = call i32 @ESP_LOGE(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %73, i64* %4, align 8
  br label %208

74:                                               ; preds = %59
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 4
  store %struct.TYPE_23__* %75, %struct.TYPE_23__** %77, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %79 = call i32 @wifi_connected_state__init(%struct.TYPE_23__* %78)
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.TYPE_22__* @strdup(i32 %82)
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 2
  store %struct.TYPE_22__* %83, %struct.TYPE_22__** %85, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  %89 = icmp eq %struct.TYPE_22__* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %74
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %92 = call i32 @free(%struct.TYPE_22__* %91)
  %93 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %93, i64* %4, align 8
  br label %208

94:                                               ; preds = %74
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  store i32 4, i32* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @strndup(i32 %100, i32 4)
  %102 = inttoptr i64 %101 to %struct.TYPE_22__*
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  store %struct.TYPE_22__* %102, %struct.TYPE_22__** %105, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %108, align 8
  %110 = icmp eq %struct.TYPE_22__* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %94
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %113, align 8
  %115 = call i32 @free(%struct.TYPE_22__* %114)
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %117 = call i32 @free(%struct.TYPE_22__* %116)
  %118 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %118, i64* %4, align 8
  br label %208

119:                                              ; preds = %94
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @strlen(i32 %122)
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.TYPE_22__* @strdup(i32 %129)
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  store %struct.TYPE_22__* %130, %struct.TYPE_22__** %133, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %136, align 8
  %138 = icmp eq %struct.TYPE_22__* %137, null
  br i1 %138, label %139, label %152

139:                                              ; preds = %119
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %142, align 8
  %144 = call i32 @free(%struct.TYPE_22__* %143)
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = call i32 @free(%struct.TYPE_22__* %147)
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %150 = call i32 @free(%struct.TYPE_22__* %149)
  %151 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %151, i64* %4, align 8
  br label %208

152:                                              ; preds = %119
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  br label %195

163:                                              ; preds = %54
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @WIFI_PROV_STA_DISCONNECTED, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %194

168:                                              ; preds = %163
  %169 = load i32, i32* @WIFI_STATION_STATE__ConnectionFailed, align 4
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 8
  %172 = load i8*, i8** @RESP_GET_STATUS__STATE_FAIL_REASON, align 8
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 2
  store i8* %172, i8** %174, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @WIFI_PROV_STA_AUTH_ERROR, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %168
  %180 = load i32, i32* @WIFI_CONNECT_FAILED_REASON__AuthError, align 4
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  br label %193

183:                                              ; preds = %168
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @WIFI_PROV_STA_AP_NOT_FOUND, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i32, i32* @WIFI_CONNECT_FAILED_REASON__NetworkNotFound, align 4
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  br label %192

192:                                              ; preds = %188, %183
  br label %193

193:                                              ; preds = %192, %179
  br label %194

194:                                              ; preds = %193, %163
  br label %195

195:                                              ; preds = %194, %152
  br label %196

196:                                              ; preds = %195, %47
  %197 = load i32, i32* @STATUS__Success, align 4
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  br label %200

200:                                              ; preds = %196, %31
  %201 = load i32, i32* @WI_FI_CONFIG_PAYLOAD__PAYLOAD_RESP_GET_STATUS, align 4
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 0
  store %struct.TYPE_22__* %204, %struct.TYPE_22__** %206, align 8
  %207 = load i64, i64* @ESP_OK, align 8
  store i64 %207, i64* %4, align 8
  br label %208

208:                                              ; preds = %200, %139, %111, %90, %70, %27, %18
  %209 = load i64, i64* %4, align 8
  ret i64 %209
}

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @resp_get_status__init(%struct.TYPE_22__*) #1

declare dso_local i32 @wifi_connected_state__init(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @strdup(i32) #1

declare dso_local i32 @free(%struct.TYPE_22__*) #1

declare dso_local i64 @strndup(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
