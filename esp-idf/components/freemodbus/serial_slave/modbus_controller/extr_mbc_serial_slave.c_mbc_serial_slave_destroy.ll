; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_mbc_serial_slave_destroy.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_mbc_serial_slave_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@mbs_interface_ptr = common dso_local global %struct.TYPE_5__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Slave interface is not correctly initialized.\00", align 1
@MB_ENOERR = common dso_local global i64 0, align 8
@MB_EVENT_STACK_STARTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"mb stack stop event failure.\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"mb stack disable failure.\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"mb stack close failure returned (0x%x).\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mbc_serial_slave_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbc_serial_slave_destroy() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mbs_interface_ptr, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  %6 = zext i1 %5 to i32
  %7 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %8 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %6, i32 %7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mbs_interface_ptr, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %1, align 8
  %11 = load i64, i64* @MB_ENOERR, align 8
  store i64 %11, i64* %2, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MB_EVENT_STACK_STARTED, align 4
  %16 = call i32 @xEventGroupClearBits(i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MB_EVENT_STACK_STARTED, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %21 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %19, i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i64 (...) @eMBDisable()
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @MB_ENOERR, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %28 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %26, i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vTaskDelete(i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vQueueDelete(i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @vEventGroupDelete(i32 %39)
  %41 = call i64 (...) @eMBClose()
  store i64 %41, i64* %2, align 8
  %42 = load i64, i64* %2, align 8
  %43 = load i64, i64* @MB_ENOERR, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %47 = load i64, i64* %2, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %45, i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mbs_interface_ptr, align 8
  %51 = call i32 @free(%struct.TYPE_5__* %50)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @mbs_interface_ptr, align 8
  %52 = load i32, i32* @ESP_OK, align 4
  ret i32 %52
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*, ...) #1

declare dso_local i32 @xEventGroupClearBits(i32, i32) #1

declare dso_local i64 @eMBDisable(...) #1

declare dso_local i32 @vTaskDelete(i32) #1

declare dso_local i32 @vQueueDelete(i32) #1

declare dso_local i32 @vEventGroupDelete(i32) #1

declare dso_local i64 @eMBClose(...) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
