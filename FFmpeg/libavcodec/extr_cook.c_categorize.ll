; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_categorize.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_categorize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@expbits_tab = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*, i32*, i32*)* @categorize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @categorize(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [102 x i32], align 16
  %22 = alloca [102 x i32], align 16
  %23 = alloca [256 x i32], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %28 = bitcast [102 x i32]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 408, i1 false)
  %29 = bitcast [102 x i32]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 408, i1 false)
  %30 = bitcast [256 x i32]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 1024, i1 false)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %24, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %25, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = call i32 @get_bits_count(i32* %41)
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %5
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  %58 = mul nsw i32 %57, 5
  %59 = sdiv i32 %58, 8
  %60 = add nsw i32 %52, %59
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %49, %5
  store i32 -32, i32* %12, align 4
  store i32 32, i32* %19, align 4
  br label %62

62:                                               ; preds = %108, %61
  %63 = load i32, i32* %19, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %111

65:                                               ; preds = %62
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %20, align 4
  br label %69

69:                                               ; preds = %95, %65
  %70 = load i32, i32* %20, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %69
  %73 = load i32, i32* %19, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %73, %78
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %79, %80
  %82 = sdiv i32 %81, 2
  %83 = call i32 @av_clip_uintp2(i32 %82, i32 3)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %17, align 4
  %86 = load i64*, i64** @expbits_tab, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %72
  %96 = load i32, i32* %20, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %20, align 4
  br label %69

98:                                               ; preds = %69
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %15, align 4
  %101 = sub nsw i32 %100, 32
  %102 = icmp sge i32 %99, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %103, %98
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %19, align 4
  %110 = sdiv i32 %109, 2
  store i32 %110, i32* %19, align 4
  br label %62

111:                                              ; preds = %62
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %112

112:                                              ; preds = %145, %111
  %113 = load i32, i32* %19, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %148

118:                                              ; preds = %112
  %119 = load i32, i32* %12, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %19, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %119, %124
  %126 = sdiv i32 %125, 2
  %127 = call i32 @av_clip_uintp2(i32 %126, i32 3)
  store i32 %127, i32* %11, align 4
  %128 = load i64*, i64** @expbits_tab, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [102 x i32], [102 x i32]* %22, i64 0, i64 %139
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [102 x i32], [102 x i32]* %21, i64 0, i64 %143
  store i32 %141, i32* %144, align 4
  br label %145

145:                                              ; preds = %118
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %19, align 4
  br label %112

148:                                              ; preds = %112
  %149 = load i32, i32* %16, align 4
  store i32 %149, i32* %14, align 4
  store i32 %149, i32* %13, align 4
  store i32 1, i32* %20, align 4
  br label %150

150:                                              ; preds = %314, %148
  %151 = load i32, i32* %20, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %317

156:                                              ; preds = %150
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32, i32* %15, align 4
  %161 = mul nsw i32 2, %160
  %162 = icmp sgt i32 %159, %161
  br i1 %162, label %163, label %238

163:                                              ; preds = %156
  store i32 -999999, i32* %26, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %164

164:                                              ; preds = %198, %163
  %165 = load i32, i32* %19, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %201

170:                                              ; preds = %164
  %171 = load i32, i32* %19, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [102 x i32], [102 x i32]* %22, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %174, 7
  br i1 %175, label %176, label %197

176:                                              ; preds = %170
  %177 = load i32, i32* %19, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [102 x i32], [102 x i32]* %22, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 -2, %180
  %182 = load i32*, i32** %8, align 8
  %183 = load i32, i32* %19, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %181, %186
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %187, %188
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %26, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %176
  %194 = load i32, i32* %18, align 4
  store i32 %194, i32* %26, align 4
  %195 = load i32, i32* %19, align 4
  store i32 %195, i32* %17, align 4
  br label %196

196:                                              ; preds = %193, %176
  br label %197

197:                                              ; preds = %196, %170
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %19, align 4
  br label %164

201:                                              ; preds = %164
  %202 = load i32, i32* %17, align 4
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  br label %317

205:                                              ; preds = %201
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %24, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %24, align 4
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds [256 x i32], [256 x i32]* %23, i64 0, i64 %209
  store i32 %206, i32* %210, align 4
  %211 = load i64*, i64** @expbits_tab, align 8
  %212 = load i32, i32* %17, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [102 x i32], [102 x i32]* %22, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %211, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load i64*, i64** @expbits_tab, align 8
  %220 = load i32, i32* %17, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [102 x i32], [102 x i32]* %22, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %219, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = sub nsw i64 %218, %227
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = sub nsw i64 %230, %228
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %13, align 4
  %233 = load i32, i32* %17, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [102 x i32], [102 x i32]* %22, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 4
  br label %313

238:                                              ; preds = %156
  store i32 999999, i32* %27, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %239

239:                                              ; preds = %273, %238
  %240 = load i32, i32* %19, align 4
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %240, %243
  br i1 %244, label %245, label %276

245:                                              ; preds = %239
  %246 = load i32, i32* %19, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [102 x i32], [102 x i32]* %21, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %272

251:                                              ; preds = %245
  %252 = load i32, i32* %19, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [102 x i32], [102 x i32]* %21, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = mul nsw i32 -2, %255
  %257 = load i32*, i32** %8, align 8
  %258 = load i32, i32* %19, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %256, %261
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %262, %263
  store i32 %264, i32* %18, align 4
  %265 = load i32, i32* %18, align 4
  %266 = load i32, i32* %27, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %251
  %269 = load i32, i32* %18, align 4
  store i32 %269, i32* %27, align 4
  %270 = load i32, i32* %19, align 4
  store i32 %270, i32* %17, align 4
  br label %271

271:                                              ; preds = %268, %251
  br label %272

272:                                              ; preds = %271, %245
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %19, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %19, align 4
  br label %239

276:                                              ; preds = %239
  %277 = load i32, i32* %17, align 4
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %279, label %280

279:                                              ; preds = %276
  br label %317

280:                                              ; preds = %276
  %281 = load i32, i32* %17, align 4
  %282 = load i32, i32* %25, align 4
  %283 = add nsw i32 %282, -1
  store i32 %283, i32* %25, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [256 x i32], [256 x i32]* %23, i64 0, i64 %284
  store i32 %281, i32* %285, align 4
  %286 = load i64*, i64** @expbits_tab, align 8
  %287 = load i32, i32* %17, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [102 x i32], [102 x i32]* %21, i64 0, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64, i64* %286, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = load i64*, i64** @expbits_tab, align 8
  %295 = load i32, i32* %17, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [102 x i32], [102 x i32]* %21, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %294, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = sub nsw i64 %293, %302
  %304 = load i32, i32* %14, align 4
  %305 = sext i32 %304 to i64
  %306 = sub nsw i64 %305, %303
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %14, align 4
  %308 = load i32, i32* %17, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [102 x i32], [102 x i32]* %21, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, -1
  store i32 %312, i32* %310, align 4
  br label %313

313:                                              ; preds = %280, %205
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %20, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %20, align 4
  br label %150

317:                                              ; preds = %279, %204, %150
  store i32 0, i32* %19, align 4
  br label %318

318:                                              ; preds = %333, %317
  %319 = load i32, i32* %19, align 4
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = icmp slt i32 %319, %322
  br i1 %323, label %324, label %336

324:                                              ; preds = %318
  %325 = load i32, i32* %19, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [102 x i32], [102 x i32]* %21, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32*, i32** %9, align 8
  %330 = load i32, i32* %19, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32 %328, i32* %332, align 4
  br label %333

333:                                              ; preds = %324
  %334 = load i32, i32* %19, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %19, align 4
  br label %318

336:                                              ; preds = %318
  store i32 0, i32* %19, align 4
  br label %337

337:                                              ; preds = %354, %336
  %338 = load i32, i32* %19, align 4
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = sub nsw i32 %341, 1
  %343 = icmp slt i32 %338, %342
  br i1 %343, label %344, label %357

344:                                              ; preds = %337
  %345 = load i32, i32* %25, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %25, align 4
  %347 = sext i32 %345 to i64
  %348 = getelementptr inbounds [256 x i32], [256 x i32]* %23, i64 0, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = load i32*, i32** %10, align 8
  %351 = load i32, i32* %19, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  store i32 %349, i32* %353, align 4
  br label %354

354:                                              ; preds = %344
  %355 = load i32, i32* %19, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %19, align 4
  br label %337

357:                                              ; preds = %337
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_bits_count(i32*) #2

declare dso_local i32 @av_clip_uintp2(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
