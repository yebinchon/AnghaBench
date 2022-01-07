; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pad.c_buffer_needs_copy.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pad.c_buffer_needs_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i32*, i32* }
%struct.TYPE_12__ = type { i32, i32*, i32, i32** }
%struct.TYPE_13__ = type { i32, i32* }

@__const.buffer_needs_copy.planes = private unnamed_addr constant [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_13__*)* @buffer_needs_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_needs_copy(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %21 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([4 x i32]* @__const.buffer_needs_copy.planes to i8*), i64 16, i1 false)
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32* %22, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %50, %3
  %24 = load i32, i32* %10, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %26 = call i32 @FF_ARRAY_ELEMS(i32* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br label %37

37:                                               ; preds = %28, %23
  %38 = phi i1 [ false, %23 ], [ %36, %28 ]
  br i1 %38, label %39, label %53

39:                                               ; preds = %37
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call %struct.TYPE_13__* @av_frame_get_plane_buffer(%struct.TYPE_12__* %40, i32 %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = icmp eq %struct.TYPE_13__* %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %23

53:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %369, %53
  %55 = load i32, i32* %10, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %57 = call i32 @FF_ARRAY_ELEMS(i32* %56)
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 0
  br label %65

65:                                               ; preds = %59, %54
  %66 = phi i1 [ false, %54 ], [ %64, %59 ]
  br i1 %66, label %67, label %372

67:                                               ; preds = %65
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %13, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 3
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %92, i64 %97
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %14, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = ashr i32 %103, %104
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %108, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %105, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %100, i64 %117
  store i32* %118, i32** %15, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = ashr i32 %121, %122
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %127, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %123, %134
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %13, align 4
  %140 = ashr i32 %138, %139
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %143, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %140, %150
  %152 = add nsw i32 %135, %151
  store i32 %152, i32* %16, align 4
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %155, %158
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %159, %162
  %164 = load i32, i32* %12, align 4
  %165 = ashr i32 %163, %164
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %169, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %165, %176
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %180, %183
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sub nsw i32 %184, %187
  %189 = load i32, i32* %13, align 4
  %190 = ashr i32 %188, %189
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %193, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %190, %200
  %202 = add nsw i32 %177, %201
  store i32 %202, i32* %17, align 4
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %205, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %12, align 4
  %217 = ashr i32 %215, %216
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %221, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %217, %228
  %230 = icmp slt i32 %212, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %67
  store i32 1, i32* %4, align 4
  br label %373

232:                                              ; preds = %67
  %233 = load i32*, i32** %14, align 8
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = ptrtoint i32* %233 to i64
  %238 = ptrtoint i32* %236 to i64
  %239 = sub i64 %237, %238
  %240 = sdiv exact i64 %239, 4
  %241 = load i32, i32* %16, align 4
  %242 = sext i32 %241 to i64
  %243 = icmp slt i64 %240, %242
  br i1 %243, label %261, label %244

244:                                              ; preds = %232
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %247, i64 %251
  %253 = load i32*, i32** %15, align 8
  %254 = ptrtoint i32* %252 to i64
  %255 = ptrtoint i32* %253 to i64
  %256 = sub i64 %254, %255
  %257 = sdiv exact i64 %256, 4
  %258 = load i32, i32* %17, align 4
  %259 = sext i32 %258 to i64
  %260 = icmp slt i64 %257, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %244, %232
  store i32 1, i32* %4, align 4
  br label %373

262:                                              ; preds = %244
  store i32 0, i32* %11, align 4
  br label %263

263:                                              ; preds = %365, %262
  %264 = load i32, i32* %11, align 4
  %265 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %266 = call i32 @FF_ARRAY_ELEMS(i32* %265)
  %267 = icmp slt i32 %264, %266
  br i1 %267, label %268, label %274

268:                                              ; preds = %263
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = icmp sge i32 %272, 0
  br label %274

274:                                              ; preds = %268, %263
  %275 = phi i1 [ false, %263 ], [ %273, %268 ]
  br i1 %275, label %276, label %368

276:                                              ; preds = %274
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %11, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %280, i64 %285
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %18, align 4
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 3
  %290 = load i32**, i32*** %289, align 8
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32*, i32** %290, i64 %295
  %297 = load i32*, i32** %296, align 8
  store i32* %297, i32** %19, align 8
  %298 = load i32*, i32** %19, align 8
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* %18, align 4
  %303 = ashr i32 %301, %302
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %306, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = mul nsw i32 %303, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %298, i64 %315
  store i32* %316, i32** %20, align 8
  %317 = load i32, i32* %10, align 4
  %318 = load i32, i32* %11, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %276
  br label %365

321:                                              ; preds = %276
  %322 = load i32*, i32** %14, align 8
  %323 = load i32*, i32** %20, align 8
  %324 = ptrtoint i32* %322 to i64
  %325 = ptrtoint i32* %323 to i64
  %326 = sub i64 %324, %325
  %327 = sdiv exact i64 %326, 4
  %328 = trunc i64 %327 to i32
  %329 = call i64 @FFSIGN(i32 %328)
  %330 = load i32*, i32** %14, align 8
  %331 = load i32*, i32** %20, align 8
  %332 = ptrtoint i32* %330 to i64
  %333 = ptrtoint i32* %331 to i64
  %334 = sub i64 %332, %333
  %335 = sdiv exact i64 %334, 4
  %336 = load i32, i32* %16, align 4
  %337 = sext i32 %336 to i64
  %338 = sub nsw i64 %335, %337
  %339 = trunc i64 %338 to i32
  %340 = call i64 @FFSIGN(i32 %339)
  %341 = icmp ne i64 %329, %340
  br i1 %341, label %363, label %342

342:                                              ; preds = %321
  %343 = load i32*, i32** %15, align 8
  %344 = load i32*, i32** %19, align 8
  %345 = ptrtoint i32* %343 to i64
  %346 = ptrtoint i32* %344 to i64
  %347 = sub i64 %345, %346
  %348 = sdiv exact i64 %347, 4
  %349 = trunc i64 %348 to i32
  %350 = call i64 @FFSIGN(i32 %349)
  %351 = load i32*, i32** %15, align 8
  %352 = load i32*, i32** %19, align 8
  %353 = ptrtoint i32* %351 to i64
  %354 = ptrtoint i32* %352 to i64
  %355 = sub i64 %353, %354
  %356 = sdiv exact i64 %355, 4
  %357 = load i32, i32* %17, align 4
  %358 = sext i32 %357 to i64
  %359 = add nsw i64 %356, %358
  %360 = trunc i64 %359 to i32
  %361 = call i64 @FFSIGN(i32 %360)
  %362 = icmp ne i64 %350, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %342, %321
  store i32 1, i32* %4, align 4
  br label %373

364:                                              ; preds = %342
  br label %365

365:                                              ; preds = %364, %320
  %366 = load i32, i32* %11, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %11, align 4
  br label %263

368:                                              ; preds = %274
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %10, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %10, align 4
  br label %54

372:                                              ; preds = %65
  store i32 0, i32* %4, align 4
  br label %373

373:                                              ; preds = %372, %363, %261, %231
  %374 = load i32, i32* %4, align 4
  ret i32 %374
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #2

declare dso_local %struct.TYPE_13__* @av_frame_get_plane_buffer(%struct.TYPE_12__*, i32) #2

declare dso_local i64 @FFSIGN(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
