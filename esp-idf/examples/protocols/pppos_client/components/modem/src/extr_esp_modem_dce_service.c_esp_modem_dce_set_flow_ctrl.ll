; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_esp_modem_dce_service.c_esp_modem_dce_set_flow_ctrl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_esp_modem_dce_service.c_esp_modem_dce_set_flow_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 (%struct.TYPE_5__*, i8*, i32)* }

@.str = private unnamed_addr constant [14 x i8] c"AT+IFC=%d,%d\0D\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"command too long: %s\00", align 1
@err = common dso_local global i32 0, align 4
@esp_modem_dce_handle_response_default = common dso_local global i32 0, align 4
@MODEM_COMMAND_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"send command failed\00", align 1
@MODEM_STATE_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"set flow control failed\00", align 1
@DCE_TAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"set flow control ok\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_modem_dce_set_flow_ctrl(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snprintf(i8* %12, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 16
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @err, align 4
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %24 = call i32 (i32, i8*, i32, ...) @DCE_CHECK(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %22, i8* %23)
  %25 = load i32, i32* @esp_modem_dce_handle_response_default, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64 (%struct.TYPE_5__*, i8*, i32)*, i64 (%struct.TYPE_5__*, i8*, i32)** %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %33 = load i32, i32* @MODEM_COMMAND_TIMEOUT_DEFAULT, align 4
  %34 = call i64 %30(%struct.TYPE_5__* %31, i8* %32, i32 %33)
  %35 = load i64, i64* @ESP_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* @err, align 4
  %39 = call i32 (i32, i8*, i32, ...) @DCE_CHECK(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MODEM_STATE_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* @err, align 4
  %47 = call i32 (i32, i8*, i32, ...) @DCE_CHECK(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @DCE_TAG, align 4
  %49 = call i32 @ESP_LOGD(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i64, i64* @ESP_OK, align 8
  store i64 %50, i64* %3, align 8
  br label %53

51:                                               ; No predecessors!
  %52 = load i64, i64* @ESP_FAIL, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %51, %2
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @DCE_CHECK(i32, i8*, i32, ...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
