; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_slave.c_mbc_slave_setup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_slave.c_mbc_slave_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i8*)* }

@ESP_OK = common dso_local global i64 0, align 8
@slave_interface_ptr = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Slave interface is not correctly initialized.\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"SERIAL slave setup failure error=(0x%x).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbc_slave_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @ESP_OK, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slave_interface_ptr, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %9 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %7, i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slave_interface_ptr, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64 (i8*)*, i64 (i8*)** %11, align 8
  %13 = icmp ne i64 (i8*)* %12, null
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %16 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %14, i32 %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slave_interface_ptr, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (i8*)*, i64 (i8*)** %18, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 %19(i8* %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @ESP_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %27 = load i64, i64* %3, align 8
  %28 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %25, i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
