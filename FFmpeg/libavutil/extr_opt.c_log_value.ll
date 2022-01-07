; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_log_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_log_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [8 x i8] c"INT_MAX\00", align 1
@INT_MIN = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"INT_MIN\00", align 1
@UINT32_MAX = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"UINT32_MAX\00", align 1
@INT64_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"I64_MAX\00", align 1
@INT64_MIN = common dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"I64_MIN\00", align 1
@FLT_MAX = common dso_local global double 0.000000e+00, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"FLT_MAX\00", align 1
@FLT_MIN = common dso_local global double 0.000000e+00, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"FLT_MIN\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"-FLT_MAX\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"-FLT_MIN\00", align 1
@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"DBL_MAX\00", align 1
@DBL_MIN = common dso_local global double 0.000000e+00, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"DBL_MIN\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"-DBL_MAX\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"-DBL_MIN\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, double)* @log_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_value(i8* %0, i32 %1, double %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %7 = load double, double* %6, align 8
  %8 = load double, double* @INT_MAX, align 8
  %9 = fcmp oeq double %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %11, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %132

14:                                               ; preds = %3
  %15 = load double, double* %6, align 8
  %16 = load double, double* @INT_MIN, align 8
  %17 = fcmp oeq double %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %19, i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %131

22:                                               ; preds = %14
  %23 = load double, double* %6, align 8
  %24 = load double, double* @UINT32_MAX, align 8
  %25 = fcmp oeq double %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %27, i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %130

30:                                               ; preds = %22
  %31 = load double, double* %6, align 8
  %32 = load i64, i64* @INT64_MAX, align 8
  %33 = sitofp i64 %32 to double
  %34 = fcmp oeq double %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %36, i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %129

39:                                               ; preds = %30
  %40 = load double, double* %6, align 8
  %41 = load double, double* @INT64_MIN, align 8
  %42 = fcmp oeq double %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %44, i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %128

47:                                               ; preds = %39
  %48 = load double, double* %6, align 8
  %49 = load double, double* @FLT_MAX, align 8
  %50 = fcmp oeq double %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %52, i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %127

55:                                               ; preds = %47
  %56 = load double, double* %6, align 8
  %57 = load double, double* @FLT_MIN, align 8
  %58 = fcmp oeq double %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %60, i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %126

63:                                               ; preds = %55
  %64 = load double, double* %6, align 8
  %65 = load double, double* @FLT_MAX, align 8
  %66 = fneg double %65
  %67 = fcmp oeq double %64, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %69, i32 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %125

72:                                               ; preds = %63
  %73 = load double, double* %6, align 8
  %74 = load double, double* @FLT_MIN, align 8
  %75 = fneg double %74
  %76 = fcmp oeq double %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %78, i32 %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %124

81:                                               ; preds = %72
  %82 = load double, double* %6, align 8
  %83 = load double, double* @DBL_MAX, align 8
  %84 = fcmp oeq double %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %86, i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %123

89:                                               ; preds = %81
  %90 = load double, double* %6, align 8
  %91 = load double, double* @DBL_MIN, align 8
  %92 = fcmp oeq double %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %94, i32 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %122

97:                                               ; preds = %89
  %98 = load double, double* %6, align 8
  %99 = load double, double* @DBL_MAX, align 8
  %100 = fneg double %99
  %101 = fcmp oeq double %98, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %103, i32 %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %121

106:                                              ; preds = %97
  %107 = load double, double* %6, align 8
  %108 = load double, double* @DBL_MIN, align 8
  %109 = fneg double %108
  %110 = fcmp oeq double %107, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i8*, i8** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %112, i32 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %120

115:                                              ; preds = %106
  %116 = load i8*, i8** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load double, double* %6, align 8
  %119 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %116, i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), double %118)
  br label %120

120:                                              ; preds = %115, %111
  br label %121

121:                                              ; preds = %120, %102
  br label %122

122:                                              ; preds = %121, %93
  br label %123

123:                                              ; preds = %122, %85
  br label %124

124:                                              ; preds = %123, %77
  br label %125

125:                                              ; preds = %124, %68
  br label %126

126:                                              ; preds = %125, %59
  br label %127

127:                                              ; preds = %126, %51
  br label %128

128:                                              ; preds = %127, %43
  br label %129

129:                                              ; preds = %128, %35
  br label %130

130:                                              ; preds = %129, %26
  br label %131

131:                                              ; preds = %130, %18
  br label %132

132:                                              ; preds = %131, %10
  ret void
}

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
