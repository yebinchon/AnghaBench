; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/jitter/extr_timer_jitter.c_print_stats_fract.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/jitter/extr_timer_jitter.c_print_stats_fract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Max %s jitter: %.1lf%%\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Min %s jitter: %.1lf%%\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Avg %s jitter: %.1lf%%\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Stddev: %.1lf%%\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_stats_fract(i8* %0, double %1, double %2, double %3, double %4) #0 {
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
  %13 = fmul double %12, 1.000000e+02
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %11, double %13)
  %15 = load i8*, i8** %6, align 8
  %16 = load double, double* %9, align 8
  %17 = fmul double %16, 1.000000e+02
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %15, double %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load double, double* %7, align 8
  %21 = fmul double %20, 1.000000e+02
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %19, double %21)
  %23 = load double, double* %10, align 8
  %24 = fmul double %23, 1.000000e+02
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), double %24)
  %26 = call i32 @putchar(i8 signext 10)
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
