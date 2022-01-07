; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_tim.c_TIM_PWMIConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_tim.c_TIM_PWMIConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 }

@TIM_ICPolarity_Rising = common dso_local global i64 0, align 8
@TIM_ICSelection_DirectTI = common dso_local global i64 0, align 8
@TIM_ICPolarity_Falling = common dso_local global i64 0, align 8
@TIM_ICSelection_IndirectTI = common dso_local global i64 0, align 8
@TIM_Channel_1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM_PWMIConfig(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i64, i64* @TIM_ICPolarity_Rising, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @TIM_ICSelection_DirectTI, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @IS_TIM_LIST6_PERIPH(i32* %9)
  %11 = call i32 @assert_param(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TIM_ICPolarity_Rising, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @TIM_ICPolarity_Falling, align 8
  store i64 %18, i64* %5, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @TIM_ICPolarity_Rising, align 8
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TIM_ICSelection_DirectTI, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* @TIM_ICSelection_IndirectTI, align 8
  store i64 %28, i64* %6, align 8
  br label %31

29:                                               ; preds = %21
  %30 = load i64, i64* @TIM_ICSelection_DirectTI, align 8
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TIM_Channel_1, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %31
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @TI1_Config(i32* %38, i64 %41, i64 %44, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @TIM_SetIC1Prescaler(i32* %49, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @TI2_Config(i32* %54, i64 %55, i64 %56, i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @TIM_SetIC2Prescaler(i32* %61, i32 %64)
  br label %95

66:                                               ; preds = %31
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @TI2_Config(i32* %67, i64 %70, i64 %73, i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @TIM_SetIC2Prescaler(i32* %78, i32 %81)
  %83 = load i32*, i32** %3, align 8
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @TI1_Config(i32* %83, i64 %84, i64 %85, i32 %88)
  %90 = load i32*, i32** %3, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @TIM_SetIC1Prescaler(i32* %90, i32 %93)
  br label %95

95:                                               ; preds = %66, %37
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_TIM_LIST6_PERIPH(i32*) #1

declare dso_local i32 @TI1_Config(i32*, i64, i64, i32) #1

declare dso_local i32 @TIM_SetIC1Prescaler(i32*, i32) #1

declare dso_local i32 @TI2_Config(i32*, i64, i64, i32) #1

declare dso_local i32 @TIM_SetIC2Prescaler(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
