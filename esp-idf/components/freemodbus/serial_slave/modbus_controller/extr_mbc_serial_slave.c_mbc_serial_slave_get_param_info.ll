; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_mbc_serial_slave_get_param_info.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_mbc_serial_slave_get_param_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@mbs_interface_ptr = common dso_local global %struct.TYPE_4__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Slave interface is not correctly initialized.\00", align 1
@ESP_ERR_TIMEOUT = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mb queue handle is invalid.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"mb register information is invalid.\00", align 1
@pdTRUE = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mbc_serial_slave_get_param_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbc_serial_slave_get_param_info(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbs_interface_ptr, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %12 = call i32 @MB_SLAVE_CHECK(i32 %10, i32 %11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbs_interface_ptr, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %5, align 8
  %15 = load i32, i32* @ESP_ERR_TIMEOUT, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %22 = call i32 @MB_SLAVE_CHECK(i32 %20, i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %27 = call i32 @MB_SLAVE_CHECK(i32 %25, i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @pdMS_TO_TICKS(i32 %32)
  %34 = call i64 @xQueueReceive(i32* %30, i32* %31, i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @pdTRUE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @ESP_OK, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %2
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*) #1

declare dso_local i64 @xQueueReceive(i32*, i32*, i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
