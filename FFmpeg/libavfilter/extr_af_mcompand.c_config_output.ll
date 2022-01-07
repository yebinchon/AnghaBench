; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_mcompand.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_mcompand.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, double, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { double*, double*, double*, double, double, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { double, i32, double, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"at least one attacks/decays rate is mandatory\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"number of attacks rate plus decays rate must be even\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"transfer function curve in dB must be set\0A\00", align 1
@M_LN10 = common dso_local global double 0.000000e+00, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"transfer points missing\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"transfer points parsing failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"crossover_frequency is missing\0A\00", align 1
@.str.10 = private unnamed_addr constant [80 x i8] c"crossover_frequency: %f, should be >=0 and lower than half of sample rate: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_output(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca double, align 8
  %25 = alloca i8*, align 8
  %26 = alloca double, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %4, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %5, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @count_items(i8* %38, i32* %11, i8 signext 124)
  %40 = load i32, i32* %11, align 4
  %41 = call i8* @FFMAX(i32 1, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i8* @av_calloc(i32 %45, i32 88)
  %47 = bitcast i8* %46 to %struct.TYPE_12__*
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = icmp ne %struct.TYPE_12__* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %1
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %722

57:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %673, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %676

62:                                               ; preds = %58
  store i32 0, i32* %17, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = call i8* @av_strtok(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i8* %64, i8** %19, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %65 = load i8*, i8** %19, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = call i32 @uninit(%struct.TYPE_15__* %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %722

72:                                               ; preds = %62
  store i8* null, i8** %12, align 8
  %73 = load i8*, i8** %19, align 8
  store i8* %73, i8** %20, align 8
  %74 = load i8*, i8** %19, align 8
  %75 = call i32 @count_items(i8* %74, i32* %17, i8 signext 32)
  %76 = load i8*, i8** %20, align 8
  %77 = call i8* @av_strtok(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %22)
  store i8* %77, i8** %18, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %81, i32 %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = call i32 @uninit(%struct.TYPE_15__* %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %722

88:                                               ; preds = %72
  store i8* null, i8** %20, align 8
  %89 = load i8*, i8** %18, align 8
  store i8* %89, i8** %21, align 8
  %90 = load i8*, i8** %18, align 8
  %91 = call i32 @count_items(i8* %90, i32* %16, i8 signext 44)
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* %16, align 4
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %94, %88
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %99, i32 %100, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = call i32 @uninit(%struct.TYPE_15__* %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = call i32 @AVERROR(i32 %104)
  store i32 %105, i32* %2, align 4
  br label %722

106:                                              ; preds = %94
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @av_calloc(i32 %109, i32 8)
  %111 = bitcast i8* %110 to double*
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  store double* %111, double** %118, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @av_calloc(i32 %121, i32 8)
  %123 = bitcast i8* %122 to double*
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  store double* %123, double** %130, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @av_calloc(i32 %133, i32 8)
  %135 = bitcast i8* %134 to double*
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  store double* %135, double** %142, align 8
  store i32 0, i32* %9, align 4
  br label %143

143:                                              ; preds = %305, %106
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %16, align 4
  %146 = sdiv i32 %145, 2
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @FFMIN(i32 %146, i32 %149)
  %151 = icmp slt i32 %144, %150
  br i1 %151, label %152, label %308

152:                                              ; preds = %143
  %153 = load i8*, i8** %21, align 8
  %154 = call i8* @av_strtok(i8* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %23)
  store i8* %154, i8** %25, align 8
  store i8* null, i8** %21, align 8
  %155 = load i8*, i8** %25, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load double*, double** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %163, i64 %165
  %167 = call i32 @sscanf(i8* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double* %166)
  %168 = load i8*, i8** %21, align 8
  %169 = call i8* @av_strtok(i8* %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %23)
  store i8* %169, i8** %25, align 8
  %170 = load i8*, i8** %25, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = load double*, double** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds double, double* %178, i64 %180
  %182 = call i32 @sscanf(i8* %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double* %181)
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load double*, double** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, double* %190, i64 %192
  %194 = load double, double* %193, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load double, double* %196, align 8
  %198 = fdiv double 1.000000e+00, %197
  %199 = fcmp ogt double %194, %198
  br i1 %199, label %200, label %231

200:                                              ; preds = %152
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  %203 = load double, double* %202, align 8
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load double*, double** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, double* %211, i64 %213
  %215 = load double, double* %214, align 8
  %216 = fmul double %203, %215
  %217 = fdiv double -1.000000e+00, %216
  %218 = call double @exp(double %217) #3
  %219 = fsub double 1.000000e+00, %218
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load double*, double** %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds double, double* %227, i64 %229
  store double %219, double* %230, align 8
  br label %243

231:                                              ; preds = %152
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 3
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load double*, double** %238, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds double, double* %239, i64 %241
  store double 1.000000e+00, double* %242, align 8
  br label %243

243:                                              ; preds = %231, %200
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 3
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %245, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  %251 = load double*, double** %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds double, double* %251, i64 %253
  %255 = load double, double* %254, align 8
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  %258 = load double, double* %257, align 8
  %259 = fdiv double 1.000000e+00, %258
  %260 = fcmp ogt double %255, %259
  br i1 %260, label %261, label %292

261:                                              ; preds = %243
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 1
  %264 = load double, double* %263, align 8
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 3
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 1
  %272 = load double*, double** %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds double, double* %272, i64 %274
  %276 = load double, double* %275, align 8
  %277 = fmul double %264, %276
  %278 = fdiv double -1.000000e+00, %277
  %279 = call double @exp(double %278) #3
  %280 = fsub double 1.000000e+00, %279
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 3
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %282, align 8
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 1
  %288 = load double*, double** %287, align 8
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds double, double* %288, i64 %290
  store double %280, double* %291, align 8
  br label %304

292:                                              ; preds = %243
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 3
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %294, align 8
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 1
  %300 = load double*, double** %299, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds double, double* %300, i64 %302
  store double 1.000000e+00, double* %303, align 8
  br label %304

304:                                              ; preds = %292, %261
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %9, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %9, align 4
  br label %143

308:                                              ; preds = %143
  %309 = load i32, i32* %9, align 4
  store i32 %309, i32* %7, align 4
  br label %310

310:                                              ; preds = %365, %308
  %311 = load i32, i32* %7, align 4
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp slt i32 %311, %314
  br i1 %315, label %316, label %368

316:                                              ; preds = %310
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 3
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %318, align 8
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 0
  %324 = load double*, double** %323, align 8
  %325 = load i32, i32* %9, align 4
  %326 = sub nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds double, double* %324, i64 %327
  %329 = load double, double* %328, align 8
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 3
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %331, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 0
  %337 = load double*, double** %336, align 8
  %338 = load i32, i32* %7, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds double, double* %337, i64 %339
  store double %329, double* %340, align 8
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 3
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %342, align 8
  %344 = load i32, i32* %8, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 1
  %348 = load double*, double** %347, align 8
  %349 = load i32, i32* %9, align 4
  %350 = sub nsw i32 %349, 1
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds double, double* %348, i64 %351
  %353 = load double, double* %352, align 8
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 3
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %355, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i32 0, i32 1
  %361 = load double*, double** %360, align 8
  %362 = load i32, i32* %7, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds double, double* %361, i64 %363
  store double %353, double* %364, align 8
  br label %365

365:                                              ; preds = %316
  %366 = load i32, i32* %7, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %7, align 4
  br label %310

368:                                              ; preds = %310
  %369 = load i8*, i8** %20, align 8
  %370 = call i8* @av_strtok(i8* %369, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %22)
  store i8* %370, i8** %18, align 8
  %371 = load i8*, i8** %18, align 8
  %372 = icmp ne i8* %371, null
  br i1 %372, label %381, label %373

373:                                              ; preds = %368
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %375 = load i32, i32* @AV_LOG_ERROR, align 4
  %376 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %374, i32 %375, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %377 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %378 = call i32 @uninit(%struct.TYPE_15__* %377)
  %379 = load i32, i32* @EINVAL, align 4
  %380 = call i32 @AVERROR(i32 %379)
  store i32 %380, i32* %2, align 4
  br label %722

381:                                              ; preds = %368
  %382 = load i8*, i8** %18, align 8
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 3
  %385 = load %struct.TYPE_12__*, %struct.TYPE_12__** %384, align 8
  %386 = load i32, i32* %8, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 6
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 0
  %391 = call i32 @sscanf(i8* %382, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double* %390)
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 3
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %393, align 8
  %395 = load i32, i32* %8, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 6
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 0
  %400 = load double, double* %399, align 8
  %401 = load double, double* @M_LN10, align 8
  %402 = fmul double %400, %401
  %403 = fdiv double %402, 2.000000e+01
  store double %403, double* %24, align 8
  %404 = load i8*, i8** %20, align 8
  %405 = call i8* @av_strtok(i8* %404, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %22)
  store i8* %405, i8** %18, align 8
  %406 = load i8*, i8** %18, align 8
  %407 = icmp ne i8* %406, null
  br i1 %407, label %416, label %408

408:                                              ; preds = %381
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %410 = load i32, i32* @AV_LOG_ERROR, align 4
  %411 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %409, i32 %410, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %412 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %413 = call i32 @uninit(%struct.TYPE_15__* %412)
  %414 = load i32, i32* @EINVAL, align 4
  %415 = call i32 @AVERROR(i32 %414)
  store i32 %415, i32* %2, align 4
  br label %722

416:                                              ; preds = %381
  %417 = load i8*, i8** %18, align 8
  %418 = call i32 @count_items(i8* %417, i32* %15, i8 signext 44)
  %419 = load i32, i32* %15, align 4
  %420 = add nsw i32 %419, 4
  %421 = mul nsw i32 %420, 2
  %422 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %422, i32 0, i32 3
  %424 = load %struct.TYPE_12__*, %struct.TYPE_12__** %423, align 8
  %425 = load i32, i32* %8, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i32 0, i32 6
  %429 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %428, i32 0, i32 1
  store i32 %421, i32* %429, align 8
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 3
  %432 = load %struct.TYPE_12__*, %struct.TYPE_12__** %431, align 8
  %433 = load i32, i32* %8, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %435, i32 0, i32 6
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 8
  %439 = call i8* @av_calloc(i32 %438, i32 4)
  %440 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i32 0, i32 3
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %441, align 8
  %443 = load i32, i32* %8, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i32 0, i32 6
  %447 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %446, i32 0, i32 3
  store i8* %439, i8** %447, align 8
  %448 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %448, i32 0, i32 3
  %450 = load %struct.TYPE_12__*, %struct.TYPE_12__** %449, align 8
  %451 = load i32, i32* %8, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %453, i32 0, i32 6
  %455 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %454, i32 0, i32 3
  %456 = load i8*, i8** %455, align 8
  %457 = icmp ne i8* %456, null
  br i1 %457, label %463, label %458

458:                                              ; preds = %416
  %459 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %460 = call i32 @uninit(%struct.TYPE_15__* %459)
  %461 = load i32, i32* @ENOMEM, align 4
  %462 = call i32 @AVERROR(i32 %461)
  store i32 %462, i32* %2, align 4
  br label %722

463:                                              ; preds = %416
  %464 = load i8*, i8** %18, align 8
  %465 = load i32, i32* %15, align 4
  %466 = load double, double* %24, align 8
  %467 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %468 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i32 0, i32 3
  %469 = load %struct.TYPE_12__*, %struct.TYPE_12__** %468, align 8
  %470 = load i32, i32* %8, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %469, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %472, i32 0, i32 6
  %474 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %475 = call i32 @parse_points(i8* %464, i32 %465, double %466, %struct.TYPE_16__* %473, %struct.TYPE_15__* %474)
  store i32 %475, i32* %6, align 4
  %476 = load i32, i32* %6, align 4
  %477 = icmp slt i32 %476, 0
  br i1 %477, label %478, label %485

478:                                              ; preds = %463
  %479 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %480 = load i32, i32* @AV_LOG_ERROR, align 4
  %481 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %479, i32 %480, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %482 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %483 = call i32 @uninit(%struct.TYPE_15__* %482)
  %484 = load i32, i32* %6, align 4
  store i32 %484, i32* %2, align 4
  br label %722

485:                                              ; preds = %463
  %486 = load i8*, i8** %20, align 8
  %487 = call i8* @av_strtok(i8* %486, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %22)
  store i8* %487, i8** %18, align 8
  %488 = load i8*, i8** %18, align 8
  %489 = icmp ne i8* %488, null
  br i1 %489, label %498, label %490

490:                                              ; preds = %485
  %491 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %492 = load i32, i32* @AV_LOG_ERROR, align 4
  %493 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %491, i32 %492, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %494 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %495 = call i32 @uninit(%struct.TYPE_15__* %494)
  %496 = load i32, i32* @EINVAL, align 4
  %497 = call i32 @AVERROR(i32 %496)
  store i32 %497, i32* %2, align 4
  br label %722

498:                                              ; preds = %485
  %499 = load i8*, i8** %18, align 8
  %500 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %501 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %500, i32 0, i32 3
  %502 = load %struct.TYPE_12__*, %struct.TYPE_12__** %501, align 8
  %503 = load i32, i32* %8, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %502, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %505, i32 0, i32 3
  %507 = call i32 @sscanf(i8* %499, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double* %506)
  %508 = icmp eq i32 %507, 1
  %509 = zext i1 %508 to i32
  %510 = load i32, i32* %10, align 4
  %511 = add nsw i32 %510, %509
  store i32 %511, i32* %10, align 4
  %512 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %512, i32 0, i32 3
  %514 = load %struct.TYPE_12__*, %struct.TYPE_12__** %513, align 8
  %515 = load i32, i32* %8, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %514, i64 %516
  %518 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %517, i32 0, i32 3
  %519 = load double, double* %518, align 8
  %520 = fcmp olt double %519, 0.000000e+00
  br i1 %520, label %535, label %521

521:                                              ; preds = %498
  %522 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %523 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %522, i32 0, i32 3
  %524 = load %struct.TYPE_12__*, %struct.TYPE_12__** %523, align 8
  %525 = load i32, i32* %8, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %524, i64 %526
  %528 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %527, i32 0, i32 3
  %529 = load double, double* %528, align 8
  %530 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %531 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %530, i32 0, i32 1
  %532 = load double, double* %531, align 8
  %533 = fdiv double %532, 2.000000e+00
  %534 = fcmp oge double %529, %533
  br i1 %534, label %535, label %555

535:                                              ; preds = %521, %498
  %536 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %537 = load i32, i32* @AV_LOG_ERROR, align 4
  %538 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %539 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %538, i32 0, i32 3
  %540 = load %struct.TYPE_12__*, %struct.TYPE_12__** %539, align 8
  %541 = load i32, i32* %8, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %540, i64 %542
  %544 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %543, i32 0, i32 3
  %545 = load double, double* %544, align 8
  %546 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %547 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %546, i32 0, i32 1
  %548 = load double, double* %547, align 8
  %549 = fdiv double %548, 2.000000e+00
  %550 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %536, i32 %537, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.10, i64 0, i64 0), double %545, double %549)
  %551 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %552 = call i32 @uninit(%struct.TYPE_15__* %551)
  %553 = load i32, i32* @EINVAL, align 4
  %554 = call i32 @AVERROR(i32 %553)
  store i32 %554, i32* %2, align 4
  br label %722

555:                                              ; preds = %521
  %556 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %557 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %556, i32 0, i32 3
  %558 = load %struct.TYPE_12__*, %struct.TYPE_12__** %557, align 8
  %559 = load i32, i32* %8, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %558, i64 %560
  %562 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %561, i32 0, i32 3
  %563 = load double, double* %562, align 8
  %564 = fcmp une double %563, 0.000000e+00
  br i1 %564, label %565, label %591

565:                                              ; preds = %555
  %566 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %567 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %568 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %567, i32 0, i32 3
  %569 = load %struct.TYPE_12__*, %struct.TYPE_12__** %568, align 8
  %570 = load i32, i32* %8, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %569, i64 %571
  %573 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %572, i32 0, i32 7
  %574 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %575 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %574, i32 0, i32 3
  %576 = load %struct.TYPE_12__*, %struct.TYPE_12__** %575, align 8
  %577 = load i32, i32* %8, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %576, i64 %578
  %580 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %579, i32 0, i32 3
  %581 = load double, double* %580, align 8
  %582 = fptosi double %581 to i32
  %583 = call i32 @crossover_setup(%struct.TYPE_14__* %566, i32* %573, i32 %582)
  store i32 %583, i32* %6, align 4
  %584 = load i32, i32* %6, align 4
  %585 = icmp slt i32 %584, 0
  br i1 %585, label %586, label %590

586:                                              ; preds = %565
  %587 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %588 = call i32 @uninit(%struct.TYPE_15__* %587)
  %589 = load i32, i32* %6, align 4
  store i32 %589, i32* %2, align 4
  br label %722

590:                                              ; preds = %565
  br label %591

591:                                              ; preds = %590, %555
  %592 = load i8*, i8** %20, align 8
  %593 = call i8* @av_strtok(i8* %592, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %22)
  store i8* %593, i8** %18, align 8
  %594 = load i8*, i8** %18, align 8
  %595 = icmp ne i8* %594, null
  br i1 %595, label %596, label %672

596:                                              ; preds = %591
  %597 = load i8*, i8** %18, align 8
  %598 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %599 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %598, i32 0, i32 3
  %600 = load %struct.TYPE_12__*, %struct.TYPE_12__** %599, align 8
  %601 = load i32, i32* %8, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %600, i64 %602
  %604 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %603, i32 0, i32 4
  %605 = call i32 @sscanf(i8* %597, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double* %604)
  %606 = load i32, i32* %14, align 4
  %607 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %608 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %607, i32 0, i32 3
  %609 = load %struct.TYPE_12__*, %struct.TYPE_12__** %608, align 8
  %610 = load i32, i32* %8, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %609, i64 %611
  %613 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %612, i32 0, i32 4
  %614 = load double, double* %613, align 8
  %615 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %616 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %615, i32 0, i32 1
  %617 = load double, double* %616, align 8
  %618 = fmul double %614, %617
  %619 = fptosi double %618 to i32
  %620 = call i8* @FFMAX(i32 %606, i32 %619)
  %621 = ptrtoint i8* %620 to i32
  store i32 %621, i32* %14, align 4
  %622 = load i8*, i8** %20, align 8
  %623 = call i8* @av_strtok(i8* %622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %22)
  store i8* %623, i8** %18, align 8
  %624 = load i8*, i8** %18, align 8
  %625 = icmp ne i8* %624, null
  br i1 %625, label %626, label %671

626:                                              ; preds = %596
  %627 = load i8*, i8** %18, align 8
  %628 = call i32 @sscanf(i8* %627, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double* %26)
  %629 = load double, double* %26, align 8
  %630 = fdiv double %629, 2.000000e+01
  %631 = call double @pow(double 1.000000e+01, double %630) #3
  store double %631, double* %26, align 8
  store i32 0, i32* %9, align 4
  br label %632

632:                                              ; preds = %651, %626
  %633 = load i32, i32* %9, align 4
  %634 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %635 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 8
  %637 = icmp slt i32 %633, %636
  br i1 %637, label %638, label %654

638:                                              ; preds = %632
  %639 = load double, double* %26, align 8
  %640 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %641 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %640, i32 0, i32 3
  %642 = load %struct.TYPE_12__*, %struct.TYPE_12__** %641, align 8
  %643 = load i32, i32* %8, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %642, i64 %644
  %646 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %645, i32 0, i32 2
  %647 = load double*, double** %646, align 8
  %648 = load i32, i32* %9, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds double, double* %647, i64 %649
  store double %639, double* %650, align 8
  br label %651

651:                                              ; preds = %638
  %652 = load i32, i32* %9, align 4
  %653 = add nsw i32 %652, 1
  store i32 %653, i32* %9, align 4
  br label %632

654:                                              ; preds = %632
  %655 = load i8*, i8** %20, align 8
  %656 = call i8* @av_strtok(i8* %655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %22)
  store i8* %656, i8** %18, align 8
  %657 = load i8*, i8** %18, align 8
  %658 = icmp ne i8* %657, null
  br i1 %658, label %659, label %670

659:                                              ; preds = %654
  %660 = load i8*, i8** %18, align 8
  %661 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %662 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %661, i32 0, i32 3
  %663 = load %struct.TYPE_12__*, %struct.TYPE_12__** %662, align 8
  %664 = load i32, i32* %8, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %663, i64 %665
  %667 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %666, i32 0, i32 6
  %668 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %667, i32 0, i32 2
  %669 = call i32 @sscanf(i8* %660, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double* %668)
  br label %670

670:                                              ; preds = %659, %654
  br label %671

671:                                              ; preds = %670, %596
  br label %672

672:                                              ; preds = %671, %591
  br label %673

673:                                              ; preds = %672
  %674 = load i32, i32* %8, align 4
  %675 = add nsw i32 %674, 1
  store i32 %675, i32* %8, align 4
  br label %58

676:                                              ; preds = %58
  %677 = load i32, i32* %10, align 4
  %678 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %679 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %678, i32 0, i32 1
  store i32 %677, i32* %679, align 8
  store i32 0, i32* %8, align 4
  br label %680

680:                                              ; preds = %715, %676
  %681 = load i32, i32* %14, align 4
  %682 = icmp sgt i32 %681, 0
  br i1 %682, label %683, label %689

683:                                              ; preds = %680
  %684 = load i32, i32* %8, align 4
  %685 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %686 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %685, i32 0, i32 1
  %687 = load i32, i32* %686, align 8
  %688 = icmp slt i32 %684, %687
  br label %689

689:                                              ; preds = %683, %680
  %690 = phi i1 [ false, %680 ], [ %688, %683 ]
  br i1 %690, label %691, label %718

691:                                              ; preds = %689
  %692 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %693 = load i32, i32* %14, align 4
  %694 = call i32 @ff_get_audio_buffer(%struct.TYPE_14__* %692, i32 %693)
  %695 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %696 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %695, i32 0, i32 3
  %697 = load %struct.TYPE_12__*, %struct.TYPE_12__** %696, align 8
  %698 = load i32, i32* %8, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %697, i64 %699
  %701 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %700, i32 0, i32 5
  store i32 %694, i32* %701, align 8
  %702 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %703 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %702, i32 0, i32 3
  %704 = load %struct.TYPE_12__*, %struct.TYPE_12__** %703, align 8
  %705 = load i32, i32* %8, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %704, i64 %706
  %708 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %707, i32 0, i32 5
  %709 = load i32, i32* %708, align 8
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %714, label %711

711:                                              ; preds = %691
  %712 = load i32, i32* @ENOMEM, align 4
  %713 = call i32 @AVERROR(i32 %712)
  store i32 %713, i32* %2, align 4
  br label %722

714:                                              ; preds = %691
  br label %715

715:                                              ; preds = %714
  %716 = load i32, i32* %8, align 4
  %717 = add nsw i32 %716, 1
  store i32 %717, i32* %8, align 4
  br label %680

718:                                              ; preds = %689
  %719 = load i32, i32* %14, align 4
  %720 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %721 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %720, i32 0, i32 2
  store i32 %719, i32* %721, align 4
  store i32 0, i32* %2, align 4
  br label %722

722:                                              ; preds = %718, %711, %586, %535, %490, %478, %458, %408, %373, %98, %80, %67, %54
  %723 = load i32, i32* %2, align 4
  ret i32 %723
}

declare dso_local i32 @count_items(i8*, i32*, i8 signext) #1

declare dso_local i8* @FFMAX(i32, i32) #1

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @uninit(%struct.TYPE_15__*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, double*) #1

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

declare dso_local i32 @parse_points(i8*, i32, double, %struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @crossover_setup(%struct.TYPE_14__*, i32*, i32) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

declare dso_local i32 @ff_get_audio_buffer(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
