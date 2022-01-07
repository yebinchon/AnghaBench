; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_motion.c_apply_8x8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_motion.c_apply_8x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32***, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* }

@CONFIG_GRAY = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*, i32*, i32*, i32, i32**, [16 x i32 (i32*, i32*, i32)*]*, [4 x i32]*)* @apply_8x8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_8x8(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32** %5, [16 x i32 (i32*, i32*, i32)*]* %6, [4 x i32]* %7) #0 {
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca [16 x i32 (i32*, i32*, i32)*]*, align 8
  %16 = alloca [4 x i32]*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store [16 x i32 (i32*, i32*, i32)*]* %6, [16 x i32 (i32*, i32*, i32)*]** %15, align 8
  store [4 x i32]* %7, [4 x i32]** %16, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %23, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %24, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 11
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %249

39:                                               ; preds = %8
  store i32 0, i32* %22, align 4
  br label %40

40:                                               ; preds = %245, %39
  %41 = load i32, i32* %22, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %248

43:                                               ; preds = %40
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i32***, i32**** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32**, i32*** %46, i64 %48
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %22, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %27, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32***, i32**** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32**, i32*** %59, i64 %61
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %22, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %28, align 4
  %70 = load i32, i32* %28, align 4
  %71 = and i32 %70, 3
  %72 = shl i32 %71, 2
  %73 = load i32, i32* %27, align 4
  %74 = and i32 %73, 3
  %75 = or i32 %72, %74
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %23, align 4
  %77 = mul nsw i32 %76, 16
  %78 = load i32, i32* %27, align 4
  %79 = ashr i32 %78, 2
  %80 = add nsw i32 %77, %79
  %81 = load i32, i32* %22, align 4
  %82 = and i32 %81, 1
  %83 = mul nsw i32 %82, 8
  %84 = add nsw i32 %80, %83
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %24, align 4
  %86 = mul nsw i32 %85, 16
  %87 = load i32, i32* %28, align 4
  %88 = ashr i32 %87, 2
  %89 = add nsw i32 %86, %88
  %90 = load i32, i32* %22, align 4
  %91 = ashr i32 %90, 1
  %92 = mul nsw i32 %91, 8
  %93 = add nsw i32 %89, %92
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @av_clip(i32 %94, i32 -16, i32 %97)
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %20, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %43
  %105 = load i32, i32* %17, align 4
  %106 = and i32 %105, -4
  store i32 %106, i32* %17, align 4
  br label %107

107:                                              ; preds = %104, %43
  %108 = load i32, i32* %21, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @av_clip(i32 %108, i32 -16, i32 %111)
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %107
  %119 = load i32, i32* %17, align 4
  %120 = and i32 %119, -13
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %118, %107
  %122 = load i32**, i32*** %14, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i64 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %21, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %125, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %124, i64 %130
  %132 = load i32, i32* %20, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32* %134, i32** %25, align 8
  %135 = load i32, i32* %20, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %27, align 4
  %140 = and i32 %139, 3
  %141 = sub nsw i32 %138, %140
  %142 = sub nsw i32 %141, 7
  %143 = call i32 @FFMAX(i32 %142, i32 0)
  %144 = icmp uge i32 %135, %143
  br i1 %144, label %156, label %145

145:                                              ; preds = %121
  %146 = load i32, i32* %21, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %28, align 4
  %151 = and i32 %150, 3
  %152 = sub nsw i32 %149, %151
  %153 = sub nsw i32 %152, 7
  %154 = call i32 @FFMAX(i32 %153, i32 0)
  %155 = icmp uge i32 %146, %154
  br i1 %155, label %156, label %185

156:                                              ; preds = %145, %121
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 10
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %159, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 9
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32*, i32** %25, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %20, align 4
  %173 = load i32, i32* %21, align 4
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 8
  %180 = call i32 %160(i32* %164, i32* %165, i32 %168, i32 %171, i32 9, i32 9, i32 %172, i32 %173, i32 %176, i32 %179)
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 9
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  store i32* %184, i32** %25, align 8
  br label %185

185:                                              ; preds = %156, %145
  %186 = load i32*, i32** %10, align 8
  %187 = load i32, i32* %22, align 4
  %188 = and i32 %187, 1
  %189 = mul nsw i32 %188, 8
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  %192 = load i32, i32* %22, align 4
  %193 = ashr i32 %192, 1
  %194 = mul nsw i32 %193, 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = mul nsw i32 %194, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %191, i64 %199
  store i32* %200, i32** %26, align 8
  %201 = load [16 x i32 (i32*, i32*, i32)*]*, [16 x i32 (i32*, i32*, i32)*]** %15, align 8
  %202 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %201, i64 1
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %202, i64 0, i64 %204
  %206 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %205, align 8
  %207 = load i32*, i32** %26, align 8
  %208 = load i32*, i32** %25, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = call i32 %206(i32* %207, i32* %208, i32 %211)
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 2
  %215 = load i32***, i32**** %214, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32**, i32*** %215, i64 %217
  %219 = load i32**, i32*** %218, align 8
  %220 = load i32, i32* %22, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = sdiv i32 %225, 2
  %227 = load i32, i32* %18, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %18, align 4
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 2
  %231 = load i32***, i32**** %230, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32**, i32*** %231, i64 %233
  %235 = load i32**, i32*** %234, align 8
  %236 = load i32, i32* %22, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32*, i32** %235, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = sdiv i32 %241, 2
  %243 = load i32, i32* %19, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %19, align 4
  br label %245

245:                                              ; preds = %185
  %246 = load i32, i32* %22, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %22, align 4
  br label %40

248:                                              ; preds = %40
  br label %349

249:                                              ; preds = %8
  store i32 0, i32* %22, align 4
  br label %250

250:                                              ; preds = %345, %249
  %251 = load i32, i32* %22, align 4
  %252 = icmp slt i32 %251, 4
  br i1 %252, label %253, label %348

253:                                              ; preds = %250
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %255 = load i32*, i32** %10, align 8
  %256 = load i32, i32* %22, align 4
  %257 = and i32 %256, 1
  %258 = mul nsw i32 %257, 8
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %255, i64 %259
  %261 = load i32, i32* %22, align 4
  %262 = ashr i32 %261, 1
  %263 = mul nsw i32 %262, 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = mul nsw i32 %263, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %260, i64 %268
  %270 = load i32**, i32*** %14, align 8
  %271 = getelementptr inbounds i32*, i32** %270, i64 0
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %23, align 4
  %274 = mul nsw i32 %273, 16
  %275 = load i32, i32* %22, align 4
  %276 = and i32 %275, 1
  %277 = mul nsw i32 %276, 8
  %278 = add nsw i32 %274, %277
  %279 = load i32, i32* %24, align 4
  %280 = mul nsw i32 %279, 16
  %281 = load i32, i32* %22, align 4
  %282 = ashr i32 %281, 1
  %283 = mul nsw i32 %282, 8
  %284 = add nsw i32 %280, %283
  %285 = load [4 x i32]*, [4 x i32]** %16, align 8
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %285, i64 1
  %287 = getelementptr inbounds [4 x i32], [4 x i32]* %286, i64 0, i64 0
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 2
  %290 = load i32***, i32**** %289, align 8
  %291 = load i32, i32* %13, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32**, i32*** %290, i64 %292
  %294 = load i32**, i32*** %293, align 8
  %295 = load i32, i32* %22, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32*, i32** %294, i64 %296
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 2
  %303 = load i32***, i32**** %302, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32**, i32*** %303, i64 %305
  %307 = load i32**, i32*** %306, align 8
  %308 = load i32, i32* %22, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32*, i32** %307, i64 %309
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 1
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @hpel_motion(%struct.TYPE_11__* %254, i32* %269, i32* %272, i32 %278, i32 %284, i32* %287, i32 %300, i32 %313)
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 2
  %317 = load i32***, i32**** %316, align 8
  %318 = load i32, i32* %13, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32**, i32*** %317, i64 %319
  %321 = load i32**, i32*** %320, align 8
  %322 = load i32, i32* %22, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32*, i32** %321, i64 %323
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %18, align 4
  %329 = add nsw i32 %328, %327
  store i32 %329, i32* %18, align 4
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 2
  %332 = load i32***, i32**** %331, align 8
  %333 = load i32, i32* %13, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32**, i32*** %332, i64 %334
  %336 = load i32**, i32*** %335, align 8
  %337 = load i32, i32* %22, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32*, i32** %336, i64 %338
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 1
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %19, align 4
  %344 = add nsw i32 %343, %342
  store i32 %344, i32* %19, align 4
  br label %345

345:                                              ; preds = %253
  %346 = load i32, i32* %22, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %22, align 4
  br label %250

348:                                              ; preds = %250
  br label %349

349:                                              ; preds = %348, %248
  %350 = load i32, i32* @CONFIG_GRAY, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %361

352:                                              ; preds = %349
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 8
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %372, label %361

361:                                              ; preds = %352, %349
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %363 = load i32*, i32** %11, align 8
  %364 = load i32*, i32** %12, align 8
  %365 = load i32**, i32*** %14, align 8
  %366 = load [4 x i32]*, [4 x i32]** %16, align 8
  %367 = getelementptr inbounds [4 x i32], [4 x i32]* %366, i64 1
  %368 = getelementptr inbounds [4 x i32], [4 x i32]* %367, i64 0, i64 0
  %369 = load i32, i32* %18, align 4
  %370 = load i32, i32* %19, align 4
  %371 = call i32 @chroma_4mv_motion(%struct.TYPE_11__* %362, i32* %363, i32* %364, i32** %365, i32* %368, i32 %369, i32 %370)
  br label %372

372:                                              ; preds = %361, %352
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @hpel_motion(%struct.TYPE_11__*, i32*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @chroma_4mv_motion(%struct.TYPE_11__*, i32*, i32*, i32**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
