; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_sim800.c_sim800_set_working_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_sim800.c_sim800_set_working_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i8*, i32)* }

@sim800_handle_exit_data_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"+++\00", align 1
@MODEM_COMMAND_TIMEOUT_MODE_CHANGE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"send command failed\00", align 1
@err = common dso_local global i32 0, align 4
@MODEM_STATE_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"enter command mode failed\00", align 1
@DCE_TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"enter command mode ok\00", align 1
@sim800_handle_atd_ppp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"ATD*99#\0D\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"enter ppp mode failed\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"enter ppp mode ok\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"unsupported working mode: %d\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @sim800_set_working_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sim800_set_working_mode(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %65 [
    i32 129, label %11
    i32 128, label %38
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @sim800_handle_exit_data_mode, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_6__*, i8*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32)** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = load i32, i32* @MODEM_COMMAND_TIMEOUT_MODE_CHANGE, align 4
  %20 = call i32 %17(%struct.TYPE_6__* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ESP_OK, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @err, align 4
  %25 = call i32 @DCE_CHECK(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MODEM_STATE_SUCCESS, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @err, align 4
  %33 = call i32 @DCE_CHECK(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @DCE_TAG, align 4
  %35 = call i32 @ESP_LOGD(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 129, i32* %37, align 8
  br label %69

38:                                               ; preds = %2
  %39 = load i32, i32* @sim800_handle_atd_ppp, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_6__*, i8*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32)** %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = load i32, i32* @MODEM_COMMAND_TIMEOUT_MODE_CHANGE, align 4
  %47 = call i32 %44(%struct.TYPE_6__* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ESP_OK, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* @err, align 4
  %52 = call i32 @DCE_CHECK(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MODEM_STATE_SUCCESS, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* @err, align 4
  %60 = call i32 @DCE_CHECK(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @DCE_TAG, align 4
  %62 = call i32 @ESP_LOGD(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 128, i32* %64, align 8
  br label %69

65:                                               ; preds = %2
  %66 = load i32, i32* @DCE_TAG, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @ESP_LOGW(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  br label %71

69:                                               ; preds = %38, %11
  %70 = load i32, i32* @ESP_OK, align 4
  store i32 %70, i32* %3, align 4
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @ESP_FAIL, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @DCE_CHECK(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
