; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9.c_decode_sb_mem.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9.c_decode_sb_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32* }

@CUR_FRAME = common dso_local global i64 0, align 8
@BL_8X8 = common dso_local global i32 0, align 4
@PARTITION_H = common dso_local global i64 0, align 8
@PARTITION_V = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i32, i32*, i32, i32, i32)* @decode_sb_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_sb_mem(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %15, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %16, align 8
  %28 = load i32, i32* %14, align 4
  %29 = ashr i32 4, %28
  store i32 %29, i32* %17, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = load i64, i64* @CUR_FRAME, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %18, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %19, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %20, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @BL_8X8, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %7
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BL_8X8, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @av_assert2(i32 %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ff_vp9_decode_block(%struct.TYPE_13__* %63, i32 %64, i32 %65, i32* %66, i32 %67, i32 %68, i32 %71, i64 %74)
  br label %358

76:                                               ; preds = %7
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %191

84:                                               ; preds = %76
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @ff_vp9_decode_block(%struct.TYPE_13__* %85, i32 %86, i32 %87, i32* %88, i32 %89, i32 %90, i32 %93, i64 %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PARTITION_H, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %143

103:                                              ; preds = %84
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %104, %105
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %143

111:                                              ; preds = %103
  %112 = load i32, i32* %17, align 4
  %113 = mul nsw i32 %112, 8
  %114 = load i32, i32* %19, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %17, align 4
  %119 = mul nsw i32 %118, 8
  %120 = load i32, i32* %20, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %121, %124
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %13, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %10, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @ff_vp9_decode_block(%struct.TYPE_13__* %128, i32 %131, i32 %132, i32* %133, i32 %134, i32 %135, i32 %138, i64 %141)
  br label %190

143:                                              ; preds = %103, %84
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @PARTITION_V, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %189

149:                                              ; preds = %143
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %150, %151
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %189

157:                                              ; preds = %149
  %158 = load i32, i32* %17, align 4
  %159 = mul nsw i32 %158, 8
  %160 = load i32, i32* %21, align 4
  %161 = mul nsw i32 %159, %160
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %17, align 4
  %165 = mul nsw i32 %164, 8
  %166 = load i32, i32* %21, align 4
  %167 = mul nsw i32 %165, %166
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = ashr i32 %167, %170
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %13, align 4
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %17, align 4
  %178 = add nsw i32 %176, %177
  %179 = load i32*, i32** %11, align 8
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @ff_vp9_decode_block(%struct.TYPE_13__* %174, i32 %175, i32 %178, i32* %179, i32 %180, i32 %181, i32 %184, i64 %187)
  br label %189

189:                                              ; preds = %157, %149, %143
  br label %190

190:                                              ; preds = %189, %111
  br label %357

191:                                              ; preds = %76
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32*, i32** %11, align 8
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %14, align 4
  %199 = add i32 %198, 1
  call void @decode_sb_mem(%struct.TYPE_13__* %192, i32 %193, i32 %194, i32* %195, i32 %196, i32 %197, i32 %199)
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %200, %201
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %320

207:                                              ; preds = %191
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %17, align 4
  %210 = add nsw i32 %208, %209
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %292

215:                                              ; preds = %207
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %17, align 4
  %220 = add nsw i32 %218, %219
  %221 = load i32*, i32** %11, align 8
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %17, align 4
  %224 = mul nsw i32 8, %223
  %225 = load i32, i32* %21, align 4
  %226 = mul nsw i32 %224, %225
  %227 = add nsw i32 %222, %226
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %17, align 4
  %230 = mul nsw i32 8, %229
  %231 = load i32, i32* %21, align 4
  %232 = mul nsw i32 %230, %231
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = ashr i32 %232, %235
  %237 = add nsw i32 %228, %236
  %238 = load i32, i32* %14, align 4
  %239 = add i32 %238, 1
  call void @decode_sb_mem(%struct.TYPE_13__* %216, i32 %217, i32 %220, i32* %221, i32 %227, i32 %237, i32 %239)
  %240 = load i32, i32* %17, align 4
  %241 = mul nsw i32 %240, 8
  %242 = load i32, i32* %19, align 4
  %243 = mul nsw i32 %241, %242
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %12, align 4
  %246 = load i32, i32* %17, align 4
  %247 = mul nsw i32 %246, 8
  %248 = load i32, i32* %20, align 4
  %249 = mul nsw i32 %247, %248
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = ashr i32 %249, %252
  %254 = load i32, i32* %13, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %13, align 4
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* %17, align 4
  %259 = add nsw i32 %257, %258
  %260 = load i32, i32* %10, align 4
  %261 = load i32*, i32** %11, align 8
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* %14, align 4
  %265 = add i32 %264, 1
  call void @decode_sb_mem(%struct.TYPE_13__* %256, i32 %259, i32 %260, i32* %261, i32 %262, i32 %263, i32 %265)
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %267 = load i32, i32* %9, align 4
  %268 = load i32, i32* %17, align 4
  %269 = add nsw i32 %267, %268
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %17, align 4
  %272 = add nsw i32 %270, %271
  %273 = load i32*, i32** %11, align 8
  %274 = load i32, i32* %12, align 4
  %275 = load i32, i32* %17, align 4
  %276 = mul nsw i32 8, %275
  %277 = load i32, i32* %21, align 4
  %278 = mul nsw i32 %276, %277
  %279 = add nsw i32 %274, %278
  %280 = load i32, i32* %13, align 4
  %281 = load i32, i32* %17, align 4
  %282 = mul nsw i32 8, %281
  %283 = load i32, i32* %21, align 4
  %284 = mul nsw i32 %282, %283
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = ashr i32 %284, %287
  %289 = add nsw i32 %280, %288
  %290 = load i32, i32* %14, align 4
  %291 = add i32 %290, 1
  call void @decode_sb_mem(%struct.TYPE_13__* %266, i32 %269, i32 %272, i32* %273, i32 %279, i32 %289, i32 %291)
  br label %319

292:                                              ; preds = %207
  %293 = load i32, i32* %17, align 4
  %294 = mul nsw i32 %293, 8
  %295 = load i32, i32* %21, align 4
  %296 = mul nsw i32 %294, %295
  %297 = load i32, i32* %12, align 4
  %298 = add nsw i32 %297, %296
  store i32 %298, i32* %12, align 4
  %299 = load i32, i32* %17, align 4
  %300 = mul nsw i32 %299, 8
  %301 = load i32, i32* %21, align 4
  %302 = mul nsw i32 %300, %301
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = ashr i32 %302, %305
  %307 = load i32, i32* %13, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %13, align 4
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %310 = load i32, i32* %9, align 4
  %311 = load i32, i32* %10, align 4
  %312 = load i32, i32* %17, align 4
  %313 = add nsw i32 %311, %312
  %314 = load i32*, i32** %11, align 8
  %315 = load i32, i32* %12, align 4
  %316 = load i32, i32* %13, align 4
  %317 = load i32, i32* %14, align 4
  %318 = add i32 %317, 1
  call void @decode_sb_mem(%struct.TYPE_13__* %309, i32 %310, i32 %313, i32* %314, i32 %315, i32 %316, i32 %318)
  br label %319

319:                                              ; preds = %292, %215
  br label %356

320:                                              ; preds = %191
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* %17, align 4
  %323 = add nsw i32 %321, %322
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = icmp slt i32 %323, %326
  br i1 %327, label %328, label %355

328:                                              ; preds = %320
  %329 = load i32, i32* %17, align 4
  %330 = mul nsw i32 %329, 8
  %331 = load i32, i32* %19, align 4
  %332 = mul nsw i32 %330, %331
  %333 = load i32, i32* %12, align 4
  %334 = add nsw i32 %333, %332
  store i32 %334, i32* %12, align 4
  %335 = load i32, i32* %17, align 4
  %336 = mul nsw i32 %335, 8
  %337 = load i32, i32* %20, align 4
  %338 = mul nsw i32 %336, %337
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = ashr i32 %338, %341
  %343 = load i32, i32* %13, align 4
  %344 = add nsw i32 %343, %342
  store i32 %344, i32* %13, align 4
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %346 = load i32, i32* %9, align 4
  %347 = load i32, i32* %17, align 4
  %348 = add nsw i32 %346, %347
  %349 = load i32, i32* %10, align 4
  %350 = load i32*, i32** %11, align 8
  %351 = load i32, i32* %12, align 4
  %352 = load i32, i32* %13, align 4
  %353 = load i32, i32* %14, align 4
  %354 = add i32 %353, 1
  call void @decode_sb_mem(%struct.TYPE_13__* %345, i32 %348, i32 %349, i32* %350, i32 %351, i32 %352, i32 %354)
  br label %355

355:                                              ; preds = %328, %320
  br label %356

356:                                              ; preds = %355, %319
  br label %357

357:                                              ; preds = %356, %190
  br label %358

358:                                              ; preds = %357, %55
  ret void
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @ff_vp9_decode_block(%struct.TYPE_13__*, i32, i32, i32*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
