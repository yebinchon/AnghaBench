; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_usart.c_USART_DeInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_usart.c_USART_DeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USART1 = common dso_local global i32* null, align 8
@RCC_APB2Periph_USART1 = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@DISABLE = common dso_local global i32 0, align 4
@USART2 = common dso_local global i32* null, align 8
@RCC_APB1Periph_USART2 = common dso_local global i32 0, align 4
@USART3 = common dso_local global i32* null, align 8
@RCC_APB1Periph_USART3 = common dso_local global i32 0, align 4
@UART4 = common dso_local global i32* null, align 8
@RCC_APB1Periph_UART4 = common dso_local global i32 0, align 4
@UART5 = common dso_local global i32* null, align 8
@RCC_APB1Periph_UART5 = common dso_local global i32 0, align 4
@USART6 = common dso_local global i32* null, align 8
@RCC_APB2Periph_USART6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @USART_DeInit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @IS_USART_ALL_PERIPH(i32* %3)
  %5 = call i32 @assert_param(i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32*, i32** @USART1, align 8
  %8 = icmp eq i32* %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @RCC_APB2Periph_USART1, align 4
  %11 = load i32, i32* @ENABLE, align 4
  %12 = call i32 @RCC_APB2PeriphResetCmd(i32 %10, i32 %11)
  %13 = load i32, i32* @RCC_APB2Periph_USART1, align 4
  %14 = load i32, i32* @DISABLE, align 4
  %15 = call i32 @RCC_APB2PeriphResetCmd(i32 %13, i32 %14)
  br label %76

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = load i32*, i32** @USART2, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* @RCC_APB1Periph_USART2, align 4
  %22 = load i32, i32* @ENABLE, align 4
  %23 = call i32 @RCC_APB1PeriphResetCmd(i32 %21, i32 %22)
  %24 = load i32, i32* @RCC_APB1Periph_USART2, align 4
  %25 = load i32, i32* @DISABLE, align 4
  %26 = call i32 @RCC_APB1PeriphResetCmd(i32 %24, i32 %25)
  br label %75

27:                                               ; preds = %16
  %28 = load i32*, i32** %2, align 8
  %29 = load i32*, i32** @USART3, align 8
  %30 = icmp eq i32* %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @RCC_APB1Periph_USART3, align 4
  %33 = load i32, i32* @ENABLE, align 4
  %34 = call i32 @RCC_APB1PeriphResetCmd(i32 %32, i32 %33)
  %35 = load i32, i32* @RCC_APB1Periph_USART3, align 4
  %36 = load i32, i32* @DISABLE, align 4
  %37 = call i32 @RCC_APB1PeriphResetCmd(i32 %35, i32 %36)
  br label %74

38:                                               ; preds = %27
  %39 = load i32*, i32** %2, align 8
  %40 = load i32*, i32** @UART4, align 8
  %41 = icmp eq i32* %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* @RCC_APB1Periph_UART4, align 4
  %44 = load i32, i32* @ENABLE, align 4
  %45 = call i32 @RCC_APB1PeriphResetCmd(i32 %43, i32 %44)
  %46 = load i32, i32* @RCC_APB1Periph_UART4, align 4
  %47 = load i32, i32* @DISABLE, align 4
  %48 = call i32 @RCC_APB1PeriphResetCmd(i32 %46, i32 %47)
  br label %73

49:                                               ; preds = %38
  %50 = load i32*, i32** %2, align 8
  %51 = load i32*, i32** @UART5, align 8
  %52 = icmp eq i32* %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* @RCC_APB1Periph_UART5, align 4
  %55 = load i32, i32* @ENABLE, align 4
  %56 = call i32 @RCC_APB1PeriphResetCmd(i32 %54, i32 %55)
  %57 = load i32, i32* @RCC_APB1Periph_UART5, align 4
  %58 = load i32, i32* @DISABLE, align 4
  %59 = call i32 @RCC_APB1PeriphResetCmd(i32 %57, i32 %58)
  br label %72

60:                                               ; preds = %49
  %61 = load i32*, i32** %2, align 8
  %62 = load i32*, i32** @USART6, align 8
  %63 = icmp eq i32* %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* @RCC_APB2Periph_USART6, align 4
  %66 = load i32, i32* @ENABLE, align 4
  %67 = call i32 @RCC_APB2PeriphResetCmd(i32 %65, i32 %66)
  %68 = load i32, i32* @RCC_APB2Periph_USART6, align 4
  %69 = load i32, i32* @DISABLE, align 4
  %70 = call i32 @RCC_APB2PeriphResetCmd(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %64, %60
  br label %72

72:                                               ; preds = %71, %53
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73, %31
  br label %75

75:                                               ; preds = %74, %20
  br label %76

76:                                               ; preds = %75, %9
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_USART_ALL_PERIPH(i32*) #1

declare dso_local i32 @RCC_APB2PeriphResetCmd(i32, i32) #1

declare dso_local i32 @RCC_APB1PeriphResetCmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
