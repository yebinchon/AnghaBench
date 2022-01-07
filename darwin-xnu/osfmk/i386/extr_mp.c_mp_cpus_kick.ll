; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_mp_cpus_kick.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_mp_cpus_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@x86_topo_lock = common dso_local global i32 0, align 4
@real_ncpus = common dso_local global i64 0, align 8
@KICK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_cpus_kick(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @FALSE, align 4
  %7 = call i32 @ml_set_interrupts_enabled(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = call i32 @mp_safe_spin_lock(i32* @x86_topo_lock)
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %33, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @real_ncpus, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = call i64 (...) @cpu_number()
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @cpu_to_cpumask(i64 %18)
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @cpu_is_running(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %17, %13
  br label %33

28:                                               ; preds = %23
  %29 = load i64, i64* %3, align 8
  %30 = load i32, i32* @KICK, align 4
  %31 = call i32 @LAPIC_VECTOR(i32 %30)
  %32 = call i32 @lapic_send_ipi(i64 %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i64, i64* %3, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %3, align 8
  br label %9

36:                                               ; preds = %9
  %37 = call i32 @simple_unlock(i32* @x86_topo_lock)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ml_set_interrupts_enabled(i32 %38)
  ret void
}

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @mp_safe_spin_lock(i32*) #1

declare dso_local i64 @cpu_number(...) #1

declare dso_local i32 @cpu_to_cpumask(i64) #1

declare dso_local i32 @cpu_is_running(i64) #1

declare dso_local i32 @lapic_send_ipi(i64, i32) #1

declare dso_local i32 @LAPIC_VECTOR(i32) #1

declare dso_local i32 @simple_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
