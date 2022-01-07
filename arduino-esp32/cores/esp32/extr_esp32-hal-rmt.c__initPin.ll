; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-rmt.c__initPin.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-rmt.c__initPin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@periph_enabled = common dso_local global i32 0, align 4
@PERIPH_RMT_MODULE = common dso_local global i32 0, align 4
@OUTPUT = common dso_local global i32 0, align 4
@RMT_SIG_OUT0_IDX = common dso_local global i64 0, align 8
@INPUT = common dso_local global i32 0, align 4
@RMT_SIG_IN0_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @_initPin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_initPin(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @periph_enabled, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  store i32 1, i32* @periph_enabled, align 4
  %10 = load i32, i32* @PERIPH_RMT_MODULE, align 4
  %11 = call i32 @periph_module_enable(i32 %10)
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @OUTPUT, align 4
  %18 = call i32 @pinMode(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i64, i64* @RMT_SIG_OUT0_IDX, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i32 @pinMatrixOutAttach(i32 %19, i64 %23, i32 0, i32 0)
  br label %35

25:                                               ; preds = %12
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @INPUT, align 4
  %28 = call i32 @pinMode(i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i64, i64* @RMT_SIG_IN0_IDX, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @pinMatrixInAttach(i32 %29, i64 %33, i32 0)
  br label %35

35:                                               ; preds = %25, %15
  ret void
}

declare dso_local i32 @periph_module_enable(i32) #1

declare dso_local i32 @pinMode(i32, i32) #1

declare dso_local i32 @pinMatrixOutAttach(i32, i64, i32, i32) #1

declare dso_local i32 @pinMatrixInAttach(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
