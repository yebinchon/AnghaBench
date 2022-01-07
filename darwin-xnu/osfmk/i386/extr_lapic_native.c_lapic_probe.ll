; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_probe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPUID_FEATURE_APIC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MSR_IA32_APIC_BASE = common dso_local global i32 0, align 4
@MSR_IA32_APIC_BASE_BASE = common dso_local global i32 0, align 4
@MSR_IA32_APIC_BASE_ENABLE = common dso_local global i32 0, align 4
@LAPIC_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Local APIC discovered and enabled\0A\00", align 1
@lapic_os_enabled = common dso_local global i32 0, align 4
@LAPIC_REDUCED_INTERRUPT_BASE = common dso_local global i32 0, align 4
@lapic_interrupt_base = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lapic_probe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @cpuid_features()
  %5 = load i32, i32* @CPUID_FEATURE_APIC, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @TRUE, align 4
  store i32 %9, i32* %1, align 4
  br label %50

10:                                               ; preds = %0
  %11 = call i32 (...) @cpuid_family()
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call i32 (...) @cpuid_family()
  %15 = icmp eq i32 %14, 15
  br i1 %15, label %16, label %48

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @MSR_IA32_APIC_BASE, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @rdmsr(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @MSR_IA32_APIC_BASE_BASE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* @MSR_IA32_APIC_BASE_ENABLE, align 4
  %26 = load i32, i32* @LAPIC_START, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %2, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* @MSR_IA32_APIC_BASE_ENABLE, align 4
  %31 = load i32, i32* %2, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* @MSR_IA32_APIC_BASE, align 4
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @wrmsr(i32 %33, i32 %34, i32 %35)
  %37 = call i32 (...) @cpuid_set_info()
  %38 = call i32 (...) @cpuid_features()
  %39 = load i32, i32* @CPUID_FEATURE_APIC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %16
  %43 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* @lapic_os_enabled, align 4
  %45 = load i32, i32* @LAPIC_REDUCED_INTERRUPT_BASE, align 4
  store i32 %45, i32* @lapic_interrupt_base, align 4
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %1, align 4
  br label %50

47:                                               ; preds = %16
  br label %48

48:                                               ; preds = %47, %13
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %48, %42, %8
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i32 @cpuid_features(...) #1

declare dso_local i32 @cpuid_family(...) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @cpuid_set_info(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
