; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_smm_restore.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_smm_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lapic_os_enabled = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@LAPIC_REDUCED_INTERRUPT_BASE = common dso_local global i32 0, align 4
@TIMER = common dso_local global i32 0, align 4
@TIMER_CURRENT_COUNT = common dso_local global i32 0, align 4
@TIMER_INITIAL_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"lapic_smm_restore\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapic_smm_restore() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @lapic_os_enabled, align 8
  %3 = load i64, i64* @FALSE, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %26

6:                                                ; preds = %0
  %7 = load i64, i64* @FALSE, align 8
  %8 = call i64 @ml_set_interrupts_enabled(i64 %7)
  store i64 %8, i64* %1, align 8
  %9 = load i32, i32* @LAPIC_REDUCED_INTERRUPT_BASE, align 4
  %10 = load i32, i32* @TIMER, align 4
  %11 = call i64 @LAPIC_ISR_IS_SET(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %6
  %14 = call i32 (...) @_lapic_end_of_interrupt()
  %15 = load i32, i32* @TIMER_CURRENT_COUNT, align 4
  %16 = call i64 @LAPIC_READ(i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @TIMER_INITIAL_COUNT, align 4
  %20 = call i32 @LAPIC_WRITE(i32 %19, i32 1)
  br label %21

21:                                               ; preds = %18, %13
  %22 = call i32 @kprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %6
  %24 = load i64, i64* %1, align 8
  %25 = call i64 @ml_set_interrupts_enabled(i64 %24)
  br label %26

26:                                               ; preds = %23, %5
  ret void
}

declare dso_local i64 @ml_set_interrupts_enabled(i64) #1

declare dso_local i64 @LAPIC_ISR_IS_SET(i32, i32) #1

declare dso_local i32 @_lapic_end_of_interrupt(...) #1

declare dso_local i64 @LAPIC_READ(i32) #1

declare dso_local i32 @LAPIC_WRITE(i32, i32) #1

declare dso_local i32 @kprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
