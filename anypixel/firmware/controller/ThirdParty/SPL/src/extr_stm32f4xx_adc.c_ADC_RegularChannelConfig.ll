; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_adc.c_ADC_RegularChannelConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_adc.c_ADC_RegularChannelConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@ADC_Channel_9 = common dso_local global i32 0, align 4
@SMPR1_SMP_SET = common dso_local global i32 0, align 4
@SMPR2_SMP_SET = common dso_local global i32 0, align 4
@SQR3_SQ_SET = common dso_local global i32 0, align 4
@SQR2_SQ_SET = common dso_local global i32 0, align 4
@SQR1_SQ_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ADC_RegularChannelConfig(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = call i32 @IS_ADC_ALL_PERIPH(%struct.TYPE_4__* %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @IS_ADC_CHANNEL(i32 %14)
  %16 = call i32 @assert_param(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @IS_ADC_REGULAR_RANK(i32 %17)
  %19 = call i32 @assert_param(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @IS_ADC_SAMPLE_TIME(i32 %20)
  %22 = call i32 @assert_param(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ADC_Channel_9, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @SMPR1_SMP_SET, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 10
  %33 = mul nsw i32 3, %32
  %34 = shl i32 %30, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 10
  %42 = mul nsw i32 3, %41
  %43 = shl i32 %39, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %72

50:                                               ; preds = %4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @SMPR2_SMP_SET, align 4
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 3, %55
  %57 = shl i32 %54, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 3, %63
  %65 = shl i32 %62, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %50, %26
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 7
  br i1 %74, label %75, label %99

75:                                               ; preds = %72
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @SQR3_SQ_SET, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %80, 1
  %82 = mul nsw i32 5, %81
  %83 = shl i32 %79, %82
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %89, 1
  %91 = mul nsw i32 5, %90
  %92 = shl i32 %88, %91
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %151

99:                                               ; preds = %72
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 13
  br i1 %101, label %102, label %126

102:                                              ; preds = %99
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* @SQR2_SQ_SET, align 4
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %107, 7
  %109 = mul nsw i32 5, %108
  %110 = shl i32 %106, %109
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %9, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sub nsw i32 %116, 7
  %118 = mul nsw i32 5, %117
  %119 = shl i32 %115, %118
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  br label %150

126:                                              ; preds = %99
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* @SQR1_SQ_SET, align 4
  %131 = load i32, i32* %7, align 4
  %132 = sub nsw i32 %131, 13
  %133 = mul nsw i32 5, %132
  %134 = shl i32 %130, %133
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %9, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %140, 13
  %142 = mul nsw i32 5, %141
  %143 = shl i32 %139, %142
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %9, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %126, %102
  br label %151

151:                                              ; preds = %150, %75
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_ADC_ALL_PERIPH(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_ADC_CHANNEL(i32) #1

declare dso_local i32 @IS_ADC_REGULAR_RANK(i32) #1

declare dso_local i32 @IS_ADC_SAMPLE_TIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
