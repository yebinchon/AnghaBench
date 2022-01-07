; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/quicklz/extr_quicklz.c_qlz_decompress_core.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/quicklz/extr_quicklz.c_qlz_decompress_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.qlz_decompress_core.bitlut = private unnamed_addr constant [16 x i32] [i32 4, i32 0, i32 1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3, i32 0, i32 1, i32 0, i32 2, i32 0, i32 1, i32 0], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qlz_decompress_core(i8* %0, i8* %1, i64 %2, i64 %3, i8* %4, i8** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [16 x i32], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i8** %5, i8*** %13, align 8
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %14, align 8
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** %15, align 8
  %30 = load i8*, i8** %14, align 8
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %15, align 8
  store i8* %31, i8** %17, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %18, align 8
  store i32 1, i32* %19, align 4
  %35 = bitcast [16 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %35, i8* align 16 bitcast ([16 x i32]* @__const.qlz_decompress_core.bitlut to i8*), i64 64, i1 false)
  %36 = load i8*, i8** %18, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 -4
  store i8* %37, i8** %21, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  store i8* %39, i8** %22, align 8
  %40 = load i8*, i8** %12, align 8
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %22, align 8
  store i8* %41, i8** %22, align 8
  %42 = load i8**, i8*** %13, align 8
  store i8** %42, i8*** %13, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = load i8*, i8** %21, align 8
  %45 = icmp uge i8* %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %6
  %47 = load i8*, i8** %16, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  store i8* %48, i8** %16, align 8
  br label %49

49:                                               ; preds = %53, %46
  %50 = load i8*, i8** %17, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = icmp ult i8* %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i8*, i8** %16, align 8
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %17, align 8
  store i8 %55, i8* %56, align 1
  %57 = load i8*, i8** %17, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %17, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %16, align 8
  br label %49

61:                                               ; preds = %49
  %62 = load i8*, i8** %17, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %7, align 8
  br label %322

69:                                               ; preds = %6
  br label %70

70:                                               ; preds = %321, %69
  %71 = load i32, i32* %19, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i8*, i8** %16, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = call i32 @fast_read_safe(i8* %74, i32 4, i8* %77)
  %79 = or i32 %78, -2147483648
  store i32 %79, i32* %19, align 4
  %80 = load i8*, i8** %16, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  store i8* %81, i8** %16, align 8
  br label %82

82:                                               ; preds = %73, %70
  %83 = load i8*, i8** %16, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = call i32 @fast_read_safe(i8* %83, i32 4, i8* %86)
  store i32 %87, i32* %23, align 4
  %88 = load i32, i32* %19, align 4
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %208

91:                                               ; preds = %82
  %92 = load i32, i32* %19, align 4
  %93 = lshr i32 %92, 1
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %23, align 4
  %95 = and i32 %94, 15
  %96 = icmp ne i32 %95, 15
  br i1 %96, label %97, label %157

97:                                               ; preds = %91
  %98 = load i32, i32* %23, align 4
  %99 = lshr i32 %98, 4
  %100 = and i32 %99, 4095
  store i32 %100, i32* %25, align 4
  %101 = load i8**, i8*** %13, align 8
  %102 = load i32, i32* %25, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %26, align 8
  %106 = load i32, i32* %23, align 4
  %107 = and i32 %106, 15
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %97
  %110 = load i32, i32* %23, align 4
  %111 = and i32 %110, 15
  store i32 %111, i32* %24, align 4
  %112 = load i8*, i8** %16, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  store i8* %113, i8** %16, align 8
  br label %132

114:                                              ; preds = %97
  %115 = load i32, i32* %23, align 4
  %116 = and i32 %115, 16711680
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load i8*, i8** %16, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 2
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  store i32 %122, i32* %24, align 4
  %123 = load i8*, i8** %16, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 3
  store i8* %124, i8** %16, align 8
  br label %131

125:                                              ; preds = %114
  %126 = load i8*, i8** %16, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 3
  %128 = call i32 @fast_read(i8* %127, i32 4)
  store i32 %128, i32* %24, align 4
  %129 = load i8*, i8** %16, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 7
  store i8* %130, i8** %16, align 8
  br label %131

131:                                              ; preds = %125, %118
  br label %132

132:                                              ; preds = %131, %109
  %133 = load i8*, i8** %17, align 8
  %134 = load i8*, i8** %26, align 8
  %135 = load i32, i32* %24, align 4
  %136 = call i32 @memcpy_up(i8* %133, i8* %134, i32 %135)
  br label %137

137:                                              ; preds = %141, %132
  %138 = load i8*, i8** %22, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = icmp ult i8* %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load i8*, i8** %22, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %22, align 8
  %144 = load i8*, i8** %22, align 8
  %145 = load i8**, i8*** %13, align 8
  %146 = load i8*, i8** %22, align 8
  %147 = call i32 @fast_read(i8* %146, i32 4)
  %148 = call i64 @hash_func(i32 %147)
  %149 = getelementptr inbounds i8*, i8** %145, i64 %148
  store i8* %144, i8** %149, align 8
  br label %137

150:                                              ; preds = %137
  %151 = load i32, i32* %24, align 4
  %152 = load i8*, i8** %17, align 8
  %153 = zext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %17, align 8
  %155 = load i8*, i8** %17, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 -1
  store i8* %156, i8** %22, align 8
  br label %207

157:                                              ; preds = %91
  %158 = load i32, i32* %23, align 4
  %159 = lshr i32 %158, 16
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %27, align 1
  %161 = load i32, i32* %23, align 4
  %162 = lshr i32 %161, 4
  %163 = and i32 %162, 4095
  store i32 %163, i32* %24, align 4
  %164 = load i32, i32* %24, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  %167 = load i8*, i8** %16, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 3
  store i8* %168, i8** %16, align 8
  br label %178

169:                                              ; preds = %157
  %170 = load i8*, i8** %16, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 3
  %172 = load i8*, i8** %14, align 8
  %173 = load i64, i64* %11, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  %175 = call i32 @fast_read_safe(i8* %171, i32 4, i8* %174)
  store i32 %175, i32* %24, align 4
  %176 = load i8*, i8** %16, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 7
  store i8* %177, i8** %16, align 8
  br label %178

178:                                              ; preds = %169, %166
  %179 = load i8*, i8** %17, align 8
  %180 = load i8, i8* %27, align 1
  %181 = load i32, i32* %24, align 4
  %182 = call i32 @memset(i8* %179, i8 zeroext %180, i32 %181)
  br label %183

183:                                              ; preds = %188, %178
  %184 = load i8*, i8** %22, align 8
  %185 = load i8*, i8** %17, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 -1
  %187 = icmp ult i8* %184, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %183
  %189 = load i8*, i8** %22, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %22, align 8
  %191 = load i8*, i8** %22, align 8
  %192 = load i8**, i8*** %13, align 8
  %193 = load i8*, i8** %22, align 8
  %194 = call i32 @fast_read(i8* %193, i32 4)
  %195 = call i64 @hash_func(i32 %194)
  %196 = getelementptr inbounds i8*, i8** %192, i64 %195
  store i8* %191, i8** %196, align 8
  br label %183

197:                                              ; preds = %183
  %198 = load i8*, i8** %17, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 -1
  %200 = load i32, i32* %24, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  store i8* %202, i8** %22, align 8
  %203 = load i32, i32* %24, align 4
  %204 = load i8*, i8** %17, align 8
  %205 = zext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8* %206, i8** %17, align 8
  br label %207

207:                                              ; preds = %197, %150
  br label %321

208:                                              ; preds = %82
  %209 = load i8*, i8** %17, align 8
  %210 = load i8*, i8** %16, align 8
  %211 = call i32 @memcpy_up(i8* %209, i8* %210, i32 4)
  %212 = load i32, i32* %19, align 4
  %213 = and i32 %212, 15
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %17, align 8
  %218 = zext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8* %219, i8** %17, align 8
  %220 = load i32, i32* %19, align 4
  %221 = and i32 %220, 15
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i8*, i8** %16, align 8
  %226 = zext i32 %224 to i64
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8* %227, i8** %16, align 8
  %228 = load i32, i32* %19, align 4
  %229 = load i32, i32* %19, align 4
  %230 = and i32 %229, 15
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = lshr i32 %228, %233
  store i32 %234, i32* %19, align 4
  br label %235

235:                                              ; preds = %240, %208
  %236 = load i8*, i8** %22, align 8
  %237 = load i8*, i8** %17, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 -3
  %239 = icmp ult i8* %236, %238
  br i1 %239, label %240, label %249

240:                                              ; preds = %235
  %241 = load i8*, i8** %22, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %22, align 8
  %243 = load i8*, i8** %22, align 8
  %244 = load i8**, i8*** %13, align 8
  %245 = load i8*, i8** %22, align 8
  %246 = call i32 @fast_read(i8* %245, i32 4)
  %247 = call i64 @hash_func(i32 %246)
  %248 = getelementptr inbounds i8*, i8** %244, i64 %247
  store i8* %243, i8** %248, align 8
  br label %235

249:                                              ; preds = %235
  %250 = load i8*, i8** %17, align 8
  %251 = load i8*, i8** %21, align 8
  %252 = icmp uge i8* %250, %251
  br i1 %252, label %253, label %320

253:                                              ; preds = %249
  br label %254

254:                                              ; preds = %274, %253
  %255 = load i8*, i8** %17, align 8
  %256 = load i8*, i8** %18, align 8
  %257 = icmp ult i8* %255, %256
  br i1 %257, label %258, label %284

258:                                              ; preds = %254
  %259 = load i32, i32* %19, align 4
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i8*, i8** %16, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 4
  store i8* %263, i8** %16, align 8
  store i32 -2147483648, i32* %19, align 4
  br label %264

264:                                              ; preds = %261, %258
  %265 = load i8*, i8** %15, align 8
  %266 = load i64, i64* %10, align 8
  %267 = getelementptr inbounds i8, i8* %265, i64 %266
  %268 = load i8*, i8** %17, align 8
  %269 = ptrtoint i8* %267 to i64
  %270 = ptrtoint i8* %268 to i64
  %271 = sub i64 %269, %270
  %272 = icmp sgt i64 1, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %264
  store i64 0, i64* %7, align 8
  br label %322

274:                                              ; preds = %264
  %275 = load i8*, i8** %16, align 8
  %276 = load i8, i8* %275, align 1
  %277 = load i8*, i8** %17, align 8
  store i8 %276, i8* %277, align 1
  %278 = load i8*, i8** %17, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %17, align 8
  %280 = load i8*, i8** %16, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %16, align 8
  %282 = load i32, i32* %19, align 4
  %283 = lshr i32 %282, 1
  store i32 %283, i32* %19, align 4
  br label %254

284:                                              ; preds = %254
  br label %285

285:                                              ; preds = %290, %284
  %286 = load i8*, i8** %22, align 8
  %287 = load i8*, i8** %18, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 -4
  %289 = icmp ult i8* %286, %288
  br i1 %289, label %290, label %299

290:                                              ; preds = %285
  %291 = load i8*, i8** %22, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %22, align 8
  %293 = load i8*, i8** %22, align 8
  %294 = load i8**, i8*** %13, align 8
  %295 = load i8*, i8** %22, align 8
  %296 = call i32 @fast_read(i8* %295, i32 4)
  %297 = call i64 @hash_func(i32 %296)
  %298 = getelementptr inbounds i8*, i8** %294, i64 %297
  store i8* %293, i8** %298, align 8
  br label %285

299:                                              ; preds = %285
  %300 = load i8*, i8** %16, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 -1
  %302 = load i8*, i8** %14, align 8
  %303 = ptrtoint i8* %301 to i64
  %304 = ptrtoint i8* %302 to i64
  %305 = sub i64 %303, %304
  %306 = icmp sgt i64 %305, 8
  br i1 %306, label %307, label %308

307:                                              ; preds = %299
  store i64 0, i64* %7, align 8
  br label %322

308:                                              ; preds = %299
  %309 = load i8*, i8** %17, align 8
  %310 = load i8*, i8** %15, align 8
  %311 = ptrtoint i8* %309 to i64
  %312 = ptrtoint i8* %310 to i64
  %313 = sub i64 %311, %312
  %314 = load i64, i64* %10, align 8
  %315 = sub i64 %313, %314
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %308
  %318 = load i64, i64* %10, align 8
  store i64 %318, i64* %7, align 8
  br label %322

319:                                              ; preds = %308
  store i64 0, i64* %7, align 8
  br label %322

320:                                              ; preds = %249
  br label %321

321:                                              ; preds = %320, %207
  br label %70

322:                                              ; preds = %319, %317, %307, %273, %61
  %323 = load i64, i64* %7, align 8
  ret i64 %323
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fast_read_safe(i8*, i32, i8*) #2

declare dso_local i32 @fast_read(i8*, i32) #2

declare dso_local i32 @memcpy_up(i8*, i8*, i32) #2

declare dso_local i64 @hash_func(i32) #2

declare dso_local i32 @memset(i8*, i8 zeroext, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
