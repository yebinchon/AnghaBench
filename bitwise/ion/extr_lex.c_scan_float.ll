; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_lex.c_scan_float.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_lex.c_scan_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, i32, i32 }

@stream = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [57 x i8] c"Expected digit after float literal exponent, found '%c'.\00", align 1
@HUGE_VAL = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Float literal overflow\00", align 1
@TOKEN_FLOAT = common dso_local global i32 0, align 4
@token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SUFFIX_D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scan_float() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca double, align 8
  %3 = load i8*, i8** @stream, align 8
  store i8* %3, i8** %1, align 8
  br label %4

4:                                                ; preds = %9, %0
  %5 = load i8*, i8** @stream, align 8
  %6 = load i8, i8* %5, align 1
  %7 = call i64 @isdigit(i8 signext %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i8*, i8** @stream, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** @stream, align 8
  br label %4

12:                                               ; preds = %4
  %13 = load i8*, i8** @stream, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 46
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** @stream, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** @stream, align 8
  br label %20

20:                                               ; preds = %17, %12
  br label %21

21:                                               ; preds = %26, %20
  %22 = load i8*, i8** @stream, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @isdigit(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** @stream, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** @stream, align 8
  br label %21

29:                                               ; preds = %21
  %30 = load i8*, i8** @stream, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call signext i8 @tolower(i8 signext %31)
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 101
  br i1 %34, label %35, label %70

35:                                               ; preds = %29
  %36 = load i8*, i8** @stream, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** @stream, align 8
  %38 = load i8*, i8** @stream, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** @stream, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %35
  %48 = load i8*, i8** @stream, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** @stream, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i8*, i8** @stream, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @isdigit(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** @stream, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = call i32 (i8*, ...) @error_here(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %66, %60
  %62 = load i8*, i8** @stream, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isdigit(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** @stream, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** @stream, align 8
  br label %61

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %29
  %71 = load i8*, i8** %1, align 8
  %72 = call double @strtod(i8* %71, i32* null)
  store double %72, double* %2, align 8
  %73 = load double, double* %2, align 8
  %74 = load double, double* @HUGE_VAL, align 8
  %75 = fcmp oeq double %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 (i8*, ...) @error_here(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %70
  %79 = load i32, i32* @TOKEN_FLOAT, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 2), align 4
  %80 = load double, double* %2, align 8
  store double %80, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 0), align 8
  %81 = load i8*, i8** @stream, align 8
  %82 = load i8, i8* %81, align 1
  %83 = call signext i8 @tolower(i8 signext %82)
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 100
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* @SUFFIX_D, align 4
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 1), align 8
  %88 = load i8*, i8** @stream, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** @stream, align 8
  br label %90

90:                                               ; preds = %86, %78
  ret void
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @error_here(i8*, ...) #1

declare dso_local double @strtod(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
