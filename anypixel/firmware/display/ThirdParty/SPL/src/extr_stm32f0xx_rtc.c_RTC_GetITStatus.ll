; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_rtc.c_RTC_GetITStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_rtc.c_RTC_GetITStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@RESET = common dso_local global i64 0, align 8
@RTC = common dso_local global %struct.TYPE_2__* null, align 8
@RTC_TAFCR_TAMPIE = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RTC_GetITStatus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @RESET, align 8
  store i64 %6, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @IS_RTC_GET_IT(i32 %7)
  %9 = call i32 @assert_param(i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RTC_TAFCR_TAMPIE, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = ashr i32 %22, 18
  %24 = ashr i32 %21, %23
  %25 = ashr i32 %24, 15
  %26 = and i32 %20, %25
  %27 = or i32 %19, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %2, align 4
  %32 = ashr i32 %31, 4
  %33 = and i32 %30, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* @RESET, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %1
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 65535
  %41 = load i64, i64* @RESET, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* @SET, align 8
  store i64 %45, i64* %3, align 8
  br label %48

46:                                               ; preds = %38, %1
  %47 = load i64, i64* @RESET, align 8
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_RTC_GET_IT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
