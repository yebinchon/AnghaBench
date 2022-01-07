; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/jitter/extr_timer_jitter.c_print_stats_us.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/jitter/extr_timer_jitter.c_print_stats_us.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Max %s: %.1lfus\0A\00", align 1
@g_mti = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Min %s: %.1lfus\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Avg magnitude of %s: %.1lfus\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Stddev: %.1lfus\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_stats_us(i8* %0, double %1, double %2, double %3, double %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load double, double* %8, align 8
  %13 = fdiv double %12, 1.000000e+03
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mti, i32 0, i32 1), align 8
  %15 = sitofp i64 %14 to double
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mti, i32 0, i32 0), align 8
  %17 = sitofp i64 %16 to double
  %18 = fdiv double %15, %17
  %19 = fmul double %13, %18
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %11, double %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load double, double* %9, align 8
  %23 = fdiv double %22, 1.000000e+03
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mti, i32 0, i32 1), align 8
  %25 = sitofp i64 %24 to double
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mti, i32 0, i32 0), align 8
  %27 = sitofp i64 %26 to double
  %28 = fdiv double %25, %27
  %29 = fmul double %23, %28
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %21, double %29)
  %31 = load i8*, i8** %6, align 8
  %32 = load double, double* %7, align 8
  %33 = fdiv double %32, 1.000000e+03
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mti, i32 0, i32 1), align 8
  %35 = sitofp i64 %34 to double
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mti, i32 0, i32 0), align 8
  %37 = sitofp i64 %36 to double
  %38 = fdiv double %35, %37
  %39 = fmul double %33, %38
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %31, double %39)
  %41 = load double, double* %10, align 8
  %42 = fdiv double %41, 1.000000e+03
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mti, i32 0, i32 1), align 8
  %44 = sitofp i64 %43 to double
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mti, i32 0, i32 0), align 8
  %46 = sitofp i64 %45 to double
  %47 = fdiv double %44, %46
  %48 = fmul double %42, %47
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), double %48)
  %50 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
