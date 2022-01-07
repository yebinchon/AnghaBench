; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_configure_pin.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_configure_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_PIN_MUX_REG = common dso_local global i64* null, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32)* @configure_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_pin(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  store i32 3, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, -1
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64*, i64** @GPIO_PIN_MUX_REG, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @UINT32_MAX, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @PIN_INPUT_ENABLE(i64 %26)
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @PIN_FUNC_SELECT(i64 %28, i32 %29)
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @PIN_SET_DRV(i64 %31, i32 3)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @gpio_pulldown_dis(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @gpio_pullup_en(i32 %38)
  br label %40

40:                                               ; preds = %37, %3
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PIN_INPUT_ENABLE(i64) #1

declare dso_local i32 @PIN_FUNC_SELECT(i64, i32) #1

declare dso_local i32 @PIN_SET_DRV(i64, i32) #1

declare dso_local i32 @gpio_pulldown_dis(i32) #1

declare dso_local i32 @gpio_pullup_en(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
