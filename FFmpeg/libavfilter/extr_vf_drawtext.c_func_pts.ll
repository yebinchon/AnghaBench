; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_func_pts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_func_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { double* }
%struct.tm = type { i32 }

@VAR_T = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"flt\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid delta '%s'\0A\00", align 1
@AV_TIME_BASE = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%.6f\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"hms\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" ??:??:??.???\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"24HH\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Invalid argument '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"%c%02d:%02d:%02d.%03d\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"gmtime\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Invalid format '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i8*, i32, i8**, i32)* @func_pts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @func_pts(%struct.TYPE_6__* %0, i32* %1, i8* %2, i32 %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca %struct.tm, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %14, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load double*, double** %28, align 8
  %30 = load i64, i64* @VAR_T, align 8
  %31 = getelementptr inbounds double, double* %29, i64 %30
  %32 = load double, double* %31, align 8
  store double %32, double* %16, align 8
  %33 = load i32, i32* %11, align 4
  %34 = icmp uge i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %6
  %36 = load i8**, i8*** %12, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  br label %40

39:                                               ; preds = %6
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %39 ]
  store i8* %41, i8** %15, align 8
  %42 = load i32, i32* %11, align 4
  %43 = icmp uge i32 %42, 2
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load i8**, i8*** %12, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @av_parse_time(i32* %18, i8* %47, i32 1)
  store i32 %48, i32* %17, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = load i8**, i8*** %12, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @av_log(%struct.TYPE_6__* %51, i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %7, align 4
  br label %172

58:                                               ; preds = %44
  %59 = load i32, i32* %18, align 4
  %60 = sitofp i32 %59 to double
  %61 = load double, double* @AV_TIME_BASE, align 8
  %62 = fdiv double %60, %61
  %63 = load double, double* %16, align 8
  %64 = fadd double %63, %62
  store double %64, double* %16, align 8
  br label %65

65:                                               ; preds = %58, %40
  %66 = load i8*, i8** %15, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32*, i32** %9, align 8
  %71 = load double, double* %16, align 8
  %72 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double %71)
  br label %171

73:                                               ; preds = %65
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %131, label %77

77:                                               ; preds = %73
  %78 = load double, double* %16, align 8
  %79 = call i64 @isnan(double %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %130

84:                                               ; preds = %77
  %85 = load double, double* %16, align 8
  %86 = fmul double %85, 1.000000e+03
  %87 = call i32 @llrint(double %86)
  store i32 %87, i32* %19, align 4
  store i8 32, i8* %20, align 1
  %88 = load i32, i32* %19, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  store i8 45, i8* %20, align 1
  %91 = load i32, i32* %19, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %19, align 4
  br label %93

93:                                               ; preds = %90, %84
  %94 = load i32, i32* %11, align 4
  %95 = icmp uge i32 %94, 3
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = load i8**, i8*** %12, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %19, align 4
  %104 = srem i32 %103, 86400000
  store i32 %104, i32* %19, align 4
  br label %114

105:                                              ; preds = %96
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = load i8**, i8*** %12, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @av_log(%struct.TYPE_6__* %106, i32 %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = call i32 @AVERROR(i32 %112)
  store i32 %113, i32* %7, align 4
  br label %172

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %93
  %116 = load i32*, i32** %9, align 8
  %117 = load i8, i8* %20, align 1
  %118 = sext i8 %117 to i32
  %119 = load i32, i32* %19, align 4
  %120 = sdiv i32 %119, 3600000
  %121 = load i32, i32* %19, align 4
  %122 = sdiv i32 %121, 60000
  %123 = srem i32 %122, 60
  %124 = load i32, i32* %19, align 4
  %125 = sdiv i32 %124, 1000
  %126 = srem i32 %125, 60
  %127 = load i32, i32* %19, align 4
  %128 = srem i32 %127, 1000
  %129 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %118, i32 %120, i32 %123, i32 %126, i32 %128)
  br label %130

130:                                              ; preds = %115, %81
  br label %170

131:                                              ; preds = %73
  %132 = load i8*, i8** %15, align 8
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i8*, i8** %15, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %162, label %139

139:                                              ; preds = %135, %131
  %140 = load double, double* %16, align 8
  %141 = fptosi double %140 to i32
  store i32 %141, i32* %22, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp uge i32 %142, 3
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i8**, i8*** %12, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 2
  %147 = load i8*, i8** %146, align 8
  br label %149

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %144
  %150 = phi i8* [ %147, %144 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), %148 ]
  store i8* %150, i8** %23, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %149
  %155 = call i32 @localtime_r(i32* %22, %struct.tm* %21)
  br label %158

156:                                              ; preds = %149
  %157 = call i32 @gmtime_r(i32* %22, %struct.tm* %21)
  br label %158

158:                                              ; preds = %156, %154
  %159 = load i32*, i32** %9, align 8
  %160 = load i8*, i8** %23, align 8
  %161 = call i32 @av_bprint_strftime(i32* %159, i8* %160, %struct.tm* %21)
  br label %169

162:                                              ; preds = %135
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %164 = load i32, i32* @AV_LOG_ERROR, align 4
  %165 = load i8*, i8** %15, align 8
  %166 = call i32 @av_log(%struct.TYPE_6__* %163, i32 %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %165)
  %167 = load i32, i32* @EINVAL, align 4
  %168 = call i32 @AVERROR(i32 %167)
  store i32 %168, i32* %7, align 4
  br label %172

169:                                              ; preds = %158
  br label %170

170:                                              ; preds = %169, %130
  br label %171

171:                                              ; preds = %170, %69
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %171, %162, %105, %50
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i32 @av_parse_time(i32*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_bprintf(i32*, i8*, ...) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @llrint(double) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @av_bprint_strftime(i32*, i8*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
