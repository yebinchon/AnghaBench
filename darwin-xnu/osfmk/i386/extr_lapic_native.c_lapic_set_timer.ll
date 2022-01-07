; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_set_timer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_set_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LVT_TIMER = common dso_local global i32 0, align 4
@LAPIC_LVT_MASKED = common dso_local global i32 0, align 4
@LAPIC_LVT_PERIODIC = common dso_local global i32 0, align 4
@periodic = common dso_local global i64 0, align 8
@TIMER_DIVIDE_CONFIG = common dso_local global i32 0, align 4
@TIMER_INITIAL_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapic_set_timer(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 (...) @mp_disable_preemption()
  %11 = load i32, i32* @LVT_TIMER, align 4
  %12 = call i32 @LAPIC_READ(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @LAPIC_LVT_MASKED, align 4
  %14 = load i32, i32* @LAPIC_LVT_PERIODIC, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %9, align 4
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @LAPIC_LVT_MASKED, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ 0, %21 ], [ %23, %22 ]
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @periodic, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @LAPIC_LVT_PERIODIC, align 4
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @LVT_TIMER, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @LAPIC_WRITE(i32 %38, i32 %39)
  %41 = load i32, i32* @TIMER_DIVIDE_CONFIG, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @LAPIC_WRITE(i32 %41, i32 %42)
  %44 = load i32, i32* @TIMER_INITIAL_COUNT, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @LAPIC_WRITE(i32 %44, i32 %45)
  %47 = call i32 (...) @mp_enable_preemption()
  ret void
}

declare dso_local i32 @mp_disable_preemption(...) #1

declare dso_local i32 @LAPIC_READ(i32) #1

declare dso_local i32 @LAPIC_WRITE(i32, i32) #1

declare dso_local i32 @mp_enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
