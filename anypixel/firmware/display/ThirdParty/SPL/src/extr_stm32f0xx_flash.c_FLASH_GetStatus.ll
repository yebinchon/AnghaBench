; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_GetStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_GetStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FLASH_COMPLETE = common dso_local global i32 0, align 4
@FLASH = common dso_local global %struct.TYPE_2__* null, align 8
@FLASH_FLAG_BSY = common dso_local global i32 0, align 4
@FLASH_BUSY = common dso_local global i32 0, align 4
@FLASH_FLAG_WRPERR = common dso_local global i64 0, align 8
@FLASH_ERROR_WRP = common dso_local global i32 0, align 4
@FLASH_SR_PGERR = common dso_local global i64 0, align 8
@FLASH_ERROR_PROGRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLASH_GetStatus() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @FLASH_COMPLETE, align 4
  store i32 %2, i32* %1, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FLASH_FLAG_BSY, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @FLASH_FLAG_BSY, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @FLASH_BUSY, align 4
  store i32 %11, i32* %1, align 4
  br label %36

12:                                               ; preds = %0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @FLASH_FLAG_WRPERR, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @FLASH_ERROR_WRP, align 4
  store i32 %21, i32* %1, align 4
  br label %35

22:                                               ; preds = %12
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @FLASH_SR_PGERR, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @FLASH_ERROR_PROGRAM, align 4
  store i32 %31, i32* %1, align 4
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @FLASH_COMPLETE, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %20
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
