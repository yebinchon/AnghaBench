; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_init_axis_color.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_init_axis_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, double, i32, double*, double, i32, i32 }
%struct.TYPE_6__ = type { i32**, i32* }

@.str = private unnamed_addr constant [10 x i8] c"timeclamp\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"midi\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@midi = common dso_local global i32 0, align 4
@r_func = common dso_local global i32 0, align 4
@g_func = common dso_local global i32 0, align 4
@b_func = common dso_local global i32 0, align 4
@BASEFREQ = common dso_local global i64 0, align 8
@ENDFREQ = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [108 x i8] c"font axis rendering is not implemented in non-default frequency range, please use axisfile option instead.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i32)* @init_axis_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_axis_color(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [6 x i8*], align 16
  %9 = alloca [5 x i8*], align 16
  %10 = alloca [4 x double (i8*, double)*], align 16
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [5 x double], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %27 = bitcast [6 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 48, i1 false)
  %28 = bitcast i8* %27 to [6 x i8*]*
  %29 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %29, align 16
  %30 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %30, align 8
  %31 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %31, align 16
  %32 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %32, align 8
  %33 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %33, align 16
  %34 = bitcast [5 x i8*]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 40, i1 false)
  %35 = bitcast i8* %34 to [5 x i8*]*
  %36 = getelementptr inbounds [5 x i8*], [5 x i8*]* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8** %36, align 16
  %37 = getelementptr inbounds [5 x i8*], [5 x i8*]* %35, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8** %37, align 8
  %38 = getelementptr inbounds [5 x i8*], [5 x i8*]* %35, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %38, align 16
  %39 = getelementptr inbounds [5 x i8*], [5 x i8*]* %35, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8** %39, align 8
  %40 = getelementptr inbounds [4 x double (i8*, double)*], [4 x double (i8*, double)*]* %10, i64 0, i64 0
  %41 = load i32, i32* @midi, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to double (i8*, double)*
  store double (i8*, double)* %43, double (i8*, double)** %40, align 8
  %44 = getelementptr inbounds double (i8*, double)*, double (i8*, double)** %40, i64 1
  %45 = load i32, i32* @r_func, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to double (i8*, double)*
  store double (i8*, double)* %47, double (i8*, double)** %44, align 8
  %48 = getelementptr inbounds double (i8*, double)*, double (i8*, double)** %44, i64 1
  %49 = load i32, i32* @g_func, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to double (i8*, double)*
  store double (i8*, double)* %51, double (i8*, double)** %48, align 8
  %52 = getelementptr inbounds double (i8*, double)*, double (i8*, double)** %48, i64 1
  %53 = load i32, i32* @b_func, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to double (i8*, double)*
  store double (i8*, double)* %55, double (i8*, double)** %52, align 8
  store i32* null, i32** %11, align 8
  store double* null, double** %12, align 8
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 960, i32 1920
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 16, i32 32
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 2, i32 1
  store i32 %67, i32* %19, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load double, double* %69, align 8
  %71 = load i64, i64* @BASEFREQ, align 8
  %72 = sitofp i64 %71 to double
  %73 = fcmp une double %70, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %3
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load double, double* %76, align 8
  %78 = load i64, i64* @ENDFREQ, align 8
  %79 = sitofp i64 %78 to double
  %80 = fcmp une double %77, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %74, %3
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @AV_LOG_WARNING, align 4
  %86 = call i32 @av_log(i32 %84, i32 %85, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.9, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = call i32 @AVERROR(i32 %87)
  store i32 %88, i32* %4, align 4
  br label %246

89:                                               ; preds = %74
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1920
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load double*, double** %96, align 8
  store double* %97, double** %12, align 8
  br label %111

98:                                               ; preds = %89
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load double, double* %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load double, double* %103, align 8
  %105 = call double* @create_freq_table(double %101, double %104, i32 1920)
  store double* %105, double** %12, align 8
  %106 = icmp ne double* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %4, align 4
  br label %246

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %94
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i64 0, i64 0
  %116 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 0
  %117 = getelementptr inbounds [4 x double (i8*, double)*], [4 x double (i8*, double)*]* %10, i64 0, i64 0
  %118 = bitcast double (i8*, double)** %117 to double (i8*, double)*
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @av_expr_parse(i32** %11, i32 %114, i8** %115, i8** %116, double (i8*, double)* %118, i32* null, i32* null, i32 0, i32 %121)
  store i32 %122, i32* %16, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %111
  %125 = load double*, double** %12, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load double*, double** %127, align 8
  %129 = icmp ne double* %125, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = call i32 @av_freep(double** %12)
  br label %132

132:                                              ; preds = %130, %124
  %133 = load i32, i32* %16, align 4
  store i32 %133, i32* %4, align 4
  br label %246

134:                                              ; preds = %111
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %135

135:                                              ; preds = %229, %134
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %235

139:                                              ; preds = %135
  %140 = getelementptr inbounds [5 x double], [5 x double]* %20, i64 0, i64 0
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 4
  %143 = load double, double* %142, align 8
  store double %143, double* %140, align 8
  %144 = getelementptr inbounds double, double* %140, i64 1
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 4
  %147 = load double, double* %146, align 8
  store double %147, double* %144, align 8
  %148 = getelementptr inbounds double, double* %144, i64 1
  %149 = load double*, double** %12, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, double* %149, i64 %151
  %153 = load double, double* %152, align 8
  store double %153, double* %148, align 8
  %154 = getelementptr inbounds double, double* %148, i64 1
  %155 = load double*, double** %12, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double, double* %155, i64 %157
  %159 = load double, double* %158, align 8
  store double %159, double* %154, align 8
  %160 = getelementptr inbounds double, double* %154, i64 1
  %161 = load double*, double** %12, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, double* %161, i64 %163
  %165 = load double, double* %164, align 8
  store double %165, double* %160, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = getelementptr inbounds [5 x double], [5 x double]* %20, i64 0, i64 0
  %168 = call i64 @av_expr_eval(i32* %166, double* %167, i32* null)
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %21, align 4
  %170 = load i32, i32* %21, align 4
  %171 = ashr i32 %170, 16
  %172 = and i32 %171, 255
  store i32 %172, i32* %22, align 4
  %173 = load i32, i32* %21, align 4
  %174 = ashr i32 %173, 8
  %175 = and i32 %174, 255
  store i32 %175, i32* %23, align 4
  %176 = load i32, i32* %21, align 4
  %177 = and i32 %176, 255
  store i32 %177, i32* %24, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32**, i32*** %179, align 8
  %181 = getelementptr inbounds i32*, i32** %180, i64 0
  %182 = load i32*, i32** %181, align 8
  store i32* %182, i32** %25, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %26, align 4
  store i32 0, i32* %15, align 4
  br label %188

188:                                              ; preds = %225, %139
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %18, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %228

192:                                              ; preds = %188
  %193 = load i32, i32* %22, align 4
  %194 = load i32*, i32** %25, align 8
  %195 = load i32, i32* %26, align 4
  %196 = load i32, i32* %15, align 4
  %197 = mul nsw i32 %195, %196
  %198 = load i32, i32* %13, align 4
  %199 = mul nsw i32 4, %198
  %200 = add nsw i32 %197, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %194, i64 %201
  store i32 %193, i32* %202, align 4
  %203 = load i32, i32* %23, align 4
  %204 = load i32*, i32** %25, align 8
  %205 = load i32, i32* %26, align 4
  %206 = load i32, i32* %15, align 4
  %207 = mul nsw i32 %205, %206
  %208 = load i32, i32* %13, align 4
  %209 = mul nsw i32 4, %208
  %210 = add nsw i32 %207, %209
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %204, i64 %212
  store i32 %203, i32* %213, align 4
  %214 = load i32, i32* %24, align 4
  %215 = load i32*, i32** %25, align 8
  %216 = load i32, i32* %26, align 4
  %217 = load i32, i32* %15, align 4
  %218 = mul nsw i32 %216, %217
  %219 = load i32, i32* %13, align 4
  %220 = mul nsw i32 4, %219
  %221 = add nsw i32 %218, %220
  %222 = add nsw i32 %221, 2
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %215, i64 %223
  store i32 %214, i32* %224, align 4
  br label %225

225:                                              ; preds = %192
  %226 = load i32, i32* %15, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %15, align 4
  br label %188

228:                                              ; preds = %188
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %13, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %13, align 4
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %14, align 4
  br label %135

235:                                              ; preds = %135
  %236 = load i32*, i32** %11, align 8
  %237 = call i32 @av_expr_free(i32* %236)
  %238 = load double*, double** %12, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 3
  %241 = load double*, double** %240, align 8
  %242 = icmp ne double* %238, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %235
  %244 = call i32 @av_freep(double** %12)
  br label %245

245:                                              ; preds = %243, %235
  store i32 0, i32* %4, align 4
  br label %246

246:                                              ; preds = %245, %132, %107, %81
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_log(i32, i32, i8*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local double* @create_freq_table(double, double, i32) #2

declare dso_local i32 @av_expr_parse(i32**, i32, i8**, i8**, double (i8*, double)*, i32*, i32*, i32, i32) #2

declare dso_local i32 @av_freep(double**) #2

declare dso_local i64 @av_expr_eval(i32*, double*, i32*) #2

declare dso_local i32 @av_expr_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
