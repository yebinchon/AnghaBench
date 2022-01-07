; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_slave.c_eMBRegInputCB.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_slave.c_eMBRegInputCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32, i32)* }

@MB_ENOERR = common dso_local global i32 0, align 4
@slave_interface_ptr = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Slave interface is not correctly initialized.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eMBRegInputCB(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @MB_ENOERR, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slave_interface_ptr, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %13 = call i32 @MB_SLAVE_CHECK(i32 %11, i32 %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slave_interface_ptr, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %15, align 8
  %17 = icmp ne i32 (i32*, i32, i32)* %16, null
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %20 = call i32 @MB_SLAVE_CHECK(i32 %18, i32 %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slave_interface_ptr, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 %23(i32* %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
