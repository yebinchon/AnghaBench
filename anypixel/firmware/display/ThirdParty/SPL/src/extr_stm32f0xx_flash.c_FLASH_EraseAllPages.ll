; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_EraseAllPages.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_EraseAllPages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FLASH_COMPLETE = common dso_local global i64 0, align 8
@FLASH_ER_PRG_TIMEOUT = common dso_local global i32 0, align 4
@FLASH_CR_MER = common dso_local global i32 0, align 4
@FLASH = common dso_local global %struct.TYPE_2__* null, align 8
@FLASH_CR_STRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FLASH_EraseAllPages() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @FLASH_COMPLETE, align 8
  store i64 %2, i64* %1, align 8
  %3 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %4 = call i64 @FLASH_WaitForLastOperation(i32 %3)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @FLASH_COMPLETE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %0
  %9 = load i32, i32* @FLASH_CR_MER, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @FLASH_CR_STRT, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %20 = call i64 @FLASH_WaitForLastOperation(i32 %19)
  store i64 %20, i64* %1, align 8
  %21 = load i32, i32* @FLASH_CR_MER, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %8, %0
  %28 = load i64, i64* %1, align 8
  ret i64 %28
}

declare dso_local i64 @FLASH_WaitForLastOperation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
