; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_monotonic_core.c_perf_sysctl_deltas.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_monotonic_core.c_perf_sysctl_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_SETUPBEGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"instructions\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s_instrs\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s_cycles\00", align 1
@T_SETUPEND = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"sysctlbyname(\22%s\22, ...)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @perf_sysctl_deltas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_sysctl_deltas(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @T_SETUPBEGIN, align 4
  %11 = call i32 (...) @skip_if_unsupported()
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @dt_stat_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @dt_stat_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @T_SETUPEND, align 4
  br label %17

17:                                               ; preds = %28, %2
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @dt_stat_stable(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @dt_stat_stable(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i1 [ true, %17 ], [ %25, %21 ]
  br i1 %27, label %28, label %46

28:                                               ; preds = %26
  store i64 16, i64* %6, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %31 = call i32 @sysctlbyname(i8* %29, i64* %30, i64* %6, i32* null, i32 0)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @T_QUIET, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %38 = load i64, i64* %37, align 16
  %39 = sitofp i64 %38 to double
  %40 = call i32 @dt_stat_add(i32 %36, double %39)
  %41 = load i32, i32* %9, align 4
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to double
  %45 = call i32 @dt_stat_add(i32 %41, double %44)
  br label %17

46:                                               ; preds = %26
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @dt_stat_finalize(i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @dt_stat_finalize(i32 %49)
  ret void
}

declare dso_local i32 @skip_if_unsupported(...) #1

declare dso_local i32 @dt_stat_create(i8*, i8*, i8*) #1

declare dso_local i32 @dt_stat_stable(i32) #1

declare dso_local i32 @sysctlbyname(i8*, i64*, i64*, i32*, i32) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*, i8*) #1

declare dso_local i32 @dt_stat_add(i32, double) #1

declare dso_local i32 @dt_stat_finalize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
