; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_master.c_eMBMasterRegHoldingCB.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_master.c_eMBMasterRegHoldingCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32, i32, i32)* }

@MB_ENOERR = common dso_local global i32 0, align 4
@master_interface_ptr = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Master interface is not correctly initialized.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eMBMasterRegHoldingCB(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @MB_ENOERR, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @master_interface_ptr, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %15 = call i32 @MB_MASTER_CHECK(i32 %13, i32 %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @master_interface_ptr, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %17, align 8
  %19 = icmp ne i32 (i32*, i32, i32, i32)* %18, null
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %22 = call i32 @MB_MASTER_CHECK(i32 %20, i32 %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @master_interface_ptr, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %24, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 %25(i32* %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i32 @MB_MASTER_CHECK(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
