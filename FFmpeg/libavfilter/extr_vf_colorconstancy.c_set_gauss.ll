; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorconstancy.c_set_gauss.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorconstancy.c_set_gauss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, double, i32** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Out of memory while allocating gauss buffers.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Setting 0-d gauss with filtersize = %d.\0A\00", align 1
@M_PI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Setting 1-d gauss with filtersize = %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Setting 2-d gauss with filtersize = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @set_gauss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_gauss(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load double, double* %21, align 8
  store double %22, double* %7, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %66, %1
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @av_mallocz_array(i32 %28, i32 4)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  store i32* %29, i32** %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %65, label %44

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %56, %44
  %46 = load i32, i32* %10, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = call i32 @av_freep(i32** %54)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %10, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %60, i32 %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %365

65:                                               ; preds = %27
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %23

69:                                               ; preds = %23
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = load i32, i32* @AV_LOG_TRACE, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %70, i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  store double 0.000000e+00, double* %8, align 8
  %74 = load double, double* %7, align 8
  %75 = fcmp une double %74, 0.000000e+00
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 1, i32* %82, align 4
  br label %155

83:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %129, %83
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %132

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call double @GINDX(i32 %89, i32 %90)
  %92 = call i32 @pow(double %91, i32 2)
  %93 = sub nsw i32 0, %92
  %94 = sitofp i32 %93 to double
  %95 = load double, double* %7, align 8
  %96 = fmul double 2.000000e+00, %95
  %97 = load double, double* %7, align 8
  %98 = fmul double %96, %97
  %99 = fdiv double %94, %98
  %100 = fptosi double %99 to i32
  %101 = call double @exp(i32 %100)
  %102 = load i32, i32* @M_PI, align 4
  %103 = mul nsw i32 2, %102
  %104 = call double @sqrt(i32 %103)
  %105 = load double, double* %7, align 8
  %106 = fmul double %104, %105
  %107 = fdiv double %101, %106
  %108 = fptosi double %107 to i32
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %108, i32* %116, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sitofp i32 %125 to double
  %127 = load double, double* %8, align 8
  %128 = fadd double %127, %126
  store double %128, double* %8, align 8
  br label %129

129:                                              ; preds = %88
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %84

132:                                              ; preds = %84
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %151, %132
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %133
  %138 = load double, double* %8, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sitofp i32 %147 to double
  %149 = fdiv double %148, %138
  %150 = fptosi double %149 to i32
  store i32 %150, i32* %146, align 4
  br label %151

151:                                              ; preds = %137
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %133

154:                                              ; preds = %133
  br label %155

155:                                              ; preds = %154, %76
  %156 = load i32, i32* %6, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %364

158:                                              ; preds = %155
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %160 = load i32, i32* @AV_LOG_TRACE, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %159, i32 %160, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %161)
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %10, align 4
  br label %163

163:                                              ; preds = %212, %158
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %215

167:                                              ; preds = %163
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %10, align 4
  %170 = call double @GINDX(i32 %168, i32 %169)
  %171 = load double, double* %7, align 8
  %172 = call i32 @pow(double %171, i32 2)
  %173 = sitofp i32 %172 to double
  %174 = fdiv double %170, %173
  %175 = fneg double %174
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 3
  %178 = load i32**, i32*** %177, align 8
  %179 = getelementptr inbounds i32*, i32** %178, i64 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sitofp i32 %184 to double
  %186 = fmul double %175, %185
  %187 = fptosi double %186 to i32
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 3
  %190 = load i32**, i32*** %189, align 8
  %191 = getelementptr inbounds i32*, i32** %190, i64 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %187, i32* %195, align 4
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 3
  %198 = load i32**, i32*** %197, align 8
  %199 = getelementptr inbounds i32*, i32** %198, i64 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = sitofp i32 %204 to double
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* %10, align 4
  %208 = call double @GINDX(i32 %206, i32 %207)
  %209 = fmul double %205, %208
  %210 = load double, double* %8, align 8
  %211 = fadd double %210, %209
  store double %211, double* %8, align 8
  br label %212

212:                                              ; preds = %167
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %163

215:                                              ; preds = %163
  store i32 0, i32* %10, align 4
  br label %216

216:                                              ; preds = %234, %215
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %5, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %237

220:                                              ; preds = %216
  %221 = load double, double* %8, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 3
  %224 = load i32**, i32*** %223, align 8
  %225 = getelementptr inbounds i32*, i32** %224, i64 1
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sitofp i32 %230 to double
  %232 = fdiv double %231, %221
  %233 = fptosi double %232 to i32
  store i32 %233, i32* %229, align 4
  br label %234

234:                                              ; preds = %220
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  br label %216

237:                                              ; preds = %216
  %238 = load i32, i32* %6, align 4
  %239 = icmp sgt i32 %238, 1
  br i1 %239, label %240, label %363

240:                                              ; preds = %237
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %242 = load i32, i32* @AV_LOG_TRACE, align 4
  %243 = load i32, i32* %5, align 4
  %244 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %241, i32 %242, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %243)
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %10, align 4
  br label %245

245:                                              ; preds = %291, %240
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %5, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %294

249:                                              ; preds = %245
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* %10, align 4
  %252 = call double @GINDX(i32 %250, i32 %251)
  %253 = call i32 @pow(double %252, i32 2)
  %254 = load double, double* %7, align 8
  %255 = call i32 @pow(double %254, i32 4)
  %256 = sdiv i32 %253, %255
  %257 = load double, double* %7, align 8
  %258 = call i32 @pow(double %257, i32 2)
  %259 = sdiv i32 1, %258
  %260 = sub nsw i32 %256, %259
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 3
  %263 = load i32**, i32*** %262, align 8
  %264 = getelementptr inbounds i32*, i32** %263, i64 0
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %10, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = mul nsw i32 %260, %269
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 3
  %273 = load i32**, i32*** %272, align 8
  %274 = getelementptr inbounds i32*, i32** %273, i64 2
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  store i32 %270, i32* %278, align 4
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 3
  %281 = load i32**, i32*** %280, align 8
  %282 = getelementptr inbounds i32*, i32** %281, i64 2
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = sitofp i32 %287 to double
  %289 = load double, double* %8, align 8
  %290 = fadd double %289, %288
  store double %290, double* %8, align 8
  br label %291

291:                                              ; preds = %249
  %292 = load i32, i32* %10, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %10, align 4
  br label %245

294:                                              ; preds = %245
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %10, align 4
  br label %295

295:                                              ; preds = %337, %294
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* %5, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %340

299:                                              ; preds = %295
  %300 = load double, double* %8, align 8
  %301 = load i32, i32* %5, align 4
  %302 = sitofp i32 %301 to double
  %303 = fdiv double %300, %302
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 3
  %306 = load i32**, i32*** %305, align 8
  %307 = getelementptr inbounds i32*, i32** %306, i64 2
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %10, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = sitofp i32 %312 to double
  %314 = fsub double %313, %303
  %315 = fptosi double %314 to i32
  store i32 %315, i32* %311, align 4
  %316 = load i32, i32* %5, align 4
  %317 = load i32, i32* %10, align 4
  %318 = call double @GINDX(i32 %316, i32 %317)
  %319 = fmul double 5.000000e-01, %318
  %320 = load i32, i32* %5, align 4
  %321 = load i32, i32* %10, align 4
  %322 = call double @GINDX(i32 %320, i32 %321)
  %323 = fmul double %319, %322
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 3
  %326 = load i32**, i32*** %325, align 8
  %327 = getelementptr inbounds i32*, i32** %326, i64 2
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %10, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = sitofp i32 %332 to double
  %334 = fmul double %323, %333
  %335 = load double, double* %9, align 8
  %336 = fadd double %335, %334
  store double %336, double* %9, align 8
  br label %337

337:                                              ; preds = %299
  %338 = load i32, i32* %10, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %10, align 4
  br label %295

340:                                              ; preds = %295
  store i32 0, i32* %10, align 4
  br label %341

341:                                              ; preds = %359, %340
  %342 = load i32, i32* %10, align 4
  %343 = load i32, i32* %5, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %362

345:                                              ; preds = %341
  %346 = load double, double* %9, align 8
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 3
  %349 = load i32**, i32*** %348, align 8
  %350 = getelementptr inbounds i32*, i32** %349, i64 2
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %10, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = sitofp i32 %355 to double
  %357 = fdiv double %356, %346
  %358 = fptosi double %357 to i32
  store i32 %358, i32* %354, align 4
  br label %359

359:                                              ; preds = %345
  %360 = load i32, i32* %10, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %10, align 4
  br label %341

362:                                              ; preds = %341
  br label %363

363:                                              ; preds = %362, %237
  br label %364

364:                                              ; preds = %363, %155
  store i32 0, i32* %2, align 4
  br label %365

365:                                              ; preds = %364, %59
  %366 = load i32, i32* %2, align 4
  ret i32 %366
}

declare dso_local i32* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local double @exp(i32) #1

declare dso_local i32 @pow(double, i32) #1

declare dso_local double @GINDX(i32, i32) #1

declare dso_local double @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
