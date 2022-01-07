; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_i2c.c_I2C_Send7bitAddress.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_i2c.c_I2C_Send7bitAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@I2C_Direction_Transmitter = common dso_local global i64 0, align 8
@I2C_OAR1_ADD0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I2C_Send7bitAddress(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = call i32 @IS_I2C_ALL_PERIPH(%struct.TYPE_4__* %7)
  %9 = call i32 @assert_param(i32 %8)
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @IS_I2C_DIRECTION(i64 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @I2C_Direction_Transmitter, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* @I2C_OAR1_ADD0, align 8
  %18 = load i64, i64* %5, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %5, align 8
  br label %25

20:                                               ; preds = %3
  %21 = load i64, i64* @I2C_OAR1_ADD0, align 8
  %22 = xor i64 %21, -1
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_I2C_ALL_PERIPH(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_I2C_DIRECTION(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
