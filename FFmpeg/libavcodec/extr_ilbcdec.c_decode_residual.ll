; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_decode_residual.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_decode_residual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@CB_HALFFILTERLEN = common dso_local global i64 0, align 8
@STATE_LEN = common dso_local global i32 0, align 4
@SUBL = common dso_local global i32 0, align 4
@LPC_FILTERORDER = common dso_local global i32 0, align 4
@CB_MEML = common dso_local global i32 0, align 4
@ST_MEM_L_TBL = common dso_local global i32 0, align 4
@CB_NSTAGES = common dso_local global i32 0, align 4
@MEM_LF_TBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*, i32*)* @decode_residual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_residual(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %16, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %17, align 8
  %25 = load i32*, i32** %17, align 8
  %26 = load i64, i64* @CB_HALFFILTERLEN, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %18, align 8
  %28 = load i32, i32* @STATE_LEN, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* @SUBL, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %13, align 4
  br label %53

44:                                               ; preds = %4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @SUBL, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %44, %37
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* @LPC_FILTERORDER, align 4
  %66 = add nsw i32 %65, 1
  %67 = mul nsw i32 %64, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %60, i64 %68
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @state_construct(i32 %56, i32 %59, i32* %69, i32* %73, i32 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %135

82:                                               ; preds = %53
  %83 = load i32*, i32** %18, align 8
  %84 = load i32, i32* @CB_MEML, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %84, %87
  %89 = mul nsw i32 %88, 2
  %90 = call i32 @memset(i32* %83, i32 0, i32 %89)
  %91 = load i32*, i32** %18, align 8
  %92 = load i32, i32* @CB_MEML, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = sub i64 0, %98
  %100 = getelementptr inbounds i32, i32* %94, i64 %99
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %107, 2
  %109 = call i32 @memcpy(i32* %100, i32* %104, i32 %108)
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %111, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %110, i64 %116
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %18, align 8
  %125 = load i32, i32* @CB_MEML, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* @ST_MEM_L_TBL, align 4
  %129 = sext i32 %128 to i64
  %130 = sub i64 0, %129
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* @ST_MEM_L_TBL, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @construct_vector(i32* %117, i32 %120, i32 %123, i32* %131, i32 %132, i32 %133)
  br label %182

135:                                              ; preds = %53
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %9, align 4
  %139 = load i32*, i32** %18, align 8
  %140 = load i32, i32* @CB_MEML, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = getelementptr inbounds i32, i32* %142, i64 -1
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @reverse_memcpy(i32* %143, i32* %147, i32 %148)
  %150 = load i32*, i32** %18, align 8
  %151 = load i32, i32* @CB_MEML, align 4
  %152 = load i32, i32* %9, align 4
  %153 = sub nsw i32 %151, %152
  %154 = mul nsw i32 %153, 2
  %155 = call i32 @memset(i32* %150, i32 0, i32 %154)
  %156 = load i32*, i32** %16, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %18, align 8
  %164 = load i32, i32* @CB_MEML, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* @ST_MEM_L_TBL, align 4
  %168 = sext i32 %167 to i64
  %169 = sub i64 0, %168
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* @ST_MEM_L_TBL, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @construct_vector(i32* %156, i32 %159, i32 %162, i32* %170, i32 %171, i32 %172)
  %174 = load i32*, i32** %7, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32*, i32** %16, align 8
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @reverse_memcpy(i32* %178, i32* %179, i32 %180)
  br label %182

182:                                              ; preds = %135, %82
  store i32 1, i32* %14, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 %185, %188
  %190 = sub nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %294

193:                                              ; preds = %182
  %194 = load i32*, i32** %18, align 8
  %195 = load i32, i32* @CB_MEML, align 4
  %196 = load i32, i32* @STATE_LEN, align 4
  %197 = sub nsw i32 %195, %196
  %198 = mul nsw i32 %197, 2
  %199 = call i32 @memset(i32* %194, i32 0, i32 %198)
  %200 = load i32*, i32** %18, align 8
  %201 = load i32, i32* @CB_MEML, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* @STATE_LEN, align 4
  %205 = sext i32 %204 to i64
  %206 = sub i64 0, %205
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  %208 = load i32*, i32** %7, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %211, 1
  %213 = load i32, i32* @SUBL, align 4
  %214 = mul nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %208, i64 %215
  %217 = load i32, i32* @STATE_LEN, align 4
  %218 = mul nsw i32 %217, 2
  %219 = call i32 @memcpy(i32* %207, i32* %216, i32 %218)
  store i32 0, i32* %15, align 4
  br label %220

220:                                              ; preds = %290, %193
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %293

224:                                              ; preds = %220
  %225 = load i32*, i32** %7, align 8
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  %230 = load i32, i32* %15, align 4
  %231 = add nsw i32 %229, %230
  %232 = load i32, i32* @SUBL, align 4
  %233 = mul nsw i32 %231, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %225, i64 %234
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* @CB_NSTAGES, align 4
  %241 = mul nsw i32 %239, %240
  %242 = add nsw i32 %238, %241
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %14, align 4
  %247 = load i32, i32* @CB_NSTAGES, align 4
  %248 = mul nsw i32 %246, %247
  %249 = add nsw i32 %245, %248
  %250 = load i32*, i32** %18, align 8
  %251 = load i32, i32* @MEM_LF_TBL, align 4
  %252 = load i32, i32* @SUBL, align 4
  %253 = call i32 @construct_vector(i32* %235, i32 %242, i32 %249, i32* %250, i32 %251, i32 %252)
  %254 = load i32*, i32** %18, align 8
  %255 = load i32*, i32** %18, align 8
  %256 = load i32, i32* @SUBL, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* @CB_MEML, align 4
  %260 = load i32, i32* @SUBL, align 4
  %261 = sub nsw i32 %259, %260
  %262 = sext i32 %261 to i64
  %263 = mul i64 %262, 4
  %264 = trunc i64 %263 to i32
  %265 = call i32 @memmove(i32* %254, i32* %258, i32 %264)
  %266 = load i32*, i32** %18, align 8
  %267 = load i32, i32* @CB_MEML, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* @SUBL, align 4
  %271 = sext i32 %270 to i64
  %272 = sub i64 0, %271
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = load i32*, i32** %7, align 8
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1
  %279 = load i32, i32* %15, align 4
  %280 = add nsw i32 %278, %279
  %281 = load i32, i32* @SUBL, align 4
  %282 = mul nsw i32 %280, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %274, i64 %283
  %285 = load i32, i32* @SUBL, align 4
  %286 = mul nsw i32 %285, 2
  %287 = call i32 @memcpy(i32* %273, i32* %284, i32 %286)
  %288 = load i32, i32* %14, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %14, align 4
  br label %290

290:                                              ; preds = %224
  %291 = load i32, i32* %15, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %15, align 4
  br label %220

293:                                              ; preds = %220
  br label %294

294:                                              ; preds = %293, %182
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 %297, 1
  store i32 %298, i32* %11, align 4
  %299 = load i32, i32* %11, align 4
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %416

301:                                              ; preds = %294
  %302 = load i32, i32* @SUBL, align 4
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %305, 1
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %306, %309
  %311 = mul nsw i32 %302, %310
  store i32 %311, i32* %9, align 4
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* @CB_MEML, align 4
  %314 = icmp sgt i32 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %301
  %316 = load i32, i32* @CB_MEML, align 4
  store i32 %316, i32* %9, align 4
  br label %317

317:                                              ; preds = %315, %301
  %318 = load i32*, i32** %18, align 8
  %319 = load i32, i32* @CB_MEML, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = getelementptr inbounds i32, i32* %321, i64 -1
  %323 = load i32*, i32** %7, align 8
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = sub nsw i32 %326, 1
  %328 = load i32, i32* @SUBL, align 4
  %329 = mul nsw i32 %327, %328
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %323, i64 %330
  %332 = load i32, i32* %9, align 4
  %333 = call i32 @reverse_memcpy(i32* %322, i32* %331, i32 %332)
  %334 = load i32*, i32** %18, align 8
  %335 = load i32, i32* @CB_MEML, align 4
  %336 = load i32, i32* %9, align 4
  %337 = sub nsw i32 %335, %336
  %338 = mul nsw i32 %337, 2
  %339 = call i32 @memset(i32* %334, i32 0, i32 %338)
  store i32 0, i32* %15, align 4
  br label %340

340:                                              ; preds = %400, %317
  %341 = load i32, i32* %15, align 4
  %342 = load i32, i32* %11, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %403

344:                                              ; preds = %340
  %345 = load i32*, i32** %16, align 8
  %346 = load i32, i32* %15, align 4
  %347 = load i32, i32* @SUBL, align 4
  %348 = mul nsw i32 %346, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %345, i64 %349
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %14, align 4
  %355 = load i32, i32* @CB_NSTAGES, align 4
  %356 = mul nsw i32 %354, %355
  %357 = add nsw i32 %353, %356
  %358 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %14, align 4
  %362 = load i32, i32* @CB_NSTAGES, align 4
  %363 = mul nsw i32 %361, %362
  %364 = add nsw i32 %360, %363
  %365 = load i32*, i32** %18, align 8
  %366 = load i32, i32* @MEM_LF_TBL, align 4
  %367 = load i32, i32* @SUBL, align 4
  %368 = call i32 @construct_vector(i32* %350, i32 %357, i32 %364, i32* %365, i32 %366, i32 %367)
  %369 = load i32*, i32** %18, align 8
  %370 = load i32*, i32** %18, align 8
  %371 = load i32, i32* @SUBL, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* @CB_MEML, align 4
  %375 = load i32, i32* @SUBL, align 4
  %376 = sub nsw i32 %374, %375
  %377 = sext i32 %376 to i64
  %378 = mul i64 %377, 4
  %379 = trunc i64 %378 to i32
  %380 = call i32 @memmove(i32* %369, i32* %373, i32 %379)
  %381 = load i32*, i32** %18, align 8
  %382 = load i32, i32* @CB_MEML, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* @SUBL, align 4
  %386 = sext i32 %385 to i64
  %387 = sub i64 0, %386
  %388 = getelementptr inbounds i32, i32* %384, i64 %387
  %389 = load i32*, i32** %16, align 8
  %390 = load i32, i32* %15, align 4
  %391 = load i32, i32* @SUBL, align 4
  %392 = mul nsw i32 %390, %391
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %389, i64 %393
  %395 = load i32, i32* @SUBL, align 4
  %396 = mul nsw i32 %395, 2
  %397 = call i32 @memcpy(i32* %388, i32* %394, i32 %396)
  %398 = load i32, i32* %14, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %14, align 4
  br label %400

400:                                              ; preds = %344
  %401 = load i32, i32* %15, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %15, align 4
  br label %340

403:                                              ; preds = %340
  %404 = load i32*, i32** %7, align 8
  %405 = load i32, i32* @SUBL, align 4
  %406 = load i32, i32* %11, align 4
  %407 = mul nsw i32 %405, %406
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %404, i64 %408
  %410 = getelementptr inbounds i32, i32* %409, i64 -1
  %411 = load i32*, i32** %16, align 8
  %412 = load i32, i32* @SUBL, align 4
  %413 = load i32, i32* %11, align 4
  %414 = mul nsw i32 %412, %413
  %415 = call i32 @reverse_memcpy(i32* %410, i32* %411, i32 %414)
  br label %416

416:                                              ; preds = %403, %294
  ret void
}

declare dso_local i32 @state_construct(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @construct_vector(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @reverse_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
