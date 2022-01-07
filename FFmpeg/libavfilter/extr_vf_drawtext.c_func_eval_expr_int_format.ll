; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_func_eval_expr_int_format.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_func_eval_expr_int_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@__const.func_eval_expr_int_format.fmt_str = private unnamed_addr constant [30 x i8] c"%\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@var_names = common dso_local global i32 0, align 4
@fun2_names = common dso_local global i32 0, align 4
@fun2 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Expression '%s' for the expr text expansion function is not valid\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"xXdu\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Invalid format '%c' specified, allowed values: 'x', 'X', 'd', 'u'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"expr_int_format(): Invalid number of positions to print: '%s'\0A\00", align 1
@FE_ALL_EXCEPT = common dso_local global i32 0, align 4
@FE_INVALID = common dso_local global i32 0, align 4
@FE_OVERFLOW = common dso_local global i32 0, align 4
@FE_UNDERFLOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [100 x i8] c"Conversion of floating-point result to int failed. Control register: 0x%08x. Conversion result: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"0%u\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"Formatting value %f (expr '%s') with spec '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i8*, i32, i8**, i32)* @func_eval_expr_int_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @func_eval_expr_int_format(%struct.TYPE_7__* %0, i32* %1, i8* %2, i32 %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [30 x i8], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %14, align 8
  store i32 0, i32* %18, align 4
  %23 = bitcast [30 x i8]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 getelementptr inbounds ([30 x i8], [30 x i8]* @__const.func_eval_expr_int_format.fmt_str, i32 0, i32 0), i64 30, i1 false)
  %24 = load i8**, i8*** %12, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* @var_names, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @fun2_names, align 4
  %32 = load i32, i32* @fun2, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = call i32 @av_expr_parse_and_eval(double* %15, i8* %26, i32 %27, i32 %30, i32* null, i32* null, i32 %31, i32 %32, i32* %34, i32 0, %struct.TYPE_7__* %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %6
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = load i8**, i8*** %12, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %40, i32 %41, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %7, align 4
  br label %135

47:                                               ; preds = %6
  %48 = load i8**, i8*** %12, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8 signext %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = load i8**, i8*** %12, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %56, i32 %57, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = call i32 @AVERROR(i32 %65)
  store i32 %66, i32* %7, align 4
  br label %135

67:                                               ; preds = %47
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i8**, i8*** %12, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @sscanf(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %18)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = load i8**, i8*** %12, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %78, i32 %79, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = call i32 @AVERROR(i32 %84)
  store i32 %85, i32* %7, align 4
  br label %135

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %67
  %88 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %89 = call i32 @feclearexcept(i32 %88)
  %90 = load double, double* %15, align 8
  %91 = fptosi double %90 to i32
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* @FE_INVALID, align 4
  %93 = load i32, i32* @FE_OVERFLOW, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @FE_UNDERFLOW, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @fetestexcept(i32 %96)
  store i32 %97, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %87
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = load i32, i32* @AV_LOG_ERROR, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %100, i32 %101, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.5, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = call i32 @AVERROR(i32 %105)
  store i32 %106, i32* %7, align 4
  br label %135

107:                                              ; preds = %87
  %108 = load i32, i32* %11, align 4
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %112 = load i32, i32* %18, align 4
  %113 = trunc i32 %112 to i8
  %114 = call i32 @av_strlcatf(i8* %111, i32 30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8 signext %113)
  br label %115

115:                                              ; preds = %110, %107
  %116 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %117 = load i8**, i8*** %12, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 1
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = call i32 @av_strlcatf(i8* %116, i32 30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8 signext %121)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %124 = load i32, i32* @AV_LOG_DEBUG, align 4
  %125 = load double, double* %15, align 8
  %126 = load i8**, i8*** %12, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 0
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %130 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %123, i32 %124, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), double %125, i8* %128, i8* %129)
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @av_bprintf(i32* %131, i8* %132, i32 %133)
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %115, %99, %77, %55, %39
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @av_expr_parse_and_eval(double*, i8*, i32, i32, i32*, i32*, i32, i32, i32*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, ...) #2

declare dso_local i32 @strchr(i8*, i8 signext) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i32 @feclearexcept(i32) #2

declare dso_local i32 @fetestexcept(i32) #2

declare dso_local i32 @av_strlcatf(i8*, i32, i8*, i8 signext) #2

declare dso_local i32 @av_bprintf(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
