; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_floor1_unpack.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_floor1_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32*, i64*, i32**, i32*, i64*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@VIF_POSIT = common dso_local global i32 0, align 4
@icomp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_10__*, i32*)* @floor1_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @floor1_unpack(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %20 = call %struct.TYPE_9__* @_ogg_calloc(i32 1, i32 64)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %12, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @oggpack_read(i32* %21, i32 5)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %70, %2
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  %34 = call i8* @oggpack_read(i32* %33, i32 4)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  br label %357

51:                                               ; preds = %32
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %52, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %61, %51
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %26

73:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %211, %73
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %214

79:                                               ; preds = %74
  %80 = load i32*, i32** %5, align 8
  %81 = call i8* @oggpack_read(i32* %80, i32 3)
  %82 = getelementptr i8, i8* %81, i64 1
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 6
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 %83, i64* %89, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = call i8* @oggpack_read(i32* %90, i32 2)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %79
  br label %357

108:                                              ; preds = %79
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %108
  %118 = load i32*, i32** %5, align 8
  %119 = call i8* @oggpack_read(i32* %118, i32 8)
  %120 = ptrtoint i8* %119 to i64
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 3
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  store i64 %120, i64* %126, align 8
  br label %127

127:                                              ; preds = %117, %108
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %127
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp sge i64 %143, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %136, %127
  br label %357

149:                                              ; preds = %136
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %207, %149
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 1, %158
  %160 = icmp slt i32 %151, %159
  br i1 %160, label %161, label %210

161:                                              ; preds = %150
  %162 = load i32*, i32** %5, align 8
  %163 = call i8* @oggpack_read(i32* %162, i32 8)
  %164 = getelementptr i8, i8* %163, i64 -1
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 4
  %168 = load i32**, i32*** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %165, i32* %175, align 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 4
  %178 = load i32**, i32*** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %186, -1
  br i1 %187, label %205, label %188

188:                                              ; preds = %161
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 4
  %191 = load i32**, i32*** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp sge i64 %200, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %188, %161
  br label %357

206:                                              ; preds = %188
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %150

210:                                              ; preds = %150
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %74

214:                                              ; preds = %74
  %215 = load i32*, i32** %5, align 8
  %216 = call i8* @oggpack_read(i32* %215, i32 2)
  %217 = getelementptr i8, i8* %216, i64 1
  %218 = ptrtoint i8* %217 to i64
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 7
  store i64 %218, i64* %220, align 8
  %221 = load i32*, i32** %5, align 8
  %222 = call i8* @oggpack_read(i32* %221, i32 4)
  %223 = ptrtoint i8* %222 to i32
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* %11, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %214
  br label %357

227:                                              ; preds = %214
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %228

228:                                              ; preds = %286, %227
  %229 = load i32, i32* %7, align 4
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %289

234:                                              ; preds = %228
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 6
  %237 = load i64*, i64** %236, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %237, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %249, %247
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* @VIF_POSIT, align 4
  %254 = icmp sgt i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %234
  br label %357

256:                                              ; preds = %234
  br label %257

257:                                              ; preds = %282, %256
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %285

261:                                              ; preds = %257
  %262 = load i32*, i32** %5, align 8
  %263 = load i32, i32* %11, align 4
  %264 = call i8* @oggpack_read(i32* %262, i32 %263)
  %265 = ptrtoint i8* %264 to i32
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 5
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 %269, 2
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  store i32 %265, i32* %272, align 4
  store i32 %265, i32* %13, align 4
  %273 = load i32, i32* %13, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %261
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* %11, align 4
  %278 = shl i32 1, %277
  %279 = icmp sge i32 %276, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %275, %261
  br label %357

281:                                              ; preds = %275
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %8, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %8, align 4
  br label %257

285:                                              ; preds = %257
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %7, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %7, align 4
  br label %228

289:                                              ; preds = %228
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 5
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 0
  store i32 0, i32* %293, align 4
  %294 = load i32, i32* %11, align 4
  %295 = shl i32 1, %294
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 5
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  store i32 %295, i32* %299, align 4
  %300 = load i32, i32* @VIF_POSIT, align 4
  %301 = add nsw i32 %300, 2
  %302 = zext i32 %301 to i64
  %303 = call i8* @llvm.stacksave()
  store i8* %303, i8** %14, align 8
  %304 = alloca i32*, i64 %302, align 16
  store i64 %302, i64* %15, align 8
  store i32 0, i32* %7, align 4
  br label %305

305:                                              ; preds = %320, %289
  %306 = load i32, i32* %7, align 4
  %307 = load i32, i32* %9, align 4
  %308 = add nsw i32 %307, 2
  %309 = icmp slt i32 %306, %308
  br i1 %309, label %310, label %323

310:                                              ; preds = %305
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 5
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %7, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32*, i32** %304, i64 %318
  store i32* %316, i32** %319, align 8
  br label %320

320:                                              ; preds = %310
  %321 = load i32, i32* %7, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %7, align 4
  br label %305

323:                                              ; preds = %305
  %324 = load i32, i32* %9, align 4
  %325 = add nsw i32 %324, 2
  %326 = load i32, i32* @icomp, align 4
  %327 = call i32 @qsort(i32** %304, i32 %325, i32 8, i32 %326)
  store i32 1, i32* %7, align 4
  br label %328

328:                                              ; preds = %348, %323
  %329 = load i32, i32* %7, align 4
  %330 = load i32, i32* %9, align 4
  %331 = add nsw i32 %330, 2
  %332 = icmp slt i32 %329, %331
  br i1 %332, label %333, label %351

333:                                              ; preds = %328
  %334 = load i32, i32* %7, align 4
  %335 = sub nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32*, i32** %304, i64 %336
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %7, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32*, i32** %304, i64 %341
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %339, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %333
  store i32 5, i32* %16, align 4
  br label %352

347:                                              ; preds = %333
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %7, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %7, align 4
  br label %328

351:                                              ; preds = %328
  store i32 0, i32* %16, align 4
  br label %352

352:                                              ; preds = %346, %351
  %353 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %353)
  %354 = load i32, i32* %16, align 4
  switch i32 %354, label %362 [
    i32 0, label %355
    i32 5, label %357
  ]

355:                                              ; preds = %352
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %356, %struct.TYPE_9__** %3, align 8
  br label %360

357:                                              ; preds = %352, %280, %255, %226, %205, %148, %107, %50
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %359 = call i32 @floor1_free_info(%struct.TYPE_9__* %358)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %360

360:                                              ; preds = %357, %355
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %361

362:                                              ; preds = %352
  unreachable
}

declare dso_local %struct.TYPE_9__* @_ogg_calloc(i32, i32) #1

declare dso_local i8* @oggpack_read(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @qsort(i32**, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @floor1_free_info(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
