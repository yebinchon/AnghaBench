; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_motion.c_qpel_motion.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_motion.c_qpel_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_8__ = type { i32* }

@FF_BUG_QPEL_CHROMA2 = common dso_local global i32 0, align 4
@qpel_motion.rtab = internal constant [8 x i32] [i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1], align 16
@FF_BUG_QPEL_CHROMA = common dso_local global i32 0, align 4
@CONFIG_GRAY = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4
@FF_BUG_IEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32*, i32*, i32, i32, i32, i32**, [4 x i32 (i32*, i32*, i32, i32)*]*, [16 x i32 (i32*, i32*, i32)*]*, i32, i32, i32)* @qpel_motion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qpel_motion(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32** %7, [4 x i32 (i32*, i32*, i32, i32)*]* %8, [16 x i32 (i32*, i32*, i32)*]* %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32**, align 8
  %22 = alloca [4 x i32 (i32*, i32*, i32, i32)*]*, align 8
  %23 = alloca [16 x i32 (i32*, i32*, i32)*]*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 8
  %42 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32** %7, i32*** %21, align 8
  store [4 x i32 (i32*, i32*, i32, i32)*]* %8, [4 x i32 (i32*, i32*, i32, i32)*]** %22, align 8
  store [16 x i32 (i32*, i32*, i32)*]* %9, [16 x i32 (i32*, i32*, i32)*]** %23, align 8
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %43 = load i32, i32* %25, align 4
  %44 = and i32 %43, 3
  %45 = shl i32 %44, 2
  %46 = load i32, i32* %24, align 4
  %47 = and i32 %46, 3
  %48 = or i32 %45, %47
  store i32 %48, i32* %30, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %51, 16
  %53 = load i32, i32* %24, align 4
  %54 = ashr i32 %53, 2
  %55 = add nsw i32 %52, %54
  store i32 %55, i32* %34, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %18, align 4
  %60 = ashr i32 16, %59
  %61 = mul nsw i32 %58, %60
  %62 = load i32, i32* %25, align 4
  %63 = ashr i32 %62, 2
  %64 = add nsw i32 %61, %63
  store i32 %64, i32* %35, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %18, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %38, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %18, align 4
  %74 = shl i32 %72, %73
  store i32 %74, i32* %39, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %18, align 4
  %79 = shl i32 %77, %78
  store i32 %79, i32* %40, align 4
  %80 = load i32, i32* %18, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %13
  %83 = load i32, i32* %24, align 4
  %84 = sdiv i32 %83, 2
  store i32 %84, i32* %32, align 4
  %85 = load i32, i32* %25, align 4
  %86 = ashr i32 %85, 1
  store i32 %86, i32* %33, align 4
  br label %136

87:                                               ; preds = %13
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @FF_BUG_QPEL_CHROMA2, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %87
  %95 = load i32, i32* %24, align 4
  %96 = ashr i32 %95, 1
  %97 = load i32, i32* %24, align 4
  %98 = and i32 %97, 7
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* @qpel_motion.rtab, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %96, %101
  store i32 %102, i32* %32, align 4
  %103 = load i32, i32* %25, align 4
  %104 = ashr i32 %103, 1
  %105 = load i32, i32* %25, align 4
  %106 = and i32 %105, 7
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* @qpel_motion.rtab, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %104, %109
  store i32 %110, i32* %33, align 4
  br label %135

111:                                              ; preds = %87
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @FF_BUG_QPEL_CHROMA, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %111
  %119 = load i32, i32* %24, align 4
  %120 = ashr i32 %119, 1
  %121 = load i32, i32* %24, align 4
  %122 = and i32 %121, 1
  %123 = or i32 %120, %122
  store i32 %123, i32* %32, align 4
  %124 = load i32, i32* %25, align 4
  %125 = ashr i32 %124, 1
  %126 = load i32, i32* %25, align 4
  %127 = and i32 %126, 1
  %128 = or i32 %125, %127
  store i32 %128, i32* %33, align 4
  br label %134

129:                                              ; preds = %111
  %130 = load i32, i32* %24, align 4
  %131 = sdiv i32 %130, 2
  store i32 %131, i32* %32, align 4
  %132 = load i32, i32* %25, align 4
  %133 = sdiv i32 %132, 2
  store i32 %133, i32* %33, align 4
  br label %134

134:                                              ; preds = %129, %118
  br label %135

135:                                              ; preds = %134, %94
  br label %136

136:                                              ; preds = %135, %82
  %137 = load i32, i32* %32, align 4
  %138 = ashr i32 %137, 1
  %139 = load i32, i32* %32, align 4
  %140 = and i32 %139, 1
  %141 = or i32 %138, %140
  store i32 %141, i32* %32, align 4
  %142 = load i32, i32* %33, align 4
  %143 = ashr i32 %142, 1
  %144 = load i32, i32* %33, align 4
  %145 = and i32 %144, 1
  %146 = or i32 %143, %145
  store i32 %146, i32* %33, align 4
  %147 = load i32, i32* %32, align 4
  %148 = and i32 %147, 1
  %149 = load i32, i32* %33, align 4
  %150 = and i32 %149, 1
  %151 = shl i32 %150, 1
  %152 = or i32 %148, %151
  store i32 %152, i32* %31, align 4
  %153 = load i32, i32* %32, align 4
  %154 = ashr i32 %153, 1
  store i32 %154, i32* %32, align 4
  %155 = load i32, i32* %33, align 4
  %156 = ashr i32 %155, 1
  store i32 %156, i32* %33, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %159, 8
  %161 = load i32, i32* %32, align 4
  %162 = add nsw i32 %160, %161
  store i32 %162, i32* %36, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %18, align 4
  %167 = ashr i32 8, %166
  %168 = mul nsw i32 %165, %167
  %169 = load i32, i32* %33, align 4
  %170 = add nsw i32 %168, %169
  store i32 %170, i32* %37, align 4
  %171 = load i32**, i32*** %21, align 8
  %172 = getelementptr inbounds i32*, i32** %171, i64 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %35, align 4
  %175 = load i32, i32* %39, align 4
  %176 = mul nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %34, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32* %181, i32** %27, align 8
  %182 = load i32**, i32*** %21, align 8
  %183 = getelementptr inbounds i32*, i32** %182, i64 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %37, align 4
  %186 = load i32, i32* %40, align 4
  %187 = mul nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = load i32, i32* %36, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32* %192, i32** %28, align 8
  %193 = load i32**, i32*** %21, align 8
  %194 = getelementptr inbounds i32*, i32** %193, i64 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %37, align 4
  %197 = load i32, i32* %40, align 4
  %198 = mul nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  %201 = load i32, i32* %36, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32* %203, i32** %29, align 8
  %204 = load i32, i32* %34, align 4
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %24, align 4
  %209 = and i32 %208, 3
  %210 = sub nsw i32 %207, %209
  %211 = sub nsw i32 %210, 15
  %212 = call i32 @FFMAX(i32 %211, i32 0)
  %213 = icmp uge i32 %204, %212
  br i1 %213, label %225, label %214

214:                                              ; preds = %136
  %215 = load i32, i32* %35, align 4
  %216 = load i32, i32* %38, align 4
  %217 = load i32, i32* %25, align 4
  %218 = and i32 %217, 3
  %219 = sub nsw i32 %216, %218
  %220 = load i32, i32* %26, align 4
  %221 = sub nsw i32 %219, %220
  %222 = add nsw i32 %221, 1
  %223 = call i32 @FFMAX(i32 %222, i32 0)
  %224 = icmp uge i32 %215, %223
  br i1 %224, label %225, label %362

225:                                              ; preds = %214, %136
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %228, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 9
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = load i32*, i32** %27, align 8
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %18, align 4
  %242 = add nsw i32 17, %241
  %243 = load i32, i32* %34, align 4
  %244 = load i32, i32* %35, align 4
  %245 = load i32, i32* %18, align 4
  %246 = shl i32 1, %245
  %247 = mul nsw i32 %244, %246
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = call i32 %229(i32* %233, i32* %234, i32 %237, i32 %240, i32 17, i32 %242, i32 %243, i32 %247, i32 %250, i32 %253)
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 9
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  store i32* %258, i32** %27, align 8
  %259 = load i32, i32* @CONFIG_GRAY, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %225
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 7
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %361, label %270

270:                                              ; preds = %261, %225
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 9
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = mul nsw i32 18, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %274, i64 %279
  store i32* %280, i32** %41, align 8
  %281 = load i32*, i32** %41, align 8
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = mul nsw i32 10, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %281, i64 %286
  store i32* %287, i32** %42, align 8
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @FF_BUG_IEDGE, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %302

294:                                              ; preds = %270
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = load i32*, i32** %42, align 8
  %299 = sext i32 %297 to i64
  %300 = sub i64 0, %299
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  store i32* %301, i32** %42, align 8
  br label %302

302:                                              ; preds = %294, %270
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %305, align 8
  %307 = load i32*, i32** %41, align 8
  %308 = load i32*, i32** %28, align 8
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* %18, align 4
  %316 = add nsw i32 9, %315
  %317 = load i32, i32* %36, align 4
  %318 = load i32, i32* %37, align 4
  %319 = load i32, i32* %18, align 4
  %320 = shl i32 1, %319
  %321 = mul nsw i32 %318, %320
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 6
  %324 = load i32, i32* %323, align 8
  %325 = ashr i32 %324, 1
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = ashr i32 %328, 1
  %330 = call i32 %306(i32* %307, i32* %308, i32 %311, i32 %314, i32 9, i32 %316, i32 %317, i32 %321, i32 %325, i32 %329)
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  %334 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %333, align 8
  %335 = load i32*, i32** %42, align 8
  %336 = load i32*, i32** %29, align 8
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* %18, align 4
  %344 = add nsw i32 9, %343
  %345 = load i32, i32* %36, align 4
  %346 = load i32, i32* %37, align 4
  %347 = load i32, i32* %18, align 4
  %348 = shl i32 1, %347
  %349 = mul nsw i32 %346, %348
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 8
  %353 = ashr i32 %352, 1
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = ashr i32 %356, 1
  %358 = call i32 %334(i32* %335, i32* %336, i32 %339, i32 %342, i32 9, i32 %344, i32 %345, i32 %349, i32 %353, i32 %357)
  %359 = load i32*, i32** %41, align 8
  store i32* %359, i32** %28, align 8
  %360 = load i32*, i32** %42, align 8
  store i32* %360, i32** %29, align 8
  br label %361

361:                                              ; preds = %302, %261
  br label %362

362:                                              ; preds = %361, %214
  %363 = load i32, i32* %18, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %376, label %365

365:                                              ; preds = %362
  %366 = load [16 x i32 (i32*, i32*, i32)*]*, [16 x i32 (i32*, i32*, i32)*]** %23, align 8
  %367 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %366, i64 0
  %368 = load i32, i32* %30, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %367, i64 0, i64 %369
  %371 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %370, align 8
  %372 = load i32*, i32** %15, align 8
  %373 = load i32*, i32** %27, align 8
  %374 = load i32, i32* %39, align 4
  %375 = call i32 %371(i32* %372, i32* %373, i32 %374)
  br label %443

376:                                              ; preds = %362
  %377 = load i32, i32* %19, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %398

379:                                              ; preds = %376
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 4
  %383 = load i32*, i32** %15, align 8
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i32, i32* %383, i64 %384
  store i32* %385, i32** %15, align 8
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 4
  %388 = load i32, i32* %387, align 8
  %389 = load i32*, i32** %16, align 8
  %390 = sext i32 %388 to i64
  %391 = getelementptr inbounds i32, i32* %389, i64 %390
  store i32* %391, i32** %16, align 8
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 8
  %395 = load i32*, i32** %17, align 8
  %396 = sext i32 %394 to i64
  %397 = getelementptr inbounds i32, i32* %395, i64 %396
  store i32* %397, i32** %17, align 8
  br label %398

398:                                              ; preds = %379, %376
  %399 = load i32, i32* %20, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %420

401:                                              ; preds = %398
  %402 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = load i32*, i32** %27, align 8
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds i32, i32* %405, i64 %406
  store i32* %407, i32** %27, align 8
  %408 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %409 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %408, i32 0, i32 4
  %410 = load i32, i32* %409, align 8
  %411 = load i32*, i32** %28, align 8
  %412 = sext i32 %410 to i64
  %413 = getelementptr inbounds i32, i32* %411, i64 %412
  store i32* %413, i32** %28, align 8
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 4
  %416 = load i32, i32* %415, align 8
  %417 = load i32*, i32** %29, align 8
  %418 = sext i32 %416 to i64
  %419 = getelementptr inbounds i32, i32* %417, i64 %418
  store i32* %419, i32** %29, align 8
  br label %420

420:                                              ; preds = %401, %398
  %421 = load [16 x i32 (i32*, i32*, i32)*]*, [16 x i32 (i32*, i32*, i32)*]** %23, align 8
  %422 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %421, i64 1
  %423 = load i32, i32* %30, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %422, i64 0, i64 %424
  %426 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %425, align 8
  %427 = load i32*, i32** %15, align 8
  %428 = load i32*, i32** %27, align 8
  %429 = load i32, i32* %39, align 4
  %430 = call i32 %426(i32* %427, i32* %428, i32 %429)
  %431 = load [16 x i32 (i32*, i32*, i32)*]*, [16 x i32 (i32*, i32*, i32)*]** %23, align 8
  %432 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %431, i64 1
  %433 = load i32, i32* %30, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [16 x i32 (i32*, i32*, i32)*], [16 x i32 (i32*, i32*, i32)*]* %432, i64 0, i64 %434
  %436 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %435, align 8
  %437 = load i32*, i32** %15, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 8
  %439 = load i32*, i32** %27, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 8
  %441 = load i32, i32* %39, align 4
  %442 = call i32 %436(i32* %438, i32* %440, i32 %441)
  br label %443

443:                                              ; preds = %420, %365
  %444 = load i32, i32* @CONFIG_GRAY, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %455

446:                                              ; preds = %443
  %447 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i32 0, i32 7
  %449 = load %struct.TYPE_7__*, %struct.TYPE_7__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %480, label %455

455:                                              ; preds = %446, %443
  %456 = load [4 x i32 (i32*, i32*, i32, i32)*]*, [4 x i32 (i32*, i32*, i32, i32)*]** %22, align 8
  %457 = getelementptr inbounds [4 x i32 (i32*, i32*, i32, i32)*], [4 x i32 (i32*, i32*, i32, i32)*]* %456, i64 1
  %458 = load i32, i32* %31, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [4 x i32 (i32*, i32*, i32, i32)*], [4 x i32 (i32*, i32*, i32, i32)*]* %457, i64 0, i64 %459
  %461 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %460, align 8
  %462 = load i32*, i32** %17, align 8
  %463 = load i32*, i32** %29, align 8
  %464 = load i32, i32* %40, align 4
  %465 = load i32, i32* %26, align 4
  %466 = ashr i32 %465, 1
  %467 = call i32 %461(i32* %462, i32* %463, i32 %464, i32 %466)
  %468 = load [4 x i32 (i32*, i32*, i32, i32)*]*, [4 x i32 (i32*, i32*, i32, i32)*]** %22, align 8
  %469 = getelementptr inbounds [4 x i32 (i32*, i32*, i32, i32)*], [4 x i32 (i32*, i32*, i32, i32)*]* %468, i64 1
  %470 = load i32, i32* %31, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [4 x i32 (i32*, i32*, i32, i32)*], [4 x i32 (i32*, i32*, i32, i32)*]* %469, i64 0, i64 %471
  %473 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %472, align 8
  %474 = load i32*, i32** %16, align 8
  %475 = load i32*, i32** %28, align 8
  %476 = load i32, i32* %40, align 4
  %477 = load i32, i32* %26, align 4
  %478 = ashr i32 %477, 1
  %479 = call i32 %473(i32* %474, i32* %475, i32 %476, i32 %478)
  br label %480

480:                                              ; preds = %455, %446
  ret void
}

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
