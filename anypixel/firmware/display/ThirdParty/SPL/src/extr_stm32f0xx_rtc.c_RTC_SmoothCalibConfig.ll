; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_rtc.c_RTC_SmoothCalibConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_rtc.c_RTC_SmoothCalibConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@RTC = common dso_local global %struct.TYPE_2__* null, align 8
@RTC_ISR_RECALPF = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@RECALPF_TIMEOUT = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RTC_SmoothCalibConfig(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @ERROR, align 4
  store i32 %9, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @IS_RTC_SMOOTH_CALIB_PERIOD(i64 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @IS_RTC_SMOOTH_CALIB_PLUS(i64 %13)
  %15 = call i32 @assert_param(i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @IS_RTC_SMOOTH_CALIB_MINUS(i64 %16)
  %18 = call i32 @assert_param(i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 202, i32* %20, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 83, i32* %22, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RTC_ISR_RECALPF, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @RESET, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %45, %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RTC_ISR_RECALPF, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @RESET, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @RECALPF_TIMEOUT, align 8
  %42 = icmp ne i64 %40, %41
  br label %43

43:                                               ; preds = %39, %31
  %44 = phi i1 [ false, %31 ], [ %42, %39 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %31

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RTC_ISR_RECALPF, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @RESET, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = or i64 %58, %59
  %61 = load i64, i64* %6, align 8
  %62 = or i64 %60, %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* @SUCCESS, align 4
  store i32 %65, i32* %7, align 4
  br label %68

66:                                               ; preds = %49
  %67 = load i32, i32* @ERROR, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %66, %57
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 255, i32* %70, align 8
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_RTC_SMOOTH_CALIB_PERIOD(i64) #1

declare dso_local i32 @IS_RTC_SMOOTH_CALIB_PLUS(i64) #1

declare dso_local i32 @IS_RTC_SMOOTH_CALIB_MINUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
