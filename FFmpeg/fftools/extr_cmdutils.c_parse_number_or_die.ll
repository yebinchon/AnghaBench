; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_parse_number_or_die.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_parse_number_or_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Expected number for %s but found: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"The value for %s was %s which is not within %f - %f\0A\00", align 1
@OPT_INT64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Expected int64 for %s but found %s\0A\00", align 1
@OPT_INT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Expected int for %s but found %s\0A\00", align 1
@AV_LOG_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @parse_number_or_die(i8* %0, i8* %1, i32 %2, double %3, double %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca double, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call double @av_strtod(i8* %15, i8** %12)
  store double %16, double* %14, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %55

21:                                               ; preds = %5
  %22 = load double, double* %14, align 8
  %23 = load double, double* %10, align 8
  %24 = fcmp olt double %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load double, double* %14, align 8
  %27 = load double, double* %11, align 8
  %28 = fcmp ogt double %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %54

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @OPT_INT64, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load double, double* %14, align 8
  %36 = load double, double* %14, align 8
  %37 = fcmp une double %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %53

39:                                               ; preds = %34, %30
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @OPT_INT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load double, double* %14, align 8
  %45 = fptosi double %44 to i32
  %46 = sitofp i32 %45 to double
  %47 = load double, double* %14, align 8
  %48 = fcmp une double %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %52

50:                                               ; preds = %43, %39
  %51 = load double, double* %14, align 8
  store double %51, double* %6, align 8
  br label %64

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %38
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %54, %20
  %56 = load i32, i32* @AV_LOG_FATAL, align 4
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load double, double* %10, align 8
  %61 = load double, double* %11, align 8
  %62 = call i32 @av_log(i32* null, i32 %56, i8* %57, i8* %58, i8* %59, double %60, double %61)
  %63 = call i32 @exit_program(i32 1)
  store double 0.000000e+00, double* %6, align 8
  br label %64

64:                                               ; preds = %55, %50
  %65 = load double, double* %6, align 8
  ret double %65
}

declare dso_local double @av_strtod(i8*, i8**) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i8*, double, double) #1

declare dso_local i32 @exit_program(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
