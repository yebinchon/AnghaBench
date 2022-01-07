; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_common.c_spicommon_cs_initialize.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_common.c_spicommon_cs_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32 }

@spi_periph_signal = common dso_local global %struct.TYPE_2__* null, align 8
@GPIO_MODE_INPUT_OUTPUT = common dso_local global i32 0, align 4
@GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_MUX_REG = common dso_local global i32* null, align 8
@FUNC_GPIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spicommon_cs_initialize(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spi_periph_signal, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %12, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spi_periph_signal, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpio_iomux_in(i32 %23, i32 %28)
  br label %78

30:                                               ; preds = %19, %11, %4
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @GPIO_IS_VALID_OUTPUT_GPIO(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @GPIO_MODE_INPUT_OUTPUT, align 4
  %37 = call i32 @gpio_set_direction(i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spi_periph_signal, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gpio_matrix_out(i32 %38, i32 %47, i32 0, i32 0)
  br label %53

49:                                               ; preds = %30
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %52 = call i32 @gpio_set_direction(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %34
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spi_periph_signal, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @gpio_matrix_in(i32 %57, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %56, %53
  %65 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @PIN_INPUT_ENABLE(i32 %69)
  %71 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @FUNC_GPIO, align 4
  %77 = call i32 @PIN_FUNC_SELECT(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %64, %22
  ret void
}

declare dso_local i32 @gpio_iomux_in(i32, i32) #1

declare dso_local i64 @GPIO_IS_VALID_OUTPUT_GPIO(i32) #1

declare dso_local i32 @gpio_set_direction(i32, i32) #1

declare dso_local i32 @gpio_matrix_out(i32, i32, i32, i32) #1

declare dso_local i32 @gpio_matrix_in(i32, i32, i32) #1

declare dso_local i32 @PIN_INPUT_ENABLE(i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
