; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_tim.c_TIM_TimeBaseInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_tim.c_TIM_TimeBaseInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i64 }

@TIM1 = common dso_local global %struct.TYPE_14__* null, align 8
@TIM8 = common dso_local global %struct.TYPE_14__* null, align 8
@TIM2 = common dso_local global %struct.TYPE_14__* null, align 8
@TIM3 = common dso_local global %struct.TYPE_14__* null, align 8
@TIM4 = common dso_local global %struct.TYPE_14__* null, align 8
@TIM5 = common dso_local global %struct.TYPE_14__* null, align 8
@TIM_CR1_DIR = common dso_local global i32 0, align 4
@TIM_CR1_CMS = common dso_local global i32 0, align 4
@TIM6 = common dso_local global %struct.TYPE_14__* null, align 8
@TIM7 = common dso_local global %struct.TYPE_14__* null, align 8
@TIM_CR1_CKD = common dso_local global i64 0, align 8
@TIM_PSCReloadMode_Immediate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM_TimeBaseInit(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = call i32 @IS_TIM_ALL_PERIPH(%struct.TYPE_14__* %6)
  %8 = call i32 @assert_param(i32 %7)
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @IS_TIM_COUNTER_MODE(i64 %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @IS_TIM_CKD_DIV(i64 %16)
  %18 = call i32 @assert_param(i32 %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TIM1, align 8
  %24 = icmp eq %struct.TYPE_14__* %22, %23
  br i1 %24, label %45, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TIM8, align 8
  %28 = icmp eq %struct.TYPE_14__* %26, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TIM2, align 8
  %32 = icmp eq %struct.TYPE_14__* %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TIM3, align 8
  %36 = icmp eq %struct.TYPE_14__* %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TIM4, align 8
  %40 = icmp eq %struct.TYPE_14__* %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TIM5, align 8
  %44 = icmp eq %struct.TYPE_14__* %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41, %37, %33, %29, %25, %2
  %46 = load i32, i32* @TIM_CR1_DIR, align 4
  %47 = load i32, i32* @TIM_CR1_CMS, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %45, %41
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TIM6, align 8
  %61 = icmp ne %struct.TYPE_14__* %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TIM7, align 8
  %65 = icmp ne %struct.TYPE_14__* %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i64, i64* @TIM_CR1_CKD, align 8
  %68 = xor i64 %67, -1
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %66, %62, %58
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TIM1, align 8
  %94 = icmp eq %struct.TYPE_14__* %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %78
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TIM8, align 8
  %98 = icmp eq %struct.TYPE_14__* %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95, %78
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %95
  %106 = load i32, i32* @TIM_PSCReloadMode_Immediate, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_TIM_ALL_PERIPH(%struct.TYPE_14__*) #1

declare dso_local i32 @IS_TIM_COUNTER_MODE(i64) #1

declare dso_local i32 @IS_TIM_CKD_DIV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
