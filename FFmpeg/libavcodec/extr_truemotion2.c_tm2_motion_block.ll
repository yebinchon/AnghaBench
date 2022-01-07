; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_motion_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_motion_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@TM2_MOT = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MV out of picture\0A\00", align 1
@oYstride = common dso_local global i32 0, align 4
@Yo = common dso_local global i32* null, align 8
@oUstride = common dso_local global i32 0, align 4
@Uo = common dso_local global i32* null, align 8
@oVstride = common dso_local global i32 0, align 4
@Vo = common dso_local global i32* null, align 8
@U = common dso_local global i32* null, align 8
@V = common dso_local global i32* null, align 8
@Ustride = common dso_local global i32 0, align 4
@Vstride = common dso_local global i32 0, align 4
@clast = common dso_local global i64 0, align 8
@Y = common dso_local global i32* null, align 8
@Ystride = common dso_local global i32 0, align 4
@last = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32)* @tm2_motion_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm2_motion_block(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = call i32 (...) @TM2_INIT_POINTERS_2()
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = load i32, i32* @TM2_MOT, align 4
  %16 = call i32 @GET_TOK(%struct.TYPE_5__* %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = load i32, i32* @TM2_MOT, align 4
  %19 = call i32 @GET_TOK(%struct.TYPE_5__* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %21, 4
  %23 = add nsw i32 %22, 4
  %24 = sub nsw i32 0, %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 4
  %32 = sub nsw i32 %29, %31
  %33 = call i32 @av_clip(i32 %20, i32 %24, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %35, 4
  %37 = add nsw i32 %36, 4
  %38 = sub nsw i32 0, %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %44, 4
  %46 = sub nsw i32 %43, %45
  %47 = call i32 @av_clip(i32 %34, i32 %38, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 4, %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %49, %50
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %83, label %53

53:                                               ; preds = %4
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 4, %54
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %83, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 4, %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %61, %62
  %64 = add nsw i32 %63, 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %64, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 4, %72
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %73, %74
  %76 = add nsw i32 %75, 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %76, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %71, %59, %53, %4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = call i32 @av_log(%struct.TYPE_6__* %86, i32 %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %316

89:                                               ; preds = %71
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @oYstride, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32*, i32** @Yo, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** @Yo, align 8
  %98 = load i32, i32* %12, align 4
  %99 = ashr i32 %98, 1
  %100 = load i32, i32* @oUstride, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %11, align 4
  %103 = ashr i32 %102, 1
  %104 = add nsw i32 %101, %103
  %105 = load i32*, i32** @Uo, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** @Uo, align 8
  %108 = load i32, i32* %12, align 4
  %109 = ashr i32 %108, 1
  %110 = load i32, i32* @oVstride, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* %11, align 4
  %113 = ashr i32 %112, 1
  %114 = add nsw i32 %111, %113
  %115 = load i32*, i32** @Vo, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** @Vo, align 8
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %164, %89
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 2
  br i1 %120, label %121, label %167

121:                                              ; preds = %118
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %144, %121
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %123, 2
  br i1 %124, label %125, label %147

125:                                              ; preds = %122
  %126 = load i32*, i32** @Uo, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** @U, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %130, i32* %134, align 4
  %135 = load i32*, i32** @Vo, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** @V, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  br label %144

144:                                              ; preds = %125
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %122

147:                                              ; preds = %122
  %148 = load i32, i32* @Ustride, align 4
  %149 = load i32*, i32** @U, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** @U, align 8
  %152 = load i32, i32* @Vstride, align 4
  %153 = load i32*, i32** @V, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** @V, align 8
  %156 = load i32, i32* @oUstride, align 4
  %157 = load i32*, i32** @Uo, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** @Uo, align 8
  %160 = load i32, i32* @oVstride, align 4
  %161 = load i32*, i32** @Vo, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32* %163, i32** @Vo, align 8
  br label %164

164:                                              ; preds = %147
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %118

167:                                              ; preds = %118
  %168 = load i32, i32* @Ustride, align 4
  %169 = mul nsw i32 %168, 2
  %170 = load i32*, i32** @U, align 8
  %171 = sext i32 %169 to i64
  %172 = sub i64 0, %171
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32* %173, i32** @U, align 8
  %174 = load i32, i32* @Vstride, align 4
  %175 = mul nsw i32 %174, 2
  %176 = load i32*, i32** @V, align 8
  %177 = sext i32 %175 to i64
  %178 = sub i64 0, %177
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32* %179, i32** @V, align 8
  %180 = load i32*, i32** @U, align 8
  %181 = load i32, i32* @Ustride, align 4
  %182 = load i64, i64* @clast, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @TM2_RECALC_BLOCK(i32* %180, i32 %181, i64 %182, i64 %185)
  %187 = load i32*, i32** @V, align 8
  %188 = load i32, i32* @Vstride, align 4
  %189 = load i64, i64* @clast, align 8
  %190 = add nsw i64 %189, 2
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, 2
  %195 = call i32 @TM2_RECALC_BLOCK(i32* %187, i32 %188, i64 %190, i64 %194)
  store i32 0, i32* %10, align 4
  br label %196

196:                                              ; preds = %225, %167
  %197 = load i32, i32* %10, align 4
  %198 = icmp slt i32 %197, 4
  br i1 %198, label %199, label %228

199:                                              ; preds = %196
  store i32 0, i32* %9, align 4
  br label %200

200:                                              ; preds = %213, %199
  %201 = load i32, i32* %9, align 4
  %202 = icmp slt i32 %201, 4
  br i1 %202, label %203, label %216

203:                                              ; preds = %200
  %204 = load i32*, i32** @Yo, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** @Y, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %208, i32* %212, align 4
  br label %213

213:                                              ; preds = %203
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %200

216:                                              ; preds = %200
  %217 = load i32, i32* @Ystride, align 4
  %218 = load i32*, i32** @Y, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32* %220, i32** @Y, align 8
  %221 = load i32, i32* @oYstride, align 4
  %222 = load i32*, i32** @Yo, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32* %224, i32** @Yo, align 8
  br label %225

225:                                              ; preds = %216
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %10, align 4
  br label %196

228:                                              ; preds = %196
  %229 = load i32, i32* @Ystride, align 4
  %230 = mul nsw i32 %229, 4
  %231 = load i32*, i32** @Y, align 8
  %232 = sext i32 %230 to i64
  %233 = sub i64 0, %232
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32* %234, i32** @Y, align 8
  %235 = load i32*, i32** @Y, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** @last, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 3
  %240 = load i32, i32* %239, align 4
  %241 = sub i32 %237, %240
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  store i32 %241, i32* %245, align 4
  %246 = load i32*, i32** @Y, align 8
  %247 = load i32, i32* @Ystride, align 4
  %248 = add nsw i32 3, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** @Y, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 3
  %254 = load i32, i32* %253, align 4
  %255 = sub i32 %251, %254
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 1
  store i32 %255, i32* %259, align 4
  %260 = load i32*, i32** @Y, align 8
  %261 = load i32, i32* @Ystride, align 4
  %262 = mul nsw i32 %261, 2
  %263 = add nsw i32 3, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %260, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** @Y, align 8
  %268 = load i32, i32* @Ystride, align 4
  %269 = add nsw i32 3, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = sub i32 %266, %272
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 2
  store i32 %273, i32* %277, align 4
  %278 = load i32*, i32** @Y, align 8
  %279 = load i32, i32* @Ystride, align 4
  %280 = mul nsw i32 %279, 3
  %281 = add nsw i32 3, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %278, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** @Y, align 8
  %286 = load i32, i32* @Ystride, align 4
  %287 = mul nsw i32 %286, 2
  %288 = add nsw i32 3, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %285, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = sub i32 %284, %291
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 3
  store i32 %292, i32* %296, align 4
  store i32 0, i32* %9, align 4
  br label %297

297:                                              ; preds = %313, %228
  %298 = load i32, i32* %9, align 4
  %299 = icmp slt i32 %298, 4
  br i1 %299, label %300, label %316

300:                                              ; preds = %297
  %301 = load i32*, i32** @Y, align 8
  %302 = load i32, i32* %9, align 4
  %303 = load i32, i32* @Ystride, align 4
  %304 = mul nsw i32 %303, 3
  %305 = add nsw i32 %302, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %301, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32*, i32** @last, align 8
  %310 = load i32, i32* %9, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  store i32 %308, i32* %312, align 4
  br label %313

313:                                              ; preds = %300
  %314 = load i32, i32* %9, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %9, align 4
  br label %297

316:                                              ; preds = %83, %297
  ret void
}

declare dso_local i32 @TM2_INIT_POINTERS_2(...) #1

declare dso_local i32 @GET_TOK(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @TM2_RECALC_BLOCK(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
