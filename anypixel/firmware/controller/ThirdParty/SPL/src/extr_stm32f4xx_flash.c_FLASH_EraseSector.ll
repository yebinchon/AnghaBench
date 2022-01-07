; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_flash.c_FLASH_EraseSector.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_flash.c_FLASH_EraseSector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FLASH_COMPLETE = common dso_local global i64 0, align 8
@VoltageRange_1 = common dso_local global i64 0, align 8
@FLASH_PSIZE_BYTE = common dso_local global i32 0, align 4
@VoltageRange_2 = common dso_local global i64 0, align 8
@FLASH_PSIZE_HALF_WORD = common dso_local global i32 0, align 4
@VoltageRange_3 = common dso_local global i64 0, align 8
@FLASH_PSIZE_WORD = common dso_local global i32 0, align 4
@FLASH_PSIZE_DOUBLE_WORD = common dso_local global i32 0, align 4
@CR_PSIZE_MASK = common dso_local global i32 0, align 4
@FLASH = common dso_local global %struct.TYPE_2__* null, align 8
@SECTOR_MASK = common dso_local global i32 0, align 4
@FLASH_CR_SER = common dso_local global i32 0, align 4
@FLASH_CR_STRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FLASH_EraseSector(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i64, i64* @FLASH_COMPLETE, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @IS_FLASH_SECTOR(i32 %8)
  %10 = call i32 @assert_param(i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @IS_VOLTAGERANGE(i64 %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @VoltageRange_1, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @FLASH_PSIZE_BYTE, align 4
  store i32 %18, i32* %5, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @VoltageRange_2, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @FLASH_PSIZE_HALF_WORD, align 4
  store i32 %24, i32* %5, align 4
  br label %34

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @VoltageRange_3, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @FLASH_PSIZE_WORD, align 4
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @FLASH_PSIZE_DOUBLE_WORD, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33, %23
  br label %35

35:                                               ; preds = %34, %17
  %36 = call i64 (...) @FLASH_WaitForLastOperation()
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @FLASH_COMPLETE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %80

40:                                               ; preds = %35
  %41 = load i32, i32* @CR_PSIZE_MASK, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @SECTOR_MASK, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @FLASH_CR_SER, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @FLASH_CR_STRT, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = call i64 (...) @FLASH_WaitForLastOperation()
  store i64 %68, i64* %6, align 8
  %69 = load i32, i32* @FLASH_CR_SER, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @SECTOR_MASK, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %40, %35
  %81 = load i64, i64* %6, align 8
  ret i64 %81
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_FLASH_SECTOR(i32) #1

declare dso_local i32 @IS_VOLTAGERANGE(i64) #1

declare dso_local i64 @FLASH_WaitForLastOperation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
