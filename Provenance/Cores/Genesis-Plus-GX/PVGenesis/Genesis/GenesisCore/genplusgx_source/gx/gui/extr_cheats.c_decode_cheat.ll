; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_cheats.c_decode_cheat.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_cheats.c_decode_cheat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@system_hw = common dso_local global i32 0, align 4
@SYSTEM_PBC = common dso_local global i32 0, align 4
@SYSTEM_MD = common dso_local global i32 0, align 4
@ggvalidchars = common dso_local global i8* null, align 8
@arvalidchars = common dso_local global i8* null, align 8
@cheatlist = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @decode_cheat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_cheat(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = icmp sge i32 %14, 9
  br i1 %15, label %16, label %128

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 4
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 45
  br i1 %21, label %22, label %128

22:                                               ; preds = %16
  %23 = load i32, i32* @system_hw, align 4
  %24 = load i32, i32* @SYSTEM_PBC, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @SYSTEM_MD, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %486

29:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %124, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %127

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i8*, i8** @ggvalidchars, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  %45 = call i8* @strchr(i8* %40, i32 %44)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %486

49:                                               ; preds = %39
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** @ggvalidchars, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  switch i32 %56, label %123 [
    i32 0, label %57
    i32 1, label %62
    i32 2, label %72
    i32 3, label %77
    i32 4, label %87
    i32 5, label %98
    i32 6, label %108
    i32 7, label %119
  ]

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 %58, 3
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %123

62:                                               ; preds = %49
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 2
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 3
  %69 = shl i32 %68, 14
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %123

72:                                               ; preds = %49
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 %73, 9
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %123

77:                                               ; preds = %49
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 15
  %80 = shl i32 %79, 20
  %81 = load i32, i32* %8, align 4
  %82 = ashr i32 %81, 4
  %83 = shl i32 %82, 8
  %84 = or i32 %80, %83
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %10, align 4
  br label %123

87:                                               ; preds = %49
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, 1
  %90 = shl i32 %89, 12
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %8, align 4
  %94 = ashr i32 %93, 1
  %95 = shl i32 %94, 16
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %123

98:                                               ; preds = %49
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, 1
  %101 = shl i32 %100, 15
  %102 = load i32, i32* %8, align 4
  %103 = ashr i32 %102, 1
  %104 = shl i32 %103, 8
  %105 = or i32 %101, %104
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %123

108:                                              ; preds = %49
  %109 = load i32, i32* %8, align 4
  %110 = ashr i32 %109, 3
  %111 = shl i32 %110, 13
  %112 = load i32, i32* %11, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %114, 7
  %116 = shl i32 %115, 5
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %123

119:                                              ; preds = %49
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %49, %119, %108, %98, %87, %77, %72, %62, %57
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %30

127:                                              ; preds = %30
  store i32 9, i32* %9, align 4
  br label %468

128:                                              ; preds = %16, %2
  %129 = load i8*, i8** %4, align 8
  %130 = call i32 @strlen(i8* %129)
  %131 = icmp sge i32 %130, 11
  br i1 %131, label %132, label %300

132:                                              ; preds = %128
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 3
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 45
  br i1 %137, label %138, label %300

138:                                              ; preds = %132
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 7
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 45
  br i1 %143, label %144, label %300

144:                                              ; preds = %138
  %145 = load i32, i32* @system_hw, align 4
  %146 = load i32, i32* @SYSTEM_PBC, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @SYSTEM_MD, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 0, i32* %3, align 4
  br label %486

151:                                              ; preds = %144
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %180, %151
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %153, 2
  br i1 %154, label %155, label %183

155:                                              ; preds = %152
  %156 = load i8*, i8** @arvalidchars, align 8
  %157 = load i8*, i8** %4, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %4, align 8
  %159 = load i8, i8* %157, align 1
  %160 = sext i8 %159 to i32
  %161 = call i8* @strchr(i8* %156, i32 %160)
  store i8* %161, i8** %6, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = icmp eq i8* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %486

165:                                              ; preds = %155
  %166 = load i8*, i8** %6, align 8
  %167 = load i8*, i8** @arvalidchars, align 8
  %168 = ptrtoint i8* %166 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = and i64 %170, 15
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %7, align 4
  %175 = sub nsw i32 1, %174
  %176 = mul nsw i32 %175, 4
  %177 = shl i32 %173, %176
  %178 = load i32, i32* %11, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %11, align 4
  br label %180

180:                                              ; preds = %165
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %7, align 4
  br label %152

183:                                              ; preds = %152
  store i32 0, i32* %7, align 4
  br label %184

184:                                              ; preds = %218, %183
  %185 = load i32, i32* %7, align 4
  %186 = icmp slt i32 %185, 3
  br i1 %186, label %187, label %221

187:                                              ; preds = %184
  %188 = load i32, i32* %7, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i8*, i8** %4, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %4, align 8
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i8*, i8** @arvalidchars, align 8
  %195 = load i8*, i8** %4, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %4, align 8
  %197 = load i8, i8* %195, align 1
  %198 = sext i8 %197 to i32
  %199 = call i8* @strchr(i8* %194, i32 %198)
  store i8* %199, i8** %6, align 8
  %200 = load i8*, i8** %6, align 8
  %201 = icmp eq i8* %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %193
  store i32 0, i32* %3, align 4
  br label %486

203:                                              ; preds = %193
  %204 = load i8*, i8** %6, align 8
  %205 = load i8*, i8** @arvalidchars, align 8
  %206 = ptrtoint i8* %204 to i64
  %207 = ptrtoint i8* %205 to i64
  %208 = sub i64 %206, %207
  %209 = and i64 %208, 15
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %7, align 4
  %213 = sub nsw i32 2, %212
  %214 = mul nsw i32 %213, 4
  %215 = shl i32 %211, %214
  %216 = load i32, i32* %10, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %10, align 4
  br label %218

218:                                              ; preds = %203
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %7, align 4
  br label %184

221:                                              ; preds = %184
  %222 = load i8*, i8** @arvalidchars, align 8
  %223 = load i8*, i8** %4, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %4, align 8
  %225 = load i8, i8* %223, align 1
  %226 = sext i8 %225 to i32
  %227 = call i8* @strchr(i8* %222, i32 %226)
  store i8* %227, i8** %6, align 8
  %228 = load i8*, i8** %6, align 8
  %229 = icmp eq i8* %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  store i32 0, i32* %3, align 4
  br label %486

231:                                              ; preds = %221
  %232 = load i8*, i8** %6, align 8
  %233 = load i8*, i8** @arvalidchars, align 8
  %234 = ptrtoint i8* %232 to i64
  %235 = ptrtoint i8* %233 to i64
  %236 = sub i64 %234, %235
  %237 = and i64 %236, 15
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %8, align 4
  %239 = load i32, i32* %8, align 4
  %240 = xor i32 %239, 15
  store i32 %240, i32* %8, align 4
  %241 = load i32, i32* %8, align 4
  %242 = shl i32 %241, 12
  %243 = load i32, i32* %10, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* %10, align 4
  %246 = icmp sge i32 %245, 49152
  br i1 %246, label %247, label %251

247:                                              ; preds = %231
  %248 = load i32, i32* %10, align 4
  %249 = and i32 %248, 8191
  %250 = or i32 16711680, %249
  store i32 %250, i32* %10, align 4
  br label %251

251:                                              ; preds = %247, %231
  store i32 0, i32* %7, align 4
  br label %252

252:                                              ; preds = %282, %251
  %253 = load i32, i32* %7, align 4
  %254 = icmp slt i32 %253, 2
  br i1 %254, label %255, label %285

255:                                              ; preds = %252
  %256 = load i8*, i8** %4, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %4, align 8
  %258 = load i8*, i8** @arvalidchars, align 8
  %259 = load i8*, i8** %4, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %4, align 8
  %261 = load i8, i8* %259, align 1
  %262 = sext i8 %261 to i32
  %263 = call i8* @strchr(i8* %258, i32 %262)
  store i8* %263, i8** %6, align 8
  %264 = load i8*, i8** %6, align 8
  %265 = icmp eq i8* %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %255
  store i32 0, i32* %3, align 4
  br label %486

267:                                              ; preds = %255
  %268 = load i8*, i8** %6, align 8
  %269 = load i8*, i8** @arvalidchars, align 8
  %270 = ptrtoint i8* %268 to i64
  %271 = ptrtoint i8* %269 to i64
  %272 = sub i64 %270, %271
  %273 = and i64 %272, 15
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %8, align 4
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* %7, align 4
  %277 = sub nsw i32 1, %276
  %278 = mul nsw i32 %277, 4
  %279 = shl i32 %275, %278
  %280 = load i32, i32* %12, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %12, align 4
  br label %282

282:                                              ; preds = %267
  %283 = load i32, i32* %7, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %7, align 4
  br label %252

285:                                              ; preds = %252
  %286 = load i32, i32* %12, align 4
  %287 = ashr i32 %286, 2
  %288 = load i32, i32* %12, align 4
  %289 = and i32 %288, 3
  %290 = shl i32 %289, 6
  %291 = or i32 %287, %290
  store i32 %291, i32* %12, align 4
  %292 = load i32, i32* %12, align 4
  %293 = xor i32 %292, 186
  store i32 %293, i32* %12, align 4
  %294 = load i32, i32* %12, align 4
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cheatlist, align 8
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 0
  store i32 %294, i32* %299, align 4
  store i32 11, i32* %9, align 4
  br label %467

300:                                              ; preds = %138, %132, %128
  %301 = load i8*, i8** %4, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 6
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp eq i32 %304, 58
  br i1 %305, label %306, label %466

306:                                              ; preds = %300
  %307 = load i32, i32* @system_hw, align 4
  %308 = load i32, i32* @SYSTEM_PBC, align 4
  %309 = and i32 %307, %308
  %310 = load i32, i32* @SYSTEM_MD, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %384

312:                                              ; preds = %306
  %313 = load i8*, i8** %4, align 8
  %314 = call i32 @strlen(i8* %313)
  %315 = icmp slt i32 %314, 11
  br i1 %315, label %316, label %317

316:                                              ; preds = %312
  store i32 0, i32* %3, align 4
  br label %486

317:                                              ; preds = %312
  store i32 0, i32* %7, align 4
  br label %318

318:                                              ; preds = %346, %317
  %319 = load i32, i32* %7, align 4
  %320 = icmp slt i32 %319, 6
  br i1 %320, label %321, label %349

321:                                              ; preds = %318
  %322 = load i8*, i8** @arvalidchars, align 8
  %323 = load i8*, i8** %4, align 8
  %324 = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %324, i8** %4, align 8
  %325 = load i8, i8* %323, align 1
  %326 = sext i8 %325 to i32
  %327 = call i8* @strchr(i8* %322, i32 %326)
  store i8* %327, i8** %6, align 8
  %328 = load i8*, i8** %6, align 8
  %329 = icmp eq i8* %328, null
  br i1 %329, label %330, label %331

330:                                              ; preds = %321
  store i32 0, i32* %3, align 4
  br label %486

331:                                              ; preds = %321
  %332 = load i8*, i8** %6, align 8
  %333 = load i8*, i8** @arvalidchars, align 8
  %334 = ptrtoint i8* %332 to i64
  %335 = ptrtoint i8* %333 to i64
  %336 = sub i64 %334, %335
  %337 = and i64 %336, 15
  %338 = trunc i64 %337 to i32
  store i32 %338, i32* %8, align 4
  %339 = load i32, i32* %8, align 4
  %340 = load i32, i32* %7, align 4
  %341 = sub nsw i32 5, %340
  %342 = mul nsw i32 %341, 4
  %343 = shl i32 %339, %342
  %344 = load i32, i32* %10, align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* %10, align 4
  br label %346

346:                                              ; preds = %331
  %347 = load i32, i32* %7, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %7, align 4
  br label %318

349:                                              ; preds = %318
  %350 = load i8*, i8** %4, align 8
  %351 = getelementptr inbounds i8, i8* %350, i32 1
  store i8* %351, i8** %4, align 8
  store i32 0, i32* %7, align 4
  br label %352

352:                                              ; preds = %380, %349
  %353 = load i32, i32* %7, align 4
  %354 = icmp slt i32 %353, 4
  br i1 %354, label %355, label %383

355:                                              ; preds = %352
  %356 = load i8*, i8** @arvalidchars, align 8
  %357 = load i8*, i8** %4, align 8
  %358 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %358, i8** %4, align 8
  %359 = load i8, i8* %357, align 1
  %360 = sext i8 %359 to i32
  %361 = call i8* @strchr(i8* %356, i32 %360)
  store i8* %361, i8** %6, align 8
  %362 = load i8*, i8** %6, align 8
  %363 = icmp eq i8* %362, null
  br i1 %363, label %364, label %365

364:                                              ; preds = %355
  store i32 0, i32* %3, align 4
  br label %486

365:                                              ; preds = %355
  %366 = load i8*, i8** %6, align 8
  %367 = load i8*, i8** @arvalidchars, align 8
  %368 = ptrtoint i8* %366 to i64
  %369 = ptrtoint i8* %367 to i64
  %370 = sub i64 %368, %369
  %371 = and i64 %370, 15
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* %8, align 4
  %373 = load i32, i32* %8, align 4
  %374 = load i32, i32* %7, align 4
  %375 = sub nsw i32 3, %374
  %376 = mul nsw i32 %375, 4
  %377 = shl i32 %373, %376
  %378 = load i32, i32* %11, align 4
  %379 = or i32 %378, %377
  store i32 %379, i32* %11, align 4
  br label %380

380:                                              ; preds = %365
  %381 = load i32, i32* %7, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %7, align 4
  br label %352

383:                                              ; preds = %352
  store i32 11, i32* %9, align 4
  br label %465

384:                                              ; preds = %306
  %385 = load i8*, i8** %4, align 8
  %386 = call i32 @strlen(i8* %385)
  %387 = icmp slt i32 %386, 9
  br i1 %387, label %388, label %389

388:                                              ; preds = %384
  store i32 0, i32* %3, align 4
  br label %486

389:                                              ; preds = %384
  %390 = load i8*, i8** %4, align 8
  %391 = getelementptr inbounds i8, i8* %390, i64 2
  store i8* %391, i8** %4, align 8
  store i32 0, i32* %7, align 4
  br label %392

392:                                              ; preds = %420, %389
  %393 = load i32, i32* %7, align 4
  %394 = icmp slt i32 %393, 4
  br i1 %394, label %395, label %423

395:                                              ; preds = %392
  %396 = load i8*, i8** @arvalidchars, align 8
  %397 = load i8*, i8** %4, align 8
  %398 = getelementptr inbounds i8, i8* %397, i32 1
  store i8* %398, i8** %4, align 8
  %399 = load i8, i8* %397, align 1
  %400 = sext i8 %399 to i32
  %401 = call i8* @strchr(i8* %396, i32 %400)
  store i8* %401, i8** %6, align 8
  %402 = load i8*, i8** %6, align 8
  %403 = icmp eq i8* %402, null
  br i1 %403, label %404, label %405

404:                                              ; preds = %395
  store i32 0, i32* %3, align 4
  br label %486

405:                                              ; preds = %395
  %406 = load i8*, i8** %6, align 8
  %407 = load i8*, i8** @arvalidchars, align 8
  %408 = ptrtoint i8* %406 to i64
  %409 = ptrtoint i8* %407 to i64
  %410 = sub i64 %408, %409
  %411 = and i64 %410, 15
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %8, align 4
  %413 = load i32, i32* %8, align 4
  %414 = load i32, i32* %7, align 4
  %415 = sub nsw i32 3, %414
  %416 = mul nsw i32 %415, 4
  %417 = shl i32 %413, %416
  %418 = load i32, i32* %10, align 4
  %419 = or i32 %418, %417
  store i32 %419, i32* %10, align 4
  br label %420

420:                                              ; preds = %405
  %421 = load i32, i32* %7, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %7, align 4
  br label %392

423:                                              ; preds = %392
  %424 = load i32, i32* %10, align 4
  %425 = icmp slt i32 %424, 49152
  br i1 %425, label %426, label %427

426:                                              ; preds = %423
  store i32 0, i32* %3, align 4
  br label %486

427:                                              ; preds = %423
  %428 = load i32, i32* %10, align 4
  %429 = and i32 %428, 8191
  %430 = or i32 16711680, %429
  store i32 %430, i32* %10, align 4
  %431 = load i8*, i8** %4, align 8
  %432 = getelementptr inbounds i8, i8* %431, i32 1
  store i8* %432, i8** %4, align 8
  store i32 0, i32* %7, align 4
  br label %433

433:                                              ; preds = %461, %427
  %434 = load i32, i32* %7, align 4
  %435 = icmp slt i32 %434, 2
  br i1 %435, label %436, label %464

436:                                              ; preds = %433
  %437 = load i8*, i8** @arvalidchars, align 8
  %438 = load i8*, i8** %4, align 8
  %439 = getelementptr inbounds i8, i8* %438, i32 1
  store i8* %439, i8** %4, align 8
  %440 = load i8, i8* %438, align 1
  %441 = sext i8 %440 to i32
  %442 = call i8* @strchr(i8* %437, i32 %441)
  store i8* %442, i8** %6, align 8
  %443 = load i8*, i8** %6, align 8
  %444 = icmp eq i8* %443, null
  br i1 %444, label %445, label %446

445:                                              ; preds = %436
  store i32 0, i32* %3, align 4
  br label %486

446:                                              ; preds = %436
  %447 = load i8*, i8** %6, align 8
  %448 = load i8*, i8** @arvalidchars, align 8
  %449 = ptrtoint i8* %447 to i64
  %450 = ptrtoint i8* %448 to i64
  %451 = sub i64 %449, %450
  %452 = and i64 %451, 15
  %453 = trunc i64 %452 to i32
  store i32 %453, i32* %8, align 4
  %454 = load i32, i32* %8, align 4
  %455 = load i32, i32* %7, align 4
  %456 = sub nsw i32 1, %455
  %457 = mul nsw i32 %456, 4
  %458 = shl i32 %454, %457
  %459 = load i32, i32* %11, align 4
  %460 = or i32 %459, %458
  store i32 %460, i32* %11, align 4
  br label %461

461:                                              ; preds = %446
  %462 = load i32, i32* %7, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %7, align 4
  br label %433

464:                                              ; preds = %433
  store i32 9, i32* %9, align 4
  br label %465

465:                                              ; preds = %464, %383
  br label %466

466:                                              ; preds = %465, %300
  br label %467

467:                                              ; preds = %466, %285
  br label %468

468:                                              ; preds = %467, %127
  %469 = load i32, i32* %9, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %484

471:                                              ; preds = %468
  %472 = load i32, i32* %10, align 4
  %473 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cheatlist, align 8
  %474 = load i32, i32* %5, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %473, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %476, i32 0, i32 1
  store i32 %472, i32* %477, align 4
  %478 = load i32, i32* %11, align 4
  %479 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cheatlist, align 8
  %480 = load i32, i32* %5, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %479, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %482, i32 0, i32 2
  store i32 %478, i32* %483, align 4
  br label %484

484:                                              ; preds = %471, %468
  %485 = load i32, i32* %9, align 4
  store i32 %485, i32* %3, align 4
  br label %486

486:                                              ; preds = %484, %445, %426, %404, %388, %364, %330, %316, %266, %230, %202, %164, %150, %48, %28
  %487 = load i32, i32* %3, align 4
  ret i32 %487
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
