; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_flash.c_FLASH_EraseAllSectors.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_flash.c_FLASH_EraseAllSectors.c"
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
@FLASH_CR_MER = common dso_local global i32 0, align 4
@FLASH_CR_STRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FLASH_EraseAllSectors(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i64, i64* @FLASH_COMPLETE, align 8
  store i64 %5, i64* %4, align 8
  %6 = call i64 (...) @FLASH_WaitForLastOperation()
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @IS_VOLTAGERANGE(i64 %7)
  %9 = call i32 @assert_param(i32 %8)
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @VoltageRange_1, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @FLASH_PSIZE_BYTE, align 4
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @VoltageRange_2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @FLASH_PSIZE_HALF_WORD, align 4
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %15
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @VoltageRange_3, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @FLASH_PSIZE_WORD, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @FLASH_PSIZE_DOUBLE_WORD, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %19
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @FLASH_COMPLETE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = load i32, i32* @CR_PSIZE_MASK, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @FLASH_CR_MER, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @FLASH_CR_STRT, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = call i64 (...) @FLASH_WaitForLastOperation()
  store i64 %56, i64* %4, align 8
  %57 = load i32, i32* @FLASH_CR_MER, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %35, %31
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i64 @FLASH_WaitForLastOperation(...) #1

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_VOLTAGERANGE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
