; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_esp_modem_dce_service.c_esp_modem_dce_echo.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_esp_modem_dce_service.c_esp_modem_dce_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_6__*, i8*, i32)* }

@esp_modem_dce_handle_response_default = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ATE1\0D\00", align 1
@MODEM_COMMAND_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"send command failed\00", align 1
@err = common dso_local global i32 0, align 4
@MODEM_STATE_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"enable echo failed\00", align 1
@DCE_TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"enable echo ok\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ATE0\0D\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"disable echo failed\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"disable echo ok\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_modem_dce_echo(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %6, align 8
  %10 = load i32, i32* @esp_modem_dce_handle_response_default, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64 (%struct.TYPE_6__*, i8*, i32)*, i64 (%struct.TYPE_6__*, i8*, i32)** %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = load i32, i32* @MODEM_COMMAND_TIMEOUT_DEFAULT, align 4
  %21 = call i64 %18(%struct.TYPE_6__* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @err, align 4
  %26 = call i32 @DCE_CHECK(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MODEM_STATE_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @err, align 4
  %34 = call i32 @DCE_CHECK(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @DCE_TAG, align 4
  %36 = call i32 @ESP_LOGD(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %59

37:                                               ; preds = %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64 (%struct.TYPE_6__*, i8*, i32)*, i64 (%struct.TYPE_6__*, i8*, i32)** %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = load i32, i32* @MODEM_COMMAND_TIMEOUT_DEFAULT, align 4
  %43 = call i64 %40(%struct.TYPE_6__* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* @ESP_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* @err, align 4
  %48 = call i32 @DCE_CHECK(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MODEM_STATE_SUCCESS, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* @err, align 4
  %56 = call i32 @DCE_CHECK(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @DCE_TAG, align 4
  %58 = call i32 @ESP_LOGD(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %37, %15
  %60 = load i64, i64* @ESP_OK, align 8
  store i64 %60, i64* %3, align 8
  br label %63

61:                                               ; No predecessors!
  %62 = load i64, i64* @ESP_FAIL, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i32 @DCE_CHECK(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
