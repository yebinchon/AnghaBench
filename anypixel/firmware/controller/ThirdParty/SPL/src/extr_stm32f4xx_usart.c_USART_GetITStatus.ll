; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_usart.c_USART_GetITStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_usart.c_USART_GetITStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@RESET = common dso_local global i64 0, align 8
@USART_IT_CTS = common dso_local global i32 0, align 4
@IT_MASK = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @USART_GetITStatus(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* @RESET, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = call i32 @IS_USART_ALL_PERIPH(%struct.TYPE_5__* %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @IS_USART_GET_IT(i32 %13)
  %15 = call i32 @assert_param(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @USART_IT_CTS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = call i32 @IS_USART_1236_PERIPH(%struct.TYPE_5__* %20)
  %22 = call i32 @assert_param(i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %4, align 4
  %25 = ashr i32 %24, 5
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IT_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %55

39:                                               ; preds = %23
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %54

48:                                               ; preds = %39
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %48, %42
  br label %55

55:                                               ; preds = %54, %33
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 8
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 1, %58
  store i32 %59, i32* %5, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i64, i64* @RESET, align 8
  %67 = trunc i64 %66 to i32
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %55
  %70 = load i32, i32* %5, align 4
  %71 = load i64, i64* @RESET, align 8
  %72 = trunc i64 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i64, i64* @SET, align 8
  store i64 %75, i64* %8, align 8
  br label %78

76:                                               ; preds = %69, %55
  %77 = load i64, i64* @RESET, align 8
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i64, i64* %8, align 8
  ret i64 %79
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_USART_ALL_PERIPH(%struct.TYPE_5__*) #1

declare dso_local i32 @IS_USART_GET_IT(i32) #1

declare dso_local i32 @IS_USART_1236_PERIPH(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
