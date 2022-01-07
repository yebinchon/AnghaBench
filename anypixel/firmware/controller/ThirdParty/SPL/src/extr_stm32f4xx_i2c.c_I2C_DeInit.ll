; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_i2c.c_I2C_DeInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_i2c.c_I2C_DeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C1 = common dso_local global i32* null, align 8
@RCC_APB1Periph_I2C1 = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@DISABLE = common dso_local global i32 0, align 4
@I2C2 = common dso_local global i32* null, align 8
@RCC_APB1Periph_I2C2 = common dso_local global i32 0, align 4
@I2C3 = common dso_local global i32* null, align 8
@RCC_APB1Periph_I2C3 = common dso_local global i32 0, align 4

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
  br label %40

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = load i32*, i32** @I2C2, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* @RCC_APB1Periph_I2C2, align 4
  %22 = load i32, i32* @ENABLE, align 4
  %23 = call i32 @RCC_APB1PeriphResetCmd(i32 %21, i32 %22)
  %24 = load i32, i32* @RCC_APB1Periph_I2C2, align 4
  %25 = load i32, i32* @DISABLE, align 4
  %26 = call i32 @RCC_APB1PeriphResetCmd(i32 %24, i32 %25)
  br label %39

27:                                               ; preds = %16
  %28 = load i32*, i32** %2, align 8
  %29 = load i32*, i32** @I2C3, align 8
  %30 = icmp eq i32* %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @RCC_APB1Periph_I2C3, align 4
  %33 = load i32, i32* @ENABLE, align 4
  %34 = call i32 @RCC_APB1PeriphResetCmd(i32 %32, i32 %33)
  %35 = load i32, i32* @RCC_APB1Periph_I2C3, align 4
  %36 = load i32, i32* @DISABLE, align 4
  %37 = call i32 @RCC_APB1PeriphResetCmd(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %27
  br label %39

39:                                               ; preds = %38, %20
  br label %40

40:                                               ; preds = %39, %9
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
