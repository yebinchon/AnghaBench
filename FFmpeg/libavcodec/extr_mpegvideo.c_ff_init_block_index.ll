; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_ff_init_block_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_ff_init_block_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64*, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i64* }

@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@PICT_FRAME = common dso_local global i64 0, align 8
@PICT_BOTTOM_FIELD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_init_block_index(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 12
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 12
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 11
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 8
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 4, %29
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 11
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %30, %35
  store i32 %36, i32* %5, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 11
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 4, %41
  store i32 %42, i32* %6, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 2
  %50 = mul nsw i32 %45, %49
  %51 = sub nsw i32 %50, 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 2
  %56 = add nsw i32 %51, %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 2
  %68 = mul nsw i32 %63, %67
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %72, 2
  %74 = add nsw i32 %69, %73
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %74, i32* %78, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 2
  %86 = add nsw i32 %85, 1
  %87 = mul nsw i32 %81, %86
  %88 = sub nsw i32 %87, 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %91, 2
  %93 = add nsw i32 %88, %92
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 %93, i32* %97, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 2
  %105 = add nsw i32 %104, 1
  %106 = mul nsw i32 %100, %105
  %107 = sub nsw i32 %106, 1
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %110, 2
  %112 = add nsw i32 %107, %111
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  store i32 %112, i32* %116, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  %124 = mul nsw i32 %119, %123
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %127, %130
  %132 = mul nsw i32 %131, 2
  %133 = add nsw i32 %124, %132
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %133, %136
  %138 = sub nsw i32 %137, 1
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 4
  store i32 %138, i32* %142, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %148, %151
  %153 = add nsw i32 %152, 2
  %154 = mul nsw i32 %145, %153
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %157, %160
  %162 = mul nsw i32 %161, 2
  %163 = add nsw i32 %154, %162
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %163, %166
  %168 = sub nsw i32 %167, 1
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 5
  store i32 %168, i32* %172, align 4
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 12
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = sub i32 %183, 1
  %185 = load i32, i32* %5, align 4
  %186 = shl i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %180, %187
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 10
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 0
  store i64 %188, i64* %192, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 12
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = sub i32 %203, 1
  %205 = load i32, i32* %5, align 4
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %205, %208
  %210 = shl i32 %204, %209
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %200, %211
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 10
  %215 = load i64*, i64** %214, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 1
  store i64 %212, i64* %216, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 12
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = sub i32 %227, 1
  %229 = load i32, i32* %5, align 4
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 %229, %232
  %234 = shl i32 %228, %233
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %224, %235
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 10
  %239 = load i64*, i64** %238, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 2
  store i64 %236, i64* %240, align 8
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %259

246:                                              ; preds = %1
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 11
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %246
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 8
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @PICT_FRAME, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %384, label %259

259:                                              ; preds = %253, %246, %1
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 8
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @PICT_FRAME, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %316

265:                                              ; preds = %259
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %3, align 4
  %270 = mul nsw i32 %268, %269
  %271 = load i32, i32* %6, align 4
  %272 = shl i32 %270, %271
  %273 = sext i32 %272 to i64
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 10
  %276 = load i64*, i64** %275, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 0
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %278, %273
  store i64 %279, i64* %277, align 8
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %4, align 4
  %284 = mul nsw i32 %282, %283
  %285 = load i32, i32* %6, align 4
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 9
  %288 = load i32, i32* %287, align 8
  %289 = sub nsw i32 %285, %288
  %290 = shl i32 %284, %289
  %291 = sext i32 %290 to i64
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 10
  %294 = load i64*, i64** %293, align 8
  %295 = getelementptr inbounds i64, i64* %294, i64 1
  %296 = load i64, i64* %295, align 8
  %297 = add nsw i64 %296, %291
  store i64 %297, i64* %295, align 8
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %4, align 4
  %302 = mul nsw i32 %300, %301
  %303 = load i32, i32* %6, align 4
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 9
  %306 = load i32, i32* %305, align 8
  %307 = sub nsw i32 %303, %306
  %308 = shl i32 %302, %307
  %309 = sext i32 %308 to i64
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 10
  %312 = load i64*, i64** %311, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 2
  %314 = load i64, i64* %313, align 8
  %315 = add nsw i64 %314, %309
  store i64 %315, i64* %313, align 8
  br label %383

316:                                              ; preds = %259
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = ashr i32 %319, 1
  %321 = load i32, i32* %3, align 4
  %322 = mul nsw i32 %320, %321
  %323 = load i32, i32* %6, align 4
  %324 = shl i32 %322, %323
  %325 = sext i32 %324 to i64
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 10
  %328 = load i64*, i64** %327, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 0
  %330 = load i64, i64* %329, align 8
  %331 = add nsw i64 %330, %325
  store i64 %331, i64* %329, align 8
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = ashr i32 %334, 1
  %336 = load i32, i32* %4, align 4
  %337 = mul nsw i32 %335, %336
  %338 = load i32, i32* %6, align 4
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 9
  %341 = load i32, i32* %340, align 8
  %342 = sub nsw i32 %338, %341
  %343 = shl i32 %337, %342
  %344 = sext i32 %343 to i64
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 10
  %347 = load i64*, i64** %346, align 8
  %348 = getelementptr inbounds i64, i64* %347, i64 1
  %349 = load i64, i64* %348, align 8
  %350 = add nsw i64 %349, %344
  store i64 %350, i64* %348, align 8
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = ashr i32 %353, 1
  %355 = load i32, i32* %4, align 4
  %356 = mul nsw i32 %354, %355
  %357 = load i32, i32* %6, align 4
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 9
  %360 = load i32, i32* %359, align 8
  %361 = sub nsw i32 %357, %360
  %362 = shl i32 %356, %361
  %363 = sext i32 %362 to i64
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 10
  %366 = load i64*, i64** %365, align 8
  %367 = getelementptr inbounds i64, i64* %366, i64 2
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %368, %363
  store i64 %369, i64* %367, align 8
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = and i32 %372, 1
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 8
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @PICT_BOTTOM_FIELD, align 8
  %378 = icmp eq i64 %376, %377
  %379 = zext i1 %378 to i32
  %380 = icmp eq i32 %373, %379
  %381 = zext i1 %380 to i32
  %382 = call i32 @av_assert1(i32 %381)
  br label %383

383:                                              ; preds = %316, %265
  br label %384

384:                                              ; preds = %383, %253
  ret void
}

declare dso_local i32 @av_assert1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
