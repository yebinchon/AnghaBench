; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_OB_RDPConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_OB_RDPConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@FLASH_COMPLETE = common dso_local global i64 0, align 8
@FLASH_ER_PRG_TIMEOUT = common dso_local global i32 0, align 4
@FLASH_CR_OPTER = common dso_local global i32 0, align 4
@FLASH = common dso_local global %struct.TYPE_4__* null, align 8
@FLASH_CR_STRT = common dso_local global i32 0, align 4
@FLASH_CR_OPTPG = common dso_local global i32 0, align 4
@OB = common dso_local global %struct.TYPE_3__* null, align 8
@FLASH_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FLASH_OB_RDPConfig(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @FLASH_COMPLETE, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @IS_OB_RDP(i32 %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %9 = call i64 @FLASH_WaitForLastOperation(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @FLASH_COMPLETE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %70

13:                                               ; preds = %1
  %14 = load i32, i32* @FLASH_CR_OPTER, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @FLASH_CR_STRT, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %25 = call i64 @FLASH_WaitForLastOperation(i32 %24)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @FLASH_COMPLETE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %13
  %30 = load i32, i32* @FLASH_CR_OPTER, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @FLASH_CR_OPTPG, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @OB, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %45 = call i64 @FLASH_WaitForLastOperation(i32 %44)
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @FLASH_TIMEOUT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %29
  %50 = load i32, i32* @FLASH_CR_OPTPG, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %29
  br label %69

57:                                               ; preds = %13
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @FLASH_TIMEOUT, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* @FLASH_CR_OPTER, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %57
  br label %69

69:                                               ; preds = %68, %56
  br label %70

70:                                               ; preds = %69, %1
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_OB_RDP(i32) #1

declare dso_local i64 @FLASH_WaitForLastOperation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
