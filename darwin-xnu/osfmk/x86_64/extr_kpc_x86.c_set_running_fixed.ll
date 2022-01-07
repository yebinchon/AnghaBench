; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_kpc_x86.c_set_running_fixed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_kpc_x86.c_set_running_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA32_FIXED_CTR_ENABLE_ALL_CTRS_ALL_RINGS = common dso_local global i64 0, align 8
@IA32_FIXED_CTR_ENABLE_ALL_PMI = common dso_local global i64 0, align 8
@MSR_IA32_PERF_FIXED_CTR_CTRL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MSR_IA32_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @set_running_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_running_fixed(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i64, i64* @IA32_FIXED_CTR_ENABLE_ALL_CTRS_ALL_RINGS, align 8
  %12 = load i64, i64* @IA32_FIXED_CTR_ENABLE_ALL_PMI, align 8
  %13 = or i64 %11, %12
  store i64 %13, i64* %5, align 8
  br label %15

14:                                               ; preds = %1
  br label %56

15:                                               ; preds = %10
  %16 = load i32, i32* @MSR_IA32_PERF_FIXED_CTR_CTRL, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @wrmsr64(i32 %16, i64 %17)
  %19 = load i64, i64* @FALSE, align 8
  %20 = call i64 @ml_set_interrupts_enabled(i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* @MSR_IA32_PERF_GLOBAL_CTRL, align 4
  %22 = call i64 @rdmsr64(i32 %21)
  store i64 %22, i64* %3, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %35, %15
  %24 = load i32, i32* %6, align 4
  %25 = call i64 (...) @kpc_fixed_count()
  %26 = trunc i64 %25 to i32
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 32, %29
  %31 = zext i32 %30 to i64
  %32 = shl i64 1, %31
  %33 = load i64, i64* %4, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load i64, i64* %2, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %3, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %3, align 8
  br label %50

45:                                               ; preds = %38
  %46 = load i64, i64* %4, align 8
  %47 = xor i64 %46, -1
  %48 = load i64, i64* %3, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* @MSR_IA32_PERF_GLOBAL_CTRL, align 4
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @wrmsr64(i32 %51, i64 %52)
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @ml_set_interrupts_enabled(i64 %54)
  br label %56

56:                                               ; preds = %50, %14
  ret void
}

declare dso_local i32 @wrmsr64(i32, i64) #1

declare dso_local i64 @ml_set_interrupts_enabled(i64) #1

declare dso_local i64 @rdmsr64(i32) #1

declare dso_local i64 @kpc_fixed_count(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
