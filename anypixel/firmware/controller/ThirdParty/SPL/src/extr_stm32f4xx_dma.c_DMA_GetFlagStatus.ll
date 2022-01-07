; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_dma.c_DMA_GetFlagStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_dma.c_DMA_GetFlagStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@RESET = common dso_local global i64 0, align 8
@DMA2_Stream0 = common dso_local global i32* null, align 8
@DMA1 = common dso_local global %struct.TYPE_4__* null, align 8
@DMA2 = common dso_local global %struct.TYPE_4__* null, align 8
@HIGH_ISR_MASK = common dso_local global i32 0, align 4
@RESERVED_MASK = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DMA_GetFlagStatus(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @RESET, align 8
  store i64 %8, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @IS_DMA_ALL_PERIPH(i32* %9)
  %11 = call i32 @assert_param(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @IS_DMA_GET_FLAG(i32 %12)
  %14 = call i32 @assert_param(i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** @DMA2_Stream0, align 8
  %17 = icmp ult i32* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMA1, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  br label %22

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMA2, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %6, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @HIGH_ISR_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i64, i64* @RESET, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  br label %37

33:                                               ; preds = %22
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i64, i64* @RESERVED_MASK, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %42, %43
  %45 = load i64, i64* @RESET, align 8
  %46 = trunc i64 %45 to i32
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i64, i64* @SET, align 8
  store i64 %49, i64* %5, align 8
  br label %52

50:                                               ; preds = %37
  %51 = load i64, i64* @RESET, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_DMA_ALL_PERIPH(i32*) #1

declare dso_local i32 @IS_DMA_GET_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
