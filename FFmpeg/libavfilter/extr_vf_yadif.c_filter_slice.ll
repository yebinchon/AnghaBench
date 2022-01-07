; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_yadif.c_filter_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_yadif.c_filter_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i32 (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32)*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { i32*, i32** }
%struct.TYPE_14__ = type { i32** }
%struct.TYPE_13__ = type { i32** }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, i32** }

@MAX_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8*, i32, i32)* @filter_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_slice(%struct.TYPE_19__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %9, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %10, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 7
  %50 = sdiv i32 %49, 8
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = mul nsw i32 3, %51
  store i32 %52, i32* %13, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %14, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  %65 = mul nsw i32 %62, %64
  %66 = load i32, i32* %8, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* @MAX_ALIGN, align 4
  %69 = load i32, i32* %12, align 4
  %70 = sdiv i32 %68, %69
  %71 = add nsw i32 3, %70
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %315, %4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %318

78:                                               ; preds = %74
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = xor i32 %79, %82
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %268

86:                                               ; preds = %78
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32**, i32*** %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32*, i32** %91, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %11, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  store i32* %101, i32** %18, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i32**, i32*** %105, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32*, i32** %106, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %11, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  store i32* %116, i32** %19, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i32**, i32*** %120, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32*, i32** %121, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %11, align 4
  %129 = mul nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  store i32* %131, i32** %20, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32**, i32*** %135, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32*, i32** %136, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %16, align 4
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 5
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %142, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %141, i64 %154
  store i32* %155, i32** %21, align 8
  %156 = load i32, i32* %16, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %165, label %158

158:                                              ; preds = %86
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, 2
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %160, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %158, %86
  br label %170

166:                                              ; preds = %158
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  br label %170

170:                                              ; preds = %166, %165
  %171 = phi i32 [ 2, %165 ], [ %169, %166 ]
  store i32 %171, i32* %22, align 4
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 3
  %174 = load i32 (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32)** %173, align 8
  %175 = load i32*, i32** %21, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32*, i32** %18, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32*, i32** %19, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32*, i32** %20, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %17, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load i32, i32* %16, align 4
  %197 = add nsw i32 %196, 1
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %170
  %203 = load i32, i32* %11, align 4
  br label %207

204:                                              ; preds = %170
  %205 = load i32, i32* %11, align 4
  %206 = sub nsw i32 0, %205
  br label %207

207:                                              ; preds = %204, %202
  %208 = phi i32 [ %203, %202 ], [ %206, %204 ]
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %207
  %212 = load i32, i32* %11, align 4
  %213 = sub nsw i32 0, %212
  br label %216

214:                                              ; preds = %207
  %215 = load i32, i32* %11, align 4
  br label %216

216:                                              ; preds = %214, %211
  %217 = phi i32 [ %213, %211 ], [ %215, %214 ]
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = xor i32 %220, %223
  %225 = load i32, i32* %22, align 4
  %226 = call i32 %174(i32* %178, i32* %182, i32* %186, i32* %190, i32 %195, i32 %208, i32 %217, i32 %224, i32 %225)
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 2
  %229 = load i32 (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32)** %228, align 8
  %230 = load i32*, i32** %21, align 8
  %231 = load i32*, i32** %18, align 8
  %232 = load i32*, i32** %19, align 8
  %233 = load i32*, i32** %20, align 8
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %16, align 4
  %238 = add nsw i32 %237, 1
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %216
  %244 = load i32, i32* %11, align 4
  br label %248

245:                                              ; preds = %216
  %246 = load i32, i32* %11, align 4
  %247 = sub nsw i32 0, %246
  br label %248

248:                                              ; preds = %245, %243
  %249 = phi i32 [ %244, %243 ], [ %247, %245 ]
  %250 = load i32, i32* %16, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = load i32, i32* %11, align 4
  %254 = sub nsw i32 0, %253
  br label %257

255:                                              ; preds = %248
  %256 = load i32, i32* %11, align 4
  br label %257

257:                                              ; preds = %255, %252
  %258 = phi i32 [ %254, %252 ], [ %256, %255 ]
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = xor i32 %261, %264
  %266 = load i32, i32* %22, align 4
  %267 = call i32 %229(i32* %230, i32* %231, i32* %232, i32* %233, i32 %236, i32 %249, i32 %258, i32 %265, i32 %266)
  br label %314

268:                                              ; preds = %78
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 5
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 1
  %273 = load i32**, i32*** %272, align 8
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds i32*, i32** %273, i64 %276
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %16, align 4
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 5
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds i32, i32* %284, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = mul nsw i32 %279, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %278, i64 %291
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 1
  %297 = load i32**, i32*** %296, align 8
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds i32*, i32** %297, i64 %300
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %16, align 4
  %304 = load i32, i32* %11, align 4
  %305 = mul nsw i32 %303, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %302, i64 %306
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* %12, align 4
  %312 = mul nsw i32 %310, %311
  %313 = call i32 @memcpy(i32* %292, i32* %307, i32 %312)
  br label %314

314:                                              ; preds = %268, %257
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %16, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %16, align 4
  br label %74

318:                                              ; preds = %74
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
