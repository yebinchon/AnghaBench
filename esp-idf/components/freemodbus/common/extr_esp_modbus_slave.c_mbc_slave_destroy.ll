; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_slave.c_mbc_slave_destroy.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_slave.c_mbc_slave_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)* }

@ESP_OK = common dso_local global i64 0, align 8
@slave_interface_ptr = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Slave interface is not correctly initialized.\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"SERIAL slave destroy failure error=(0x%x).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbc_slave_destroy() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @ESP_OK, align 8
  store i64 %2, i64* %1, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slave_interface_ptr, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  %5 = zext i1 %4 to i32
  %6 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %7 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %5, i32 %6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slave_interface_ptr, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64 (...)*, i64 (...)** %9, align 8
  %11 = icmp ne i64 (...)* %10, null
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %14 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %12, i32 %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slave_interface_ptr, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (...)*, i64 (...)** %16, align 8
  %18 = call i64 (...) %17()
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @ESP_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %24 = load i64, i64* %1, align 8
  %25 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %22, i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %1, align 8
  ret i64 %26
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
