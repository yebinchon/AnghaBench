; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_str2double.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_str2double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@PARAM_NUMBER_TOO_LARGE = common dso_local global i32 0, align 4
@PARAM_OK = common dso_local global i32 0, align 4
@PARAM_BAD_NUMERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double*, i8*, i64)* @str2double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str2double(double* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  store double* %0, double** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %3
  store i64 0, i64* @errno, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call double @strtod(i8* %13, i8** %8)
  store double %14, double* %9, align 8
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @ERANGE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @PARAM_NUMBER_TOO_LARGE, align 4
  store i32 %19, i32* %4, align 4
  br label %46

20:                                               ; preds = %12
  %21 = load double, double* %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sitofp i64 %22 to double
  %24 = fcmp ogt double %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @PARAM_NUMBER_TOO_LARGE, align 4
  store i32 %26, i32* %4, align 4
  br label %46

27:                                               ; preds = %20
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = icmp eq i8* %32, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load double, double* %9, align 8
  %41 = load double*, double** %5, align 8
  store double %40, double* %41, align 8
  %42 = load i32, i32* @PARAM_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %46

43:                                               ; preds = %31, %27
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i32, i32* @PARAM_BAD_NUMERIC, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %39, %25, %18
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
