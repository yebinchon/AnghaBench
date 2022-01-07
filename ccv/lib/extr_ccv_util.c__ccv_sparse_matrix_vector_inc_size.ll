; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c__ccv_sparse_matrix_vector_inc_size.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c__ccv_sparse_matrix_vector_inc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*)* @_ccv_sparse_matrix_vector_inc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_sparse_matrix_vector_inc_size(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_10__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 1
  br label %40

40:                                               ; preds = %34, %2
  %41 = phi i1 [ false, %2 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, 2
  %49 = call i32 @_ccv_sparse_matrix_index_next_size_over(i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 %49, i32* %6, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @_ccv_sparse_matrix_size_for_index(i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  store i32 %55, i32* %7, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %40
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 1
  br label %68

68:                                               ; preds = %62, %40
  %69 = phi i1 [ false, %40 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @CCV_GET_DATA_TYPE_SIZE(i32 %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @CCV_GET_CHANNEL(i32 %78)
  %80 = mul nsw i32 %75, %79
  %81 = add nsw i32 %80, 3
  %82 = and i32 %81, -4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = add i64 8, %84
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %8, align 8
  %87 = udiv i64 %86, 4
  store i64 %87, i64* %10, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %91, %93
  %95 = call i64 @ccrealloc(%struct.TYPE_10__* %90, i64 %94)
  %96 = inttoptr i64 %95 to %struct.TYPE_10__*
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = bitcast %struct.TYPE_10__* %101 to i32*
  store i32* %102, i32** %11, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %104, %106
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i64, i64* %9, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = mul i64 %109, %113
  %115 = call i32 @memset(i32* %108, i32 0, i64 %114)
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %137, %68
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = load i32*, i32** %11, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %122, %124
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = bitcast i32* %126 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %127, %struct.TYPE_10__** %14, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %120
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %116

140:                                              ; preds = %116
  store i32 0, i32* %12, align 4
  br label %141

141:                                              ; preds = %391, %140
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %394

145:                                              ; preds = %141
  %146 = load i32*, i32** %11, align 8
  %147 = load i64, i64* %9, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %147, %149
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = bitcast i32* %151 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %152, %struct.TYPE_10__** %15, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %390

157:                                              ; preds = %145
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  store i32 0, i32* %159, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %16, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i64 1
  %165 = bitcast %struct.TYPE_10__* %164 to i32*
  store i32* %165, i32** %17, align 8
  store i32 2, i32* %18, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @_ccv_sparse_matrix_index_for_hash(i32 %166, i32 %167)
  store i32 %168, i32* %19, align 4
  br label %169

169:                                              ; preds = %260, %157
  %170 = load i32, i32* %18, align 4
  %171 = icmp slt i32 %170, 255
  br i1 %171, label %172, label %265

172:                                              ; preds = %169
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp sge i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 0, i32* %19, align 4
  br label %177

177:                                              ; preds = %176, %172
  %178 = load i32*, i32** %11, align 8
  %179 = load i64, i64* %9, align 8
  %180 = load i32, i32* %19, align 4
  %181 = sext i32 %180 to i64
  %182 = mul i64 %179, %181
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = bitcast i32* %183 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %184, %struct.TYPE_10__** %20, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %21, align 4
  %188 = load i32, i32* %21, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %202, label %190

190:                                              ; preds = %177
  %191 = load i32, i32* %18, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %16, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 1
  %199 = load i32*, i32** %17, align 8
  %200 = load i64, i64* %8, align 8
  %201 = call i32 @memcpy(%struct.TYPE_10__* %198, i32* %199, i64 %200)
  br label %265

202:                                              ; preds = %177
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* %21, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  br label %260

207:                                              ; preds = %202
  %208 = load i32, i32* %18, align 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %22, align 4
  %214 = load i32, i32* %16, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* %22, align 4
  store i32 %217, i32* %16, align 4
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i64 1
  %220 = bitcast %struct.TYPE_10__* %219 to i32*
  store i32* %220, i32** %23, align 8
  store i32 0, i32* %13, align 4
  br label %221

221:                                              ; preds = %246, %207
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = load i64, i64* %10, align 8
  %225 = icmp ult i64 %223, %224
  br i1 %225, label %226, label %249

226:                                              ; preds = %221
  %227 = load i32*, i32** %23, align 8
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %24, align 4
  %232 = load i32*, i32** %17, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32*, i32** %23, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %236, i32* %240, align 4
  %241 = load i32, i32* %24, align 4
  %242 = load i32*, i32** %17, align 8
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 %241, i32* %245, align 4
  br label %246

246:                                              ; preds = %226
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %13, align 4
  br label %221

249:                                              ; preds = %221
  %250 = load i32, i32* %21, align 4
  %251 = icmp ne i32 %250, 1
  br i1 %251, label %252, label %254

252:                                              ; preds = %249
  %253 = load i32, i32* %21, align 4
  store i32 %253, i32* %18, align 4
  br label %259

254:                                              ; preds = %249
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @_ccv_sparse_matrix_index_for_hash(i32 %255, i32 %256)
  %258 = sub nsw i32 %257, 1
  store i32 %258, i32* %19, align 4
  store i32 1, i32* %18, align 4
  br label %259

259:                                              ; preds = %254, %252
  br label %260

260:                                              ; preds = %259, %206
  %261 = load i32, i32* %19, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %19, align 4
  %263 = load i32, i32* %18, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %18, align 4
  br label %169

265:                                              ; preds = %190, %169
  %266 = load i32, i32* %18, align 4
  %267 = icmp slt i32 %266, 255
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  br label %391

269:                                              ; preds = %265
  br label %270

270:                                              ; preds = %384, %269
  %271 = load i32, i32* %19, align 4
  %272 = load i32, i32* %7, align 4
  %273 = icmp sge i32 %271, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %270
  store i32 0, i32* %19, align 4
  br label %275

275:                                              ; preds = %274, %270
  %276 = load i32*, i32** %11, align 8
  %277 = load i64, i64* %9, align 8
  %278 = load i32, i32* %19, align 4
  %279 = sext i32 %278 to i64
  %280 = mul i64 %277, %279
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  %282 = bitcast i32* %281 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %282, %struct.TYPE_10__** %25, align 8
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %26, align 4
  %286 = load i32, i32* %26, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %306, label %288

288:                                              ; preds = %275
  %289 = load i32, i32* %18, align 4
  %290 = icmp sgt i32 %289, 255
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  br label %294

292:                                              ; preds = %288
  %293 = load i32, i32* %18, align 4
  br label %294

294:                                              ; preds = %292, %291
  %295 = phi i32 [ 255, %291 ], [ %293, %292 ]
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 4
  %298 = load i32, i32* %16, align 4
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i64 1
  %303 = load i32*, i32** %17, align 8
  %304 = load i64, i64* %8, align 8
  %305 = call i32 @memcpy(%struct.TYPE_10__* %302, i32* %303, i64 %304)
  br label %389

306:                                              ; preds = %275
  %307 = load i32, i32* %26, align 4
  %308 = icmp eq i32 %307, 255
  br i1 %308, label %309, label %320

309:                                              ; preds = %306
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %7, align 4
  %314 = add nsw i32 %312, %313
  %315 = load i32, i32* %19, align 4
  %316 = sub nsw i32 %314, %315
  %317 = load i32, i32* %6, align 4
  %318 = call i32 @_ccv_sparse_matrix_index_for_hash(i32 %316, i32 %317)
  %319 = add nsw i32 %318, 2
  store i32 %319, i32* %26, align 4
  br label %320

320:                                              ; preds = %309, %306
  %321 = load i32, i32* %18, align 4
  %322 = load i32, i32* %26, align 4
  %323 = icmp sle i32 %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %320
  br label %384

325:                                              ; preds = %320
  %326 = load i32, i32* %18, align 4
  %327 = icmp sgt i32 %326, 255
  br i1 %327, label %328, label %329

328:                                              ; preds = %325
  br label %331

329:                                              ; preds = %325
  %330 = load i32, i32* %18, align 4
  br label %331

331:                                              ; preds = %329, %328
  %332 = phi i32 [ 255, %328 ], [ %330, %329 ]
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 0
  store i32 %332, i32* %334, align 4
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  store i32 %337, i32* %27, align 4
  %338 = load i32, i32* %16, align 4
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 4
  %341 = load i32, i32* %27, align 4
  store i32 %341, i32* %16, align 4
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i64 1
  %344 = bitcast %struct.TYPE_10__* %343 to i32*
  store i32* %344, i32** %28, align 8
  store i32 0, i32* %13, align 4
  br label %345

345:                                              ; preds = %370, %331
  %346 = load i32, i32* %13, align 4
  %347 = sext i32 %346 to i64
  %348 = load i64, i64* %10, align 8
  %349 = icmp ult i64 %347, %348
  br i1 %349, label %350, label %373

350:                                              ; preds = %345
  %351 = load i32*, i32** %28, align 8
  %352 = load i32, i32* %13, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  store i32 %355, i32* %29, align 4
  %356 = load i32*, i32** %17, align 8
  %357 = load i32, i32* %13, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32*, i32** %28, align 8
  %362 = load i32, i32* %13, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  store i32 %360, i32* %364, align 4
  %365 = load i32, i32* %29, align 4
  %366 = load i32*, i32** %17, align 8
  %367 = load i32, i32* %13, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  store i32 %365, i32* %369, align 4
  br label %370

370:                                              ; preds = %350
  %371 = load i32, i32* %13, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %13, align 4
  br label %345

373:                                              ; preds = %345
  %374 = load i32, i32* %26, align 4
  %375 = icmp ne i32 %374, 1
  br i1 %375, label %376, label %378

376:                                              ; preds = %373
  %377 = load i32, i32* %26, align 4
  store i32 %377, i32* %18, align 4
  br label %383

378:                                              ; preds = %373
  %379 = load i32, i32* %16, align 4
  %380 = load i32, i32* %6, align 4
  %381 = call i32 @_ccv_sparse_matrix_index_for_hash(i32 %379, i32 %380)
  %382 = sub nsw i32 %381, 1
  store i32 %382, i32* %19, align 4
  store i32 1, i32* %18, align 4
  br label %383

383:                                              ; preds = %378, %376
  br label %384

384:                                              ; preds = %383, %324
  %385 = load i32, i32* %19, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %19, align 4
  %387 = load i32, i32* %18, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %18, align 4
  br label %270

389:                                              ; preds = %294
  br label %390

390:                                              ; preds = %389, %145
  br label %391

391:                                              ; preds = %390, %268
  %392 = load i32, i32* %12, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %12, align 4
  br label %141

394:                                              ; preds = %141
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_ccv_sparse_matrix_index_next_size_over(i32) #1

declare dso_local i32 @_ccv_sparse_matrix_size_for_index(i32) #1

declare dso_local i32 @CCV_GET_DATA_TYPE_SIZE(i32) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local i64 @ccrealloc(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @_ccv_sparse_matrix_index_for_hash(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
