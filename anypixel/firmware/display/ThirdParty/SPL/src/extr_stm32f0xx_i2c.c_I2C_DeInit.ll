; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_i2c.c_I2C_DeInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_i2c.c_I2C_DeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C1 = common dso_local global i32* null, align 8
@RCC_APB1Periph_I2C1 = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@DISABLE = common dso_local global i32 0, align 4
@RCC_APB1Periph_I2C2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I2C_DeInit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @IS_I2C_ALL_PERIPH(i32* %3)
  %5 = call i32 @assert_param(i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32*, i32** @I2C1, align 8
  %8 = icmp eq i32* %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @RCC_APB1Periph_I2C1, align 4
  %11 = load i32, i32* @ENABLE, align 4
  %12 = call i32 @RCC_APB1PeriphResetCmd(i32 %10, i32 %11)
  %13 = load i32, i32* @RCC_APB1Periph_I2C1, align 4
  %14 = load i32, i32* @DISABLE, align 4
  %15 = call i32 @RCC_APB1PeriphResetCmd(i32 %13, i32 %14)
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @RCC_APB1Periph_I2C2, align 4
  %18 = load i32, i32* @ENABLE, align 4
  %19 = call i32 @RCC_APB1PeriphResetCmd(i32 %17, i32 %18)
  %20 = load i32, i32* @RCC_APB1Periph_I2C2, align 4
  %21 = load i32, i32* @DISABLE, align 4
  %22 = call i32 @RCC_APB1PeriphResetCmd(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %16, %9
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_I2C_ALL_PERIPH(i32*) #1

declare dso_local i32 @RCC_APB1PeriphResetCmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
