; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_esp_modem_dce_service.c_esp_modem_dce_define_pdp_context.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_esp_modem_dce_service.c_esp_modem_dce_define_pdp_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*, i8*, i32)* }

@.str = private unnamed_addr constant [25 x i8] c"AT+CGDCONT=%d,\22%s\22,\22%s\22\0D\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"command too long: %s\00", align 1
@err = common dso_local global i32 0, align 4
@esp_modem_dce_handle_response_default = common dso_local global i32 0, align 4
@MODEM_COMMAND_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"send command failed\00", align 1
@MODEM_STATE_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"define pdp context failed\00", align 1
@DCE_TAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"define pdp context ok\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_modem_dce_define_pdp_context(%struct.TYPE_6__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %17 = load i32, i32* %7, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @snprintf(i8* %16, i32 64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18, i8* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 64
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @err, align 4
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %27 = call i32 (i32, i8*, i32, ...) @DCE_CHECK(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %25, i8* %26)
  %28 = load i32, i32* @esp_modem_dce_handle_response_default, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64 (%struct.TYPE_5__*, i8*, i32)*, i64 (%struct.TYPE_5__*, i8*, i32)** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %36 = load i32, i32* @MODEM_COMMAND_TIMEOUT_DEFAULT, align 4
  %37 = call i64 %33(%struct.TYPE_5__* %34, i8* %35, i32 %36)
  %38 = load i64, i64* @ESP_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @err, align 4
  %42 = call i32 (i32, i8*, i32, ...) @DCE_CHECK(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MODEM_STATE_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* @err, align 4
  %50 = call i32 (i32, i8*, i32, ...) @DCE_CHECK(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @DCE_TAG, align 4
  %52 = call i32 @ESP_LOGD(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i64, i64* @ESP_OK, align 8
  store i64 %53, i64* %5, align 8
  br label %56

54:                                               ; No predecessors!
  %55 = load i64, i64* @ESP_FAIL, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %54, %4
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @DCE_CHECK(i32, i8*, i32, ...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
