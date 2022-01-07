; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_OB_Erase.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_OB_Erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@OB_RDP_Level_0 = common dso_local global i32 0, align 4
@FLASH_COMPLETE = common dso_local global i64 0, align 8
@RESET = common dso_local global i64 0, align 8
@FLASH_ER_PRG_TIMEOUT = common dso_local global i32 0, align 4
@FLASH_CR_OPTER = common dso_local global i32 0, align 4
@FLASH = common dso_local global %struct.TYPE_4__* null, align 8
@FLASH_CR_STRT = common dso_local global i32 0, align 4
@FLASH_CR_OPTPG = common dso_local global i32 0, align 4
@OB = common dso_local global %struct.TYPE_3__* null, align 8
@FLASH_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FLASH_OB_Erase() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @OB_RDP_Level_0, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i64, i64* @FLASH_COMPLETE, align 8
  store i64 %4, i64* %2, align 8
  %5 = call i64 (...) @FLASH_OB_GetRDP()
  %6 = load i64, i64* @RESET, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %8, %0
  %10 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %11 = call i64 @FLASH_WaitForLastOperation(i32 %10)
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @FLASH_COMPLETE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %9
  %16 = load i32, i32* @FLASH_CR_OPTER, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @FLASH_CR_STRT, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %27 = call i64 @FLASH_WaitForLastOperation(i32 %26)
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* @FLASH_COMPLETE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %15
  %32 = load i32, i32* @FLASH_CR_OPTER, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @FLASH_CR_OPTPG, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %1, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @OB, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %47 = call i64 @FLASH_WaitForLastOperation(i32 %46)
  store i64 %47, i64* %2, align 8
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @FLASH_TIMEOUT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %31
  %52 = load i32, i32* @FLASH_CR_OPTPG, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %51, %31
  br label %71

59:                                               ; preds = %15
  %60 = load i64, i64* %2, align 8
  %61 = load i64, i64* @FLASH_TIMEOUT, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32, i32* @FLASH_CR_OPTPG, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %63, %59
  br label %71

71:                                               ; preds = %70, %58
  br label %72

72:                                               ; preds = %71, %9
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i64 @FLASH_OB_GetRDP(...) #1

declare dso_local i64 @FLASH_WaitForLastOperation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
