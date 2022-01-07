; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_OB_EnableWRP.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_flash.c_FLASH_OB_EnableWRP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@FLASH_COMPLETE = common dso_local global i64 0, align 8
@OB_WRP0_WRP0 = common dso_local global i32 0, align 4
@FLASH_ER_PRG_TIMEOUT = common dso_local global i32 0, align 4
@FLASH_CR_OPTPG = common dso_local global i32 0, align 4
@FLASH = common dso_local global %struct.TYPE_4__* null, align 8
@OB = common dso_local global %struct.TYPE_3__* null, align 8
@FLASH_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FLASH_OB_EnableWRP(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 65535, i32* %3, align 4
  store i32 65535, i32* %4, align 4
  store i32 65535, i32* %5, align 4
  store i32 65535, i32* %6, align 4
  %8 = load i64, i64* @FLASH_COMPLETE, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @IS_OB_WRP(i32 %9)
  %11 = call i32 @assert_param(i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = xor i32 %12, -1
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @OB_WRP0_WRP0, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = ashr i32 %17, 8
  %19 = load i32, i32* @OB_WRP0_WRP0, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 16
  %23 = load i32, i32* @OB_WRP0_WRP0, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %2, align 4
  %26 = ashr i32 %25, 24
  %27 = load i32, i32* @OB_WRP0_WRP0, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %30 = call i64 @FLASH_WaitForLastOperation(i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @FLASH_COMPLETE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %99

34:                                               ; preds = %1
  %35 = load i32, i32* @FLASH_CR_OPTPG, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 255
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @OB, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %47 = call i64 @FLASH_WaitForLastOperation(i32 %46)
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %42, %34
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @FLASH_COMPLETE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 255
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @OB, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %60 = call i64 @FLASH_WaitForLastOperation(i32 %59)
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %55, %52, %48
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @FLASH_COMPLETE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 255
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @OB, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %73 = call i64 @FLASH_WaitForLastOperation(i32 %72)
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %68, %65, %61
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @FLASH_COMPLETE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 255
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @OB, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @FLASH_ER_PRG_TIMEOUT, align 4
  %86 = call i64 @FLASH_WaitForLastOperation(i32 %85)
  store i64 %86, i64* %7, align 8
  br label %87

87:                                               ; preds = %81, %78, %74
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @FLASH_TIMEOUT, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i32, i32* @FLASH_CR_OPTPG, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FLASH, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %87
  br label %99

99:                                               ; preds = %98, %1
  %100 = load i64, i64* %7, align 8
  ret i64 %100
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_OB_WRP(i32) #1

declare dso_local i64 @FLASH_WaitForLastOperation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
