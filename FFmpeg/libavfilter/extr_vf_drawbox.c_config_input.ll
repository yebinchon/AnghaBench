; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawbox.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawbox.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { double, double, %struct.TYPE_14__, i32, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { double, double, i32, i8*, double, i8*, double, i8*, double, i8*, double, i8*, double, i32* }
%struct.TYPE_11__ = type { double, double, i32 }

@VARS_NB = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_ALPHA = common dso_local global i32 0, align 4
@VAR_IH = common dso_local global i64 0, align 8
@VAR_IN_H = common dso_local global i64 0, align 8
@VAR_IW = common dso_local global i64 0, align 8
@VAR_IN_W = common dso_local global i64 0, align 8
@VAR_SAR = common dso_local global i64 0, align 8
@VAR_DAR = common dso_local global i64 0, align 8
@VAR_HSUB = common dso_local global i64 0, align 8
@VAR_VSUB = common dso_local global i64 0, align 8
@NAN = common dso_local global double 0.000000e+00, align 8
@VAR_X = common dso_local global i64 0, align 8
@VAR_Y = common dso_local global i64 0, align 8
@VAR_H = common dso_local global i64 0, align 8
@VAR_W = common dso_local global i64 0, align 8
@VAR_T = common dso_local global i64 0, align 8
@NUM_EXPR_EVALS = common dso_local global i32 0, align 4
@VAR_MAX = common dso_local global i64 0, align 8
@var_names = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global double 0.000000e+00, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Size values less than 0 are not acceptable.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"x:%d y:%d w:%d h:%d color:0x%02X%02X%02X%02X\0A\00", align 1
@Y = common dso_local global i64 0, align 8
@U = common dso_local global i64 0, align 8
@V = common dso_local global i64 0, align 8
@A = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Error when evaluating the expression '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %4, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %5, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_11__* @av_pix_fmt_desc_get(i32 %22)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %6, align 8
  %24 = load i32, i32* @VARS_NB, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca double, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store double %30, double* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store double %35, double* %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AV_PIX_FMT_FLAG_ALPHA, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = load i64, i64* @VAR_IH, align 8
  %49 = getelementptr inbounds double, double* %27, i64 %48
  store double %47, double* %49, align 8
  %50 = load i64, i64* @VAR_IN_H, align 8
  %51 = getelementptr inbounds double, double* %27, i64 %50
  store double %47, double* %51, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = load i64, i64* @VAR_IW, align 8
  %56 = getelementptr inbounds double, double* %27, i64 %55
  store double %54, double* %56, align 8
  %57 = load i64, i64* @VAR_IN_W, align 8
  %58 = getelementptr inbounds double, double* %27, i64 %57
  store double %54, double* %58, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @av_q2d(i64 %68)
  br label %71

70:                                               ; preds = %1
  br label %71

71:                                               ; preds = %70, %64
  %72 = phi i32 [ %69, %64 ], [ 1, %70 ]
  %73 = sitofp i32 %72 to double
  %74 = load i64, i64* @VAR_SAR, align 8
  %75 = getelementptr inbounds double, double* %27, i64 %74
  store double %73, double* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load double, double* %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load double, double* %80, align 8
  %82 = fdiv double %78, %81
  %83 = load i64, i64* @VAR_SAR, align 8
  %84 = getelementptr inbounds double, double* %27, i64 %83
  %85 = load double, double* %84, align 8
  %86 = fmul double %82, %85
  %87 = load i64, i64* @VAR_DAR, align 8
  %88 = getelementptr inbounds double, double* %27, i64 %87
  store double %86, double* %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load double, double* %90, align 8
  %92 = load i64, i64* @VAR_HSUB, align 8
  %93 = getelementptr inbounds double, double* %27, i64 %92
  store double %91, double* %93, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load double, double* %95, align 8
  %97 = load i64, i64* @VAR_VSUB, align 8
  %98 = getelementptr inbounds double, double* %27, i64 %97
  store double %96, double* %98, align 8
  %99 = load double, double* @NAN, align 8
  %100 = load i64, i64* @VAR_X, align 8
  %101 = getelementptr inbounds double, double* %27, i64 %100
  store double %99, double* %101, align 8
  %102 = load double, double* @NAN, align 8
  %103 = load i64, i64* @VAR_Y, align 8
  %104 = getelementptr inbounds double, double* %27, i64 %103
  store double %102, double* %104, align 8
  %105 = load double, double* @NAN, align 8
  %106 = load i64, i64* @VAR_H, align 8
  %107 = getelementptr inbounds double, double* %27, i64 %106
  store double %105, double* %107, align 8
  %108 = load double, double* @NAN, align 8
  %109 = load i64, i64* @VAR_W, align 8
  %110 = getelementptr inbounds double, double* %27, i64 %109
  store double %108, double* %110, align 8
  %111 = load double, double* @NAN, align 8
  %112 = load i64, i64* @VAR_T, align 8
  %113 = getelementptr inbounds double, double* %27, i64 %112
  store double %111, double* %113, align 8
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %240, %71
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @NUM_EXPR_EVALS, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %243

118:                                              ; preds = %114
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load double, double* %120, align 8
  %122 = load i64, i64* @VAR_MAX, align 8
  %123 = getelementptr inbounds double, double* %27, i64 %122
  store double %121, double* %123, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %10, align 8
  %127 = load i32, i32* @var_names, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = call i32 @av_expr_parse_and_eval(double* %9, i8* %126, i32 %127, double* %27, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0, %struct.TYPE_13__* %128)
  store i32 %129, i32* %11, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %118
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @NUM_EXPR_EVALS, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %331

136:                                              ; preds = %131, %118
  %137 = load double, double* %9, align 8
  %138 = load i64, i64* @VAR_X, align 8
  %139 = getelementptr inbounds double, double* %27, i64 %138
  store double %137, double* %139, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  store double %137, double* %141, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load double, double* %143, align 8
  %145 = load i64, i64* @VAR_MAX, align 8
  %146 = getelementptr inbounds double, double* %27, i64 %145
  store double %144, double* %146, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 5
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %10, align 8
  %150 = load i32, i32* @var_names, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %152 = call i32 @av_expr_parse_and_eval(double* %9, i8* %149, i32 %150, double* %27, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0, %struct.TYPE_13__* %151)
  store i32 %152, i32* %11, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %136
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @NUM_EXPR_EVALS, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %331

159:                                              ; preds = %154, %136
  %160 = load double, double* %9, align 8
  %161 = load i64, i64* @VAR_Y, align 8
  %162 = getelementptr inbounds double, double* %27, i64 %161
  store double %160, double* %162, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 6
  store double %160, double* %164, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %167 = load double, double* %166, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 4
  %170 = load double, double* %169, align 8
  %171 = fsub double %167, %170
  %172 = load i64, i64* @VAR_MAX, align 8
  %173 = getelementptr inbounds double, double* %27, i64 %172
  store double %171, double* %173, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 7
  %176 = load i8*, i8** %175, align 8
  store i8* %176, i8** %10, align 8
  %177 = load i32, i32* @var_names, align 4
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %179 = call i32 @av_expr_parse_and_eval(double* %9, i8* %176, i32 %177, double* %27, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0, %struct.TYPE_13__* %178)
  store i32 %179, i32* %11, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %159
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @NUM_EXPR_EVALS, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %331

186:                                              ; preds = %181, %159
  %187 = load double, double* %9, align 8
  %188 = load i64, i64* @VAR_W, align 8
  %189 = getelementptr inbounds double, double* %27, i64 %188
  store double %187, double* %189, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 8
  store double %187, double* %191, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load double, double* %193, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 6
  %197 = load double, double* %196, align 8
  %198 = fsub double %194, %197
  %199 = load i64, i64* @VAR_MAX, align 8
  %200 = getelementptr inbounds double, double* %27, i64 %199
  store double %198, double* %200, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 9
  %203 = load i8*, i8** %202, align 8
  store i8* %203, i8** %10, align 8
  %204 = load i32, i32* @var_names, align 4
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %206 = call i32 @av_expr_parse_and_eval(double* %9, i8* %203, i32 %204, double* %27, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0, %struct.TYPE_13__* %205)
  store i32 %206, i32* %11, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %186
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* @NUM_EXPR_EVALS, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  br label %331

213:                                              ; preds = %208, %186
  %214 = load double, double* %9, align 8
  %215 = load i64, i64* @VAR_H, align 8
  %216 = getelementptr inbounds double, double* %27, i64 %215
  store double %214, double* %216, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 10
  store double %214, double* %218, align 8
  %219 = load double, double* @INT_MAX, align 8
  %220 = load i64, i64* @VAR_MAX, align 8
  %221 = getelementptr inbounds double, double* %27, i64 %220
  store double %219, double* %221, align 8
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 11
  %224 = load i8*, i8** %223, align 8
  store i8* %224, i8** %10, align 8
  %225 = load i32, i32* @var_names, align 4
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %227 = call i32 @av_expr_parse_and_eval(double* %9, i8* %224, i32 %225, double* %27, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0, %struct.TYPE_13__* %226)
  store i32 %227, i32* %11, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %213
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @NUM_EXPR_EVALS, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  br label %331

234:                                              ; preds = %229, %213
  %235 = load double, double* %9, align 8
  %236 = load i64, i64* @VAR_T, align 8
  %237 = getelementptr inbounds double, double* %27, i64 %236
  store double %235, double* %237, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 12
  store double %235, double* %239, align 8
  br label %240

240:                                              ; preds = %234
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %12, align 4
  br label %114

243:                                              ; preds = %114
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 8
  %246 = load double, double* %245, align 8
  %247 = fcmp ogt double %246, 0.000000e+00
  br i1 %247, label %248, label %252

248:                                              ; preds = %243
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 8
  %251 = load double, double* %250, align 8
  br label %256

252:                                              ; preds = %243
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = load double, double* %254, align 8
  br label %256

256:                                              ; preds = %252, %248
  %257 = phi double [ %251, %248 ], [ %255, %252 ]
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 8
  store double %257, double* %259, align 8
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 10
  %262 = load double, double* %261, align 8
  %263 = fcmp ogt double %262, 0.000000e+00
  br i1 %263, label %264, label %268

264:                                              ; preds = %256
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 10
  %267 = load double, double* %266, align 8
  br label %272

268:                                              ; preds = %256
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = load double, double* %270, align 8
  br label %272

272:                                              ; preds = %268, %264
  %273 = phi double [ %267, %264 ], [ %271, %268 ]
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 10
  store double %273, double* %275, align 8
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 8
  %278 = load double, double* %277, align 8
  %279 = fcmp olt double %278, 0.000000e+00
  br i1 %279, label %285, label %280

280:                                              ; preds = %272
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 10
  %283 = load double, double* %282, align 8
  %284 = fcmp olt double %283, 0.000000e+00
  br i1 %284, label %285, label %291

285:                                              ; preds = %280, %272
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %287 = load i32, i32* @AV_LOG_ERROR, align 4
  %288 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %286, i32 %287, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %289 = load i32, i32* @EINVAL, align 4
  %290 = call i32 @AVERROR(i32 %289)
  store i32 %290, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %337

291:                                              ; preds = %280
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %293 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 4
  %296 = load double, double* %295, align 8
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 6
  %299 = load double, double* %298, align 8
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 8
  %302 = load double, double* %301, align 8
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 10
  %305 = load double, double* %304, align 8
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 13
  %308 = load i32*, i32** %307, align 8
  %309 = load i64, i64* @Y, align 8
  %310 = getelementptr inbounds i32, i32* %308, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 13
  %314 = load i32*, i32** %313, align 8
  %315 = load i64, i64* @U, align 8
  %316 = getelementptr inbounds i32, i32* %314, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 13
  %320 = load i32*, i32** %319, align 8
  %321 = load i64, i64* @V, align 8
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 13
  %326 = load i32*, i32** %325, align 8
  %327 = load i64, i64* @A, align 8
  %328 = getelementptr inbounds i32, i32* %326, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %292, i32 %293, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), double %296, double %299, double %302, double %305, i32 %311, i32 %317, i32 %323, i32 %329)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %337

331:                                              ; preds = %233, %212, %185, %158, %135
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %333 = load i32, i32* @AV_LOG_ERROR, align 4
  %334 = load i8*, i8** %10, align 8
  %335 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %332, i32 %333, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %334)
  %336 = load i32, i32* %11, align 4
  store i32 %336, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %337

337:                                              ; preds = %331, %291, %285
  %338 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %338)
  %339 = load i32, i32* %2, align 4
  ret i32 %339
}

declare dso_local %struct.TYPE_11__* @av_pix_fmt_desc_get(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @av_q2d(i64) #1

declare dso_local i32 @av_expr_parse_and_eval(double*, i8*, i32, double*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
