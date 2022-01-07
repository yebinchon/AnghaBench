; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_slave.c_mbc_slave_get_param_info.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_slave.c_mbc_slave_get_param_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32*, i32)* }

@ESP_OK = common dso_local global i64 0, align 8
@slave_interface_ptr = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Slave interface is not correctly initialized.\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"SERIAL slave get parameter info failure error=(0x%x).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbc_slave_get_param_info(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @ESP_OK, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slave_interface_ptr, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %11 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %9, i32 %10, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slave_interface_ptr, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64 (i32*, i32)*, i64 (i32*, i32)** %13, align 8
  %15 = icmp ne i64 (i32*, i32)* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %18 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %16, i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slave_interface_ptr, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (i32*, i32)*, i64 (i32*, i32)** %20, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 %21(i32* %22, i32 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @ESP_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %28, i32 %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %5, align 8
  ret i64 %32
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
