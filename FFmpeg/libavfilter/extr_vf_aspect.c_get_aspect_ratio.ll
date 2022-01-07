; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_aspect.c_get_aspect_ratio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_aspect.c_get_aspect_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { double, double, %struct.TYPE_15__, i32, %struct.TYPE_20__* }
%struct.TYPE_15__ = type { double, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, i32 }

@VARS_NB = common dso_local global i32 0, align 4
@VAR_W = common dso_local global i64 0, align 8
@VAR_H = common dso_local global i64 0, align 8
@VAR_A = common dso_local global i64 0, align 8
@VAR_SAR = common dso_local global i64 0, align 8
@VAR_DAR = common dso_local global i64 0, align 8
@VAR_HSUB = common dso_local global i64 0, align 8
@VAR_VSUB = common dso_local global i64 0, align 8
@var_names = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error when evaluating the expression '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Invalid string '%s' for aspect ratio\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_17__*)* @get_aspect_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_aspect_ratio(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %6, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %7, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_18__* @av_pix_fmt_desc_get(i32 %25)
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %8, align 8
  %27 = load i32, i32* @VARS_NB, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %9, align 8
  %30 = alloca double, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = load i64, i64* @VAR_W, align 8
  %35 = getelementptr inbounds double, double* %30, i64 %34
  store double %33, double* %35, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8
  %39 = load i64, i64* @VAR_H, align 8
  %40 = getelementptr inbounds double, double* %30, i64 %39
  store double %38, double* %40, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = fdiv double %43, %46
  %48 = load i64, i64* @VAR_A, align 8
  %49 = getelementptr inbounds double, double* %30, i64 %48
  store double %47, double* %49, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %2
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sitofp i64 %59 to double
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = fdiv double %60, %64
  br label %67

66:                                               ; preds = %2
  br label %67

67:                                               ; preds = %66, %55
  %68 = phi double [ %65, %55 ], [ 1.000000e+00, %66 ]
  %69 = load i64, i64* @VAR_SAR, align 8
  %70 = getelementptr inbounds double, double* %30, i64 %69
  store double %68, double* %70, align 8
  %71 = load i64, i64* @VAR_A, align 8
  %72 = getelementptr inbounds double, double* %30, i64 %71
  %73 = load double, double* %72, align 8
  %74 = load i64, i64* @VAR_SAR, align 8
  %75 = getelementptr inbounds double, double* %30, i64 %74
  %76 = load double, double* %75, align 8
  %77 = fmul double %73, %76
  %78 = load i64, i64* @VAR_DAR, align 8
  %79 = getelementptr inbounds double, double* %30, i64 %78
  store double %77, double* %79, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 1, %82
  %84 = sitofp i32 %83 to double
  %85 = load i64, i64* @VAR_HSUB, align 8
  %86 = getelementptr inbounds double, double* %30, i64 %85
  store double %84, double* %86, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 1, %89
  %91 = sitofp i32 %90 to double
  %92 = load i64, i64* @VAR_VSUB, align 8
  %93 = getelementptr inbounds double, double* %30, i64 %92
  store double %91, double* %93, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @var_names, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = call i32 @av_expr_parse_and_eval(double* %11, i32 %96, i32 %97, double* %30, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0, %struct.TYPE_20__* %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %67
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = call i32 @av_parse_ratio(%struct.TYPE_17__* %103, i32 %106, i32 %109, i32 0, %struct.TYPE_20__* %110)
  store i32 %111, i32* %12, align 4
  br label %126

112:                                              ; preds = %67
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = load double, double* %11, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call { i64, i64 } @av_d2q(double %114, i32 %117)
  %119 = bitcast %struct.TYPE_17__* %13 to { i64, i64 }*
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %119, i32 0, i32 0
  %121 = extractvalue { i64, i64 } %118, 0
  store i64 %121, i64* %120, align 8
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %119, i32 0, i32 1
  %123 = extractvalue { i64, i64 } %118, 1
  store i64 %123, i64* %122, align 8
  %124 = bitcast %struct.TYPE_17__* %113 to i8*
  %125 = bitcast %struct.TYPE_17__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 16, i1 false)
  br label %126

126:                                              ; preds = %112, %102
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %131 = load i32, i32* @AV_LOG_ERROR, align 4
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @av_log(%struct.TYPE_20__* %130, i32 %131, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %157

137:                                              ; preds = %126
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp sle i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %142, %137
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %149 = load i32, i32* @AV_LOG_ERROR, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @av_log(%struct.TYPE_20__* %148, i32 %149, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @EINVAL, align 4
  %155 = call i32 @AVERROR(i32 %154)
  store i32 %155, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %157

156:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %157

157:                                              ; preds = %156, %147, %129
  %158 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.TYPE_18__* @av_pix_fmt_desc_get(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @av_expr_parse_and_eval(double*, i32, i32, double*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @av_parse_ratio(%struct.TYPE_17__*, i32, i32, i32, %struct.TYPE_20__*) #1

declare dso_local { i64, i64 } @av_d2q(double, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
