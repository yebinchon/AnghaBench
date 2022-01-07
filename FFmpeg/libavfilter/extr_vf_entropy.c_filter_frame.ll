; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_entropy.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_entropy.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__*, %struct.TYPE_11__** }
%struct.TYPE_9__ = type { i32, i32*, float*, float*, float*, i32, i64, i32*, i64 }
%struct.TYPE_10__ = type { i64**, i32*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"lavfi.entropy.entropy.%s.%c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"lavfi.entropy.normalized_entropy.%s.%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca [128 x i8], align 16
  %17 = alloca [128 x i8], align 16
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %5, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %25, i64 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %6, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %364, %2
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %367

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  br label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %42
  %53 = phi i32 [ %49, %42 ], [ %51, %50 ]
  store i32 %53, i32* %11, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64**, i64*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64*, i64** %56, i64 %58
  %60 = load i64*, i64** %59, align 8
  store i64* %60, i64** %12, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64**, i64*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64*, i64** %63, i64 %65
  %67 = load i64*, i64** %66, align 8
  store i64* %67, i64** %13, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load float*, float** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load float*, float** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = fmul float %74, %81
  store float %82, float* %14, align 4
  store float 0.000000e+00, float* %15, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 4
  %85 = load float*, float** %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 1, %88
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memset(float* %85, i32 0, i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = icmp sle i32 %96, 8
  br i1 %97, label %98, label %152

98:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %148, %98
  %100 = load i32, i32* %9, align 4
  %101 = sitofp i32 %100 to float
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load float*, float** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  %108 = load float, float* %107, align 4
  %109 = fcmp olt float %101, %108
  br i1 %109, label %110, label %151

110:                                              ; preds = %99
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %134, %110
  %112 = load i32, i32* %10, align 4
  %113 = sitofp i32 %112 to float
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load float*, float** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %116, i64 %118
  %120 = load float, float* %119, align 4
  %121 = fcmp olt float %113, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %111
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 4
  %125 = load float*, float** %124, align 8
  %126 = load i64*, i64** %12, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds float, float* %125, i64 %130
  %132 = load float, float* %131, align 4
  %133 = fadd float %132, 1.000000e+00
  store float %133, float* %131, align 4
  br label %134

134:                                              ; preds = %122
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %111

137:                                              ; preds = %111
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i64*, i64** %12, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  store i64* %147, i64** %12, align 8
  br label %148

148:                                              ; preds = %137
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %99

151:                                              ; preds = %99
  br label %207

152:                                              ; preds = %52
  store i32 0, i32* %9, align 4
  br label %153

153:                                              ; preds = %203, %152
  %154 = load i32, i32* %9, align 4
  %155 = sitofp i32 %154 to float
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 3
  %158 = load float*, float** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %158, i64 %160
  %162 = load float, float* %161, align 4
  %163 = fcmp olt float %155, %162
  br i1 %163, label %164, label %206

164:                                              ; preds = %153
  store i32 0, i32* %10, align 4
  br label %165

165:                                              ; preds = %188, %164
  %166 = load i32, i32* %10, align 4
  %167 = sitofp i32 %166 to float
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  %170 = load float*, float** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %170, i64 %172
  %174 = load float, float* %173, align 4
  %175 = fcmp olt float %167, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %165
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 4
  %179 = load float*, float** %178, align 8
  %180 = load i64*, i64** %13, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds float, float* %179, i64 %184
  %186 = load float, float* %185, align 4
  %187 = fadd float %186, 1.000000e+00
  store float %187, float* %185, align 4
  br label %188

188:                                              ; preds = %176
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %165

191:                                              ; preds = %165
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = sdiv i32 %198, 2
  %200 = load i64*, i64** %13, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i64, i64* %200, i64 %201
  store i64* %202, i64** %13, align 8
  br label %203

203:                                              ; preds = %191
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %9, align 4
  br label %153

206:                                              ; preds = %153
  br label %207

207:                                              ; preds = %206, %151
  store i32 0, i32* %9, align 4
  br label %208

208:                                              ; preds = %306, %207
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = shl i32 1, %212
  %214 = icmp slt i32 %209, %213
  br i1 %214, label %215, label %309

215:                                              ; preds = %208
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %248

220:                                              ; preds = %215
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 4
  %223 = load float*, float** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %223, i64 %225
  %227 = load float, float* %226, align 4
  %228 = fcmp une float %227, 0.000000e+00
  br i1 %228, label %229, label %247

229:                                              ; preds = %220
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 4
  %232 = load float*, float** %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %232, i64 %234
  %236 = load float, float* %235, align 4
  %237 = load float, float* %14, align 4
  %238 = fdiv float %236, %237
  store float %238, float* %18, align 4
  %239 = load float, float* %18, align 4
  %240 = fptosi float %239 to i32
  %241 = call float @log2(i32 %240)
  %242 = fneg float %241
  %243 = load float, float* %18, align 4
  %244 = fmul float %242, %243
  %245 = load float, float* %15, align 4
  %246 = fadd float %245, %244
  store float %246, float* %15, align 4
  br label %247

247:                                              ; preds = %229, %220
  br label %305

248:                                              ; preds = %215
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = icmp eq i64 %251, 1
  br i1 %252, label %253, label %304

253:                                              ; preds = %248
  %254 = load i32, i32* %9, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %303

256:                                              ; preds = %253
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 4
  %259 = load float*, float** %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %259, i64 %261
  %263 = load float, float* %262, align 4
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 4
  %266 = load float*, float** %265, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sub nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %266, i64 %269
  %271 = load float, float* %270, align 4
  %272 = fsub float %263, %271
  %273 = fcmp une float %272, 0.000000e+00
  br i1 %273, label %274, label %303

274:                                              ; preds = %256
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 4
  %277 = load float*, float** %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %277, i64 %279
  %281 = load float, float* %280, align 4
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 4
  %284 = load float*, float** %283, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sub nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %284, i64 %287
  %289 = load float, float* %288, align 4
  %290 = fsub float %281, %289
  %291 = fptosi float %290 to i64
  %292 = call float @FFABS(i64 %291)
  %293 = load float, float* %14, align 4
  %294 = fdiv float %292, %293
  store float %294, float* %19, align 4
  %295 = load float, float* %19, align 4
  %296 = fptosi float %295 to i32
  %297 = call float @log2(i32 %296)
  %298 = fneg float %297
  %299 = load float, float* %19, align 4
  %300 = fmul float %298, %299
  %301 = load float, float* %15, align 4
  %302 = fadd float %301, %300
  store float %302, float* %15, align 4
  br label %303

303:                                              ; preds = %274, %256, %253
  br label %304

304:                                              ; preds = %303, %248
  br label %305

305:                                              ; preds = %304, %247
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %9, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %9, align 4
  br label %208

309:                                              ; preds = %208
  %310 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 6
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  %315 = zext i1 %314 to i64
  %316 = select i1 %314, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 7
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %11, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %310, i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %316, i32 %323)
  %325 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %326 = load float, float* %15, align 4
  %327 = fpext float %326 to double
  %328 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %325, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double %327)
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 2
  %331 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %332 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %333 = call i32 @av_dict_set(i32* %330, i8* %331, i8* %332, i32 0)
  %334 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 6
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  %339 = zext i1 %338 to i64
  %340 = select i1 %338, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 7
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %11, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %334, i32 128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %340, i32 %347)
  %349 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %350 = load float, float* %15, align 4
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 8
  %354 = shl i32 1, %353
  %355 = call float @log2(i32 %354)
  %356 = fdiv float %350, %355
  %357 = fpext float %356 to double
  %358 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %349, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double %357)
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 2
  %361 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %362 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %363 = call i32 @av_dict_set(i32* %360, i8* %361, i8* %362, i32 0)
  br label %364

364:                                              ; preds = %309
  %365 = load i32, i32* %8, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %8, align 4
  br label %31

367:                                              ; preds = %31
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %370 = call i32 @ff_filter_frame(%struct.TYPE_11__* %368, %struct.TYPE_10__* %369)
  ret i32 %370
}

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local float @log2(i32) #1

declare dso_local float @FFABS(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
