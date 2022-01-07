; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_gpio.c_GPIO_ReadOutputDataBit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_gpio.c_GPIO_ReadOutputDataBit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@Bit_RESET = common dso_local global i64 0, align 8
@Bit_SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GPIO_ReadOutputDataBit(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = call i32 @IS_GPIO_ALL_PERIPH(%struct.TYPE_4__* %6)
  %8 = call i32 @assert_param(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @IS_GET_GPIO_PIN(i32 %9)
  %11 = call i32 @assert_param(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %14, %15
  %17 = load i64, i64* @Bit_RESET, align 8
  %18 = trunc i64 %17 to i32
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i64, i64* @Bit_SET, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i64, i64* @Bit_RESET, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_GPIO_ALL_PERIPH(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_GET_GPIO_PIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
