; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_config_tsc_deadline_timer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_config_tsc_deadline_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"lapic_config_tsc_deadline_timer()\0A\00", align 1
@LVT_TIMER = common dso_local global i32 0, align 4
@LAPIC_LVT_MASKED = common dso_local global i32 0, align 4
@LAPIC_LVT_PERIODIC = common dso_local global i32 0, align 4
@LAPIC_LVT_TSC_DEADLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"lapic_config_tsc_deadline_timer() done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapic_config_tsc_deadline_timer() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @mp_disable_preemption()
  %4 = load i32, i32* @LVT_TIMER, align 4
  %5 = call i32 @LAPIC_READ(i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @LAPIC_LVT_MASKED, align 4
  %7 = load i32, i32* @LAPIC_LVT_PERIODIC, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @LAPIC_LVT_TSC_DEADLINE, align 4
  %13 = load i32, i32* %1, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @LVT_TIMER, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @LAPIC_WRITE(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %22, %0
  %19 = call i64 (...) @rdtsc64()
  %20 = add i64 %19, 4294967296
  %21 = call i32 @lapic_set_tsc_deadline_timer(i64 %20)
  br label %22

22:                                               ; preds = %18
  %23 = call i64 (...) @lapic_get_tsc_deadline_timer()
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %18, label %25

25:                                               ; preds = %22
  %26 = call i32 @lapic_set_tsc_deadline_timer(i64 0)
  %27 = call i32 (...) @mp_enable_preemption()
  %28 = call i32 @DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @mp_disable_preemption(...) #1

declare dso_local i32 @LAPIC_READ(i32) #1

declare dso_local i32 @LAPIC_WRITE(i32, i32) #1

declare dso_local i32 @lapic_set_tsc_deadline_timer(i64) #1

declare dso_local i64 @rdtsc64(...) #1

declare dso_local i64 @lapic_get_tsc_deadline_timer(...) #1

declare dso_local i32 @mp_enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
