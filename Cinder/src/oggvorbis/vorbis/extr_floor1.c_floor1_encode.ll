; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_floor1_encode.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_floor1.c_floor1_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_19__*, %struct.TYPE_17__** }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32*, i32*, i32, i32, i32*, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32*, i64, i32*, i32*, i32*, i32**, i32* }

@VIF_POSIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @floor1_encode(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_14__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_17__**, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca [8 x i32], align 16
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca [8 x i32], align 16
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %14, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %15, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %16, align 8
  %64 = load i32, i32* @VIF_POSIT, align 4
  %65 = add nsw i32 %64, 2
  %66 = zext i32 %65 to i64
  %67 = call i8* @llvm.stacksave()
  store i8* %67, i8** %17, align 8
  %68 = alloca i32, i64 %66, align 16
  store i64 %66, i64* %18, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %70, align 8
  store %struct.TYPE_17__** %71, %struct.TYPE_17__*** %19, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  store %struct.TYPE_19__* %74, %struct.TYPE_19__** %20, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %613

77:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %78

78:                                               ; preds = %114, %77
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %15, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %117

82:                                               ; preds = %78
  %83 = load i32*, i32** %10, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 32767
  store i32 %87, i32* %21, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %103 [
    i32 1, label %91
    i32 2, label %94
    i32 3, label %97
    i32 4, label %100
  ]

91:                                               ; preds = %82
  %92 = load i32, i32* %21, align 4
  %93 = ashr i32 %92, 2
  store i32 %93, i32* %21, align 4
  br label %103

94:                                               ; preds = %82
  %95 = load i32, i32* %21, align 4
  %96 = ashr i32 %95, 3
  store i32 %96, i32* %21, align 4
  br label %103

97:                                               ; preds = %82
  %98 = load i32, i32* %21, align 4
  %99 = sdiv i32 %98, 12
  store i32 %99, i32* %21, align 4
  br label %103

100:                                              ; preds = %82
  %101 = load i32, i32* %21, align 4
  %102 = ashr i32 %101, 4
  store i32 %102, i32* %21, align 4
  br label %103

103:                                              ; preds = %82, %100, %97, %94, %91
  %104 = load i32, i32* %21, align 4
  %105 = load i32*, i32** %10, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 32768
  %110 = or i32 %104, %109
  %111 = load i32*, i32** %10, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %103
  %115 = load i64, i64* %12, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %12, align 8
  br label %78

117:                                              ; preds = %78
  %118 = load i32*, i32** %10, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %120, i32* %121, align 16
  %122 = load i32*, i32** %10, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %124, i32* %125, align 4
  store i64 2, i64* %12, align 8
  br label %126

126:                                              ; preds = %271, %117
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %15, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %274

130:                                              ; preds = %126
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %12, align 8
  %135 = sub nsw i64 %134, 2
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %22, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* %12, align 8
  %142 = sub nsw i64 %141, 2
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %23, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %22, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %24, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %23, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %25, align 4
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %22, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %26, align 4
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %23, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %27, align 4
  %169 = load i32, i32* %24, align 4
  %170 = load i32, i32* %25, align 4
  %171 = load i32, i32* %26, align 4
  %172 = load i32, i32* %27, align 4
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %12, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @render_point(i32 %169, i32 %170, i32 %171, i32 %172, i32 %178)
  store i32 %179, i32* %28, align 4
  %180 = load i32*, i32** %10, align 8
  %181 = load i64, i64* %12, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 32768
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %130
  %187 = load i32, i32* %28, align 4
  %188 = load i32*, i32** %10, align 8
  %189 = load i64, i64* %12, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %187, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %186, %130
  %194 = load i32, i32* %28, align 4
  %195 = or i32 %194, 32768
  %196 = load i32*, i32** %10, align 8
  %197 = load i64, i64* %12, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32 %195, i32* %198, align 4
  %199 = load i64, i64* %12, align 8
  %200 = getelementptr inbounds i32, i32* %68, i64 %199
  store i32 0, i32* %200, align 4
  br label %270

201:                                              ; preds = %186
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %28, align 4
  %206 = sub nsw i32 %204, %205
  %207 = load i32, i32* %28, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %201
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %28, align 4
  %214 = sub nsw i32 %212, %213
  br label %217

215:                                              ; preds = %201
  %216 = load i32, i32* %28, align 4
  br label %217

217:                                              ; preds = %215, %209
  %218 = phi i32 [ %214, %209 ], [ %216, %215 ]
  store i32 %218, i32* %29, align 4
  %219 = load i32*, i32** %10, align 8
  %220 = load i64, i64* %12, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %28, align 4
  %224 = sub nsw i32 %222, %223
  store i32 %224, i32* %30, align 4
  %225 = load i32, i32* %30, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %217
  %228 = load i32, i32* %30, align 4
  %229 = load i32, i32* %29, align 4
  %230 = sub nsw i32 0, %229
  %231 = icmp slt i32 %228, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = load i32, i32* %29, align 4
  %234 = load i32, i32* %30, align 4
  %235 = sub nsw i32 %233, %234
  %236 = sub nsw i32 %235, 1
  store i32 %236, i32* %30, align 4
  br label %241

237:                                              ; preds = %227
  %238 = load i32, i32* %30, align 4
  %239 = shl i32 %238, 1
  %240 = sub nsw i32 -1, %239
  store i32 %240, i32* %30, align 4
  br label %241

241:                                              ; preds = %237, %232
  br label %254

242:                                              ; preds = %217
  %243 = load i32, i32* %30, align 4
  %244 = load i32, i32* %29, align 4
  %245 = icmp sge i32 %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = load i32, i32* %30, align 4
  %248 = load i32, i32* %29, align 4
  %249 = add nsw i32 %247, %248
  store i32 %249, i32* %30, align 4
  br label %253

250:                                              ; preds = %242
  %251 = load i32, i32* %30, align 4
  %252 = shl i32 %251, 1
  store i32 %252, i32* %30, align 4
  br label %253

253:                                              ; preds = %250, %246
  br label %254

254:                                              ; preds = %253, %241
  %255 = load i32, i32* %30, align 4
  %256 = load i64, i64* %12, align 8
  %257 = getelementptr inbounds i32, i32* %68, i64 %256
  store i32 %255, i32* %257, align 4
  %258 = load i32*, i32** %10, align 8
  %259 = load i32, i32* %22, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, 32767
  store i32 %263, i32* %261, align 4
  %264 = load i32*, i32** %10, align 8
  %265 = load i32, i32* %23, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, 32767
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %254, %193
  br label %271

271:                                              ; preds = %270
  %272 = load i64, i64* %12, align 8
  %273 = add nsw i64 %272, 1
  store i64 %273, i64* %12, align 8
  br label %126

274:                                              ; preds = %126
  %275 = load i32*, i32** %7, align 8
  %276 = call i32 @oggpack_write(i32* %275, i32 1, i32 1)
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 4
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = sub nsw i32 %283, 1
  %285 = call i32 @ilog(i32 %284)
  %286 = mul nsw i32 %285, 2
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, %286
  store i32 %290, i32* %288, align 4
  %291 = load i32*, i32** %7, align 8
  %292 = getelementptr inbounds i32, i32* %68, i64 0
  %293 = load i32, i32* %292, align 16
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = sub nsw i32 %296, 1
  %298 = call i32 @ilog(i32 %297)
  %299 = call i32 @oggpack_write(i32* %291, i32 %293, i32 %298)
  %300 = load i32*, i32** %7, align 8
  %301 = getelementptr inbounds i32, i32* %68, i64 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = sub nsw i32 %305, 1
  %307 = call i32 @ilog(i32 %306)
  %308 = call i32 @oggpack_write(i32* %300, i32 %302, i32 %307)
  store i64 0, i64* %12, align 8
  store i64 2, i64* %13, align 8
  br label %309

309:                                              ; preds = %521, %274
  %310 = load i64, i64* %12, align 8
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = icmp slt i64 %310, %313
  br i1 %314, label %315, label %524

315:                                              ; preds = %309
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 3
  %318 = load i32*, i32** %317, align 8
  %319 = load i64, i64* %12, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  %321 = load i32, i32* %320, align 4
  store i32 %321, i32* %31, align 4
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 4
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %31, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  store i32 %328, i32* %32, align 4
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 5
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %31, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  store i32 %335, i32* %33, align 4
  %336 = load i32, i32* %33, align 4
  %337 = shl i32 1, %336
  store i32 %337, i32* %34, align 4
  %338 = bitcast [8 x i32]* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %338, i8 0, i64 32, i1 false)
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  %339 = load i32, i32* %33, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %456

341:                                              ; preds = %315
  store i32 0, i32* %38, align 4
  br label %342

342:                                              ; preds = %386, %341
  %343 = load i32, i32* %38, align 4
  %344 = load i32, i32* %34, align 4
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %346, label %389

346:                                              ; preds = %342
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 6
  %349 = load i32**, i32*** %348, align 8
  %350 = load i32, i32* %31, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32*, i32** %349, i64 %351
  %353 = load i32*, i32** %352, align 8
  %354 = load i32, i32* %38, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  %357 = load i32, i32* %356, align 4
  store i32 %357, i32* %41, align 4
  %358 = load i32, i32* %41, align 4
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %346
  %361 = load i32, i32* %38, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [8 x i32], [8 x i32]* %40, i64 0, i64 %362
  store i32 1, i32* %363, align 4
  br label %385

364:                                              ; preds = %346
  %365 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %19, align 8
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 6
  %368 = load i32**, i32*** %367, align 8
  %369 = load i32, i32* %31, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32*, i32** %368, i64 %370
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %38, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %365, i64 %377
  %379 = load %struct.TYPE_17__*, %struct.TYPE_17__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* %38, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [8 x i32], [8 x i32]* %40, i64 0, i64 %383
  store i32 %381, i32* %384, align 4
  br label %385

385:                                              ; preds = %364, %360
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %38, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %38, align 4
  br label %342

389:                                              ; preds = %342
  store i32 0, i32* %38, align 4
  br label %390

390:                                              ; preds = %433, %389
  %391 = load i32, i32* %38, align 4
  %392 = load i32, i32* %32, align 4
  %393 = icmp slt i32 %391, %392
  br i1 %393, label %394, label %436

394:                                              ; preds = %390
  store i32 0, i32* %39, align 4
  br label %395

395:                                              ; preds = %418, %394
  %396 = load i32, i32* %39, align 4
  %397 = load i32, i32* %34, align 4
  %398 = icmp slt i32 %396, %397
  br i1 %398, label %399, label %421

399:                                              ; preds = %395
  %400 = load i64, i64* %13, align 8
  %401 = load i32, i32* %38, align 4
  %402 = sext i32 %401 to i64
  %403 = add nsw i64 %400, %402
  %404 = getelementptr inbounds i32, i32* %68, i64 %403
  %405 = load i32, i32* %404, align 4
  store i32 %405, i32* %42, align 4
  %406 = load i32, i32* %42, align 4
  %407 = load i32, i32* %39, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [8 x i32], [8 x i32]* %40, i64 0, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = icmp slt i32 %406, %410
  br i1 %411, label %412, label %417

412:                                              ; preds = %399
  %413 = load i32, i32* %39, align 4
  %414 = load i32, i32* %38, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [8 x i32], [8 x i32]* %35, i64 0, i64 %415
  store i32 %413, i32* %416, align 4
  br label %421

417:                                              ; preds = %399
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %39, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %39, align 4
  br label %395

421:                                              ; preds = %412, %395
  %422 = load i32, i32* %38, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [8 x i32], [8 x i32]* %35, i64 0, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* %37, align 4
  %427 = shl i32 %425, %426
  %428 = load i32, i32* %36, align 4
  %429 = or i32 %428, %427
  store i32 %429, i32* %36, align 4
  %430 = load i32, i32* %33, align 4
  %431 = load i32, i32* %37, align 4
  %432 = add nsw i32 %431, %430
  store i32 %432, i32* %37, align 4
  br label %433

433:                                              ; preds = %421
  %434 = load i32, i32* %38, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %38, align 4
  br label %390

436:                                              ; preds = %390
  %437 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %438 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %438, i32 0, i32 7
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %31, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %437, i64 %445
  %447 = load i32, i32* %36, align 4
  %448 = load i32*, i32** %7, align 8
  %449 = call i64 @vorbis_book_encode(%struct.TYPE_19__* %446, i32 %447, i32* %448)
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 6
  %452 = load i32, i32* %451, align 8
  %453 = sext i32 %452 to i64
  %454 = add nsw i64 %453, %449
  %455 = trunc i64 %454 to i32
  store i32 %455, i32* %451, align 8
  br label %456

456:                                              ; preds = %436, %315
  store i32 0, i32* %38, align 4
  br label %457

457:                                              ; preds = %513, %456
  %458 = load i32, i32* %38, align 4
  %459 = load i32, i32* %32, align 4
  %460 = icmp slt i32 %458, %459
  br i1 %460, label %461, label %516

461:                                              ; preds = %457
  %462 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %463 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %462, i32 0, i32 6
  %464 = load i32**, i32*** %463, align 8
  %465 = load i32, i32* %31, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32*, i32** %464, i64 %466
  %468 = load i32*, i32** %467, align 8
  %469 = load i32, i32* %38, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [8 x i32], [8 x i32]* %35, i64 0, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %468, i64 %473
  %475 = load i32, i32* %474, align 4
  store i32 %475, i32* %43, align 4
  %476 = load i32, i32* %43, align 4
  %477 = icmp sge i32 %476, 0
  br i1 %477, label %478, label %512

478:                                              ; preds = %461
  %479 = load i64, i64* %13, align 8
  %480 = load i32, i32* %38, align 4
  %481 = sext i32 %480 to i64
  %482 = add nsw i64 %479, %481
  %483 = getelementptr inbounds i32, i32* %68, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %486 = load i32, i32* %43, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %485, i64 %487
  %489 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = icmp slt i32 %484, %490
  br i1 %491, label %492, label %511

492:                                              ; preds = %478
  %493 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %494 = load i32, i32* %43, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %493, i64 %495
  %497 = load i64, i64* %13, align 8
  %498 = load i32, i32* %38, align 4
  %499 = sext i32 %498 to i64
  %500 = add nsw i64 %497, %499
  %501 = getelementptr inbounds i32, i32* %68, i64 %500
  %502 = load i32, i32* %501, align 4
  %503 = load i32*, i32** %7, align 8
  %504 = call i64 @vorbis_book_encode(%struct.TYPE_19__* %496, i32 %502, i32* %503)
  %505 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %506 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %505, i32 0, i32 4
  %507 = load i32, i32* %506, align 4
  %508 = sext i32 %507 to i64
  %509 = add nsw i64 %508, %504
  %510 = trunc i64 %509 to i32
  store i32 %510, i32* %506, align 4
  br label %511

511:                                              ; preds = %492, %478
  br label %512

512:                                              ; preds = %511, %461
  br label %513

513:                                              ; preds = %512
  %514 = load i32, i32* %38, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %38, align 4
  br label %457

516:                                              ; preds = %457
  %517 = load i32, i32* %32, align 4
  %518 = sext i32 %517 to i64
  %519 = load i64, i64* %13, align 8
  %520 = add nsw i64 %519, %518
  store i64 %520, i64* %13, align 8
  br label %521

521:                                              ; preds = %516
  %522 = load i64, i64* %12, align 8
  %523 = add nsw i64 %522, 1
  store i64 %523, i64* %12, align 8
  br label %309

524:                                              ; preds = %309
  store i32 0, i32* %44, align 4
  store i32 0, i32* %45, align 4
  %525 = load i32*, i32** %10, align 8
  %526 = getelementptr inbounds i32, i32* %525, i64 0
  %527 = load i32, i32* %526, align 4
  %528 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %529 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 8
  %531 = mul nsw i32 %527, %530
  store i32 %531, i32* %46, align 4
  %532 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %533 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %532, i32 0, i32 0
  %534 = load i32*, i32** %533, align 8
  %535 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %536 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %535, i32 0, i32 1
  %537 = load i64, i64* %536, align 8
  %538 = getelementptr inbounds i32, i32* %534, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = sdiv i32 %539, 2
  store i32 %540, i32* %47, align 4
  store i64 1, i64* %13, align 8
  br label %541

541:                                              ; preds = %590, %524
  %542 = load i64, i64* %13, align 8
  %543 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %544 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %543, i32 0, i32 0
  %545 = load i64, i64* %544, align 8
  %546 = icmp slt i64 %542, %545
  br i1 %546, label %547, label %593

547:                                              ; preds = %541
  %548 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %549 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %548, i32 0, i32 5
  %550 = load i32*, i32** %549, align 8
  %551 = load i64, i64* %13, align 8
  %552 = getelementptr inbounds i32, i32* %550, i64 %551
  %553 = load i32, i32* %552, align 4
  store i32 %553, i32* %48, align 4
  %554 = load i32*, i32** %10, align 8
  %555 = load i32, i32* %48, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32, i32* %554, i64 %556
  %558 = load i32, i32* %557, align 4
  %559 = and i32 %558, 32767
  store i32 %559, i32* %49, align 4
  %560 = load i32, i32* %49, align 4
  %561 = load i32*, i32** %10, align 8
  %562 = load i32, i32* %48, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, i32* %561, i64 %563
  %565 = load i32, i32* %564, align 4
  %566 = icmp eq i32 %560, %565
  br i1 %566, label %567, label %589

567:                                              ; preds = %547
  %568 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %569 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = load i32, i32* %49, align 4
  %572 = mul nsw i32 %571, %570
  store i32 %572, i32* %49, align 4
  %573 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %574 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %573, i32 0, i32 1
  %575 = load i32*, i32** %574, align 8
  %576 = load i32, i32* %48, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i32, i32* %575, i64 %577
  %579 = load i32, i32* %578, align 4
  store i32 %579, i32* %44, align 4
  %580 = load i32, i32* %47, align 4
  %581 = load i32, i32* %45, align 4
  %582 = load i32, i32* %44, align 4
  %583 = load i32, i32* %46, align 4
  %584 = load i32, i32* %49, align 4
  %585 = load i32*, i32** %11, align 8
  %586 = call i32 @render_line0(i32 %580, i32 %581, i32 %582, i32 %583, i32 %584, i32* %585)
  %587 = load i32, i32* %44, align 4
  store i32 %587, i32* %45, align 4
  %588 = load i32, i32* %49, align 4
  store i32 %588, i32* %46, align 4
  br label %589

589:                                              ; preds = %567, %547
  br label %590

590:                                              ; preds = %589
  %591 = load i64, i64* %13, align 8
  %592 = add nsw i64 %591, 1
  store i64 %592, i64* %13, align 8
  br label %541

593:                                              ; preds = %541
  %594 = load i32, i32* %44, align 4
  %595 = sext i32 %594 to i64
  store i64 %595, i64* %13, align 8
  br label %596

596:                                              ; preds = %609, %593
  %597 = load i64, i64* %13, align 8
  %598 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %599 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 8
  %601 = sdiv i32 %600, 2
  %602 = sext i32 %601 to i64
  %603 = icmp slt i64 %597, %602
  br i1 %603, label %604, label %612

604:                                              ; preds = %596
  %605 = load i32, i32* %46, align 4
  %606 = load i32*, i32** %11, align 8
  %607 = load i64, i64* %13, align 8
  %608 = getelementptr inbounds i32, i32* %606, i64 %607
  store i32 %605, i32* %608, align 4
  br label %609

609:                                              ; preds = %604
  %610 = load i64, i64* %13, align 8
  %611 = add nsw i64 %610, 1
  store i64 %611, i64* %13, align 8
  br label %596

612:                                              ; preds = %596
  store i32 1, i32* %6, align 4
  store i32 1, i32* %50, align 4
  br label %625

613:                                              ; preds = %5
  %614 = load i32*, i32** %7, align 8
  %615 = call i32 @oggpack_write(i32* %614, i32 0, i32 1)
  %616 = load i32*, i32** %11, align 8
  %617 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %618 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 8
  %620 = sdiv i32 %619, 2
  %621 = sext i32 %620 to i64
  %622 = mul i64 %621, 4
  %623 = trunc i64 %622 to i32
  %624 = call i32 @memset(i32* %616, i32 0, i32 %623)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %50, align 4
  br label %625

625:                                              ; preds = %613, %612
  %626 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %626)
  %627 = load i32, i32* %6, align 4
  ret i32 %627
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @render_point(i32, i32, i32, i32, i32) #2

declare dso_local i32 @oggpack_write(i32*, i32, i32) #2

declare dso_local i32 @ilog(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i64 @vorbis_book_encode(%struct.TYPE_19__*, i32, i32*) #2

declare dso_local i32 @render_line0(i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
