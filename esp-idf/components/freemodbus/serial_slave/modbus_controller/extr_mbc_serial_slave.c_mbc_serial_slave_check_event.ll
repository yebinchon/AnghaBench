; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_mbc_serial_slave_check_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_mbc_serial_slave_check_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@mbs_interface_ptr = common dso_local global %struct.TYPE_4__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Slave interface is not correctly initialized.\00", align 1
@pdTRUE = common dso_local global i32 0, align 4
@pdFALSE = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @mbc_serial_slave_check_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbc_serial_slave_check_event(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbs_interface_ptr, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %9 = call i32 @MB_SLAVE_CHECK(i32 %7, i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbs_interface_ptr, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @MB_SLAVE_ASSERT(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %2, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @pdTRUE, align 4
  %24 = load i32, i32* @pdFALSE, align 4
  %25 = load i32, i32* @portMAX_DELAY, align 4
  %26 = call i32 @xEventGroupWaitBits(i32* %20, i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  ret i64 %28
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*) #1

declare dso_local i32 @MB_SLAVE_ASSERT(i32) #1

declare dso_local i32 @xEventGroupWaitBits(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
