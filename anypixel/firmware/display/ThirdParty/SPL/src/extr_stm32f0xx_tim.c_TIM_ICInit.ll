; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_tim.c_TIM_ICInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_tim.c_TIM_ICInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@TIM_Channel_1 = common dso_local global i64 0, align 8
@TIM_Channel_2 = common dso_local global i64 0, align 8
@TIM_Channel_3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM_ICInit(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @IS_TIM_LIST4_PERIPH(i32* %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @IS_TIM_CHANNEL(i64 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @IS_TIM_IC_SELECTION(i32 %15)
  %17 = call i32 @assert_param(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @IS_TIM_IC_PRESCALER(i32 %20)
  %22 = call i32 @assert_param(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IS_TIM_IC_FILTER(i32 %25)
  %27 = call i32 @assert_param(i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IS_TIM_IC_POLARITY(i32 %30)
  %32 = call i32 @assert_param(i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TIM_Channel_1, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %2
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @IS_TIM_LIST4_PERIPH(i32* %39)
  %41 = call i32 @assert_param(i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @TI1_Config(i32* %42, i32 %45, i32 %48, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @TIM_SetIC1Prescaler(i32* %53, i32 %56)
  br label %132

58:                                               ; preds = %2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TIM_Channel_2, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @IS_TIM_LIST6_PERIPH(i32* %65)
  %67 = call i32 @assert_param(i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @TI2_Config(i32* %68, i32 %71, i32 %74, i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @TIM_SetIC2Prescaler(i32* %79, i32 %82)
  br label %131

84:                                               ; preds = %58
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TIM_Channel_3, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %84
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @IS_TIM_LIST3_PERIPH(i32* %91)
  %93 = call i32 @assert_param(i32 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @TI3_Config(i32* %94, i32 %97, i32 %100, i32 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @TIM_SetIC3Prescaler(i32* %105, i32 %108)
  br label %130

110:                                              ; preds = %84
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @IS_TIM_LIST3_PERIPH(i32* %111)
  %113 = call i32 @assert_param(i32 %112)
  %114 = load i32*, i32** %3, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @TI4_Config(i32* %114, i32 %117, i32 %120, i32 %123)
  %125 = load i32*, i32** %3, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @TIM_SetIC4Prescaler(i32* %125, i32 %128)
  br label %130

130:                                              ; preds = %110, %90
  br label %131

131:                                              ; preds = %130, %64
  br label %132

132:                                              ; preds = %131, %38
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_TIM_LIST4_PERIPH(i32*) #1

declare dso_local i32 @IS_TIM_CHANNEL(i64) #1

declare dso_local i32 @IS_TIM_IC_SELECTION(i32) #1

declare dso_local i32 @IS_TIM_IC_PRESCALER(i32) #1

declare dso_local i32 @IS_TIM_IC_FILTER(i32) #1

declare dso_local i32 @IS_TIM_IC_POLARITY(i32) #1

declare dso_local i32 @TI1_Config(i32*, i32, i32, i32) #1

declare dso_local i32 @TIM_SetIC1Prescaler(i32*, i32) #1

declare dso_local i32 @IS_TIM_LIST6_PERIPH(i32*) #1

declare dso_local i32 @TI2_Config(i32*, i32, i32, i32) #1

declare dso_local i32 @TIM_SetIC2Prescaler(i32*, i32) #1

declare dso_local i32 @IS_TIM_LIST3_PERIPH(i32*) #1

declare dso_local i32 @TI3_Config(i32*, i32, i32, i32) #1

declare dso_local i32 @TIM_SetIC3Prescaler(i32*, i32) #1

declare dso_local i32 @TI4_Config(i32*, i32, i32, i32) #1

declare dso_local i32 @TIM_SetIC4Prescaler(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
