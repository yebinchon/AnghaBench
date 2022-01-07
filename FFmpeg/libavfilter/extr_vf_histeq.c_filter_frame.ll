; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_histeq.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_histeq.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__**, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32*, i32, i32*, i32*, i32*, i64 }
%struct.TYPE_16__ = type { i32**, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@LCG_SEED = common dso_local global i32 0, align 4
@A = common dso_local global i64 0, align 8
@HISTEQ_ANTIBANDING_NONE = common dso_local global i64 0, align 8
@HISTEQ_ANTIBANDING_WEAK = common dso_local global i64 0, align 8
@LCG_M = common dso_local global i32 0, align 4
@R = common dso_local global i64 0, align 8
@G = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %6, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %7, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %35, i64 0
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %8, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 1000
  store i32 %41, i32* %9, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 1000
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_16__* @ff_get_video_buffer(%struct.TYPE_17__* %46, i32 %49, i32 %52)
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %20, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %55 = icmp ne %struct.TYPE_16__* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %2
  %57 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = call i32 @AVERROR(i32 %58)
  store i32 %59, i32* %3, align 4
  br label %576

60:                                               ; preds = %2
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = call i32 @av_frame_copy_props(%struct.TYPE_16__* %61, %struct.TYPE_16__* %62)
  %64 = load i32, i32* @LCG_SEED, align 4
  store i32 %64, i32* %24, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @memset(i32* %67, i32 0, i32 8)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %25, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %26, align 8
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %157, %60
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %160

85:                                               ; preds = %79
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %134, %85
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %90, %93
  %95 = icmp slt i32 %87, %94
  br i1 %95, label %96, label %140

96:                                               ; preds = %86
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %23, align 4
  %100 = load i32*, i32** %25, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @GET_RGB_VALUES(i32 %97, i32 %98, i32 %99, i32* %100, i32* %103)
  %105 = load i32, i32* %21, align 4
  %106 = mul i32 55, %105
  %107 = load i32, i32* %22, align 4
  %108 = mul i32 182, %107
  %109 = add i32 %106, %108
  %110 = load i32, i32* %23, align 4
  %111 = mul i32 19, %110
  %112 = add i32 %109, %111
  %113 = lshr i32 %112, 8
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load i32*, i32** %26, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @A, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %116, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %115, i64 %124
  store i32 %114, i32* %125, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %96
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %86

140:                                              ; preds = %86
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %25, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32* %148, i32** %25, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %26, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %26, align 8
  br label %157

157:                                              ; preds = %140
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %79

160:                                              ; preds = %79
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  store i32 %165, i32* %169, align 4
  store i32 1, i32* %11, align 4
  br label %170

170:                                              ; preds = %196, %160
  %171 = load i32, i32* %11, align 4
  %172 = icmp slt i32 %171, 256
  br i1 %172, label %173, label %199

173:                                              ; preds = %170
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 5
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %181, %188
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 5
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %189, i32* %195, align 4
  br label %196

196:                                              ; preds = %173
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  br label %170

199:                                              ; preds = %170
  store i32 0, i32* %11, align 4
  br label %200

200:                                              ; preds = %227, %199
  %201 = load i32, i32* %11, align 4
  %202 = icmp slt i32 %201, 256
  br i1 %202, label %203, label %230

203:                                              ; preds = %200
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 5
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %10, align 4
  %212 = mul nsw i32 %210, %211
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = mul nsw i32 %215, %218
  %220 = sdiv i32 %212, %219
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 5
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 %220, i32* %226, align 4
  br label %227

227:                                              ; preds = %203
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %200

230:                                              ; preds = %200
  store i32 0, i32* %11, align 4
  br label %231

231:                                              ; preds = %257, %230
  %232 = load i32, i32* %11, align 4
  %233 = icmp slt i32 %232, 256
  br i1 %233, label %234, label %260

234:                                              ; preds = %231
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 5
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = mul nsw i32 %235, %242
  %244 = sdiv i32 %243, 255
  %245 = load i32, i32* %9, align 4
  %246 = sub nsw i32 255, %245
  %247 = load i32, i32* %11, align 4
  %248 = mul nsw i32 %246, %247
  %249 = sdiv i32 %248, 255
  %250 = add nsw i32 %244, %249
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 5
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 %250, i32* %256, align 4
  br label %257

257:                                              ; preds = %234
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %11, align 4
  br label %231

260:                                              ; preds = %231
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 6
  %263 = load i32*, i32** %262, align 8
  %264 = call i32 @memset(i32* %263, i32 0, i32 8)
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 0
  %267 = load i32**, i32*** %266, align 8
  %268 = getelementptr inbounds i32*, i32** %267, i64 0
  %269 = load i32*, i32** %268, align 8
  store i32* %269, i32** %25, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = load i32**, i32*** %271, align 8
  %273 = getelementptr inbounds i32*, i32** %272, i64 0
  %274 = load i32*, i32** %273, align 8
  store i32* %274, i32** %26, align 8
  store i32 0, i32* %12, align 4
  br label %275

275:                                              ; preds = %568, %260
  %276 = load i32, i32* %12, align 4
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp slt i32 %276, %279
  br i1 %280, label %281, label %571

281:                                              ; preds = %275
  store i32 0, i32* %11, align 4
  br label %282

282:                                              ; preds = %545, %281
  %283 = load i32, i32* %11, align 4
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = mul nsw i32 %286, %289
  %291 = icmp slt i32 %283, %290
  br i1 %291, label %292, label %551

292:                                              ; preds = %282
  %293 = load i32*, i32** %26, align 8
  %294 = load i32, i32* %11, align 4
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 4
  %297 = load i32*, i32** %296, align 8
  %298 = load i64, i64* @A, align 8
  %299 = getelementptr inbounds i32, i32* %297, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = add nsw i32 %294, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %293, i64 %302
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %17, align 4
  %305 = load i32, i32* %17, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %331

307:                                              ; preds = %292
  store i32 0, i32* %13, align 4
  br label %308

308:                                              ; preds = %321, %307
  %309 = load i32, i32* %13, align 4
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = icmp slt i32 %309, %312
  br i1 %313, label %314, label %324

314:                                              ; preds = %308
  %315 = load i32*, i32** %26, align 8
  %316 = load i32, i32* %11, align 4
  %317 = load i32, i32* %13, align 4
  %318 = add nsw i32 %316, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %315, i64 %319
  store i32 0, i32* %320, align 4
  br label %321

321:                                              ; preds = %314
  %322 = load i32, i32* %13, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %13, align 4
  br label %308

324:                                              ; preds = %308
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 6
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 4
  br label %544

331:                                              ; preds = %292
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 5
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %17, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %16, align 4
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 7
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @HISTEQ_ANTIBANDING_NONE, align 8
  %343 = icmp ne i64 %341, %342
  br i1 %343, label %344, label %442

344:                                              ; preds = %331
  %345 = load i32, i32* %17, align 4
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %347, label %382

347:                                              ; preds = %344
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 7
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @HISTEQ_ANTIBANDING_WEAK, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %371

353:                                              ; preds = %347
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 5
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %17, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 5
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %17, align 4
  %365 = sub nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %363, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %360, %368
  %370 = sdiv i32 %369, 2
  br label %380

371:                                              ; preds = %347
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 5
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %17, align 4
  %376 = sub nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %374, i64 %377
  %379 = load i32, i32* %378, align 4
  br label %380

380:                                              ; preds = %371, %353
  %381 = phi i32 [ %370, %353 ], [ %379, %371 ]
  store i32 %381, i32* %15, align 4
  br label %384

382:                                              ; preds = %344
  %383 = load i32, i32* %16, align 4
  store i32 %383, i32* %15, align 4
  br label %384

384:                                              ; preds = %382, %380
  %385 = load i32, i32* %17, align 4
  %386 = icmp slt i32 %385, 255
  br i1 %386, label %387, label %422

387:                                              ; preds = %384
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 7
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @HISTEQ_ANTIBANDING_WEAK, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %411

393:                                              ; preds = %387
  %394 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %394, i32 0, i32 5
  %396 = load i32*, i32** %395, align 8
  %397 = load i32, i32* %17, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 5
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %17, align 4
  %405 = add nsw i32 %404, 1
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %403, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = add nsw i32 %400, %408
  %410 = sdiv i32 %409, 2
  br label %420

411:                                              ; preds = %387
  %412 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %412, i32 0, i32 5
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %17, align 4
  %416 = add nsw i32 %415, 1
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %414, i64 %417
  %419 = load i32, i32* %418, align 4
  br label %420

420:                                              ; preds = %411, %393
  %421 = phi i32 [ %410, %393 ], [ %419, %411 ]
  store i32 %421, i32* %14, align 4
  br label %424

422:                                              ; preds = %384
  %423 = load i32, i32* %16, align 4
  store i32 %423, i32* %14, align 4
  br label %424

424:                                              ; preds = %422, %420
  %425 = load i32, i32* %15, align 4
  %426 = load i32, i32* %14, align 4
  %427 = icmp ne i32 %425, %426
  br i1 %427, label %428, label %441

428:                                              ; preds = %424
  %429 = load i32, i32* %24, align 4
  %430 = call i32 @LCG(i32 %429)
  store i32 %430, i32* %24, align 4
  %431 = load i32, i32* %15, align 4
  %432 = load i32, i32* %14, align 4
  %433 = load i32, i32* %15, align 4
  %434 = sub nsw i32 %432, %433
  %435 = add nsw i32 %434, 1
  %436 = load i32, i32* %24, align 4
  %437 = mul i32 %435, %436
  %438 = load i32, i32* @LCG_M, align 4
  %439 = udiv i32 %437, %438
  %440 = add i32 %431, %439
  store i32 %440, i32* %16, align 4
  br label %441

441:                                              ; preds = %428, %424
  br label %442

442:                                              ; preds = %441, %331
  %443 = load i32, i32* %21, align 4
  %444 = load i32, i32* %22, align 4
  %445 = load i32, i32* %23, align 4
  %446 = load i32*, i32** %25, align 8
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %447, i32 0, i32 4
  %449 = load i32*, i32** %448, align 8
  %450 = call i32 @GET_RGB_VALUES(i32 %443, i32 %444, i32 %445, i32* %446, i32* %449)
  %451 = load i32, i32* %21, align 4
  %452 = load i32, i32* %22, align 4
  %453 = load i32, i32* %23, align 4
  %454 = call i32 @FFMAX3(i32 %451, i32 %452, i32 %453)
  store i32 %454, i32* %19, align 4
  %455 = load i32, i32* %16, align 4
  %456 = mul nsw i32 %454, %455
  %457 = load i32, i32* %17, align 4
  %458 = sdiv i32 %456, %457
  %459 = icmp sgt i32 %458, 255
  br i1 %459, label %460, label %473

460:                                              ; preds = %442
  %461 = load i32, i32* %21, align 4
  %462 = mul i32 %461, 255
  %463 = load i32, i32* %19, align 4
  %464 = udiv i32 %462, %463
  store i32 %464, i32* %21, align 4
  %465 = load i32, i32* %22, align 4
  %466 = mul i32 %465, 255
  %467 = load i32, i32* %19, align 4
  %468 = udiv i32 %466, %467
  store i32 %468, i32* %22, align 4
  %469 = load i32, i32* %23, align 4
  %470 = mul i32 %469, 255
  %471 = load i32, i32* %19, align 4
  %472 = udiv i32 %470, %471
  store i32 %472, i32* %23, align 4
  br label %489

473:                                              ; preds = %442
  %474 = load i32, i32* %21, align 4
  %475 = load i32, i32* %16, align 4
  %476 = mul i32 %474, %475
  %477 = load i32, i32* %17, align 4
  %478 = udiv i32 %476, %477
  store i32 %478, i32* %21, align 4
  %479 = load i32, i32* %22, align 4
  %480 = load i32, i32* %16, align 4
  %481 = mul i32 %479, %480
  %482 = load i32, i32* %17, align 4
  %483 = udiv i32 %481, %482
  store i32 %483, i32* %22, align 4
  %484 = load i32, i32* %23, align 4
  %485 = load i32, i32* %16, align 4
  %486 = mul i32 %484, %485
  %487 = load i32, i32* %17, align 4
  %488 = udiv i32 %486, %487
  store i32 %488, i32* %23, align 4
  br label %489

489:                                              ; preds = %473, %460
  %490 = load i32, i32* %21, align 4
  %491 = load i32*, i32** %26, align 8
  %492 = load i32, i32* %11, align 4
  %493 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %494 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %493, i32 0, i32 4
  %495 = load i32*, i32** %494, align 8
  %496 = load i64, i64* @R, align 8
  %497 = getelementptr inbounds i32, i32* %495, i64 %496
  %498 = load i32, i32* %497, align 4
  %499 = add nsw i32 %492, %498
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %491, i64 %500
  store i32 %490, i32* %501, align 4
  %502 = load i32, i32* %22, align 4
  %503 = load i32*, i32** %26, align 8
  %504 = load i32, i32* %11, align 4
  %505 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %506 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %505, i32 0, i32 4
  %507 = load i32*, i32** %506, align 8
  %508 = load i64, i64* @G, align 8
  %509 = getelementptr inbounds i32, i32* %507, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = add nsw i32 %504, %510
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %503, i64 %512
  store i32 %502, i32* %513, align 4
  %514 = load i32, i32* %23, align 4
  %515 = load i32*, i32** %26, align 8
  %516 = load i32, i32* %11, align 4
  %517 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %518 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %517, i32 0, i32 4
  %519 = load i32*, i32** %518, align 8
  %520 = load i64, i64* @B, align 8
  %521 = getelementptr inbounds i32, i32* %519, i64 %520
  %522 = load i32, i32* %521, align 4
  %523 = add nsw i32 %516, %522
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %515, i64 %524
  store i32 %514, i32* %525, align 4
  %526 = load i32, i32* %21, align 4
  %527 = mul i32 55, %526
  %528 = load i32, i32* %22, align 4
  %529 = mul i32 182, %528
  %530 = add i32 %527, %529
  %531 = load i32, i32* %23, align 4
  %532 = mul i32 19, %531
  %533 = add i32 %530, %532
  %534 = lshr i32 %533, 8
  %535 = call i32 @av_clip_uint8(i32 %534)
  store i32 %535, i32* %18, align 4
  %536 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %537 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %536, i32 0, i32 6
  %538 = load i32*, i32** %537, align 8
  %539 = load i32, i32* %18, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i32, i32* %538, i64 %540
  %542 = load i32, i32* %541, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %541, align 4
  br label %544

544:                                              ; preds = %489, %324
  br label %545

545:                                              ; preds = %544
  %546 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %547 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %546, i32 0, i32 3
  %548 = load i32, i32* %547, align 8
  %549 = load i32, i32* %11, align 4
  %550 = add nsw i32 %549, %548
  store i32 %550, i32* %11, align 4
  br label %282

551:                                              ; preds = %282
  %552 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %553 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %552, i32 0, i32 1
  %554 = load i32*, i32** %553, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 0
  %556 = load i32, i32* %555, align 4
  %557 = load i32*, i32** %25, align 8
  %558 = sext i32 %556 to i64
  %559 = getelementptr inbounds i32, i32* %557, i64 %558
  store i32* %559, i32** %25, align 8
  %560 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %561 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %560, i32 0, i32 1
  %562 = load i32*, i32** %561, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 0
  %564 = load i32, i32* %563, align 4
  %565 = load i32*, i32** %26, align 8
  %566 = sext i32 %564 to i64
  %567 = getelementptr inbounds i32, i32* %565, i64 %566
  store i32* %567, i32** %26, align 8
  br label %568

568:                                              ; preds = %551
  %569 = load i32, i32* %12, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %12, align 4
  br label %275

571:                                              ; preds = %275
  %572 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  %573 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %574 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %575 = call i32 @ff_filter_frame(%struct.TYPE_17__* %573, %struct.TYPE_16__* %574)
  store i32 %575, i32* %3, align 4
  br label %576

576:                                              ; preds = %571, %56
  %577 = load i32, i32* %3, align 4
  ret i32 %577
}

declare dso_local %struct.TYPE_16__* @ff_get_video_buffer(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_16__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @GET_RGB_VALUES(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @LCG(i32) #1

declare dso_local i32 @FFMAX3(i32, i32, i32) #1

declare dso_local i32 @av_clip_uint8(i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
