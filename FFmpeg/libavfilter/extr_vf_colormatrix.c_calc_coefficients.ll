; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_calc_coefficients.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_calc_coefficients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*** }

@yuv_coeff_luma = common dso_local global double** null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"error calculating conversion coefficients\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @calc_coefficients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_coefficients(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [5 x [3 x [3 x double]]], align 16
  %5 = alloca [5 x [3 x [3 x double]]], align 16
  %6 = alloca [25 x [3 x [3 x double]]], align 16
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %134, %1
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %137

19:                                               ; preds = %16
  %20 = load double**, double*** @yuv_coeff_luma, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double*, double** %20, i64 %22
  %24 = load double*, double** %23, align 8
  %25 = getelementptr inbounds double, double* %24, i64 0
  %26 = load double, double* %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %28
  %30 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %29, i64 0, i64 0
  %31 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  store double %26, double* %31, align 8
  %32 = load double**, double*** @yuv_coeff_luma, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double*, double** %32, i64 %34
  %36 = load double*, double** %35, align 8
  %37 = getelementptr inbounds double, double* %36, i64 1
  %38 = load double, double* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %40
  %42 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %41, i64 0, i64 0
  %43 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 0, i64 1
  store double %38, double* %43, align 8
  %44 = load double**, double*** @yuv_coeff_luma, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double*, double** %44, i64 %46
  %48 = load double*, double** %47, align 8
  %49 = getelementptr inbounds double, double* %48, i64 2
  %50 = load double, double* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %52
  %54 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %53, i64 0, i64 0
  %55 = getelementptr inbounds [3 x double], [3 x double]* %54, i64 0, i64 2
  store double %50, double* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %57
  %59 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %58, i64 0, i64 0
  %60 = getelementptr inbounds [3 x double], [3 x double]* %59, i64 0, i64 1
  %61 = load double, double* %60, align 8
  %62 = fsub double %61, 1.000000e+00
  %63 = fdiv double 5.000000e-01, %62
  store double %63, double* %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %65
  %67 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %66, i64 0, i64 0
  %68 = getelementptr inbounds [3 x double], [3 x double]* %67, i64 0, i64 2
  %69 = load double, double* %68, align 8
  %70 = fsub double %69, 1.000000e+00
  %71 = fdiv double 5.000000e-01, %70
  store double %71, double* %8, align 8
  %72 = load double, double* %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %74
  %76 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %75, i64 0, i64 0
  %77 = getelementptr inbounds [3 x double], [3 x double]* %76, i64 0, i64 0
  %78 = load double, double* %77, align 8
  %79 = fmul double %72, %78
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %81
  %83 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %82, i64 0, i64 1
  %84 = getelementptr inbounds [3 x double], [3 x double]* %83, i64 0, i64 0
  store double %79, double* %84, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %86
  %88 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %87, i64 0, i64 1
  %89 = getelementptr inbounds [3 x double], [3 x double]* %88, i64 0, i64 1
  store double 5.000000e-01, double* %89, align 8
  %90 = load double, double* %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %92
  %94 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %93, i64 0, i64 0
  %95 = getelementptr inbounds [3 x double], [3 x double]* %94, i64 0, i64 2
  %96 = load double, double* %95, align 8
  %97 = fmul double %90, %96
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %99
  %101 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %100, i64 0, i64 1
  %102 = getelementptr inbounds [3 x double], [3 x double]* %101, i64 0, i64 2
  store double %97, double* %102, align 8
  %103 = load double, double* %8, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %105
  %107 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %106, i64 0, i64 0
  %108 = getelementptr inbounds [3 x double], [3 x double]* %107, i64 0, i64 0
  %109 = load double, double* %108, align 8
  %110 = fmul double %103, %109
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %112
  %114 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %113, i64 0, i64 2
  %115 = getelementptr inbounds [3 x double], [3 x double]* %114, i64 0, i64 0
  store double %110, double* %115, align 8
  %116 = load double, double* %8, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %118
  %120 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %119, i64 0, i64 0
  %121 = getelementptr inbounds [3 x double], [3 x double]* %120, i64 0, i64 1
  %122 = load double, double* %121, align 8
  %123 = fmul double %116, %122
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %125
  %127 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %126, i64 0, i64 2
  %128 = getelementptr inbounds [3 x double], [3 x double]* %127, i64 0, i64 1
  store double %123, double* %128, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %130
  %132 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %131, i64 0, i64 2
  %133 = getelementptr inbounds [3 x double], [3 x double]* %132, i64 0, i64 2
  store double 5.000000e-01, double* %133, align 8
  br label %134

134:                                              ; preds = %19
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %16

137:                                              ; preds = %16
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %153, %137
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 5
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %5, i64 0, i64 %143
  %145 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %144, i64 0, i64 0
  %146 = bitcast [3 x double]* %145 to double**
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %148
  %150 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %149, i64 0, i64 0
  %151 = bitcast [3 x double]* %150 to double**
  %152 = call i32 @inverse3x3(double** %146, double** %151)
  br label %153

153:                                              ; preds = %141
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %138

156:                                              ; preds = %138
  store i32 0, i32* %10, align 4
  br label %157

157:                                              ; preds = %304, %156
  %158 = load i32, i32* %10, align 4
  %159 = icmp slt i32 %158, 5
  br i1 %159, label %160, label %307

160:                                              ; preds = %157
  store i32 0, i32* %11, align 4
  br label %161

161:                                              ; preds = %300, %160
  %162 = load i32, i32* %11, align 4
  %163 = icmp slt i32 %162, 5
  br i1 %163, label %164, label %303

164:                                              ; preds = %161
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [25 x [3 x [3 x double]]], [25 x [3 x [3 x double]]]* %6, i64 0, i64 %166
  %168 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %167, i64 0, i64 0
  %169 = bitcast [3 x double]* %168 to double**
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %5, i64 0, i64 %171
  %173 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %172, i64 0, i64 0
  %174 = bitcast [3 x double]* %173 to double**
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [5 x [3 x [3 x double]]], [5 x [3 x [3 x double]]]* %4, i64 0, i64 %176
  %178 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %177, i64 0, i64 0
  %179 = bitcast [3 x double]* %178 to double**
  %180 = call i32 @solve_coefficients(double** %169, double** %174, double** %179)
  store i32 0, i32* %12, align 4
  br label %181

181:                                              ; preds = %251, %164
  %182 = load i32, i32* %12, align 4
  %183 = icmp slt i32 %182, 3
  br i1 %183, label %184, label %254

184:                                              ; preds = %181
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [25 x [3 x [3 x double]]], [25 x [3 x [3 x double]]]* %6, i64 0, i64 %186
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %187, i64 0, i64 %189
  %191 = getelementptr inbounds [3 x double], [3 x double]* %190, i64 0, i64 0
  %192 = load double, double* %191, align 8
  %193 = call i8* @NS(double %192)
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32***, i32**** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32**, i32*** %197, i64 %199
  %201 = load i32**, i32*** %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  store i32 %194, i32* %206, align 4
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [25 x [3 x [3 x double]]], [25 x [3 x [3 x double]]]* %6, i64 0, i64 %208
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %209, i64 0, i64 %211
  %213 = getelementptr inbounds [3 x double], [3 x double]* %212, i64 0, i64 1
  %214 = load double, double* %213, align 8
  %215 = call i8* @NS(double %214)
  %216 = ptrtoint i8* %215 to i32
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32***, i32**** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32**, i32*** %219, i64 %221
  %223 = load i32**, i32*** %222, align 8
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32*, i32** %223, i64 %225
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  store i32 %216, i32* %228, align 4
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [25 x [3 x [3 x double]]], [25 x [3 x [3 x double]]]* %6, i64 0, i64 %230
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %231, i64 0, i64 %233
  %235 = getelementptr inbounds [3 x double], [3 x double]* %234, i64 0, i64 2
  %236 = load double, double* %235, align 8
  %237 = call i8* @NS(double %236)
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load i32***, i32**** %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32**, i32*** %241, i64 %243
  %245 = load i32**, i32*** %244, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %245, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  store i32 %238, i32* %250, align 4
  br label %251

251:                                              ; preds = %184
  %252 = load i32, i32* %12, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %12, align 4
  br label %181

254:                                              ; preds = %181
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  %257 = load i32***, i32**** %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32**, i32*** %257, i64 %259
  %261 = load i32**, i32*** %260, align 8
  %262 = getelementptr inbounds i32*, i32** %261, i64 0
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 65536
  br i1 %266, label %293, label %267

267:                                              ; preds = %254
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 0
  %270 = load i32***, i32**** %269, align 8
  %271 = load i32, i32* %9, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32**, i32*** %270, i64 %272
  %274 = load i32**, i32*** %273, align 8
  %275 = getelementptr inbounds i32*, i32** %274, i64 1
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %293, label %280

280:                                              ; preds = %267
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i32***, i32**** %282, align 8
  %284 = load i32, i32* %9, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32**, i32*** %283, i64 %285
  %287 = load i32**, i32*** %286, align 8
  %288 = getelementptr inbounds i32*, i32** %287, i64 2
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %280, %267, %254
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %295 = load i32, i32* @AV_LOG_ERROR, align 4
  %296 = call i32 @av_log(%struct.TYPE_6__* %294, i32 %295, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %297

297:                                              ; preds = %293, %280
  %298 = load i32, i32* %9, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %9, align 4
  br label %300

300:                                              ; preds = %297
  %301 = load i32, i32* %11, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %11, align 4
  br label %161

303:                                              ; preds = %161
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %10, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %10, align 4
  br label %157

307:                                              ; preds = %157
  ret void
}

declare dso_local i32 @inverse3x3(double**, double**) #1

declare dso_local i32 @solve_coefficients(double**, double**, double**) #1

declare dso_local i8* @NS(double) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
