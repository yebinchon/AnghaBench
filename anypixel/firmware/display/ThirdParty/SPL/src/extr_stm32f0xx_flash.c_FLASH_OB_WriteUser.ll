; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_OB_WriteUser.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_OB_WriteUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@FLASH_COMPLETE = common dso_local global i64 0, align 8
@FLASH_ER_PRG_TIMEOUT = common dso_local global i32 0, align 4
@FLASH_CR_OPTPG = common dso_local global i32 0, align 4
@FLASH = common dso_local global %struct.TYPE_4__* null, align 8
@OB = common dso_local global %struct.TYPE_3__* null, align 8
@FLASH_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FLASH_OB_WriteUser(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @FLASH_COMPLETE, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %6 = call i64 @FLASH_WaitForLastOperation(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @FLASH_COMPLETE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load i32, i32* @FLASH_CR_OPTPG, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @OB, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %20 = call i64 @FLASH_WaitForLastOperation(i32 %19)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @FLASH_TIMEOUT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %10
  %25 = load i32, i32* @FLASH_CR_OPTPG, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %10
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local i64 @FLASH_WaitForLastOperation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
