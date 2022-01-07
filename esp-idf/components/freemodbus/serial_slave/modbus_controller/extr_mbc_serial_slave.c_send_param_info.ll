; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_send_param_info.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_send_param_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i32*, i8*, i32 }

@mbs_interface_ptr = common dso_local global %struct.TYPE_7__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Slave interface is not correctly initialized.\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@MB_PAR_INFO_TOUT = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@MB_SLAVE_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Queue send parameter info (type, address, size): %d, 0x%.4x, %d\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@errQUEUE_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Parameter queue is overflowed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, i8*)* @send_param_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_param_info(i32 %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %17 = call i32 @MB_SLAVE_CHECK(i32 %15, i32 %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %9, align 8
  %20 = load i32, i32* @ESP_FAIL, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32* %25, i32** %26, align 8
  %27 = call i32 (...) @get_time_stamp()
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MB_PAR_INFO_TOUT, align 4
  %35 = call i64 @xQueueSend(i32 %33, %struct.TYPE_6__* %11, i32 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* @pdTRUE, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %4
  %40 = load i32, i32* @MB_SLAVE_TAG, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = ptrtoint i32* %42 to i32
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %40, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %43, i8* %44)
  %46 = load i32, i32* @ESP_OK, align 4
  store i32 %46, i32* %10, align 4
  br label %55

47:                                               ; preds = %4
  %48 = load i64, i64* @errQUEUE_FULL, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @MB_SLAVE_TAG, align 4
  %53 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*) #1

declare dso_local i32 @get_time_stamp(...) #1

declare dso_local i64 @xQueueSend(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
