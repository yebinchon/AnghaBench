; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_disable_timer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_disable_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LVT_TIMER = common dso_local global i32 0, align 4
@LAPIC_LVT_TSC_DEADLINE = common dso_local global i32 0, align 4
@MSR_IA32_TSC_DEADLINE = common dso_local global i32 0, align 4
@LAPIC_LVT_MASKED = common dso_local global i32 0, align 4
@TIMER_INITIAL_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapic_disable_timer() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @LVT_TIMER, align 4
  %3 = call i32 @LAPIC_READ(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @LAPIC_LVT_TSC_DEADLINE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @MSR_IA32_TSC_DEADLINE, align 4
  %10 = call i32 @wrmsr64(i32 %9, i32 0)
  br label %21

11:                                               ; preds = %0
  %12 = load i32, i32* @LVT_TIMER, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @LAPIC_LVT_MASKED, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @LAPIC_WRITE(i32 %12, i32 %15)
  %17 = load i32, i32* @TIMER_INITIAL_COUNT, align 4
  %18 = call i32 @LAPIC_WRITE(i32 %17, i32 0)
  %19 = load i32, i32* @LVT_TIMER, align 4
  %20 = call i32 @LAPIC_READ(i32 %19)
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @LAPIC_READ(i32) #1

declare dso_local i32 @wrmsr64(i32, i32) #1

declare dso_local i32 @LAPIC_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
