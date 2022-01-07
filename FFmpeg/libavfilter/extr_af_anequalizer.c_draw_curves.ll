; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_draw_curves.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_draw_curves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, double, i32, i32, %struct.TYPE_11__*, i64, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32, double, double, double, i32, i32, double, double, double, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i64* }

@__const.draw_curves.fg = private unnamed_addr constant [4 x i32] [i32 255, i32 255, i32 255, i32 255], align 16
@.str = private unnamed_addr constant [3 x i8] c" |\00", align 1
@M_PI = common dso_local global double 0.000000e+00, align 8
@FILTER_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*)* @draw_curves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_curves(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %7, align 8
  store i8* null, i8** %10, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @av_strdup(i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %3
  br label %433

39:                                               ; preds = %3
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %47, %52
  %54 = call i32 @memset(i64 %44, i32 0, i32 %53)
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %427, %39
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %430

61:                                               ; preds = %55
  %62 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %62, i8* align 16 bitcast ([4 x i32]* @__const.draw_curves.fg to i8*), i64 16, i1 false)
  store i32 -1, i32* %15, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** %8, align 8
  br label %68

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i8* [ %66, %65 ], [ null, %67 ]
  %70 = call i8* @av_strtok(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %75 = load i8*, i8** %9, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = call i32 @av_parse_color(i32* %74, i8* %75, i32 -1, %struct.TYPE_16__* %76)
  br label %78

78:                                               ; preds = %73, %68
  store double 0.000000e+00, double* %16, align 8
  br label %79

79:                                               ; preds = %423, %78
  %80 = load double, double* %16, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load double, double* %82, align 8
  %84 = fcmp olt double %80, %83
  br i1 %84, label %85, label %426

85:                                               ; preds = %79
  store double 1.000000e+00, double* %23, align 8
  %86 = load double, double* @M_PI, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load double, double* %93, align 8
  %95 = fsub double %94, 1.000000e+00
  %96 = fptosi double %95 to i32
  %97 = load double, double* %16, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load double, double* %99, align 8
  %101 = fdiv double %97, %100
  %102 = call double @pow(i32 %96, double %101)
  br label %105

103:                                              ; preds = %85
  %104 = load double, double* %16, align 8
  br label %105

105:                                              ; preds = %103, %91
  %106 = phi double [ %102, %91 ], [ %104, %103 ]
  %107 = fmul double %86, %106
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load double, double* %109, align 8
  %111 = fsub double %110, 1.000000e+00
  %112 = fdiv double %107, %111
  store double %112, double* %24, align 8
  %113 = load double, double* %24, align 8
  %114 = call double @cos(double %113) #4
  store double %114, double* %17, align 8
  %115 = load double, double* %17, align 8
  %116 = load double, double* %17, align 8
  %117 = fmul double %115, %116
  store double %117, double* %19, align 8
  %118 = load double, double* %24, align 8
  %119 = call double @sin(double %118) #4
  %120 = fneg double %119
  store double %120, double* %18, align 8
  %121 = load double, double* %18, align 8
  %122 = load double, double* %18, align 8
  %123 = fmul double %121, %122
  store double %123, double* %20, align 8
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %322, %105
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %325

130:                                              ; preds = %124
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %151, label %141

141:                                              ; preds = %130
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %141, %130
  br label %322

152:                                              ; preds = %141
  store i32 0, i32* %12, align 4
  br label %153

153:                                              ; preds = %318, %152
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @FILTER_ORDER, align 4
  %156 = sdiv i32 %155, 2
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %321

158:                                              ; preds = %153
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i64 %168
  store %struct.TYPE_12__* %169, %struct.TYPE_12__** %28, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sitofp i32 %172 to double
  %174 = load double, double* %19, align 8
  %175 = fmul double 8.000000e+00, %174
  %176 = load double, double* %20, align 8
  %177 = fmul double %175, %176
  %178 = fsub double 1.000000e+00, %177
  %179 = fmul double %173, %178
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load double, double* %181, align 8
  %183 = load double, double* %19, align 8
  %184 = load double, double* %20, align 8
  %185 = fsub double %183, %184
  %186 = fmul double %182, %185
  %187 = fadd double %179, %186
  %188 = load double, double* %17, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  %191 = load double, double* %190, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 3
  %194 = load double, double* %193, align 8
  %195 = load double, double* %19, align 8
  %196 = load double, double* %20, align 8
  %197 = fmul double 3.000000e+00, %196
  %198 = fsub double %195, %197
  %199 = fmul double %194, %198
  %200 = fadd double %191, %199
  %201 = fmul double %188, %200
  %202 = fadd double %187, %201
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = sitofp i32 %205 to double
  %207 = fadd double %202, %206
  store double %207, double* %21, align 8
  %208 = load double, double* %18, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 3
  %211 = load double, double* %210, align 8
  %212 = load double, double* %19, align 8
  %213 = fmul double 3.000000e+00, %212
  %214 = load double, double* %20, align 8
  %215 = fsub double %213, %214
  %216 = fmul double %211, %215
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 2
  %219 = load double, double* %218, align 8
  %220 = fadd double %216, %219
  %221 = load double, double* %17, align 8
  %222 = fmul double 2.000000e+00, %221
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = mul nsw i32 2, %225
  %227 = sitofp i32 %226 to double
  %228 = load double, double* %19, align 8
  %229 = load double, double* %20, align 8
  %230 = fsub double %228, %229
  %231 = fmul double %227, %230
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 1
  %234 = load double, double* %233, align 8
  %235 = fadd double %231, %234
  %236 = fmul double %222, %235
  %237 = fadd double %220, %236
  %238 = fmul double %208, %237
  store double %238, double* %22, align 8
  %239 = load double, double* %21, align 8
  %240 = load double, double* %22, align 8
  %241 = call double @hypot(double %239, double %240) #4
  %242 = load double, double* %23, align 8
  %243 = fmul double %242, %241
  store double %243, double* %23, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = sitofp i32 %246 to double
  %248 = load double, double* %19, align 8
  %249 = fmul double 8.000000e+00, %248
  %250 = load double, double* %20, align 8
  %251 = fmul double %249, %250
  %252 = fsub double 1.000000e+00, %251
  %253 = fmul double %247, %252
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 6
  %256 = load double, double* %255, align 8
  %257 = load double, double* %19, align 8
  %258 = load double, double* %20, align 8
  %259 = fsub double %257, %258
  %260 = fmul double %256, %259
  %261 = fadd double %253, %260
  %262 = load double, double* %17, align 8
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 7
  %265 = load double, double* %264, align 8
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 8
  %268 = load double, double* %267, align 8
  %269 = load double, double* %19, align 8
  %270 = load double, double* %20, align 8
  %271 = fmul double 3.000000e+00, %270
  %272 = fsub double %269, %271
  %273 = fmul double %268, %272
  %274 = fadd double %265, %273
  %275 = fmul double %262, %274
  %276 = fadd double %261, %275
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 9
  %279 = load i32, i32* %278, align 8
  %280 = sitofp i32 %279 to double
  %281 = fadd double %276, %280
  store double %281, double* %21, align 8
  %282 = load double, double* %18, align 8
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 8
  %285 = load double, double* %284, align 8
  %286 = load double, double* %19, align 8
  %287 = fmul double 3.000000e+00, %286
  %288 = load double, double* %20, align 8
  %289 = fsub double %287, %288
  %290 = fmul double %285, %289
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 7
  %293 = load double, double* %292, align 8
  %294 = fadd double %290, %293
  %295 = load double, double* %17, align 8
  %296 = fmul double 2.000000e+00, %295
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 2, %299
  %301 = sitofp i32 %300 to double
  %302 = load double, double* %19, align 8
  %303 = load double, double* %20, align 8
  %304 = fsub double %302, %303
  %305 = fmul double %301, %304
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 6
  %308 = load double, double* %307, align 8
  %309 = fadd double %305, %308
  %310 = fmul double %296, %309
  %311 = fadd double %294, %310
  %312 = fmul double %282, %311
  store double %312, double* %22, align 8
  %313 = load double, double* %21, align 8
  %314 = load double, double* %22, align 8
  %315 = call double @hypot(double %313, double %314) #4
  %316 = load double, double* %23, align 8
  %317 = fdiv double %316, %315
  store double %317, double* %23, align 8
  br label %318

318:                                              ; preds = %158
  %319 = load i32, i32* %12, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %12, align 4
  br label %153

321:                                              ; preds = %153
  br label %322

322:                                              ; preds = %321, %151
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %13, align 4
  br label %124

325:                                              ; preds = %124
  %326 = load double, double* %23, align 8
  %327 = call i32 @log10(double %326)
  %328 = mul nsw i32 -20, %327
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = sdiv i32 %328, %331
  %333 = sitofp i32 %332 to double
  %334 = fadd double 1.000000e+00, %333
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = sitofp i32 %337 to double
  %339 = fmul double %334, %338
  %340 = fdiv double %339, 2.000000e+00
  %341 = fptosi double %340 to i32
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = sub nsw i32 %344, 1
  %346 = call i32 @av_clip(i32 %341, i32 0, i32 %345)
  store i32 %346, i32* %25, align 4
  %347 = load double, double* %16, align 8
  %348 = call i32 @lrint(double %347)
  store i32 %348, i32* %27, align 4
  %349 = load i32, i32* %15, align 4
  %350 = icmp eq i32 %349, -1
  br i1 %350, label %351, label %353

351:                                              ; preds = %325
  %352 = load i32, i32* %25, align 4
  store i32 %352, i32* %15, align 4
  br label %353

353:                                              ; preds = %351, %325
  %354 = load i32, i32* %25, align 4
  %355 = load i32, i32* %15, align 4
  %356 = icmp sle i32 %354, %355
  br i1 %356, label %357, label %389

357:                                              ; preds = %353
  %358 = load i32, i32* %25, align 4
  store i32 %358, i32* %26, align 4
  br label %359

359:                                              ; preds = %385, %357
  %360 = load i32, i32* %26, align 4
  %361 = load i32, i32* %15, align 4
  %362 = icmp sle i32 %360, %361
  br i1 %362, label %363, label %388

363:                                              ; preds = %359
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 1
  %366 = load i64*, i64** %365, align 8
  %367 = getelementptr inbounds i64, i64* %366, i64 0
  %368 = load i64, i64* %367, align 8
  %369 = load i32, i32* %26, align 4
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 0
  %374 = load i32, i32* %373, align 4
  %375 = mul nsw i32 %369, %374
  %376 = sext i32 %375 to i64
  %377 = add nsw i64 %368, %376
  %378 = load i32, i32* %27, align 4
  %379 = mul nsw i32 %378, 4
  %380 = sext i32 %379 to i64
  %381 = add nsw i64 %377, %380
  %382 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %383 = call i32 @AV_RL32(i32* %382)
  %384 = call i32 @AV_WL32(i64 %381, i32 %383)
  br label %385

385:                                              ; preds = %363
  %386 = load i32, i32* %26, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %26, align 4
  br label %359

388:                                              ; preds = %359
  br label %421

389:                                              ; preds = %353
  %390 = load i32, i32* %15, align 4
  store i32 %390, i32* %26, align 4
  br label %391

391:                                              ; preds = %417, %389
  %392 = load i32, i32* %26, align 4
  %393 = load i32, i32* %25, align 4
  %394 = icmp sle i32 %392, %393
  br i1 %394, label %395, label %420

395:                                              ; preds = %391
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 1
  %398 = load i64*, i64** %397, align 8
  %399 = getelementptr inbounds i64, i64* %398, i64 0
  %400 = load i64, i64* %399, align 8
  %401 = load i32, i32* %26, align 4
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 0
  %406 = load i32, i32* %405, align 4
  %407 = mul nsw i32 %401, %406
  %408 = sext i32 %407 to i64
  %409 = add nsw i64 %400, %408
  %410 = load i32, i32* %27, align 4
  %411 = mul nsw i32 %410, 4
  %412 = sext i32 %411 to i64
  %413 = add nsw i64 %409, %412
  %414 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %415 = call i32 @AV_RL32(i32* %414)
  %416 = call i32 @AV_WL32(i64 %413, i32 %415)
  br label %417

417:                                              ; preds = %395
  %418 = load i32, i32* %26, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %26, align 4
  br label %391

420:                                              ; preds = %391
  br label %421

421:                                              ; preds = %420, %388
  %422 = load i32, i32* %25, align 4
  store i32 %422, i32* %15, align 4
  br label %423

423:                                              ; preds = %421
  %424 = load double, double* %16, align 8
  %425 = fadd double %424, 1.000000e+00
  store double %425, double* %16, align 8
  br label %79

426:                                              ; preds = %79
  br label %427

427:                                              ; preds = %426
  %428 = load i32, i32* %11, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %11, align 4
  br label %55

430:                                              ; preds = %55
  %431 = load i8*, i8** %8, align 8
  %432 = call i32 @av_free(i8* %431)
  br label %433

433:                                              ; preds = %430, %38
  ret void
}

declare dso_local i8* @av_strdup(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @av_parse_color(i32*, i8*, i32, %struct.TYPE_16__*) #1

declare dso_local double @pow(i32, double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #3

; Function Attrs: nounwind
declare dso_local double @sin(double) #3

; Function Attrs: nounwind
declare dso_local double @hypot(double, double) #3

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @log10(double) #1

declare dso_local i32 @lrint(double) #1

declare dso_local i32 @AV_WL32(i64, i32) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
