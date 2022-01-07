; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_dma.c_DMA_DeInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_dma.c_DMA_DeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i32 }

@DMA_CCR_EN = common dso_local global i64 0, align 8
@DMA1_Channel1 = common dso_local global %struct.TYPE_13__* null, align 8
@DMA1_CHANNEL1_IT_MASK = common dso_local global i32 0, align 4
@DMA1 = common dso_local global %struct.TYPE_12__* null, align 8
@DMA1_Channel2 = common dso_local global %struct.TYPE_13__* null, align 8
@DMA1_CHANNEL2_IT_MASK = common dso_local global i32 0, align 4
@DMA1_Channel3 = common dso_local global %struct.TYPE_13__* null, align 8
@DMA1_CHANNEL3_IT_MASK = common dso_local global i32 0, align 4
@DMA1_Channel4 = common dso_local global %struct.TYPE_13__* null, align 8
@DMA1_CHANNEL4_IT_MASK = common dso_local global i32 0, align 4
@DMA1_Channel5 = common dso_local global %struct.TYPE_13__* null, align 8
@DMA1_CHANNEL5_IT_MASK = common dso_local global i32 0, align 4
@DMA1_Channel6 = common dso_local global %struct.TYPE_13__* null, align 8
@DMA1_CHANNEL6_IT_MASK = common dso_local global i32 0, align 4
@DMA1_Channel7 = common dso_local global %struct.TYPE_13__* null, align 8
@DMA1_CHANNEL7_IT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DMA_DeInit(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %3 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %4 = call i32 @IS_DMA_ALL_PERIPH(%struct.TYPE_13__* %3)
  %5 = call i32 @assert_param(i32 %4)
  %6 = load i64, i64* @DMA_CCR_EN, align 8
  %7 = xor i64 %6, -1
  %8 = trunc i64 %7 to i32
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  store i32 0, i32* %14, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DMA1_Channel1, align 8
  %23 = icmp eq %struct.TYPE_13__* %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @DMA1_CHANNEL1_IT_MASK, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DMA1, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %96

30:                                               ; preds = %1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DMA1_Channel2, align 8
  %33 = icmp eq %struct.TYPE_13__* %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* @DMA1_CHANNEL2_IT_MASK, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DMA1, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %95

40:                                               ; preds = %30
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DMA1_Channel3, align 8
  %43 = icmp eq %struct.TYPE_13__* %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* @DMA1_CHANNEL3_IT_MASK, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DMA1, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %94

50:                                               ; preds = %40
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DMA1_Channel4, align 8
  %53 = icmp eq %struct.TYPE_13__* %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* @DMA1_CHANNEL4_IT_MASK, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DMA1, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %93

60:                                               ; preds = %50
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DMA1_Channel5, align 8
  %63 = icmp eq %struct.TYPE_13__* %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* @DMA1_CHANNEL5_IT_MASK, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DMA1, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %92

70:                                               ; preds = %60
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DMA1_Channel6, align 8
  %73 = icmp eq %struct.TYPE_13__* %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* @DMA1_CHANNEL6_IT_MASK, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DMA1, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %91

80:                                               ; preds = %70
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DMA1_Channel7, align 8
  %83 = icmp eq %struct.TYPE_13__* %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32, i32* @DMA1_CHANNEL7_IT_MASK, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DMA1, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %80
  br label %91

91:                                               ; preds = %90, %74
  br label %92

92:                                               ; preds = %91, %64
  br label %93

93:                                               ; preds = %92, %54
  br label %94

94:                                               ; preds = %93, %44
  br label %95

95:                                               ; preds = %94, %34
  br label %96

96:                                               ; preds = %95, %24
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_DMA_ALL_PERIPH(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
