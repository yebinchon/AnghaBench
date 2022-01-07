; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_i2c.c_I2C_TransferHandling.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_i2c.c_I2C_TransferHandling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@I2C_CR2_SADD = common dso_local global i32 0, align 4
@I2C_CR2_NBYTES = common dso_local global i32 0, align 4
@I2C_CR2_RELOAD = common dso_local global i32 0, align 4
@I2C_CR2_AUTOEND = common dso_local global i32 0, align 4
@I2C_CR2_RD_WRN = common dso_local global i32 0, align 4
@I2C_CR2_START = common dso_local global i32 0, align 4
@I2C_CR2_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I2C_TransferHandling(%struct.TYPE_4__* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = call i32 @IS_I2C_ALL_PERIPH(%struct.TYPE_4__* %12)
  %14 = call i32 @assert_param(i32 %13)
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @IS_I2C_SLAVE_ADDRESS(i64 %15)
  %17 = call i32 @assert_param(i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @IS_RELOAD_END_MODE(i32 %18)
  %20 = call i32 @assert_param(i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @IS_START_STOP_MODE(i32 %21)
  %23 = call i32 @assert_param(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @I2C_CR2_SADD, align 4
  %28 = load i32, i32* @I2C_CR2_NBYTES, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @I2C_CR2_RELOAD, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @I2C_CR2_AUTOEND, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @I2C_CR2_RD_WRN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @I2C_CR2_START, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @I2C_CR2_STOP, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load i64, i64* %7, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @I2C_CR2_SADD, align 4
  %46 = and i32 %44, %45
  %47 = load i64, i64* %8, align 8
  %48 = trunc i64 %47 to i32
  %49 = shl i32 %48, 16
  %50 = load i32, i32* @I2C_CR2_NBYTES, align 4
  %51 = and i32 %49, %50
  %52 = or i32 %46, %51
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_I2C_ALL_PERIPH(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_I2C_SLAVE_ADDRESS(i64) #1

declare dso_local i32 @IS_RELOAD_END_MODE(i32) #1

declare dso_local i32 @IS_START_STOP_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
