; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl_handler.c_cmd_get_prop_count_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl_handler.c_cmd_get_prop_count_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }

@RespGetPropertyCount = common dso_local global i32 0, align 4
@resp_payload = common dso_local global %struct.TYPE_8__* null, align 8
@LOCAL_CTRL_MESSAGE__PAYLOAD_RESP_GET_PROP_COUNT = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Got properties count %d\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_7__*, i8**)* @cmd_get_prop_count_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_get_prop_count_handler(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i32, i32* @RespGetPropertyCount, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @resp_payload, align 8
  %10 = call i32 @SAFE_ALLOCATION(i32 %8, %struct.TYPE_8__* %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @resp_payload, align 8
  %12 = call i32 @resp_get_property_count__init(%struct.TYPE_8__* %11)
  store i64 0, i64* %7, align 8
  %13 = call i32 @esp_local_ctrl_get_prop_count(i64* %7)
  %14 = call i32 @err_to_status(i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @resp_payload, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @resp_payload, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @LOCAL_CTRL_MESSAGE__PAYLOAD_RESP_GET_PROP_COUNT, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @resp_payload, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %25, align 8
  %26 = load i32, i32* @TAG, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @ESP_LOGD(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @ESP_OK, align 4
  ret i32 %29
}

declare dso_local i32 @SAFE_ALLOCATION(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @resp_get_property_count__init(%struct.TYPE_8__*) #1

declare dso_local i32 @err_to_status(i32) #1

declare dso_local i32 @esp_local_ctrl_get_prop_count(i64*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
