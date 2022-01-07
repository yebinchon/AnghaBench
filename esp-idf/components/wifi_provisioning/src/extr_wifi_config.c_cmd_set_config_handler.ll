; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_config.c_cmd_set_config_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_config.c_cmd_set_config_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__*, i32, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64 (%struct.TYPE_18__*, i32*)*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Enter cmd_set_config_handler\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Command invoked without handlers\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Error allocating memory\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@STATUS__InvalidArgument = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Received invalid BSSID\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Received invalid SSID\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Received invalid Passphrase\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@STATUS__Success = common dso_local global i32 0, align 4
@STATUS__InternalError = common dso_local global i32 0, align 4
@WI_FI_CONFIG_PAYLOAD__PAYLOAD_RESP_SET_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_20__*, i8*)* @cmd_set_config_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cmd_set_config_handler(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_18__, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @TAG, align 4
  %12 = call i32 @ESP_LOGD(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %8, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %16 = icmp ne %struct.TYPE_19__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @TAG, align 4
  %19 = call i32 @ESP_LOGE(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %20, i64* %4, align 8
  br label %159

21:                                               ; preds = %3
  %22 = call i64 @malloc(i32 4)
  %23 = inttoptr i64 %22 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %9, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %25 = icmp eq %struct.TYPE_21__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %29, i64* %4, align 8
  br label %159

30:                                               ; preds = %21
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %32 = call i32 @resp_set_config__init(%struct.TYPE_21__* %31)
  %33 = call i32 @memset(%struct.TYPE_18__* %10, i32 0, i32 16)
  %34 = load i32, i32* @STATUS__InvalidArgument, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %30
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @TAG, align 4
  %55 = call i32 @ESP_LOGD(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %151

56:                                               ; preds = %44, %30
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp uge i64 %63, 4
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* @TAG, align 4
  %67 = call i32 @ESP_LOGD(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %150

68:                                               ; preds = %56
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp uge i64 %75, 4
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* @TAG, align 4
  %79 = call i32 @ESP_LOGD(i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %149

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @memcpy(i32 %82, i32 %88, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @memcpy(i32 %97, i32 %103, i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memcpy(i32 %112, i32 %118, i32 %124)
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i32 %130, i32* %131, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load i64 (%struct.TYPE_18__*, i32*)*, i64 (%struct.TYPE_18__*, i32*)** %133, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = call i64 %134(%struct.TYPE_18__* %10, i32* %136)
  %138 = load i64, i64* @ESP_OK, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %80
  %141 = load i32, i32* @STATUS__Success, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  br label %148

144:                                              ; preds = %80
  %145 = load i32, i32* @STATUS__InternalError, align 4
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %144, %140
  br label %149

149:                                              ; preds = %148, %77
  br label %150

150:                                              ; preds = %149, %65
  br label %151

151:                                              ; preds = %150, %53
  %152 = load i32, i32* @WI_FI_CONFIG_PAYLOAD__PAYLOAD_RESP_SET_CONFIG, align 4
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  store %struct.TYPE_21__* %155, %struct.TYPE_21__** %157, align 8
  %158 = load i64, i64* @ESP_OK, align 8
  store i64 %158, i64* %4, align 8
  br label %159

159:                                              ; preds = %151, %26, %17
  %160 = load i64, i64* %4, align 8
  ret i64 %160
}

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @resp_set_config__init(%struct.TYPE_21__*) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
