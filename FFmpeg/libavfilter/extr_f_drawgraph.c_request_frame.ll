; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_drawgraph.c_request_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_drawgraph.c_request_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, float, i32, float**, double, double, i32, i32*, %struct.TYPE_9__*, i32*, i32, i32*, i64 }
%struct.TYPE_9__ = type { i32*, i32*, i64 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@VAR_VARS_NB = common dso_local global i32 0, align 4
@VAR_MIN = common dso_local global i64 0, align 8
@VAR_MAX = common dso_local global i64 0, align 8
@VAR_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @request_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_frame(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %3, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %4, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %5, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ff_request_frame(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %366

40:                                               ; preds = %1
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @AVERROR_EOF, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %366

44:                                               ; preds = %40
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load float, float* %46, align 4
  %48 = fcmp ogt float %47, 0.000000e+00
  br i1 %48, label %49, label %366

49:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32 0, i32* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load float, float* %53, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 12
  %57 = load i64, i64* %56, align 8
  %58 = sitofp i64 %57 to float
  %59 = fdiv float %54, %58
  %60 = call i32 @ceil(float %59)
  store i32 %60, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %349, %49
  %62 = load i32, i32* %8, align 4
  %63 = sitofp i32 %62 to float
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load float, float* %65, align 4
  %67 = fcmp olt float %63, %66
  br i1 %67, label %68, label %352

68:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %334, %68
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %337

72:                                               ; preds = %69
  %73 = load i32, i32* @VAR_VARS_NB, align 4
  %74 = zext i32 %73 to i64
  %75 = call i8* @llvm.stacksave()
  store i8* %75, i8** %11, align 8
  %76 = alloca double, i64 %74, align 16
  store i64 %74, i64* %12, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = load float**, float*** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float*, float** %79, i64 %81
  %83 = load float*, float** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  %87 = load float, float* %86, align 4
  store float %87, float* %19, align 4
  %88 = load float, float* %19, align 4
  %89 = call i64 @isnan(float %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %72
  store i32 7, i32* %20, align 4
  br label %330

92:                                               ; preds = %72
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  %95 = load double, double* %94, align 8
  %96 = load i64, i64* @VAR_MIN, align 8
  %97 = getelementptr inbounds double, double* %76, i64 %96
  store double %95, double* %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 5
  %100 = load double, double* %99, align 8
  %101 = load i64, i64* @VAR_MAX, align 8
  %102 = getelementptr inbounds double, double* %76, i64 %101
  store double %100, double* %102, align 8
  %103 = load float, float* %19, align 4
  %104 = fpext float %103 to double
  %105 = load i64, i64* @VAR_VAL, align 8
  %106 = getelementptr inbounds double, double* %76, i64 %105
  store double %104, double* %106, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 11
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @av_expr_eval(i32 %113, double* %76, i32* null)
  store i32 %114, i32* %17, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @AV_RN32(i32 %117)
  store i32 %118, i32* %18, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %15, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %124, 1
  %126 = sitofp i32 %125 to double
  %127 = load float, float* %19, align 4
  %128 = fpext float %127 to double
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  %131 = load double, double* %130, align 8
  %132 = fsub double %128, %131
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 5
  %135 = load double, double* %134, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 4
  %138 = load double, double* %137, align 8
  %139 = fsub double %135, %138
  %140 = fdiv double %132, %139
  %141 = fsub double 1.000000e+00, %140
  %142 = fmul double %126, %141
  %143 = fptosi double %142 to i32
  store i32 %143, i32* %14, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  switch i32 %146, label %329 [
    i32 0, label %147
    i32 1, label %238
    i32 2, label %244
  ]

147:                                              ; preds = %92
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %153, %158
  %160 = add nsw i32 %152, %159
  %161 = load i32, i32* %15, align 4
  %162 = mul nsw i32 %161, 4
  %163 = add nsw i32 %160, %162
  %164 = call i32 @AV_RN32(i32 %163)
  store i32 %164, i32* %16, align 4
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %234, %147
  %167 = load i32, i32* %13, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %237

172:                                              ; preds = %166
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %18, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %196

176:                                              ; preds = %172
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %182, %187
  %189 = add nsw i32 %181, %188
  %190 = load i32, i32* %15, align 4
  %191 = mul nsw i32 %190, 4
  %192 = add nsw i32 %189, %191
  %193 = call i32 @AV_RN32(i32 %192)
  %194 = load i32, i32* %16, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %222, label %196

196:                                              ; preds = %176, %172
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 %206, 1
  %208 = call i32 @FFMIN(i32 %203, i32 %207)
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %208, %213
  %215 = add nsw i32 %201, %214
  %216 = load i32, i32* %15, align 4
  %217 = mul nsw i32 %216, 4
  %218 = add nsw i32 %215, %217
  %219 = call i32 @AV_RN32(i32 %218)
  %220 = load i32, i32* %16, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %196, %176
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %15, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %227 = call i32 @draw_dot(i32 %223, i32 %224, i32 %225, %struct.TYPE_9__* %226)
  br label %237

228:                                              ; preds = %196
  %229 = load i32, i32* %17, align 4
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* %13, align 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %233 = call i32 @draw_dot(i32 %229, i32 %230, i32 %231, %struct.TYPE_9__* %232)
  br label %234

234:                                              ; preds = %228
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %13, align 4
  br label %166

237:                                              ; preds = %222, %166
  br label %329

238:                                              ; preds = %92
  %239 = load i32, i32* %17, align 4
  %240 = load i32, i32* %15, align 4
  %241 = load i32, i32* %14, align 4
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %243 = call i32 @draw_dot(i32 %239, i32 %240, i32 %241, %struct.TYPE_9__* %242)
  br label %329

244:                                              ; preds = %92
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 9
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %267

253:                                              ; preds = %244
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 9
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %7, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32 0, i32* %259, align 4
  %260 = load i32, i32* %14, align 4
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 7
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  store i32 %260, i32* %266, align 4
  br label %267

267:                                              ; preds = %253, %244
  %268 = load i32, i32* %14, align 4
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 7
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = icmp sle i32 %268, %275
  br i1 %276, label %277, label %299

277:                                              ; preds = %267
  %278 = load i32, i32* %14, align 4
  store i32 %278, i32* %13, align 4
  br label %279

279:                                              ; preds = %295, %277
  %280 = load i32, i32* %13, align 4
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 7
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = icmp sle i32 %280, %287
  br i1 %288, label %289, label %298

289:                                              ; preds = %279
  %290 = load i32, i32* %17, align 4
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %294 = call i32 @draw_dot(i32 %290, i32 %291, i32 %292, %struct.TYPE_9__* %293)
  br label %295

295:                                              ; preds = %289
  %296 = load i32, i32* %13, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %13, align 4
  br label %279

298:                                              ; preds = %279
  br label %321

299:                                              ; preds = %267
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 7
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %7, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %13, align 4
  br label %307

307:                                              ; preds = %317, %299
  %308 = load i32, i32* %13, align 4
  %309 = load i32, i32* %14, align 4
  %310 = icmp sle i32 %308, %309
  br i1 %310, label %311, label %320

311:                                              ; preds = %307
  %312 = load i32, i32* %17, align 4
  %313 = load i32, i32* %15, align 4
  %314 = load i32, i32* %13, align 4
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %316 = call i32 @draw_dot(i32 %312, i32 %313, i32 %314, %struct.TYPE_9__* %315)
  br label %317

317:                                              ; preds = %311
  %318 = load i32, i32* %13, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %13, align 4
  br label %307

320:                                              ; preds = %307
  br label %321

321:                                              ; preds = %320, %298
  %322 = load i32, i32* %14, align 4
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 7
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %7, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  store i32 %322, i32* %328, align 4
  br label %329

329:                                              ; preds = %92, %321, %238, %237
  store i32 0, i32* %20, align 4
  br label %330

330:                                              ; preds = %329, %91
  %331 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %331)
  %332 = load i32, i32* %20, align 4
  switch i32 %332, label %368 [
    i32 0, label %333
    i32 7, label %334
  ]

333:                                              ; preds = %330
  br label %334

334:                                              ; preds = %333, %330
  %335 = load i32, i32* %7, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %7, align 4
  br label %69

337:                                              ; preds = %69
  %338 = load i32, i32* %10, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %10, align 4
  %340 = load i32, i32* %10, align 4
  %341 = load i32, i32* %9, align 4
  %342 = icmp sge i32 %340, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %337
  store i32 0, i32* %10, align 4
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %345, align 8
  br label %348

348:                                              ; preds = %343, %337
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %8, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %8, align 4
  br label %61

352:                                              ; preds = %61
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 1
  store float 0.000000e+00, float* %354, align 4
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 2
  store i64 0, i64* %356, align 8
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 0
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 8
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %363, align 8
  %365 = call i32 @ff_filter_frame(i32 %361, %struct.TYPE_9__* %364)
  store i32 %365, i32* %6, align 4
  br label %366

366:                                              ; preds = %352, %44, %40, %1
  %367 = load i32, i32* %6, align 4
  ret i32 %367

368:                                              ; preds = %330
  unreachable
}

declare dso_local i32 @ff_request_frame(i32) #1

declare dso_local i32 @ceil(float) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @isnan(float) #1

declare dso_local i32 @av_expr_eval(i32, double*, i32*) #1

declare dso_local i32 @AV_RN32(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @draw_dot(i32, i32, i32, %struct.TYPE_9__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
