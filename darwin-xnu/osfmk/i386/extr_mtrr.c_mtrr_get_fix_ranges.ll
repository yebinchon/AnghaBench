; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mtrr.c_mtrr_get_fix_ranges.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mtrr.c_mtrr_get_fix_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@MSR_IA32_MTRR_FIX64K_00000 = common dso_local global i64 0, align 8
@MSR_IA32_MTRR_FIX16K_80000 = common dso_local global i64 0, align 8
@MSR_IA32_MTRR_FIX16K_A0000 = common dso_local global i64 0, align 8
@MSR_IA32_MTRR_FIX4K_C0000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @mtrr_get_fix_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtrr_get_fix_ranges(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load i64, i64* @MSR_IA32_MTRR_FIX64K_00000, align 8
  %5 = call i8* @rdmsr64(i64 %4)
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i8* %5, i8** %8, align 8
  %9 = load i64, i64* @MSR_IA32_MTRR_FIX16K_80000, align 8
  %10 = call i8* @rdmsr64(i64 %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* %10, i8** %13, align 8
  %14 = load i64, i64* @MSR_IA32_MTRR_FIX16K_A0000, align 8
  %15 = call i8* @rdmsr64(i64 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %34, %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i64, i64* @MSR_IA32_MTRR_FIX4K_C0000, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i8* @rdmsr64(i64 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 3, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i8* %27, i8** %33, align 8
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %19

37:                                               ; preds = %19
  ret void
}

declare dso_local i8* @rdmsr64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
