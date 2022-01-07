; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_shutdown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lapic_os_enabled = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@master_cpu = common dso_local global i64 0, align 8
@LVT_LINT0 = common dso_local global i32 0, align 4
@LAPIC_LVT_MASKED = common dso_local global i32 0, align 4
@LVT_ERROR = common dso_local global i32 0, align 4
@LVT_TIMER = common dso_local global i32 0, align 4
@LVT_PERFCNT = common dso_local global i32 0, align 4
@SVR = common dso_local global i32 0, align 4
@LAPIC_SVR_ENABLE = common dso_local global i32 0, align 4
@MSR_IA32_APIC_BASE = common dso_local global i32 0, align 4
@MSR_IA32_APIC_BASE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapic_shutdown() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @lapic_os_enabled, align 8
  %5 = load i64, i64* @FALSE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %62

8:                                                ; preds = %0
  %9 = call i32 (...) @mp_disable_preemption()
  %10 = call i64 (...) @get_cpu_number()
  %11 = load i64, i64* @master_cpu, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load i32, i32* @LVT_LINT0, align 4
  %15 = call i32 @LAPIC_READ(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @LAPIC_LVT_MASKED, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @LVT_LINT0, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @LAPIC_WRITE(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %13, %8
  %23 = load i32, i32* @LVT_ERROR, align 4
  %24 = load i32, i32* @LVT_ERROR, align 4
  %25 = call i32 @LAPIC_READ(i32 %24)
  %26 = load i32, i32* @LAPIC_LVT_MASKED, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @LAPIC_WRITE(i32 %23, i32 %27)
  %29 = load i32, i32* @LVT_TIMER, align 4
  %30 = load i32, i32* @LVT_TIMER, align 4
  %31 = call i32 @LAPIC_READ(i32 %30)
  %32 = load i32, i32* @LAPIC_LVT_MASKED, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @LAPIC_WRITE(i32 %29, i32 %33)
  %35 = load i32, i32* @LVT_PERFCNT, align 4
  %36 = load i32, i32* @LVT_PERFCNT, align 4
  %37 = call i32 @LAPIC_READ(i32 %36)
  %38 = load i32, i32* @LAPIC_LVT_MASKED, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @LAPIC_WRITE(i32 %35, i32 %39)
  %41 = load i32, i32* @SVR, align 4
  %42 = load i32, i32* @SVR, align 4
  %43 = call i32 @LAPIC_READ(i32 %42)
  %44 = load i32, i32* @LAPIC_SVR_ENABLE, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = call i32 @LAPIC_WRITE(i32 %41, i32 %46)
  %48 = load i32, i32* @MSR_IA32_APIC_BASE, align 4
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @rdmsr(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @MSR_IA32_APIC_BASE_ENABLE, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %1, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* @MSR_IA32_APIC_BASE, align 4
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @wrmsr(i32 %56, i32 %57, i32 %58)
  %60 = call i32 (...) @cpuid_set_info()
  %61 = call i32 (...) @mp_enable_preemption()
  br label %62

62:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @mp_disable_preemption(...) #1

declare dso_local i64 @get_cpu_number(...) #1

declare dso_local i32 @LAPIC_READ(i32) #1

declare dso_local i32 @LAPIC_WRITE(i32, i32) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @cpuid_set_info(...) #1

declare dso_local i32 @mp_enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
