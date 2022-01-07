; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_init_volume.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_init_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double*, i32, double*, double, double*, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"a_weighting\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"b_weighting\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"c_weighting\00", align 1
@__const.init_volume.func_names = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"timeclamp\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"bar_v\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"sono_v\00", align 1
@a_weighting = common dso_local global i32 0, align 4
@b_weighting = common dso_local global i32 0, align 4
@c_weighting = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VOLUME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @init_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_volume(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [4 x i8*], align 16
  %5 = alloca [7 x i8*], align 16
  %6 = alloca [7 x i8*], align 16
  %7 = alloca [3 x double (i8*, double)*], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x double], align 16
  %13 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %14 = bitcast [4 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([4 x i8*]* @__const.init_volume.func_names to i8*), i64 32, i1 false)
  %15 = bitcast [7 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 56, i1 false)
  %16 = bitcast i8* %15 to [7 x i8*]*
  %17 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8** %18, align 8
  %19 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8** %19, align 16
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8** %20, align 8
  %21 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %21, align 16
  %22 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i32 0, i32 5
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8** %22, align 8
  %23 = bitcast [7 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 56, i1 false)
  %24 = bitcast i8* %23 to [7 x i8*]*
  %25 = getelementptr inbounds [7 x i8*], [7 x i8*]* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8** %25, align 16
  %26 = getelementptr inbounds [7 x i8*], [7 x i8*]* %24, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8** %26, align 8
  %27 = getelementptr inbounds [7 x i8*], [7 x i8*]* %24, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8** %27, align 16
  %28 = getelementptr inbounds [7 x i8*], [7 x i8*]* %24, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8** %28, align 8
  %29 = getelementptr inbounds [7 x i8*], [7 x i8*]* %24, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %29, align 16
  %30 = getelementptr inbounds [7 x i8*], [7 x i8*]* %24, i32 0, i32 5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8** %30, align 8
  %31 = getelementptr inbounds [3 x double (i8*, double)*], [3 x double (i8*, double)*]* %7, i64 0, i64 0
  %32 = load i32, i32* @a_weighting, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to double (i8*, double)*
  store double (i8*, double)* %34, double (i8*, double)** %31, align 8
  %35 = getelementptr inbounds double (i8*, double)*, double (i8*, double)** %31, i64 1
  %36 = load i32, i32* @b_weighting, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to double (i8*, double)*
  store double (i8*, double)* %38, double (i8*, double)** %35, align 8
  %39 = getelementptr inbounds double (i8*, double)*, double (i8*, double)** %35, i64 1
  %40 = load i32, i32* @c_weighting, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to double (i8*, double)*
  store double (i8*, double)* %42, double (i8*, double)** %39, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @av_malloc_array(i32 %47, i32 8)
  %49 = bitcast i8* %48 to double*
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store double* %49, double** %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @av_malloc_array(i32 %54, i32 8)
  %56 = bitcast i8* %55 to double*
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store double* %56, double** %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load double*, double** %60, align 8
  %62 = icmp ne double* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load double*, double** %65, align 8
  %67 = icmp ne double* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63, %1
  br label %195

69:                                               ; preds = %63
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  %74 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %75 = getelementptr inbounds [3 x double (i8*, double)*], [3 x double (i8*, double)*]* %7, i64 0, i64 0
  %76 = bitcast double (i8*, double)** %75 to double (i8*, double)*
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @av_expr_parse(i32** %8, i32 %72, i8** %73, i8** %74, double (i8*, double)* %76, i32* null, i32* null, i32 0, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %195

83:                                               ; preds = %69
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %88 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %89 = getelementptr inbounds [3 x double (i8*, double)*], [3 x double (i8*, double)*]* %7, i64 0, i64 0
  %90 = bitcast double (i8*, double)** %89 to double (i8*, double)*
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @av_expr_parse(i32** %9, i32 %86, i8** %87, i8** %88, double (i8*, double)* %90, i32* null, i32* null, i32 0, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  br label %195

97:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %187, %97
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %190

104:                                              ; preds = %98
  %105 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  %108 = load double, double* %107, align 8
  store double %108, double* %105, align 8
  %109 = getelementptr inbounds double, double* %105, i64 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load double, double* %111, align 8
  store double %112, double* %109, align 8
  %113 = getelementptr inbounds double, double* %109, i64 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  %116 = load double*, double** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %116, i64 %118
  %120 = load double, double* %119, align 8
  store double %120, double* %113, align 8
  %121 = getelementptr inbounds double, double* %113, i64 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  %124 = load double*, double** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, double* %124, i64 %126
  %128 = load double, double* %127, align 8
  store double %128, double* %121, align 8
  %129 = getelementptr inbounds double, double* %121, i64 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  %132 = load double*, double** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds double, double* %132, i64 %134
  %136 = load double, double* %135, align 8
  store double %136, double* %129, align 8
  %137 = getelementptr inbounds double, double* %129, i64 1
  store double 0.000000e+00, double* %137, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 0
  %143 = call i32 @av_expr_eval(i32* %141, double* %142, i32* null)
  %144 = load i32, i32* @VOLUME_MAX, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call double @clip_with_log(i32 %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %143, double 0.000000e+00, i32 %144, double 0.000000e+00, i32 %145)
  store double %146, double* %13, align 8
  %147 = load double, double* %13, align 8
  %148 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 5
  store double %147, double* %148, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 0
  %154 = call i32 @av_expr_eval(i32* %152, double* %153, i32* null)
  %155 = load i32, i32* @VOLUME_MAX, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call double @clip_with_log(i32 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %154, double 0.000000e+00, i32 %155, double 0.000000e+00, i32 %156)
  store double %157, double* %13, align 8
  %158 = load double, double* %13, align 8
  %159 = load double, double* %13, align 8
  %160 = fmul double %158, %159
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 2
  %163 = load double*, double** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %163, i64 %165
  store double %160, double* %166, align 8
  %167 = load double, double* %13, align 8
  %168 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 5
  store double %167, double* %168, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = getelementptr inbounds [6 x double], [6 x double]* %12, i64 0, i64 0
  %174 = call i32 @av_expr_eval(i32* %172, double* %173, i32* null)
  %175 = load i32, i32* @VOLUME_MAX, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call double @clip_with_log(i32 %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %174, double 0.000000e+00, i32 %175, double 0.000000e+00, i32 %176)
  store double %177, double* %13, align 8
  %178 = load double, double* %13, align 8
  %179 = load double, double* %13, align 8
  %180 = fmul double %178, %179
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load double*, double** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, double* %183, i64 %185
  store double %180, double* %186, align 8
  br label %187

187:                                              ; preds = %104
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %98

190:                                              ; preds = %98
  %191 = load i32*, i32** %8, align 8
  %192 = call i32 @av_expr_free(i32* %191)
  %193 = load i32*, i32** %9, align 8
  %194 = call i32 @av_expr_free(i32* %193)
  store i32 0, i32* %2, align 4
  br label %207

195:                                              ; preds = %96, %82, %68
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = call i32 @av_freep(double** %197)
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = call i32 @av_freep(double** %200)
  %202 = load i32*, i32** %8, align 8
  %203 = call i32 @av_expr_free(i32* %202)
  %204 = load i32*, i32** %9, align 8
  %205 = call i32 @av_expr_free(i32* %204)
  %206 = load i32, i32* %11, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %195, %190
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i8* @av_malloc_array(i32, i32) #2

declare dso_local i32 @av_expr_parse(i32**, i32, i8**, i8**, double (i8*, double)*, i32*, i32*, i32, i32) #2

declare dso_local double @clip_with_log(i32, i8*, i32, double, i32, double, i32) #2

declare dso_local i32 @av_expr_eval(i32*, double*, i32*) #2

declare dso_local i32 @av_expr_free(i32*) #2

declare dso_local i32 @av_freep(double**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
