; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_usart.c_USART_GetFlagStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_usart.c_USART_GetFlagStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@RESET = common dso_local global i64 0, align 8
@USART_FLAG_CTS = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @USART_GetFlagStatus(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @RESET, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = call i32 @IS_USART_ALL_PERIPH(%struct.TYPE_5__* %7)
  %9 = call i32 @assert_param(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @IS_USART_FLAG(i32 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @USART_FLAG_CTS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = call i32 @IS_USART_1236_PERIPH(%struct.TYPE_5__* %17)
  %19 = call i32 @assert_param(i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %23, %24
  %26 = load i64, i64* @RESET, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i64, i64* @SET, align 8
  store i64 %30, i64* %5, align 8
  br label %33

31:                                               ; preds = %20
  %32 = load i64, i64* @RESET, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_USART_ALL_PERIPH(%struct.TYPE_5__*) #1

declare dso_local i32 @IS_USART_FLAG(i32) #1

declare dso_local i32 @IS_USART_1236_PERIPH(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
