; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_sim800.c_sim800_get_imsi_number.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_sim800.c_sim800_get_imsi_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_8__*, i8*, i32)* }

@sim800_handle_cimi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"AT+CIMI\0D\00", align 1
@MODEM_COMMAND_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"send command failed\00", align 1
@err = common dso_local global i32 0, align 4
@MODEM_STATE_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"get imsi number failed\00", align 1
@DCE_TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"get imsi number ok\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @sim800_get_imsi_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sim800_get_imsi_number(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load i32, i32* @sim800_handle_cimi, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64 (%struct.TYPE_8__*, i8*, i32)*, i64 (%struct.TYPE_8__*, i8*, i32)** %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = load i32, i32* @MODEM_COMMAND_TIMEOUT_DEFAULT, align 4
  %18 = call i64 %15(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i64, i64* @ESP_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @err, align 4
  %23 = call i32 @DCE_CHECK(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MODEM_STATE_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @err, align 4
  %32 = call i32 @DCE_CHECK(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @DCE_TAG, align 4
  %34 = call i32 @ESP_LOGD(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i64, i64* @ESP_OK, align 8
  store i64 %35, i64* %2, align 8
  br label %38

36:                                               ; No predecessors!
  %37 = load i64, i64* @ESP_FAIL, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %36, %1
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i32 @DCE_CHECK(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
