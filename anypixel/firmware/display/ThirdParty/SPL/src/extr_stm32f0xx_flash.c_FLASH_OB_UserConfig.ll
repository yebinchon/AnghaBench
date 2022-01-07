; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_OB_UserConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_OB_UserConfig.c"
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
define dso_local i64 @FLASH_OB_UserConfig(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @FLASH_COMPLETE, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @IS_OB_IWDG_SOURCE(i32 %9)
  %11 = call i32 @assert_param(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @IS_OB_STOP_SOURCE(i32 %12)
  %14 = call i32 @assert_param(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @IS_OB_STDBY_SOURCE(i32 %15)
  %17 = call i32 @assert_param(i32 %16)
  %18 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %19 = call i64 @FLASH_WaitForLastOperation(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @FLASH_COMPLETE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %3
  %24 = load i32, i32* @FLASH_CR_OPTPG, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, 248
  %34 = or i32 %31, %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @OB, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %38 = call i64 @FLASH_WaitForLastOperation(i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @FLASH_TIMEOUT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %23
  %43 = load i32, i32* @FLASH_CR_OPTPG, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %23
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i64, i64* %7, align 8
  ret i64 %51
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_OB_IWDG_SOURCE(i32) #1

declare dso_local i32 @IS_OB_STOP_SOURCE(i32) #1

declare dso_local i32 @IS_OB_STDBY_SOURCE(i32) #1

declare dso_local i64 @FLASH_WaitForLastOperation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
