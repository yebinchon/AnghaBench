; ModuleID = '/home/carl/AnghaBench/disque/src/extr_util.c_d2string.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_util.c_d2string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d2string(i8* %0, i64 %1, double %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %6, align 8
  %8 = call i64 @isnan(double %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %11, i64 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %13, i64* %5, align 8
  br label %53

14:                                               ; preds = %3
  %15 = load double, double* %6, align 8
  %16 = call i64 @isinf(double %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load double, double* %6, align 8
  %20 = fcmp olt double %19, 0.000000e+00
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %22, i64 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 %24, i64* %5, align 8
  br label %29

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %25, %21
  br label %52

30:                                               ; preds = %14
  %31 = load double, double* %6, align 8
  %32 = fcmp oeq double %31, 0.000000e+00
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load double, double* %6, align 8
  %35 = fdiv double 1.000000e+00, %34
  %36 = fcmp olt double %35, 0.000000e+00
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %38, i64 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i64 %40, i64* %5, align 8
  br label %45

41:                                               ; preds = %33
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %42, i64 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %41, %37
  br label %51

46:                                               ; preds = %30
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load double, double* %6, align 8
  %50 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %47, i64 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double %49)
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %46, %45
  br label %52

52:                                               ; preds = %51, %29
  br label %53

53:                                               ; preds = %52, %10
  %54 = load i64, i64* %5, align 8
  %55 = trunc i64 %54 to i32
  ret i32 %55
}

declare dso_local i64 @isnan(double) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @isinf(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
