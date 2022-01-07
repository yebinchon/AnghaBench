; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_kpc_x86.c_set_running_configurable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_kpc_x86.c_set_running_configurable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@MSR_IA32_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@IA32_PERFEVTSEL_PMI = common dso_local global i32 0, align 4
@IA32_PERFEVTSEL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_running_configurable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_running_configurable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = call i64 (...) @kpc_configurable_count()
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @ml_set_interrupts_enabled(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @MSR_IA32_PERF_GLOBAL_CTRL, align 4
  %15 = call i32 @rdmsr64(i32 %14)
  store i32 %15, i32* %6, align 4
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %35, %2
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @IA32_PERFEVTSELx(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @IA32_PMCx(i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IA32_PERFEVTSEL_PMI, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IA32_PERFEVTSEL_EN, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @wrIA32_PERFEVTSELx(i64 %25, i32 %30)
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @wrIA32_PMCx(i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %20
  %36 = load i64, i64* %10, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %10, align 8
  br label %16

38:                                               ; preds = %16
  %39 = load i32, i32* %3, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @MSR_IA32_PERF_GLOBAL_CTRL, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @wrmsr64(i32 %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ml_set_interrupts_enabled(i32 %49)
  ret void
}

declare dso_local i64 @kpc_configurable_count(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @rdmsr64(i32) #1

declare dso_local i32 @IA32_PERFEVTSELx(i64) #1

declare dso_local i32 @IA32_PMCx(i64) #1

declare dso_local i32 @wrIA32_PERFEVTSELx(i64, i32) #1

declare dso_local i32 @wrIA32_PMCx(i64, i32) #1

declare dso_local i32 @wrmsr64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
