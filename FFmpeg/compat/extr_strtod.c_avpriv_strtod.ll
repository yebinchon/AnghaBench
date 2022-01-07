; ModuleID = '/home/carl/AnghaBench/FFmpeg/compat/extr_strtod.c_avpriv_strtod.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/compat/extr_strtod.c_avpriv_strtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@INFINITY = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"+infinity\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"+inf\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"-infinity\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@NAN = common dso_local global double 0.000000e+00, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"+nan\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-nan\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"-0x\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"+0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @avpriv_strtod(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  br label %7

7:                                                ; preds = %12, %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = call i64 @av_isspace(i8 signext %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 8
  br label %7

15:                                               ; preds = %7
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @av_strncasecmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  store i8* %21, i8** %5, align 8
  %22 = load double, double* @INFINITY, align 8
  store double %22, double* %6, align 8
  br label %113

23:                                               ; preds = %15
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @av_strncasecmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  store i8* %29, i8** %5, align 8
  %30 = load double, double* @INFINITY, align 8
  store double %30, double* %6, align 8
  br label %112

31:                                               ; preds = %23
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @av_strncasecmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 9
  store i8* %37, i8** %5, align 8
  %38 = load double, double* @INFINITY, align 8
  store double %38, double* %6, align 8
  br label %111

39:                                               ; preds = %31
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @av_strncasecmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %45, i8** %5, align 8
  %46 = load double, double* @INFINITY, align 8
  store double %46, double* %6, align 8
  br label %110

47:                                               ; preds = %39
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @av_strncasecmp(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 9
  store i8* %53, i8** %5, align 8
  %54 = load double, double* @INFINITY, align 8
  %55 = fneg double %54
  store double %55, double* %6, align 8
  br label %109

56:                                               ; preds = %47
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @av_strncasecmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 4
  store i8* %62, i8** %5, align 8
  %63 = load double, double* @INFINITY, align 8
  %64 = fneg double %63
  store double %64, double* %6, align 8
  br label %108

65:                                               ; preds = %56
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @av_strncasecmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %3, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  %72 = call i8* @check_nan_suffix(i8* %71)
  store i8* %72, i8** %5, align 8
  %73 = load double, double* @NAN, align 8
  store double %73, double* %6, align 8
  br label %107

74:                                               ; preds = %65
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @av_strncasecmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 @av_strncasecmp(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78, %74
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 4
  %85 = call i8* @check_nan_suffix(i8* %84)
  store i8* %85, i8** %5, align 8
  %86 = load double, double* @NAN, align 8
  store double %86, double* %6, align 8
  br label %106

87:                                               ; preds = %78
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @av_strncasecmp(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 2)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @av_strncasecmp(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @av_strncasecmp(i8* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 3)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95, %91, %87
  %100 = load i8*, i8** %3, align 8
  %101 = call double @strtoll(i8* %100, i8** %5, i32 16)
  store double %101, double* %6, align 8
  br label %105

102:                                              ; preds = %95
  %103 = load i8*, i8** %3, align 8
  %104 = call double @strtod(i8* %103, i8** %5)
  store double %104, double* %6, align 8
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %82
  br label %107

107:                                              ; preds = %106, %69
  br label %108

108:                                              ; preds = %107, %60
  br label %109

109:                                              ; preds = %108, %51
  br label %110

110:                                              ; preds = %109, %43
  br label %111

111:                                              ; preds = %110, %35
  br label %112

112:                                              ; preds = %111, %27
  br label %113

113:                                              ; preds = %112, %19
  %114 = load i8**, i8*** %4, align 8
  %115 = icmp ne i8** %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i8*, i8** %5, align 8
  %118 = load i8**, i8*** %4, align 8
  store i8* %117, i8** %118, align 8
  br label %119

119:                                              ; preds = %116, %113
  %120 = load double, double* %6, align 8
  ret double %120
}

declare dso_local i64 @av_isspace(i8 signext) #1

declare dso_local i32 @av_strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @check_nan_suffix(i8*) #1

declare dso_local double @strtoll(i8*, i8**, i32) #1

declare dso_local double @strtod(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
