; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_tim.c_TIM_ICInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_tim.c_TIM_ICInit.c"
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
  %6 = call i32 @IS_TIM_LIST1_PERIPH(i32* %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @IS_TIM_IC_POLARITY(i32 %10)
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
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TIM_Channel_1, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %2
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @TI1_Config(i32* %34, i32 %37, i32 %40, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @TIM_SetIC1Prescaler(i32* %45, i32 %48)
  br label %124

50:                                               ; preds = %2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TIM_Channel_2, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @IS_TIM_LIST2_PERIPH(i32* %57)
  %59 = call i32 @assert_param(i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @TI2_Config(i32* %60, i32 %63, i32 %66, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @TIM_SetIC2Prescaler(i32* %71, i32 %74)
  br label %123

76:                                               ; preds = %50
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TIM_Channel_3, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @IS_TIM_LIST3_PERIPH(i32* %83)
  %85 = call i32 @assert_param(i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @TI3_Config(i32* %86, i32 %89, i32 %92, i32 %95)
  %97 = load i32*, i32** %3, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @TIM_SetIC3Prescaler(i32* %97, i32 %100)
  br label %122

102:                                              ; preds = %76
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @IS_TIM_LIST3_PERIPH(i32* %103)
  %105 = call i32 @assert_param(i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @TI4_Config(i32* %106, i32 %109, i32 %112, i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @TIM_SetIC4Prescaler(i32* %117, i32 %120)
  br label %122

122:                                              ; preds = %102, %82
  br label %123

123:                                              ; preds = %122, %56
  br label %124

124:                                              ; preds = %123, %33
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_TIM_LIST1_PERIPH(i32*) #1

declare dso_local i32 @IS_TIM_IC_POLARITY(i32) #1

declare dso_local i32 @IS_TIM_IC_SELECTION(i32) #1

declare dso_local i32 @IS_TIM_IC_PRESCALER(i32) #1

declare dso_local i32 @IS_TIM_IC_FILTER(i32) #1

declare dso_local i32 @TI1_Config(i32*, i32, i32, i32) #1

declare dso_local i32 @TIM_SetIC1Prescaler(i32*, i32) #1

declare dso_local i32 @IS_TIM_LIST2_PERIPH(i32*) #1

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
