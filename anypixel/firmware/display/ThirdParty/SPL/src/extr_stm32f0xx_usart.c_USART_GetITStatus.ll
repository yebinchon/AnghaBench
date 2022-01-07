; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_usart.c_USART_GetITStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_usart.c_USART_GetITStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@RESET = common dso_local global i64 0, align 8
@IT_MASK = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @USART_GetITStatus(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* @RESET, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = call i32 @IS_USART_ALL_PERIPH(%struct.TYPE_4__* %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @IS_USART_GET_IT(i32 %13)
  %15 = call i32 @assert_param(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IT_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %47

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %46

40:                                               ; preds = %31
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %40, %34
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i32, i32* %4, align 4
  %49 = ashr i32 %48, 16
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 1, %50
  store i32 %51, i32* %5, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i64, i64* @RESET, align 8
  %59 = trunc i64 %58 to i32
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %47
  %62 = load i32, i32* %5, align 4
  %63 = load i64, i64* @RESET, align 8
  %64 = trunc i64 %63 to i32
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i64, i64* @SET, align 8
  store i64 %67, i64* %8, align 8
  br label %70

68:                                               ; preds = %61, %47
  %69 = load i64, i64* @RESET, align 8
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = load i64, i64* %8, align 8
  ret i64 %71
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_USART_ALL_PERIPH(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_USART_GET_IT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
