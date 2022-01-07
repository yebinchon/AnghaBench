; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mtrr.c_mtrr_set_fix_ranges.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mtrr.c_mtrr_set_fix_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtrr_fix_range = type { i32 }

@MSR_IA32_MTRR_FIX64K_00000 = common dso_local global i64 0, align 8
@MSR_IA32_MTRR_FIX16K_80000 = common dso_local global i64 0, align 8
@MSR_IA32_MTRR_FIX16K_A0000 = common dso_local global i64 0, align 8
@MSR_IA32_MTRR_FIX4K_C0000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtrr_fix_range*)* @mtrr_set_fix_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtrr_set_fix_ranges(%struct.mtrr_fix_range* %0) #0 {
  %2 = alloca %struct.mtrr_fix_range*, align 8
  %3 = alloca i32, align 4
  store %struct.mtrr_fix_range* %0, %struct.mtrr_fix_range** %2, align 8
  %4 = load i64, i64* @MSR_IA32_MTRR_FIX64K_00000, align 8
  %5 = load %struct.mtrr_fix_range*, %struct.mtrr_fix_range** %2, align 8
  %6 = getelementptr inbounds %struct.mtrr_fix_range, %struct.mtrr_fix_range* %5, i64 0
  %7 = getelementptr inbounds %struct.mtrr_fix_range, %struct.mtrr_fix_range* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @wrmsr64(i64 %4, i32 %8)
  %10 = load i64, i64* @MSR_IA32_MTRR_FIX16K_80000, align 8
  %11 = load %struct.mtrr_fix_range*, %struct.mtrr_fix_range** %2, align 8
  %12 = getelementptr inbounds %struct.mtrr_fix_range, %struct.mtrr_fix_range* %11, i64 1
  %13 = getelementptr inbounds %struct.mtrr_fix_range, %struct.mtrr_fix_range* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @wrmsr64(i64 %10, i32 %14)
  %16 = load i64, i64* @MSR_IA32_MTRR_FIX16K_A0000, align 8
  %17 = load %struct.mtrr_fix_range*, %struct.mtrr_fix_range** %2, align 8
  %18 = getelementptr inbounds %struct.mtrr_fix_range, %struct.mtrr_fix_range* %17, i64 2
  %19 = getelementptr inbounds %struct.mtrr_fix_range, %struct.mtrr_fix_range* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wrmsr64(i64 %16, i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %38, %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i64, i64* @MSR_IA32_MTRR_FIX4K_C0000, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load %struct.mtrr_fix_range*, %struct.mtrr_fix_range** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 3, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mtrr_fix_range, %struct.mtrr_fix_range* %30, i64 %33
  %35 = getelementptr inbounds %struct.mtrr_fix_range, %struct.mtrr_fix_range* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wrmsr64(i64 %29, i32 %36)
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %22

41:                                               ; preds = %22
  ret void
}

declare dso_local i32 @wrmsr64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
