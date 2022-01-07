; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/vn/extr_shadow.c_bitmap_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/vn/extr_shadow.c_bitmap_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@NBBY = common dso_local global i32 0, align 4
@UINT32_ALL_ONES = common dso_local global i32 0, align 4
@USHORT_ALL_ONES = common dso_local global i64 0, align 8
@UCHAR_ALL_ONES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i64*)* @bitmap_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_get(i32* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca %struct.TYPE_3__, align 8
  %14 = alloca %struct.TYPE_3__, align 8
  %15 = alloca %struct.TYPE_3__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call { i64, i32 } @bitmap_offset(i32 %22)
  %24 = bitcast %struct.TYPE_3__* %14 to { i64, i32 }*
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i32 } %23, 0
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i32 } %23, 1
  store i32 %28, i32* %27, align 8
  %29 = bitcast %struct.TYPE_3__* %12 to i8*
  %30 = bitcast %struct.TYPE_3__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  %34 = call { i64, i32 } @bitmap_offset(i32 %33)
  %35 = bitcast %struct.TYPE_3__* %15 to { i64, i32 }*
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %37 = extractvalue { i64, i32 } %34, 0
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %39 = extractvalue { i64, i32 } %34, 1
  store i32 %39, i32* %38, align 8
  %40 = bitcast %struct.TYPE_3__* %13 to i8*
  %41 = bitcast %struct.TYPE_3__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bit(i32 %48)
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %4
  %53 = load i64, i64* @TRUE, align 8
  br label %56

54:                                               ; preds = %4
  %55 = load i64, i64* @FALSE, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ]
  store i64 %57, i64* %11, align 8
  store i32 0, i32* %9, align 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %269

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %112

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %97, %67
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @NBBY, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @bit(i32 %80)
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i64, i64* @TRUE, align 8
  br label %88

86:                                               ; preds = %74
  %87 = load i64, i64* @FALSE, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i64 [ %85, %84 ], [ %87, %86 ]
  store i64 %89, i64* %17, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %11, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %305

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %70

100:                                              ; preds = %70
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 0, i32* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  br label %270

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %63
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub i64 %114, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %158, %112
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp uge i64 %121, 4
  br i1 %122, label %123, label %159

123:                                              ; preds = %119
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32* %127, i32** %18, align 8
  %128 = load i64, i64* %11, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load i32*, i32** %18, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @UINT32_ALL_ONES, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %142, label %135

135:                                              ; preds = %130, %123
  %136 = load i64, i64* %11, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %157, label %138

138:                                              ; preds = %135
  %139 = load i32*, i32** %18, align 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %138, %130
  %143 = load i32, i32* @NBBY, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 4, %144
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %9, align 4
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, 4
  store i64 %152, i64* %150, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 %154, 4
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %16, align 4
  br label %158

157:                                              ; preds = %138, %135
  br label %159

158:                                              ; preds = %142
  br label %119

159:                                              ; preds = %157, %119
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp uge i64 %161, 8
  br i1 %162, label %163, label %199

163:                                              ; preds = %159
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = bitcast i32* %167 to i64*
  store i64* %168, i64** %19, align 8
  %169 = load i64, i64* %11, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %163
  %172 = load i64*, i64** %19, align 8
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @USHORT_ALL_ONES, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %183, label %176

176:                                              ; preds = %171, %163
  %177 = load i64, i64* %11, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %198, label %179

179:                                              ; preds = %176
  %180 = load i64*, i64** %19, align 8
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %198

183:                                              ; preds = %179, %171
  %184 = load i32, i32* @NBBY, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 8, %185
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = add i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %9, align 4
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = add i64 %192, 8
  store i64 %193, i64* %191, align 8
  %194 = load i32, i32* %16, align 4
  %195 = sext i32 %194 to i64
  %196 = sub i64 %195, 8
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %16, align 4
  br label %198

198:                                              ; preds = %183, %179, %176
  br label %199

199:                                              ; preds = %198, %159
  %200 = load i32, i32* %16, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %268

202:                                              ; preds = %199
  %203 = load i64, i64* %11, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %202
  %206 = load i32*, i32** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @UCHAR_ALL_ONES, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %223, label %213

213:                                              ; preds = %205, %202
  %214 = load i64, i64* %11, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %232, label %216

216:                                              ; preds = %213
  %217 = load i32*, i32** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %216, %205
  %224 = load i32, i32* @NBBY, align 4
  %225 = load i32, i32* %9, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %9, align 4
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %227, align 8
  %230 = load i32, i32* %16, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %16, align 4
  br label %232

232:                                              ; preds = %223, %216, %213
  %233 = load i32, i32* %16, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %267

235:                                              ; preds = %232
  store i32 0, i32* %10, align 4
  br label %236

236:                                              ; preds = %263, %235
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @NBBY, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %266

240:                                              ; preds = %236
  %241 = load i32*, i32** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %10, align 4
  %247 = call i32 @bit(i32 %246)
  %248 = and i32 %245, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %240
  %251 = load i64, i64* @TRUE, align 8
  br label %254

252:                                              ; preds = %240
  %253 = load i64, i64* @FALSE, align 8
  br label %254

254:                                              ; preds = %252, %250
  %255 = phi i64 [ %251, %250 ], [ %253, %252 ]
  store i64 %255, i64* %20, align 8
  %256 = load i64, i64* %20, align 8
  %257 = load i64, i64* %11, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  br label %266

260:                                              ; preds = %254
  %261 = load i32, i32* %9, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %9, align 4
  br label %263

263:                                              ; preds = %260
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %10, align 4
  br label %236

266:                                              ; preds = %259, %236
  br label %305

267:                                              ; preds = %232
  br label %268

268:                                              ; preds = %267, %199
  br label %269

269:                                              ; preds = %268, %56
  br label %270

270:                                              ; preds = %269, %110
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  store i32 %272, i32* %10, align 4
  br label %273

273:                                              ; preds = %301, %270
  %274 = load i32, i32* %10, align 4
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = icmp slt i32 %274, %276
  br i1 %277, label %278, label %304

278:                                              ; preds = %273
  %279 = load i32*, i32** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %10, align 4
  %285 = call i32 @bit(i32 %284)
  %286 = and i32 %283, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %278
  %289 = load i64, i64* @TRUE, align 8
  br label %292

290:                                              ; preds = %278
  %291 = load i64, i64* @FALSE, align 8
  br label %292

292:                                              ; preds = %290, %288
  %293 = phi i64 [ %289, %288 ], [ %291, %290 ]
  store i64 %293, i64* %21, align 8
  %294 = load i64, i64* %21, align 8
  %295 = load i64, i64* %11, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %304

298:                                              ; preds = %292
  %299 = load i32, i32* %9, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %9, align 4
  br label %301

301:                                              ; preds = %298
  %302 = load i32, i32* %10, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %10, align 4
  br label %273

304:                                              ; preds = %297, %273
  br label %305

305:                                              ; preds = %304, %266, %93
  %306 = load i64, i64* %11, align 8
  %307 = load i64*, i64** %8, align 8
  store i64 %306, i64* %307, align 8
  %308 = load i32, i32* %9, align 4
  ret i32 %308
}

declare dso_local { i64, i32 } @bitmap_offset(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
