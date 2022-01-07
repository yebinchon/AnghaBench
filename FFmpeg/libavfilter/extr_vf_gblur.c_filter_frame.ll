; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_gblur.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_gblur.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__**, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32*, i32*, float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { float**, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %6, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %7, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %28, i64 0
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %8, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 14
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 13
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 12
  %43 = call i32 @set_params(i32 %33, i32 %36, i32* %38, i32* %40, i32* %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 11
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 9
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 7
  %56 = call i32 @set_params(i32 %46, i32 %49, i32* %51, i32* %53, i32* %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = call i64 @av_frame_is_writable(%struct.TYPE_17__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %2
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %9, align 8
  br label %81

62:                                               ; preds = %2
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.TYPE_17__* @ff_get_video_buffer(%struct.TYPE_18__* %63, i32 %66, i32 %69)
  store %struct.TYPE_17__* %70, %struct.TYPE_17__** %9, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %72 = icmp ne %struct.TYPE_17__* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %62
  %74 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %3, align 4
  br label %389

77:                                               ; preds = %62
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = call i32 @av_frame_copy_props(%struct.TYPE_17__* %78, %struct.TYPE_17__* %79)
  br label %81

81:                                               ; preds = %77, %60
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %376, %81
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %379

88:                                               ; preds = %82
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %11, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %12, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 3
  %105 = load float*, float** %104, align 8
  store float* %105, float** %13, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load float**, float*** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float*, float** %108, i64 %110
  %112 = load float*, float** %111, align 8
  store float* %112, float** %14, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load float**, float*** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float*, float** %115, i64 %117
  %119 = load float*, float** %118, align 8
  store float* %119, float** %15, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load float**, float*** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float*, float** %122, i64 %124
  %126 = load float*, float** %125, align 8
  store float* %126, float** %16, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load float**, float*** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float*, float** %129, i64 %131
  %133 = load float*, float** %132, align 8
  store float* %133, float** %17, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %88
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = shl i32 1, %142
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %189, label %146

146:                                              ; preds = %138, %88
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %149 = icmp ne %struct.TYPE_17__* %147, %148
  br i1 %149, label %150, label %188

150:                                              ; preds = %146
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load float**, float*** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float*, float** %153, i64 %155
  %157 = load float*, float** %156, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load float**, float*** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float*, float** %167, i64 %169
  %171 = load float*, float** %170, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 7
  %184 = sdiv i32 %183, 8
  %185 = mul nsw i32 %179, %184
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @av_image_copy_plane(float* %157, i32 %164, float* %171, i32 %178, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %150, %146
  br label %376

189:                                              ; preds = %138
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 8
  br i1 %193, label %194, label %236

194:                                              ; preds = %189
  store i32 0, i32* %18, align 4
  br label %195

195:                                              ; preds = %232, %194
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* %11, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %235

199:                                              ; preds = %195
  store i32 0, i32* %19, align 4
  br label %200

200:                                              ; preds = %214, %199
  %201 = load i32, i32* %19, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %217

204:                                              ; preds = %200
  %205 = load float*, float** %14, align 8
  %206 = load i32, i32* %19, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %205, i64 %207
  %209 = load float, float* %208, align 4
  %210 = load float*, float** %13, align 8
  %211 = load i32, i32* %19, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %210, i64 %212
  store float %209, float* %213, align 4
  br label %214

214:                                              ; preds = %204
  %215 = load i32, i32* %19, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %19, align 4
  br label %200

217:                                              ; preds = %200
  %218 = load i32, i32* %12, align 4
  %219 = load float*, float** %13, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds float, float* %219, i64 %220
  store float* %221, float** %13, align 8
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load float*, float** %14, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds float, float* %229, i64 %230
  store float* %231, float** %14, align 8
  br label %232

232:                                              ; preds = %217
  %233 = load i32, i32* %18, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %18, align 4
  br label %195

235:                                              ; preds = %195
  br label %279

236:                                              ; preds = %189
  store i32 0, i32* %18, align 4
  br label %237

237:                                              ; preds = %275, %236
  %238 = load i32, i32* %18, align 4
  %239 = load i32, i32* %11, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %278

241:                                              ; preds = %237
  store i32 0, i32* %19, align 4
  br label %242

242:                                              ; preds = %256, %241
  %243 = load i32, i32* %19, align 4
  %244 = load i32, i32* %12, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %259

246:                                              ; preds = %242
  %247 = load float*, float** %15, align 8
  %248 = load i32, i32* %19, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds float, float* %247, i64 %249
  %251 = load float, float* %250, align 4
  %252 = load float*, float** %13, align 8
  %253 = load i32, i32* %19, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %252, i64 %254
  store float %251, float* %255, align 4
  br label %256

256:                                              ; preds = %246
  %257 = load i32, i32* %19, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %19, align 4
  br label %242

259:                                              ; preds = %242
  %260 = load i32, i32* %12, align 4
  %261 = load float*, float** %13, align 8
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds float, float* %261, i64 %262
  store float* %263, float** %13, align 8
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = sdiv i32 %270, 2
  %272 = load float*, float** %15, align 8
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds float, float* %272, i64 %273
  store float* %274, float** %15, align 8
  br label %275

275:                                              ; preds = %259
  %276 = load i32, i32* %18, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %18, align 4
  br label %237

278:                                              ; preds = %237
  br label %279

279:                                              ; preds = %278, %235
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %281 = load i32, i32* %10, align 4
  %282 = call i32 @gaussianiir2d(%struct.TYPE_19__* %280, i32 %281)
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 3
  %285 = load float*, float** %284, align 8
  store float* %285, float** %13, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %288, 8
  br i1 %289, label %290, label %332

290:                                              ; preds = %279
  store i32 0, i32* %18, align 4
  br label %291

291:                                              ; preds = %328, %290
  %292 = load i32, i32* %18, align 4
  %293 = load i32, i32* %11, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %331

295:                                              ; preds = %291
  store i32 0, i32* %19, align 4
  br label %296

296:                                              ; preds = %310, %295
  %297 = load i32, i32* %19, align 4
  %298 = load i32, i32* %12, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %313

300:                                              ; preds = %296
  %301 = load float*, float** %13, align 8
  %302 = load i32, i32* %19, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %301, i64 %303
  %305 = load float, float* %304, align 4
  %306 = load float*, float** %16, align 8
  %307 = load i32, i32* %19, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %306, i64 %308
  store float %305, float* %309, align 4
  br label %310

310:                                              ; preds = %300
  %311 = load i32, i32* %19, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %19, align 4
  br label %296

313:                                              ; preds = %296
  %314 = load i32, i32* %12, align 4
  %315 = load float*, float** %13, align 8
  %316 = sext i32 %314 to i64
  %317 = getelementptr inbounds float, float* %315, i64 %316
  store float* %317, float** %13, align 8
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %10, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load float*, float** %16, align 8
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds float, float* %325, i64 %326
  store float* %327, float** %16, align 8
  br label %328

328:                                              ; preds = %313
  %329 = load i32, i32* %18, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %18, align 4
  br label %291

331:                                              ; preds = %291
  br label %375

332:                                              ; preds = %279
  store i32 0, i32* %18, align 4
  br label %333

333:                                              ; preds = %371, %332
  %334 = load i32, i32* %18, align 4
  %335 = load i32, i32* %11, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %374

337:                                              ; preds = %333
  store i32 0, i32* %19, align 4
  br label %338

338:                                              ; preds = %352, %337
  %339 = load i32, i32* %19, align 4
  %340 = load i32, i32* %12, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %355

342:                                              ; preds = %338
  %343 = load float*, float** %13, align 8
  %344 = load i32, i32* %19, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %343, i64 %345
  %347 = load float, float* %346, align 4
  %348 = load float*, float** %17, align 8
  %349 = load i32, i32* %19, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, float* %348, i64 %350
  store float %347, float* %351, align 4
  br label %352

352:                                              ; preds = %342
  %353 = load i32, i32* %19, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %19, align 4
  br label %338

355:                                              ; preds = %338
  %356 = load i32, i32* %12, align 4
  %357 = load float*, float** %13, align 8
  %358 = sext i32 %356 to i64
  %359 = getelementptr inbounds float, float* %357, i64 %358
  store float* %359, float** %13, align 8
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 1
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %10, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = sdiv i32 %366, 2
  %368 = load float*, float** %17, align 8
  %369 = sext i32 %367 to i64
  %370 = getelementptr inbounds float, float* %368, i64 %369
  store float* %370, float** %17, align 8
  br label %371

371:                                              ; preds = %355
  %372 = load i32, i32* %18, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %18, align 4
  br label %333

374:                                              ; preds = %333
  br label %375

375:                                              ; preds = %374, %331
  br label %376

376:                                              ; preds = %375, %188
  %377 = load i32, i32* %10, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %10, align 4
  br label %82

379:                                              ; preds = %82
  %380 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %382 = icmp ne %struct.TYPE_17__* %380, %381
  br i1 %382, label %383, label %385

383:                                              ; preds = %379
  %384 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  br label %385

385:                                              ; preds = %383, %379
  %386 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %388 = call i32 @ff_filter_frame(%struct.TYPE_18__* %386, %struct.TYPE_17__* %387)
  store i32 %388, i32* %3, align 4
  br label %389

389:                                              ; preds = %385, %73
  %390 = load i32, i32* %3, align 4
  ret i32 %390
}

declare dso_local i32 @set_params(i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @ff_get_video_buffer(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_image_copy_plane(float*, i32, float*, i32, i32, i32) #1

declare dso_local i32 @gaussianiir2d(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
