; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_adc.c_ADC_InjectedChannelConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_adc.c_ADC_InjectedChannelConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@ADC_Channel_9 = common dso_local global i32 0, align 4
@SMPR1_SMP_SET = common dso_local global i32 0, align 4
@SMPR2_SMP_SET = common dso_local global i32 0, align 4
@JSQR_JL_SET = common dso_local global i32 0, align 4
@JSQR_JSQ_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ADC_InjectedChannelConfig(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = call i32 @IS_ADC_ALL_PERIPH(%struct.TYPE_4__* %12)
  %14 = call i32 @assert_param(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @IS_ADC_CHANNEL(i32 %15)
  %17 = call i32 @assert_param(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @IS_ADC_INJECTED_RANK(i32 %18)
  %20 = call i32 @assert_param(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @IS_ADC_SAMPLE_TIME(i32 %21)
  %23 = call i32 @assert_param(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ADC_Channel_9, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @SMPR1_SMP_SET, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 10
  %34 = mul nsw i32 3, %33
  %35 = shl i32 %31, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 10
  %43 = mul nsw i32 3, %42
  %44 = shl i32 %40, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %73

51:                                               ; preds = %4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @SMPR2_SMP_SET, align 4
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 3, %56
  %58 = shl i32 %55, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = mul nsw i32 3, %64
  %66 = shl i32 %63, %65
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %51, %27
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @JSQR_JL_SET, align 4
  %79 = and i32 %77, %78
  %80 = ashr i32 %79, 20
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* @JSQR_JSQ_SET, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 3
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  %86 = sub nsw i32 %83, %85
  %87 = mul nsw i32 5, %86
  %88 = shl i32 %81, %87
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 3
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  %98 = sub nsw i32 %95, %97
  %99 = mul nsw i32 5, %98
  %100 = shl i32 %93, %99
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_ADC_ALL_PERIPH(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_ADC_CHANNEL(i32) #1

declare dso_local i32 @IS_ADC_INJECTED_RANK(i32) #1

declare dso_local i32 @IS_ADC_SAMPLE_TIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
