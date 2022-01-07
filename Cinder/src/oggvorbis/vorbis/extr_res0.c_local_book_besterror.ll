; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_res0.c_local_book_besterror.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_res0.c_local_book_besterror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @local_book_besterror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_book_besterror(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [8 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %39 = bitcast [8 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %39, i8 0, i64 32, i1 false)
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %110

42:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %106, %42
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %109

48:                                               ; preds = %44
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = ashr i32 %57, 1
  %59 = add nsw i32 %56, %58
  %60 = load i32, i32* %10, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %48
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %15, align 4
  %68 = sub nsw i32 %66, %67
  %69 = shl i32 %68, 1
  %70 = sub nsw i32 %69, 1
  br label %76

71:                                               ; preds = %48
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %72, %73
  %75 = shl i32 %74, 1
  br label %76

76:                                               ; preds = %71, %65
  %77 = phi i32 [ %70, %65 ], [ %75, %71 ]
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %11, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %16, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %95

84:                                               ; preds = %76
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %89, 1
  br label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %16, align 4
  br label %93

93:                                               ; preds = %91, %88
  %94 = phi i32 [ %90, %88 ], [ %92, %91 ]
  br label %95

95:                                               ; preds = %93, %83
  %96 = phi i32 [ 0, %83 ], [ %94, %93 ]
  %97 = add nsw i32 %80, %96
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %10, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %104
  store i32 %102, i32* %105, align 4
  br label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %44

109:                                              ; preds = %44
  br label %173

110:                                              ; preds = %2
  store i32 0, i32* %6, align 4
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %169, %110
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %172

116:                                              ; preds = %112
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %116
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %17, align 4
  %131 = sub nsw i32 %129, %130
  %132 = shl i32 %131, 1
  %133 = sub nsw i32 %132, 1
  br label %139

134:                                              ; preds = %116
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %12, align 4
  %137 = sub nsw i32 %135, %136
  %138 = shl i32 %137, 1
  br label %139

139:                                              ; preds = %134, %128
  %140 = phi i32 [ %133, %128 ], [ %138, %134 ]
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %11, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32, i32* %18, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %158

147:                                              ; preds = %139
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp sge i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* %11, align 4
  %153 = sub nsw i32 %152, 1
  br label %156

154:                                              ; preds = %147
  %155 = load i32, i32* %18, align 4
  br label %156

156:                                              ; preds = %154, %151
  %157 = phi i32 [ %153, %151 ], [ %155, %154 ]
  br label %158

158:                                              ; preds = %156, %146
  %159 = phi i32 [ 0, %146 ], [ %157, %156 ]
  %160 = add nsw i32 %143, %159
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %10, align 4
  %163 = mul nsw i32 %161, %162
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %163, %164
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %167
  store i32 %165, i32* %168, align 4
  br label %169

169:                                              ; preds = %158
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %112

172:                                              ; preds = %112
  br label %173

173:                                              ; preds = %172, %109
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = icmp sle i64 %182, 0
  br i1 %183, label %184, label %295

184:                                              ; preds = %173
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 5
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  store %struct.TYPE_4__* %187, %struct.TYPE_4__** %19, align 8
  store i32 -1, i32* %20, align 4
  %188 = bitcast [8 x i32]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %188, i8 0, i64 32, i1 false)
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %197, 1
  %199 = mul nsw i32 %194, %198
  %200 = add nsw i32 %191, %199
  store i32 %200, i32* %22, align 4
  store i32 0, i32* %6, align 4
  br label %201

201:                                              ; preds = %291, %184
  %202 = load i32, i32* %6, align 4
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %294

207:                                              ; preds = %201
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = icmp sgt i64 %214, 0
  br i1 %215, label %216, label %254

216:                                              ; preds = %207
  store i32 0, i32* %23, align 4
  store i32 0, i32* %7, align 4
  br label %217

217:                                              ; preds = %237, %216
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* %5, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %240

221:                                              ; preds = %217
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %4, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %225, %230
  store i32 %231, i32* %24, align 4
  %232 = load i32, i32* %24, align 4
  %233 = load i32, i32* %24, align 4
  %234 = mul nsw i32 %232, %233
  %235 = load i32, i32* %23, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %23, align 4
  br label %237

237:                                              ; preds = %221
  %238 = load i32, i32* %7, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %7, align 4
  br label %217

240:                                              ; preds = %217
  %241 = load i32, i32* %20, align 4
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %247, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %23, align 4
  %245 = load i32, i32* %20, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %243, %240
  %248 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %249 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 0
  %250 = call i32 @memcpy(i32* %248, i32* %249, i32 32)
  %251 = load i32, i32* %23, align 4
  store i32 %251, i32* %20, align 4
  %252 = load i32, i32* %6, align 4
  store i32 %252, i32* %13, align 4
  br label %253

253:                                              ; preds = %247, %243
  br label %254

254:                                              ; preds = %253, %207
  store i32 0, i32* %7, align 4
  br label %255

255:                                              ; preds = %262, %254
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %22, align 4
  %261 = icmp sge i32 %259, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %255
  %263 = load i32, i32* %7, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %7, align 4
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 %265
  store i32 0, i32* %266, align 4
  br label %255

267:                                              ; preds = %255
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = icmp sge i32 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %267
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* %7, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, %276
  store i32 %281, i32* %279, align 4
  br label %282

282:                                              ; preds = %273, %267
  %283 = load i32, i32* %7, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 0, %286
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 %289
  store i32 %287, i32* %290, align 4
  br label %291

291:                                              ; preds = %282
  %292 = load i32, i32* %6, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %6, align 4
  br label %201

294:                                              ; preds = %201
  br label %295

295:                                              ; preds = %294, %173
  %296 = load i32, i32* %13, align 4
  %297 = icmp sgt i32 %296, -1
  br i1 %297, label %298, label %316

298:                                              ; preds = %295
  store i32 0, i32* %6, align 4
  br label %299

299:                                              ; preds = %312, %298
  %300 = load i32, i32* %6, align 4
  %301 = load i32, i32* %5, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %315

303:                                              ; preds = %299
  %304 = load i32, i32* %6, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32*, i32** %4, align 8
  %309 = getelementptr inbounds i32, i32* %308, i32 1
  store i32* %309, i32** %4, align 8
  %310 = load i32, i32* %308, align 4
  %311 = sub nsw i32 %310, %307
  store i32 %311, i32* %308, align 4
  br label %312

312:                                              ; preds = %303
  %313 = load i32, i32* %6, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %6, align 4
  br label %299

315:                                              ; preds = %299
  br label %316

316:                                              ; preds = %315, %295
  %317 = load i32, i32* %13, align 4
  ret i32 %317
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
