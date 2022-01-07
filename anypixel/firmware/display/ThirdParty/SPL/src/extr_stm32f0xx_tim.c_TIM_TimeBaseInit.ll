; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_tim.c_TIM_TimeBaseInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_tim.c_TIM_TimeBaseInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i64, i64 }

@TIM1 = common dso_local global %struct.TYPE_13__* null, align 8
@TIM2 = common dso_local global %struct.TYPE_13__* null, align 8
@TIM3 = common dso_local global %struct.TYPE_13__* null, align 8
@TIM_CR1_DIR = common dso_local global i32 0, align 4
@TIM_CR1_CMS = common dso_local global i32 0, align 4
@TIM6 = common dso_local global %struct.TYPE_13__* null, align 8
@TIM_CR1_CKD = common dso_local global i64 0, align 8
@TIM15 = common dso_local global %struct.TYPE_13__* null, align 8
@TIM16 = common dso_local global %struct.TYPE_13__* null, align 8
@TIM17 = common dso_local global %struct.TYPE_13__* null, align 8
@TIM_PSCReloadMode_Immediate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM_TimeBaseInit(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = call i32 @IS_TIM_ALL_PERIPH(%struct.TYPE_13__* %6)
  %8 = call i32 @assert_param(i32 %7)
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @IS_TIM_COUNTER_MODE(i64 %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @IS_TIM_CKD_DIV(i64 %16)
  %18 = call i32 @assert_param(i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TIM1, align 8
  %24 = icmp eq %struct.TYPE_13__* %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TIM2, align 8
  %28 = icmp eq %struct.TYPE_13__* %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TIM3, align 8
  %32 = icmp eq %struct.TYPE_13__* %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29, %25, %2
  %34 = load i32, i32* @TIM_CR1_DIR, align 4
  %35 = load i32, i32* @TIM_CR1_CMS, align 4
  %36 = or i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %5, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %5, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %33, %29
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TIM6, align 8
  %49 = icmp ne %struct.TYPE_13__* %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i64, i64* @TIM_CR1_CKD, align 8
  %52 = xor i64 %51, -1
  %53 = load i64, i64* %5, align 8
  %54 = and i64 %53, %52
  store i64 %54, i64* %5, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %50, %46
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TIM1, align 8
  %76 = icmp eq %struct.TYPE_13__* %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %60
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TIM15, align 8
  %80 = icmp eq %struct.TYPE_13__* %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TIM16, align 8
  %84 = icmp eq %struct.TYPE_13__* %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** @TIM17, align 8
  %88 = icmp eq %struct.TYPE_13__* %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85, %81, %77, %60
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %85
  %96 = load i32, i32* @TIM_PSCReloadMode_Immediate, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_TIM_ALL_PERIPH(%struct.TYPE_13__*) #1

declare dso_local i32 @IS_TIM_COUNTER_MODE(i64) #1

declare dso_local i32 @IS_TIM_CKD_DIV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
