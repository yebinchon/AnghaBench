; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_master.c_mbc_master_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_master.c_mbc_master_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)* }

@ESP_OK = common dso_local global i64 0, align 8
@master_interface_ptr = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Master interface is not correctly initialized.\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"SERIAL master start failure error=(0x%x) (%s).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbc_master_start() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @ESP_OK, align 8
  store i64 %2, i64* %1, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @master_interface_ptr, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  %5 = zext i1 %4 to i32
  %6 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %7 = sext i32 %6 to i64
  %8 = call i32 (i32, i64, i8*, ...) @MB_MASTER_CHECK(i32 %5, i64 %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @master_interface_ptr, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64 (...)*, i64 (...)** %10, align 8
  %12 = icmp ne i64 (...)* %11, null
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %15 = sext i32 %14 to i64
  %16 = call i32 (i32, i64, i8*, ...) @MB_MASTER_CHECK(i32 %13, i64 %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @master_interface_ptr, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (...)*, i64 (...)** %18, align 8
  %20 = call i64 (...) %19()
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = call i32 @esp_err_to_name(i64 %27)
  %29 = call i32 (i32, i64, i8*, ...) @MB_MASTER_CHECK(i32 %24, i64 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %26, i32 %28)
  %30 = load i64, i64* @ESP_OK, align 8
  ret i64 %30
}

declare dso_local i32 @MB_MASTER_CHECK(i32, i64, i8*, ...) #1

declare dso_local i32 @esp_err_to_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
