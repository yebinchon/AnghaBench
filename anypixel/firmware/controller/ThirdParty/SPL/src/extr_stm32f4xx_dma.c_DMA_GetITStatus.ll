; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_dma.c_DMA_GetITStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_dma.c_DMA_GetITStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@RESET = common dso_local global i64 0, align 8
@DMA2_Stream0 = common dso_local global %struct.TYPE_9__* null, align 8
@DMA1 = common dso_local global %struct.TYPE_8__* null, align 8
@DMA2 = common dso_local global %struct.TYPE_8__* null, align 8
@TRANSFER_IT_MASK = common dso_local global i32 0, align 4
@TRANSFER_IT_ENABLE_MASK = common dso_local global i32 0, align 4
@DMA_IT_FE = common dso_local global i32 0, align 4
@HIGH_ISR_MASK = common dso_local global i32 0, align 4
@RESERVED_MASK = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DMA_GetITStatus(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @RESET, align 8
  store i64 %9, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = call i32 @IS_DMA_ALL_PERIPH(%struct.TYPE_9__* %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @IS_DMA_GET_IT(i32 %13)
  %15 = call i32 @assert_param(i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @DMA2_Stream0, align 8
  %18 = icmp ult %struct.TYPE_9__* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DMA1, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %6, align 8
  br label %23

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DMA2, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %6, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TRANSFER_IT_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i64, i64* @RESET, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 11
  %33 = load i32, i32* @TRANSFER_IT_ENABLE_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %8, align 4
  br label %46

40:                                               ; preds = %23
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DMA_IT_FE, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %40, %30
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @HIGH_ISR_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i64, i64* @RESET, align 8
  %51 = trunc i64 %50 to i32
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  br label %61

57:                                               ; preds = %46
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i64, i64* @RESERVED_MASK, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %66, %67
  %69 = load i64, i64* @RESET, align 8
  %70 = trunc i64 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %61
  %73 = load i32, i32* %8, align 4
  %74 = load i64, i64* @RESET, align 8
  %75 = trunc i64 %74 to i32
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i64, i64* @SET, align 8
  store i64 %78, i64* %5, align 8
  br label %81

79:                                               ; preds = %72, %61
  %80 = load i64, i64* @RESET, align 8
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_DMA_ALL_PERIPH(%struct.TYPE_9__*) #1

declare dso_local i32 @IS_DMA_GET_IT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
