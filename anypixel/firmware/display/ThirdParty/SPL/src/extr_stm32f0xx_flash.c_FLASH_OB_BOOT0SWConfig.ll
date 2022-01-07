; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_OB_BOOT0SWConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_OB_BOOT0SWConfig.c"
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
define dso_local i64 @FLASH_OB_BOOT0SWConfig(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @FLASH_COMPLETE, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @IS_OB_BOOT0SW(i32 %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %9 = call i64 @FLASH_WaitForLastOperation(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @FLASH_COMPLETE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load i32, i32* @FLASH_CR_OPTPG, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %2, align 4
  %20 = or i32 %19, 127
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @OB, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %24 = call i64 @FLASH_WaitForLastOperation(i32 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @FLASH_TIMEOUT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %13
  %29 = load i32, i32* @FLASH_CR_OPTPG, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %28, %13
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_OB_BOOT0SW(i32) #1

declare dso_local i64 @FLASH_WaitForLastOperation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
