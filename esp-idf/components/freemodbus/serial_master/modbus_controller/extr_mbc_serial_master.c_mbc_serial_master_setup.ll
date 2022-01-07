; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_mbc_serial_master_setup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_mbc_serial_master_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }

@mbm_interface_ptr = common dso_local global %struct.TYPE_6__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Master interface uninitialized.\00", align 1
@MB_MODE_RTU = common dso_local global i64 0, align 8
@MB_MODE_ASCII = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mb incorrect mode = (0x%x).\00", align 1
@UART_NUM_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"mb wrong port to set = (0x%x).\00", align 1
@UART_PARITY_EVEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"mb wrong parity option = (0x%x).\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mbc_serial_master_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbc_serial_master_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mbm_interface_ptr, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %9 = call i32 (i32, i32, i8*, ...) @MB_MASTER_CHECK(i32 %7, i32 %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mbm_interface_ptr, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %3, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MB_MODE_RTU, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MB_MODE_ASCII, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %19, %1
  %26 = phi i1 [ true, %1 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 (i32, i32, i8*, ...) @MB_MASTER_CHECK(i32 %27, i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UART_NUM_MAX, align 8
  %38 = icmp slt i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i32, i32, i8*, ...) @MB_MASTER_CHECK(i32 %39, i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @UART_PARITY_EVEN, align 8
  %50 = icmp sle i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i32, i32, i8*, ...) @MB_MASTER_CHECK(i32 %51, i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = bitcast %struct.TYPE_5__* %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ESP_OK, align 4
  ret i32 %63
}

declare dso_local i32 @MB_MASTER_CHECK(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
