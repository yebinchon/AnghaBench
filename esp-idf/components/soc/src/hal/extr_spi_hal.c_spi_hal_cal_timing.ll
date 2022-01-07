; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/src/hal/extr_spi_hal.c_spi_hal_cal_timing.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/src/hal/extr_spi_hal.c_spi_hal_cal_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APB_CLK_FREQ = common dso_local global i32 0, align 4
@GPIO_MATRIX_DELAY_NS = common dso_local global i32 0, align 4
@SPI_HAL_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"eff: %d, limit: %dk(/%d), %d dummy, %d delay\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_hal_cal_timing(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* @APB_CLK_FREQ, align 4
  %18 = sdiv i32 %17, 1000
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @APB_CLK_FREQ, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @GPIO_MATRIX_DELAY_NS, align 4
  br label %27

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 1, %29
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sdiv i32 %34, 1000
  %36 = sdiv i32 %35, 1000
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %14, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %16, align 4
  br label %61

54:                                               ; preds = %40
  %55 = load i32, i32* %14, align 4
  %56 = mul nsw i32 %55, 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 -1, i32* %16, align 4
  br label %60

60:                                               ; preds = %59, %54
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i32, i32* %15, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @SPI_HAL_TAG, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sdiv i32 %67, 1000
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  %72 = sdiv i32 %69, %71
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @HAL_LOGD(i32 %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %72, i32 %73, i32 %74, i32 %75)
  ret void
}

declare dso_local i32 @HAL_LOGD(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
