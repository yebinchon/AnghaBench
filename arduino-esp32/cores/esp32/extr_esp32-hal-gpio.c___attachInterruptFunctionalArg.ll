; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-gpio.c___attachInterruptFunctionalArg.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-gpio.c___attachInterruptFunctionalArg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@__attachInterruptFunctionalArg.interrupt_initialized = internal global i32 0, align 4
@ETS_GPIO_INTR_SOURCE = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_IRAM = common dso_local global i64 0, align 8
@__onPinInterrupt = common dso_local global i32 0, align 4
@gpio_intr_handle = common dso_local global i32 0, align 4
@__pinInterruptHandlers = common dso_local global %struct.TYPE_5__* null, align 8
@GPIO = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__attachInterruptFunctionalArg(i64 %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @__attachInterruptFunctionalArg.interrupt_initialized, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %5
  store i32 1, i32* @__attachInterruptFunctionalArg.interrupt_initialized, align 4
  %14 = load i32, i32* @ETS_GPIO_INTR_SOURCE, align 4
  %15 = load i64, i64* @ESP_INTR_FLAG_IRAM, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @__onPinInterrupt, align 4
  %18 = call i32 @esp_intr_alloc(i32 %14, i32 %16, i32 %17, i32* null, i32* @gpio_intr_handle)
  br label %19

19:                                               ; preds = %13, %5
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__pinInterruptHandlers, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__pinInterruptHandlers, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__pinInterruptHandlers, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @cleanupFunctional(i8* %38)
  br label %40

40:                                               ; preds = %33, %26, %19
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__pinInterruptHandlers, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i64 %41, i64* %45, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__pinInterruptHandlers, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__pinInterruptHandlers, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  %56 = load i32, i32* @gpio_intr_handle, align 4
  %57 = call i32 @esp_intr_disable(i32 %56)
  %58 = load i32, i32* @gpio_intr_handle, align 4
  %59 = call i64 @esp_intr_get_cpu(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %40
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @GPIO, i32 0, i32 0), align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %71

66:                                               ; preds = %40
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @GPIO, i32 0, i32 0), align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 4, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @GPIO, i32 0, i32 0), align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @gpio_intr_handle, align 4
  %78 = call i32 @esp_intr_enable(i32 %77)
  ret void
}

declare dso_local i32 @esp_intr_alloc(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @cleanupFunctional(i8*) #1

declare dso_local i32 @esp_intr_disable(i32) #1

declare dso_local i64 @esp_intr_get_cpu(i32) #1

declare dso_local i32 @esp_intr_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
