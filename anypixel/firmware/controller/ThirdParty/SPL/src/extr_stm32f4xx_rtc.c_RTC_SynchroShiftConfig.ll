; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_SynchroShiftConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_SynchroShiftConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@ERROR = common dso_local global i64 0, align 8
@RTC = common dso_local global %struct.TYPE_2__* null, align 8
@RTC_ISR_SHPF = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@SHPF_TIMEOUT = common dso_local global i64 0, align 8
@RTC_CR_REFCKON = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RTC_SynchroShiftConfig(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @ERROR, align 8
  store i64 %7, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @IS_RTC_SHIFT_ADD1S(i64 %8)
  %10 = call i32 @assert_param(i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @IS_RTC_SHIFT_SUBFS(i64 %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 202, i32* %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 83, i32* %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RTC_ISR_SHPF, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @RESET, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %40, %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RTC_ISR_SHPF, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @RESET, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @SHPF_TIMEOUT, align 8
  %37 = icmp ne i64 %35, %36
  br label %38

38:                                               ; preds = %34, %26
  %39 = phi i1 [ false, %26 ], [ %37, %34 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i64, i64* %6, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %26

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RTC_ISR_SHPF, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @RESET, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %44
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @RTC_CR_REFCKON, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @RESET, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %52
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %3, align 8
  %63 = or i64 %61, %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  %66 = call i64 (...) @RTC_WaitForSynchro()
  %67 = load i64, i64* @ERROR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i64, i64* @ERROR, align 8
  store i64 %70, i64* %5, align 8
  br label %73

71:                                               ; preds = %60
  %72 = load i64, i64* @SUCCESS, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %71, %69
  br label %76

74:                                               ; preds = %52
  %75 = load i64, i64* @ERROR, align 8
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %74, %73
  br label %79

77:                                               ; preds = %44
  %78 = load i64, i64* @ERROR, align 8
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %77, %76
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 255, i32* %81, align 8
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_RTC_SHIFT_ADD1S(i64) #1

declare dso_local i32 @IS_RTC_SHIFT_SUBFS(i64) #1

declare dso_local i64 @RTC_WaitForSynchro(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
