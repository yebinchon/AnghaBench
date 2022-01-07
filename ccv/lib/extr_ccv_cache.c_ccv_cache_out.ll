; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_cache.c_ccv_cache_out.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_cache.c_ccv_cache_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@bits_in_16bits_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ccv_cache_out(%struct.TYPE_11__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_12__*, align 8
  %31 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %32 = load i32, i32* @bits_in_16bits_init, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %3
  %35 = call i32 (...) @precomputed_16bits()
  br label %36

36:                                               ; preds = %34, %3
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i8* null, i8** %4, align 8
  br label %323

42:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %11, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %12, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %13, align 8
  store i32 63, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %133, %42
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 10
  br i1 %49, label %50, label %136

50:                                               ; preds = %47
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 1
  store i32 %55, i32* %15, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 2
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i32 1, i32* %9, align 4
  br label %136

64:                                               ; preds = %50
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %66 = icmp ne %struct.TYPE_12__* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @compute_bits(i32 %71)
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %12, align 8
  br label %76

76:                                               ; preds = %74, %67, %64
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %11, align 8
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %10, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 3
  %88 = sub nsw i32 %82, %87
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %17, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %14, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* %8, align 4
  %95 = mul nsw i32 %94, 6
  %96 = ashr i32 %93, %95
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %76
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %101 = load i32, i32* %18, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %102
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %13, align 8
  br label %130

104:                                              ; preds = %76
  store i32 1, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %18, align 4
  %107 = shl i32 %105, %106
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %108, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %104
  %116 = load i32, i32* %19, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %117, %121
  store i32 %122, i32* %20, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %124 = load i32, i32* %20, align 4
  %125 = call i32 @compute_bits(i32 %124)
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i64 %126
  store %struct.TYPE_12__* %127, %struct.TYPE_12__** %13, align 8
  br label %129

128:                                              ; preds = %104
  store i8* null, i8** %4, align 8
  br label %323

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %99
  %131 = load i32, i32* %14, align 4
  %132 = shl i32 %131, 6
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %47

136:                                              ; preds = %63, %47
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  store i8* null, i8** %4, align 8
  br label %323

140:                                              ; preds = %136
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 1
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %21, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %140
  store i8* null, i8** %4, align 8
  br label %323

149:                                              ; preds = %140
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i8* null, i8** %4, align 8
  br label %323

157:                                              ; preds = %149
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 3
  %167 = sub nsw i32 %161, %166
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  store i8* %169, i8** %22, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %179

172:                                              ; preds = %157
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @CCV_GET_CACHE_TYPE(i32 %176)
  %178 = load i32*, i32** %7, align 8
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %172, %157
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @CCV_GET_TERMINAL_SIZE(i32 %183)
  store i32 %184, i32* %23, align 4
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 3
  %188 = icmp ne %struct.TYPE_12__* %185, %187
  br i1 %188, label %189, label %309

189:                                              ; preds = %179
  store i32 1, i32* %24, align 4
  store i32 63, i32* %25, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %25, align 4
  %192 = load i32, i32* %10, align 4
  %193 = mul nsw i32 %192, 6
  %194 = shl i32 %191, %193
  %195 = and i32 %190, %194
  %196 = load i32, i32* %10, align 4
  %197 = mul nsw i32 %196, 6
  %198 = ashr i32 %195, %197
  store i32 %198, i32* %26, align 4
  %199 = load i32, i32* %24, align 4
  %200 = load i32, i32* %26, align 4
  %201 = shl i32 %199, %200
  store i32 %201, i32* %24, align 4
  %202 = load i32, i32* %24, align 4
  %203 = sub nsw i32 %202, 1
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %203, %207
  store i32 %208, i32* %27, align 4
  %209 = load i32, i32* %27, align 4
  %210 = call i32 @compute_bits(i32 %209)
  store i32 %210, i32* %28, align 4
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @compute_bits(i32 %214)
  store i32 %215, i32* %29, align 4
  %216 = load i32, i32* %29, align 4
  %217 = icmp sgt i32 %216, 1
  %218 = zext i1 %217 to i32
  %219 = call i32 @assert(i32 %218)
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 3
  %229 = sub nsw i32 %223, %228
  %230 = sext i32 %229 to i64
  %231 = inttoptr i64 %230 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %231, %struct.TYPE_12__** %30, align 8
  %232 = load i32, i32* %29, align 4
  %233 = icmp sgt i32 %232, 2
  br i1 %233, label %248, label %234

234:                                              ; preds = %189
  %235 = load i32, i32* %29, align 4
  %236 = icmp eq i32 %235, 2
  br i1 %236, label %237, label %291

237:                                              ; preds = %234
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %239 = load i32, i32* %28, align 4
  %240 = sub nsw i32 1, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, 1
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %291, label %248

248:                                              ; preds = %237, %189
  %249 = load i32, i32* %24, align 4
  %250 = xor i32 %249, -1
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, %250
  store i32 %255, i32* %253, align 4
  %256 = load i32, i32* %28, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %8, align 4
  br label %258

258:                                              ; preds = %274, %248
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* %29, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %277

262:                                              ; preds = %258
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i64 %266
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i64 %270
  %272 = bitcast %struct.TYPE_12__* %267 to i8*
  %273 = bitcast %struct.TYPE_12__* %271 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %272, i8* align 4 %273, i64 20, i1 false)
  br label %274

274:                                              ; preds = %262
  %275 = load i32, i32* %8, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %8, align 4
  br label %258

277:                                              ; preds = %258
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %279 = load i32, i32* %29, align 4
  %280 = sub nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = mul i64 20, %281
  %283 = trunc i64 %282 to i32
  %284 = call i64 @ccrealloc(%struct.TYPE_12__* %278, i32 %283)
  %285 = inttoptr i64 %284 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %285, %struct.TYPE_12__** %30, align 8
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %287 = ptrtoint %struct.TYPE_12__* %286 to i32
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 1
  store i32 %287, i32* %290, align 4
  br label %304

291:                                              ; preds = %237, %234
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %293 = load i32, i32* %28, align 4
  %294 = sub nsw i32 1, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i64 %295
  %297 = bitcast %struct.TYPE_12__* %31 to i8*
  %298 = bitcast %struct.TYPE_12__* %296 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %297, i8* align 4 %298, i64 20, i1 false)
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %300 = call i32 @_ccv_cache_cleanup(%struct.TYPE_12__* %299)
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %302 = bitcast %struct.TYPE_12__* %301 to i8*
  %303 = bitcast %struct.TYPE_12__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %302, i8* align 4 %303, i64 20, i1 false)
  br label %304

304:                                              ; preds = %291, %277
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 3
  %307 = load i32, i32* %6, align 4
  %308 = call i32 @_ccv_cache_aging(%struct.TYPE_12__* %306, i32 %307)
  br label %312

309:                                              ; preds = %179
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 1
  store i32 1, i32* %311, align 8
  br label %312

312:                                              ; preds = %309, %304
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = add nsw i64 %315, -1
  store i64 %316, i64* %314, align 8
  %317 = load i32, i32* %23, align 4
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = sub nsw i32 %320, %317
  store i32 %321, i32* %319, align 4
  %322 = load i8*, i8** %22, align 8
  store i8* %322, i8** %4, align 8
  br label %323

323:                                              ; preds = %312, %156, %148, %139, %128, %41
  %324 = load i8*, i8** %4, align 8
  ret i8* %324
}

declare dso_local i32 @precomputed_16bits(...) #1

declare dso_local i32 @compute_bits(i32) #1

declare dso_local i32 @CCV_GET_CACHE_TYPE(i32) #1

declare dso_local i32 @CCV_GET_TERMINAL_SIZE(i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ccrealloc(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @_ccv_cache_cleanup(%struct.TYPE_12__*) #1

declare dso_local i32 @_ccv_cache_aging(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
