; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/mktimer/extr_mktimer_test.c_cfmcb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/mktimer/extr_mktimer_test.c_cfmcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@deadline = common dso_local global double 0.000000e+00, align 8
@max_jitter = common dso_local global double 0.000000e+00, align 8
@min_jitter = common dso_local global double 0.000000e+00, align 8
@totaljitter = common dso_local global double 0.000000e+00, align 8
@jiterations = common dso_local global i32 0, align 4
@report = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"max_jitter: %g (ns), min_jitter: %g (ns), average_jitter: %g (ns)\0A\00", align 1
@conversion = common dso_local global double 0.000000e+00, align 8
@interval_abs = common dso_local global double 0.000000e+00, align 8
@use_leeway = common dso_local global i64 0, align 8
@timerPort = common dso_local global i32 0, align 4
@MK_TIMER_CRITICAL = common dso_local global i32 0, align 4
@leeway_abs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfmcb(i32 %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = call double (...) @mach_absolute_time()
  store double %11, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  %12 = load double, double* @deadline, align 8
  %13 = fcmp une double %12, 0.000000e+00
  br i1 %13, label %14, label %53

14:                                               ; preds = %4
  %15 = load double, double* %9, align 8
  %16 = load double, double* @deadline, align 8
  %17 = fsub double %15, %16
  store double %17, double* %10, align 8
  %18 = load double, double* %10, align 8
  %19 = load double, double* @max_jitter, align 8
  %20 = fcmp ogt double %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load double, double* %10, align 8
  store double %22, double* @max_jitter, align 8
  br label %23

23:                                               ; preds = %21, %14
  %24 = load double, double* %10, align 8
  %25 = load double, double* @min_jitter, align 8
  %26 = fcmp olt double %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load double, double* %10, align 8
  store double %28, double* @min_jitter, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = load double, double* %10, align 8
  %31 = load double, double* @totaljitter, align 8
  %32 = fadd double %31, %30
  store double %32, double* @totaljitter, align 8
  %33 = load i32, i32* @jiterations, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @jiterations, align 4
  %35 = load i32, i32* @report, align 4
  %36 = srem i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %29
  %39 = load double, double* @max_jitter, align 8
  %40 = load double, double* @conversion, align 8
  %41 = fmul double %39, %40
  %42 = load double, double* @min_jitter, align 8
  %43 = load double, double* @conversion, align 8
  %44 = fmul double %42, %43
  %45 = load double, double* @totaljitter, align 8
  %46 = load i32, i32* @jiterations, align 4
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %45, %47
  %49 = load double, double* @conversion, align 8
  %50 = fmul double %48, %49
  %51 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), double %41, double %44, double %50)
  store double 0.000000e+00, double* @max_jitter, align 8
  store double 0x43F0000000000000, double* @min_jitter, align 8
  store i32 0, i32* @jiterations, align 4
  store double 0.000000e+00, double* @totaljitter, align 8
  br label %52

52:                                               ; preds = %38, %29
  br label %53

53:                                               ; preds = %52, %4
  %54 = call double (...) @mach_absolute_time()
  %55 = load double, double* @interval_abs, align 8
  %56 = fadd double %54, %55
  store double %56, double* @deadline, align 8
  %57 = load i64, i64* @use_leeway, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @timerPort, align 4
  %61 = load i32, i32* @MK_TIMER_CRITICAL, align 4
  %62 = load double, double* @deadline, align 8
  %63 = load i32, i32* @leeway_abs, align 4
  %64 = call i32 @mk_timer_arm_leeway(i32 %60, i32 %61, double %62, i32 %63)
  br label %69

65:                                               ; preds = %53
  %66 = load i32, i32* @timerPort, align 4
  %67 = load double, double* @deadline, align 8
  %68 = call i32 @mk_timer_arm(i32 %66, double %67)
  br label %69

69:                                               ; preds = %65, %59
  ret void
}

declare dso_local double @mach_absolute_time(...) #1

declare dso_local i32 @printf(i8*, double, double, double) #1

declare dso_local i32 @mk_timer_arm_leeway(i32, i32, double, i32) #1

declare dso_local i32 @mk_timer_arm(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
