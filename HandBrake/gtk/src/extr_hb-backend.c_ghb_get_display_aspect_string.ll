; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_get_display_aspect_string.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_get_display_aspect_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%.2f:1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%.4g:9\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%.4g:3\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ghb_get_display_aspect_string(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %9 = load double, double* %3, align 8
  %10 = fmul double %9, 9.000000e+00
  %11 = load double, double* %4, align 8
  %12 = fdiv double %10, %11
  %13 = fptosi double %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load double, double* %3, align 8
  %15 = load double, double* %4, align 8
  %16 = fmul double 2.000000e+00, %15
  %17 = fcmp ogt double %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load double, double* %3, align 8
  %20 = load double, double* %4, align 8
  %21 = fdiv double %19, %20
  %22 = fptosi double %21 to i32
  %23 = call i8* (i8*, i32, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i8* %23, i8** %5, align 8
  br label %59

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp sle i32 %25, 16
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 15
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load double, double* %3, align 8
  %32 = fmul double %31, 9.000000e+00
  %33 = load double, double* %4, align 8
  %34 = fdiv double %32, %33
  %35 = fptosi double %34 to i32
  %36 = call i8* (i8*, i32, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i8* %36, i8** %5, align 8
  br label %58

37:                                               ; preds = %27, %24
  %38 = load i32, i32* %6, align 4
  %39 = icmp sle i32 %38, 12
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp sge i32 %41, 11
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load double, double* %3, align 8
  %45 = fmul double %44, 3.000000e+00
  %46 = load double, double* %4, align 8
  %47 = fdiv double %45, %46
  %48 = fptosi double %47 to i32
  %49 = call i8* (i8*, i32, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  store i8* %49, i8** %5, align 8
  br label %57

50:                                               ; preds = %40, %37
  %51 = load double, double* %3, align 8
  %52 = load double, double* %4, align 8
  %53 = call i32 @hb_reduce(i32* %7, i32* %8, double %51, double %52)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i8* (i8*, i32, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %55)
  store i8* %56, i8** %5, align 8
  br label %57

57:                                               ; preds = %50, %43
  br label %58

58:                                               ; preds = %57, %30
  br label %59

59:                                               ; preds = %58, %18
  %60 = load i8*, i8** %5, align 8
  ret i8* %60
}

declare dso_local i8* @g_strdup_printf(i8*, i32, ...) #1

declare dso_local i32 @hb_reduce(i32*, i32*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
