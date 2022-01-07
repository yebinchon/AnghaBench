; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolve.c_do_convolve.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolve.c_do_convolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_31__*, %struct.TYPE_34__*, i32** }
%struct.TYPE_31__ = type { i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)* }
%struct.TYPE_32__ = type { i32, i32, i32*, i32* }
%struct.TYPE_34__ = type { i32, i32*, i32*, i32*, i32, i32*, i32, i32**, i32**, i32, i32**, i32**, i64 }
%struct.TYPE_35__ = type { i32*, i64* }

@fft_horizontal = common dso_local global i32 0, align 4
@MAX_THREADS = common dso_local global i32 0, align 4
@fft_vertical = common dso_local global i32 0, align 4
@ifft_vertical = common dso_local global i32 0, align 4
@ifft_horizontal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*)* @do_convolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_convolve(%struct.TYPE_33__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_32__, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %3, align 8
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_36__*, %struct.TYPE_36__** %23, align 8
  store %struct.TYPE_36__* %24, %struct.TYPE_36__** %4, align 8
  %25 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %25, i32 0, i32 2
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %5, align 8
  %30 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  store %struct.TYPE_34__* %32, %struct.TYPE_34__** %6, align 8
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %7, align 8
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %8, align 8
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %34 = call i32 @ff_framesync_dualinput_get(%struct.TYPE_33__* %33, %struct.TYPE_35__** %7, %struct.TYPE_35__** %8)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %2, align 4
  br label %428

39:                                               ; preds = %1
  %40 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %41 = icmp ne %struct.TYPE_35__* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %45 = call i32 @ff_filter_frame(i32* %43, %struct.TYPE_35__* %44)
  store i32 %45, i32* %2, align 4
  br label %428

46:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %421, %46
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %424

53:                                               ; preds = %47
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %54, i32 0, i32 10
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %13, align 8
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 8
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %14, align 8
  %68 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %15, align 4
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %16, align 4
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = shl i32 1, %92
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %53
  br label %421

97:                                               ; preds = %53
  %98 = load i32, i32* %12, align 4
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = load i32, i32* %15, align 4
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  %102 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 7
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @get_input(%struct.TYPE_34__* %102, i32* %109, %struct.TYPE_35__* %110, i32 %111, i32 %112, i32 %113, i32 %114, float 1.000000e+00)
  %116 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %116, i32 0, i32 7
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 3
  store i32* %122, i32** %123, align 8
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i32 0, i32 8
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 2
  store i32* %130, i32** %131, align 8
  %132 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 0
  %136 = load i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)*, i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)** %135, align 8
  %137 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %138 = load i32, i32* @fft_horizontal, align 4
  %139 = load i32, i32* @MAX_THREADS, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %142 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_36__* %141)
  %143 = call i32 @FFMIN3(i32 %139, i32 %140, i32 %142)
  %144 = call i32 %136(%struct.TYPE_36__* %137, i32 %138, %struct.TYPE_32__* %19, i32* null, i32 %143)
  %145 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 0
  %149 = load i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)*, i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)** %148, align 8
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %151 = load i32, i32* @fft_vertical, align 4
  %152 = load i32, i32* @MAX_THREADS, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %155 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_36__* %154)
  %156 = call i32 @FFMIN3(i32 %152, i32 %153, i32 %155)
  %157 = call i32 %149(%struct.TYPE_36__* %150, i32 %151, %struct.TYPE_32__* %19, i32* null, i32 %156)
  %158 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %158, i32 0, i32 12
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %97
  %163 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %162, %97
  %172 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %172, i32 0, i32 12
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %340

176:                                              ; preds = %171, %162
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 8
  br i1 %180, label %181, label %227

181:                                              ; preds = %176
  store i32 0, i32* %10, align 4
  br label %182

182:                                              ; preds = %223, %181
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %17, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %226

186:                                              ; preds = %182
  %187 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %187, i32 0, i32 1
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 %194, %201
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %193, %203
  %205 = inttoptr i64 %204 to i64*
  store i64* %205, i64** %20, align 8
  store i32 0, i32* %11, align 4
  br label %206

206:                                              ; preds = %219, %186
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* %16, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %206
  %211 = load i64*, i64** %20, align 8
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = sitofp i64 %215 to float
  %217 = load float, float* %18, align 4
  %218 = fadd float %217, %216
  store float %218, float* %18, align 4
  br label %219

219:                                              ; preds = %210
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %206

222:                                              ; preds = %206
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %10, align 4
  br label %182

226:                                              ; preds = %182
  br label %273

227:                                              ; preds = %176
  store i32 0, i32* %10, align 4
  br label %228

228:                                              ; preds = %269, %227
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %17, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %272

232:                                              ; preds = %228
  %233 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %233, i32 0, i32 1
  %235 = load i64*, i64** %234, align 8
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* %10, align 4
  %241 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %12, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = mul nsw i32 %240, %247
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %239, %249
  %251 = inttoptr i64 %250 to i64*
  store i64* %251, i64** %21, align 8
  store i32 0, i32* %11, align 4
  br label %252

252:                                              ; preds = %265, %232
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %16, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %268

256:                                              ; preds = %252
  %257 = load i64*, i64** %21, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i64, i64* %257, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = sitofp i64 %261 to float
  %263 = load float, float* %18, align 4
  %264 = fadd float %263, %262
  store float %264, float* %18, align 4
  br label %265

265:                                              ; preds = %256
  %266 = load i32, i32* %11, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %11, align 4
  br label %252

268:                                              ; preds = %252
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %10, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %10, align 4
  br label %228

272:                                              ; preds = %228
  br label %273

273:                                              ; preds = %272, %226
  %274 = load float, float* %18, align 4
  %275 = call float @FFMAX(i32 1, float %274)
  store float %275, float* %18, align 4
  %276 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %277 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i32 0, i32 11
  %279 = load i32**, i32*** %278, align 8
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32*, i32** %279, i64 %281
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %285 = load i32, i32* %16, align 4
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* %12, align 4
  %289 = load float, float* %18, align 4
  %290 = fdiv float 1.000000e+00, %289
  %291 = call i32 @get_input(%struct.TYPE_34__* %276, i32* %283, %struct.TYPE_35__* %284, i32 %285, i32 %286, i32 %287, i32 %288, float %290)
  %292 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %292, i32 0, i32 11
  %294 = load i32**, i32*** %293, align 8
  %295 = load i32, i32* %12, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32*, i32** %294, i64 %296
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 3
  store i32* %298, i32** %299, align 8
  %300 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %300, i32 0, i32 10
  %302 = load i32**, i32*** %301, align 8
  %303 = load i32, i32* %12, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32*, i32** %302, i64 %304
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 2
  store i32* %306, i32** %307, align 8
  %308 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_31__*, %struct.TYPE_31__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %310, i32 0, i32 0
  %312 = load i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)*, i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)** %311, align 8
  %313 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %314 = load i32, i32* @fft_horizontal, align 4
  %315 = load i32, i32* @MAX_THREADS, align 4
  %316 = load i32, i32* %15, align 4
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %318 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_36__* %317)
  %319 = call i32 @FFMIN3(i32 %315, i32 %316, i32 %318)
  %320 = call i32 %312(%struct.TYPE_36__* %313, i32 %314, %struct.TYPE_32__* %19, i32* null, i32 %319)
  %321 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_31__*, %struct.TYPE_31__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %323, i32 0, i32 0
  %325 = load i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)*, i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)** %324, align 8
  %326 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %327 = load i32, i32* @fft_vertical, align 4
  %328 = load i32, i32* @MAX_THREADS, align 4
  %329 = load i32, i32* %15, align 4
  %330 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %331 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_36__* %330)
  %332 = call i32 @FFMIN3(i32 %328, i32 %329, i32 %331)
  %333 = call i32 %325(%struct.TYPE_36__* %326, i32 %327, %struct.TYPE_32__* %19, i32* null, i32 %332)
  %334 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %334, i32 0, i32 5
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %12, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  store i32 1, i32* %339, align 4
  br label %340

340:                                              ; preds = %273, %171
  %341 = load i32*, i32** %14, align 8
  %342 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 3
  store i32* %341, i32** %342, align 8
  %343 = load i32*, i32** %13, align 8
  %344 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 2
  store i32* %343, i32** %344, align 8
  %345 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_31__*, %struct.TYPE_31__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %347, i32 0, i32 0
  %349 = load i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)*, i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)** %348, align 8
  %350 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %351 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %351, i32 0, i32 9
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @MAX_THREADS, align 4
  %355 = load i32, i32* %15, align 4
  %356 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %357 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_36__* %356)
  %358 = call i32 @FFMIN3(i32 %354, i32 %355, i32 %357)
  %359 = call i32 %349(%struct.TYPE_36__* %350, i32 %353, %struct.TYPE_32__* %19, i32* null, i32 %358)
  %360 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %360, i32 0, i32 7
  %362 = load i32**, i32*** %361, align 8
  %363 = load i32, i32* %12, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32*, i32** %362, i64 %364
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 3
  store i32* %366, i32** %367, align 8
  %368 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %368, i32 0, i32 8
  %370 = load i32**, i32*** %369, align 8
  %371 = load i32, i32* %12, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32*, i32** %370, i64 %372
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 2
  store i32* %374, i32** %375, align 8
  %376 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_31__*, %struct.TYPE_31__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %378, i32 0, i32 0
  %380 = load i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)*, i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)** %379, align 8
  %381 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %382 = load i32, i32* @ifft_vertical, align 4
  %383 = load i32, i32* @MAX_THREADS, align 4
  %384 = load i32, i32* %15, align 4
  %385 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %386 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_36__* %385)
  %387 = call i32 @FFMIN3(i32 %383, i32 %384, i32 %386)
  %388 = call i32 %380(%struct.TYPE_36__* %381, i32 %382, %struct.TYPE_32__* %19, i32* null, i32 %387)
  %389 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %389, i32 0, i32 0
  %391 = load %struct.TYPE_31__*, %struct.TYPE_31__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %391, i32 0, i32 0
  %393 = load i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)*, i32 (%struct.TYPE_36__*, i32, %struct.TYPE_32__*, i32*, i32)** %392, align 8
  %394 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %395 = load i32, i32* @ifft_horizontal, align 4
  %396 = load i32, i32* @MAX_THREADS, align 4
  %397 = load i32, i32* %15, align 4
  %398 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %399 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_36__* %398)
  %400 = call i32 @FFMIN3(i32 %396, i32 %397, i32 %399)
  %401 = call i32 %393(%struct.TYPE_36__* %394, i32 %395, %struct.TYPE_32__* %19, i32* null, i32 %400)
  %402 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %403 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %403, i32 0, i32 7
  %405 = load i32**, i32*** %404, align 8
  %406 = load i32, i32* %12, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32*, i32** %405, i64 %407
  %409 = load i32*, i32** %408, align 8
  %410 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %411 = load i32, i32* %16, align 4
  %412 = load i32, i32* %17, align 4
  %413 = load i32, i32* %15, align 4
  %414 = load i32, i32* %12, align 4
  %415 = load i32, i32* %15, align 4
  %416 = load i32, i32* %15, align 4
  %417 = mul nsw i32 %415, %416
  %418 = sitofp i32 %417 to float
  %419 = fdiv float 1.000000e+00, %418
  %420 = call i32 @get_output(%struct.TYPE_34__* %402, i32* %409, %struct.TYPE_35__* %410, i32 %411, i32 %412, i32 %413, i32 %414, float %419)
  br label %421

421:                                              ; preds = %340, %96
  %422 = load i32, i32* %12, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %12, align 4
  br label %47

424:                                              ; preds = %47
  %425 = load i32*, i32** %5, align 8
  %426 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %427 = call i32 @ff_filter_frame(i32* %425, %struct.TYPE_35__* %426)
  store i32 %427, i32* %2, align 4
  br label %428

428:                                              ; preds = %424, %42, %37
  %429 = load i32, i32* %2, align 4
  ret i32 %429
}

declare dso_local i32 @ff_framesync_dualinput_get(%struct.TYPE_33__*, %struct.TYPE_35__**, %struct.TYPE_35__**) #1

declare dso_local i32 @ff_filter_frame(i32*, %struct.TYPE_35__*) #1

declare dso_local i32 @get_input(%struct.TYPE_34__*, i32*, %struct.TYPE_35__*, i32, i32, i32, i32, float) #1

declare dso_local i32 @FFMIN3(i32, i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_36__*) #1

declare dso_local float @FFMAX(i32, float) #1

declare dso_local i32 @get_output(%struct.TYPE_34__*, i32*, %struct.TYPE_35__*, i32, i32, i32, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
