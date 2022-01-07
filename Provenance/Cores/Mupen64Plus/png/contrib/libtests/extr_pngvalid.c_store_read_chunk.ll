; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_store_read_chunk.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_store_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CHUNK_IDAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"internal: IDAT size mismatch\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"internal: missing IDAT data\00", align 1
@CHUNK_IEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"internal: missing IDAT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*, i64, i64)* @store_read_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_read_chunk(%struct.TYPE_5__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [4 x i32], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %433

40:                                               ; preds = %4
  br label %41

41:                                               ; preds = %429, %40
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %48 = call i32 @store_read_imp(%struct.TYPE_5__* %46, i32* %47, i64 8)
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %50 = call i32 @png_get_uint_32(i32* %49)
  %51 = add i32 %50, 12
  store i32 %51, i32* %9, align 4
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = call i32 @png_get_uint_32(i32* %53)
  store i32 %54, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %45, %41
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @CHUNK_IDAT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %315

59:                                               ; preds = %55
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %15, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ult i32 %69, 8
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  store i32 8, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %59
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %150

76:                                               ; preds = %72
  %77 = call i32 (...) @random_byte()
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load i32, i32* %17, align 4
  %82 = and i32 %81, 3
  switch i32 %82, label %85 [
    i32 0, label %83
    i32 1, label %84
  ]

83:                                               ; preds = %80
  store i32 12, i32* %15, align 4
  br label %92

84:                                               ; preds = %80
  store i32 13, i32* %15, align 4
  br label %92

85:                                               ; preds = %80
  %86 = call i32 (...) @random_u32()
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %15, align 4
  %89 = urem i32 %88, %87
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = add i32 %90, 13
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %85, %84, %83
  br label %147

93:                                               ; preds = %76
  %94 = load i32, i32* %16, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %126

96:                                               ; preds = %93
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sub i32 %98, 4
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @png_error(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i32, i32* %17, align 4
  %108 = and i32 %107, 3
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 12, i32* %15, align 4
  br label %125

111:                                              ; preds = %106
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %114 = call i32 @store_read_imp(%struct.TYPE_5__* %112, i32* %113, i64 4)
  %115 = load i32, i32* %11, align 4
  %116 = add i32 %115, 4
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 5
  store i32 0, i32* %124, align 4
  br label %429

125:                                              ; preds = %110
  br label %146

126:                                              ; preds = %93
  %127 = call i32 (...) @random_u32()
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = urem i32 %128, %131
  %133 = add i32 1, %132
  %134 = shl i32 1, %133
  %135 = sub i32 %134, 1
  %136 = load i32, i32* %15, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp ugt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %126
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %15, align 4
  br label %143

143:                                              ; preds = %141, %126
  %144 = load i32, i32* %15, align 4
  %145 = add i32 %144, 12
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %143, %125
  br label %147

147:                                              ; preds = %146, %92
  store i32 0, i32* %14, align 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 7
  store i32 900662814, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %72
  %151 = load i32, i32* %14, align 4
  %152 = icmp ult i32 %151, 8
  br i1 %152, label %153, label %190

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %187, %153
  %155 = load i32, i32* %14, align 4
  %156 = icmp ult i32 %155, 4
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* %15, align 4
  %159 = sub i32 %158, 12
  store i32 %159, i32* %19, align 4
  br label %162

160:                                              ; preds = %154
  %161 = load i32, i32* @CHUNK_IDAT, align 4
  store i32 %161, i32* %19, align 4
  br label %162

162:                                              ; preds = %160, %157
  %163 = load i32, i32* %14, align 4
  %164 = and i32 3, %163
  store i32 %164, i32* %20, align 4
  %165 = load i32, i32* %14, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %20, align 4
  %168 = icmp ult i32 %167, 3
  br i1 %168, label %169, label %175

169:                                              ; preds = %162
  %170 = load i32, i32* %20, align 4
  %171 = sub i32 3, %170
  %172 = mul i32 8, %171
  %173 = load i32, i32* %19, align 4
  %174 = lshr i32 %173, %172
  store i32 %174, i32* %19, align 4
  br label %175

175:                                              ; preds = %169, %162
  %176 = load i32, i32* %19, align 4
  %177 = and i32 255, %176
  %178 = load i32*, i32** %6, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %6, align 8
  store i32 %177, i32* %178, align 4
  br label %180

180:                                              ; preds = %175
  %181 = load i64, i64* %12, align 8
  %182 = add nsw i64 %181, -1
  store i64 %182, i64* %12, align 8
  %183 = icmp sgt i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i32, i32* %14, align 4
  %186 = icmp ult i32 %185, 8
  br label %187

187:                                              ; preds = %184, %180
  %188 = phi i1 [ false, %180 ], [ %186, %184 ]
  br i1 %188, label %154, label %189

189:                                              ; preds = %187
  br label %305

190:                                              ; preds = %150
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %15, align 4
  %193 = sub i32 %192, 4
  %194 = icmp ult i32 %191, %193
  br i1 %194, label %195, label %270

195:                                              ; preds = %190
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %9, align 4
  %198 = sub i32 %197, 4
  %199 = icmp ult i32 %196, %198
  br i1 %199, label %200, label %263

200:                                              ; preds = %195
  store i32 -1, i32* %21, align 4
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* %15, align 4
  %203 = sub i32 %202, 4
  %204 = load i32, i32* %14, align 4
  %205 = sub i32 %203, %204
  %206 = icmp ugt i32 %201, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %200
  %208 = load i32, i32* %15, align 4
  %209 = sub i32 %208, 4
  %210 = load i32, i32* %14, align 4
  %211 = sub i32 %209, %210
  store i32 %211, i32* %21, align 4
  br label %212

212:                                              ; preds = %207, %200
  %213 = load i32, i32* %21, align 4
  %214 = zext i32 %213 to i64
  %215 = load i64, i64* %12, align 8
  %216 = icmp sgt i64 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i64, i64* %12, align 8
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %21, align 4
  br label %220

220:                                              ; preds = %217, %212
  %221 = load i32, i32* %21, align 4
  %222 = load i32, i32* %9, align 4
  %223 = sub i32 %222, 4
  %224 = load i32, i32* %11, align 4
  %225 = sub i32 %223, %224
  %226 = icmp ugt i32 %221, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %220
  %228 = load i32, i32* %9, align 4
  %229 = sub i32 %228, 4
  %230 = load i32, i32* %11, align 4
  %231 = sub i32 %229, %230
  store i32 %231, i32* %21, align 4
  br label %232

232:                                              ; preds = %227, %220
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %234 = load i32*, i32** %6, align 8
  %235 = load i32, i32* %21, align 4
  %236 = zext i32 %235 to i64
  %237 = call i32 @store_read_imp(%struct.TYPE_5__* %233, i32* %234, i64 %236)
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %6, align 8
  %242 = load i32, i32* %21, align 4
  %243 = call i32 @crc32(i32 %240, i32* %241, i32 %242)
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 7
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %21, align 4
  %247 = zext i32 %246 to i64
  %248 = load i32*, i32** %6, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 %247
  store i32* %249, i32** %6, align 8
  %250 = load i32, i32* %21, align 4
  %251 = zext i32 %250 to i64
  %252 = load i64, i64* %12, align 8
  %253 = sub nsw i64 %252, %251
  store i64 %253, i64* %12, align 8
  %254 = load i32, i32* %21, align 4
  %255 = load i32, i32* %11, align 4
  %256 = add i32 %255, %254
  store i32 %256, i32* %11, align 4
  %257 = load i32, i32* %21, align 4
  %258 = load i32, i32* %16, align 4
  %259 = sub i32 %258, %257
  store i32 %259, i32* %16, align 4
  %260 = load i32, i32* %21, align 4
  %261 = load i32, i32* %14, align 4
  %262 = add i32 %261, %260
  store i32 %262, i32* %14, align 4
  br label %269

263:                                              ; preds = %195
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %265 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  %266 = call i32 @store_read_imp(%struct.TYPE_5__* %264, i32* %265, i64 4)
  %267 = load i32, i32* %11, align 4
  %268 = add i32 %267, 4
  store i32 %268, i32* %11, align 4
  br label %269

269:                                              ; preds = %263, %232
  br label %304

270:                                              ; preds = %190
  br label %271

271:                                              ; preds = %301, %270
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 7
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %23, align 4
  %275 = load i32, i32* %15, align 4
  %276 = load i32, i32* %14, align 4
  %277 = sub i32 %275, %276
  store i32 %277, i32* %24, align 4
  %278 = load i32, i32* %14, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %14, align 4
  %280 = load i32, i32* %24, align 4
  %281 = icmp ugt i32 %280, 1
  br i1 %281, label %282, label %288

282:                                              ; preds = %271
  %283 = load i32, i32* %24, align 4
  %284 = sub i32 %283, 1
  %285 = mul i32 8, %284
  %286 = load i32, i32* %23, align 4
  %287 = lshr i32 %286, %285
  store i32 %287, i32* %23, align 4
  br label %288

288:                                              ; preds = %282, %271
  %289 = load i32, i32* %23, align 4
  %290 = and i32 255, %289
  %291 = load i32*, i32** %6, align 8
  %292 = getelementptr inbounds i32, i32* %291, i32 1
  store i32* %292, i32** %6, align 8
  store i32 %290, i32* %291, align 4
  br label %293

293:                                              ; preds = %288
  %294 = load i64, i64* %12, align 8
  %295 = add nsw i64 %294, -1
  store i64 %295, i64* %12, align 8
  %296 = icmp sgt i64 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load i32, i32* %14, align 4
  %299 = load i32, i32* %15, align 4
  %300 = icmp ult i32 %298, %299
  br label %301

301:                                              ; preds = %297, %293
  %302 = phi i1 [ false, %293 ], [ %300, %297 ]
  br i1 %302, label %271, label %303

303:                                              ; preds = %301
  br label %304

304:                                              ; preds = %303, %269
  br label %305

305:                                              ; preds = %304, %189
  %306 = load i32, i32* %14, align 4
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 3
  store i32 %306, i32* %308, align 4
  %309 = load i32, i32* %15, align 4
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 4
  store i32 %309, i32* %311, align 4
  %312 = load i32, i32* %16, align 4
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 5
  store i32 %312, i32* %314, align 4
  br label %428

315:                                              ; preds = %55
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 4
  %319 = icmp ugt i32 %318, 0
  br i1 %319, label %320, label %330

320:                                              ; preds = %315
  %321 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 4
  %324 = icmp ugt i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %320
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 8
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @png_error(i32 %328, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %330

330:                                              ; preds = %325, %320, %315
  %331 = load i32, i32* %10, align 4
  %332 = load i32, i32* @CHUNK_IEND, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %344

334:                                              ; preds = %330
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 8
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @png_error(i32 %342, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %344

344:                                              ; preds = %339, %334, %330
  %345 = load i32, i32* %11, align 4
  %346 = icmp ult i32 %345, 8
  br i1 %346, label %347, label %384

347:                                              ; preds = %344
  br label %348

348:                                              ; preds = %381, %347
  %349 = load i32, i32* %11, align 4
  %350 = icmp ult i32 %349, 4
  br i1 %350, label %351, label %354

351:                                              ; preds = %348
  %352 = load i32, i32* %9, align 4
  %353 = sub i32 %352, 12
  store i32 %353, i32* %25, align 4
  br label %356

354:                                              ; preds = %348
  %355 = load i32, i32* %10, align 4
  store i32 %355, i32* %25, align 4
  br label %356

356:                                              ; preds = %354, %351
  %357 = load i32, i32* %11, align 4
  %358 = and i32 3, %357
  store i32 %358, i32* %26, align 4
  %359 = load i32, i32* %11, align 4
  %360 = add i32 %359, 1
  store i32 %360, i32* %11, align 4
  %361 = load i32, i32* %26, align 4
  %362 = icmp ult i32 %361, 3
  br i1 %362, label %363, label %369

363:                                              ; preds = %356
  %364 = load i32, i32* %26, align 4
  %365 = sub i32 3, %364
  %366 = mul i32 8, %365
  %367 = load i32, i32* %25, align 4
  %368 = lshr i32 %367, %366
  store i32 %368, i32* %25, align 4
  br label %369

369:                                              ; preds = %363, %356
  %370 = load i32, i32* %25, align 4
  %371 = and i32 255, %370
  %372 = load i32*, i32** %6, align 8
  %373 = getelementptr inbounds i32, i32* %372, i32 1
  store i32* %373, i32** %6, align 8
  store i32 %371, i32* %372, align 4
  br label %374

374:                                              ; preds = %369
  %375 = load i64, i64* %12, align 8
  %376 = add nsw i64 %375, -1
  store i64 %376, i64* %12, align 8
  %377 = icmp sgt i64 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %374
  %379 = load i32, i32* %11, align 4
  %380 = icmp ult i32 %379, 8
  br label %381

381:                                              ; preds = %378, %374
  %382 = phi i1 [ false, %374 ], [ %380, %378 ]
  br i1 %382, label %348, label %383

383:                                              ; preds = %381
  br label %427

384:                                              ; preds = %344
  %385 = load i64, i64* %12, align 8
  store i64 %385, i64* %27, align 8
  %386 = load i64, i64* %27, align 8
  %387 = load i32, i32* %9, align 4
  %388 = load i32, i32* %11, align 4
  %389 = sub i32 %387, %388
  %390 = zext i32 %389 to i64
  %391 = icmp sgt i64 %386, %390
  br i1 %391, label %392, label %397

392:                                              ; preds = %384
  %393 = load i32, i32* %9, align 4
  %394 = load i32, i32* %11, align 4
  %395 = sub i32 %393, %394
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %27, align 8
  br label %397

397:                                              ; preds = %392, %384
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %399 = load i32*, i32** %6, align 8
  %400 = load i64, i64* %27, align 8
  %401 = call i32 @store_read_imp(%struct.TYPE_5__* %398, i32* %399, i64 %400)
  %402 = load i64, i64* %27, align 8
  %403 = load i32*, i32** %6, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 %402
  store i32* %404, i32** %6, align 8
  %405 = load i64, i64* %27, align 8
  %406 = load i64, i64* %12, align 8
  %407 = sub nsw i64 %406, %405
  store i64 %407, i64* %12, align 8
  %408 = load i64, i64* %27, align 8
  %409 = trunc i64 %408 to i32
  %410 = load i32, i32* %11, align 4
  %411 = add i32 %410, %409
  store i32 %411, i32* %11, align 4
  %412 = load i32, i32* %11, align 4
  %413 = load i32, i32* %9, align 4
  %414 = icmp uge i32 %412, %413
  br i1 %414, label %415, label %426

415:                                              ; preds = %397
  %416 = load i64, i64* %7, align 8
  %417 = load i64, i64* %12, align 8
  %418 = sub nsw i64 %416, %417
  %419 = load i64, i64* %8, align 8
  %420 = icmp sge i64 %418, %419
  br i1 %420, label %421, label %426

421:                                              ; preds = %415
  %422 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %423 = call i64 @store_read_buffer_avail(%struct.TYPE_5__* %422)
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %421
  br label %432

426:                                              ; preds = %421, %415, %397
  br label %427

427:                                              ; preds = %426, %383
  br label %428

428:                                              ; preds = %427, %305
  br label %429

429:                                              ; preds = %428, %111
  %430 = load i64, i64* %12, align 8
  %431 = icmp sgt i64 %430, 0
  br i1 %431, label %41, label %432

432:                                              ; preds = %429, %425
  br label %433

433:                                              ; preds = %432, %4
  %434 = load i32, i32* %9, align 4
  %435 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i32 0, i32 0
  store i32 %434, i32* %436, align 4
  %437 = load i32, i32* %10, align 4
  %438 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %438, i32 0, i32 1
  store i32 %437, i32* %439, align 4
  %440 = load i32, i32* %11, align 4
  %441 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i32 0, i32 2
  store i32 %440, i32* %442, align 4
  %443 = load i64, i64* %12, align 8
  ret i64 %443
}

declare dso_local i32 @store_read_imp(%struct.TYPE_5__*, i32*, i64) #1

declare dso_local i32 @png_get_uint_32(i32*) #1

declare dso_local i32 @random_byte(...) #1

declare dso_local i32 @random_u32(...) #1

declare dso_local i32 @png_error(i32, i8*) #1

declare dso_local i32 @crc32(i32, i32*, i32) #1

declare dso_local i64 @store_read_buffer_avail(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
