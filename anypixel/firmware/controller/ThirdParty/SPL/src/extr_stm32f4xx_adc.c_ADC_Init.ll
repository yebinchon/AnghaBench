; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_adc.c_ADC_Init.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_adc.c_ADC_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i64, i64 }

@CR1_CLEAR_MASK = common dso_local global i32 0, align 4
@CR2_CLEAR_MASK = common dso_local global i32 0, align 4
@SQR1_L_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ADC_Init(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = call i32 @IS_ADC_ALL_PERIPH(%struct.TYPE_6__* %7)
  %9 = call i32 @assert_param(i32 %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @IS_ADC_RESOLUTION(i32 %12)
  %14 = call i32 @assert_param(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @IS_FUNCTIONAL_STATE(i64 %17)
  %19 = call i32 @assert_param(i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @IS_FUNCTIONAL_STATE(i64 %22)
  %24 = call i32 @assert_param(i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IS_ADC_EXT_TRIG_EDGE(i32 %27)
  %29 = call i32 @assert_param(i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @IS_ADC_EXT_TRIG(i32 %32)
  %34 = call i32 @assert_param(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IS_ADC_DATA_ALIGN(i32 %37)
  %39 = call i32 @assert_param(i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @IS_ADC_REGULAR_LENGTH(i64 %42)
  %44 = call i32 @assert_param(i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @CR1_CLEAR_MASK, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 %54, 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %55, %58
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @CR2_CLEAR_MASK, align 4
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %73, %76
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %77, %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = shl i32 %85, 1
  %87 = or i32 %81, %86
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @SQR1_L_RESET, align 4
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, 1
  %103 = load i64, i64* %6, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %6, align 8
  %105 = load i64, i64* %6, align 8
  %106 = trunc i64 %105 to i32
  %107 = shl i32 %106, 20
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_ADC_ALL_PERIPH(%struct.TYPE_6__*) #1

declare dso_local i32 @IS_ADC_RESOLUTION(i32) #1

declare dso_local i32 @IS_FUNCTIONAL_STATE(i64) #1

declare dso_local i32 @IS_ADC_EXT_TRIG_EDGE(i32) #1

declare dso_local i32 @IS_ADC_EXT_TRIG(i32) #1

declare dso_local i32 @IS_ADC_DATA_ALIGN(i32) #1

declare dso_local i32 @IS_ADC_REGULAR_LENGTH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
