; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c__ccv_sparse_matrix_inc_size.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c__ccv_sparse_matrix_inc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @_ccv_sparse_matrix_inc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_sparse_matrix_inc_size(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 1
  br label %29

29:                                               ; preds = %23, %1
  %30 = phi i1 [ false, %1 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = mul nsw i32 %36, 2
  %38 = call i32 @_ccv_sparse_matrix_index_next_size_over(i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  store i32 %38, i32* %4, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @_ccv_sparse_matrix_size_for_index(i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  store i32 %44, i32* %5, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %29
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 1
  br label %57

57:                                               ; preds = %51, %29
  %58 = phi i1 [ false, %29 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 8, %65
  %67 = trunc i64 %66 to i32
  %68 = call i64 @ccrealloc(%struct.TYPE_7__* %63, i32 %67)
  %69 = inttoptr i64 %68 to %struct.TYPE_7__*
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %71, align 8
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %6, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %3, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = mul i64 8, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memset(%struct.TYPE_7__* %75, i32 0, i32 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 8, %87
  %89 = trunc i64 %88 to i32
  %90 = call i64 @ccrealloc(%struct.TYPE_7__* %85, i32 %89)
  %91 = inttoptr i64 %90 to %struct.TYPE_7__*
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %93, align 8
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %114, %57
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %94
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 4
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %94

117:                                              ; preds = %94
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %364, %117
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %3, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %367

122:                                              ; preds = %118
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %363

130:                                              ; preds = %122
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %9, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 %144
  %146 = bitcast %struct.TYPE_7__* %10 to i8*
  %147 = bitcast %struct.TYPE_7__* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 8, i1 false)
  store i32 2, i32* %11, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @_ccv_sparse_matrix_index_for_hash(i32 %148, i32 %149)
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %236, %130
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %152, 255
  br i1 %153, label %154, label %241

154:                                              ; preds = %151
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp sge i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i32 0, i32* %12, align 4
  br label %159

159:                                              ; preds = %158, %154
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %187, label %168

168:                                              ; preds = %159
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  store i32 %169, i32* %174, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  store i32 %175, i32* %180, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i64 %183
  %185 = bitcast %struct.TYPE_7__* %184 to i8*
  %186 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %185, i8* align 4 %186, i64 8, i1 false)
  br label %241

187:                                              ; preds = %159
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %13, align 4
  %190 = icmp sle i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %236

192:                                              ; preds = %187
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  store i32 %193, i32* %198, align 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  store i32 %205, i32* %210, align 4
  %211 = load i32, i32* %14, align 4
  store i32 %211, i32* %9, align 4
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i64 %214
  %216 = bitcast %struct.TYPE_7__* %15 to i8*
  %217 = bitcast %struct.TYPE_7__* %215 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %216, i8* align 4 %217, i64 8, i1 false)
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i64 %220
  %222 = bitcast %struct.TYPE_7__* %221 to i8*
  %223 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %222, i8* align 4 %223, i64 8, i1 false)
  %224 = bitcast %struct.TYPE_7__* %10 to i8*
  %225 = bitcast %struct.TYPE_7__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %224, i8* align 4 %225, i64 8, i1 false)
  %226 = load i32, i32* %13, align 4
  %227 = icmp ne i32 %226, 1
  br i1 %227, label %228, label %230

228:                                              ; preds = %192
  %229 = load i32, i32* %13, align 4
  store i32 %229, i32* %11, align 4
  br label %235

230:                                              ; preds = %192
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* %4, align 4
  %233 = call i32 @_ccv_sparse_matrix_index_for_hash(i32 %231, i32 %232)
  %234 = sub nsw i32 %233, 1
  store i32 %234, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %235

235:                                              ; preds = %230, %228
  br label %236

236:                                              ; preds = %235, %191
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %11, align 4
  br label %151

241:                                              ; preds = %168, %151
  %242 = load i32, i32* %11, align 4
  %243 = icmp slt i32 %242, 255
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  br label %364

245:                                              ; preds = %241
  br label %246

246:                                              ; preds = %357, %245
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* %5, align 4
  %249 = icmp sge i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  store i32 0, i32* %12, align 4
  br label %251

251:                                              ; preds = %250, %246
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %16, align 4
  %258 = load i32, i32* %16, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %285, label %260

260:                                              ; preds = %251
  %261 = load i32, i32* %11, align 4
  %262 = icmp sgt i32 %261, 255
  br i1 %262, label %263, label %264

263:                                              ; preds = %260
  br label %266

264:                                              ; preds = %260
  %265 = load i32, i32* %11, align 4
  br label %266

266:                                              ; preds = %264, %263
  %267 = phi i32 [ 255, %263 ], [ %265, %264 ]
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  store i32 %267, i32* %272, align 4
  %273 = load i32, i32* %9, align 4
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %275 = load i32, i32* %12, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  store i32 %273, i32* %278, align 4
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i64 %281
  %283 = bitcast %struct.TYPE_7__* %282 to i8*
  %284 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %283, i8* align 4 %284, i64 8, i1 false)
  br label %362

285:                                              ; preds = %251
  %286 = load i32, i32* %16, align 4
  %287 = icmp eq i32 %286, 255
  br i1 %287, label %288, label %302

288:                                              ; preds = %285
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %290 = load i32, i32* %12, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %5, align 4
  %296 = add nsw i32 %294, %295
  %297 = load i32, i32* %12, align 4
  %298 = sub nsw i32 %296, %297
  %299 = load i32, i32* %4, align 4
  %300 = call i32 @_ccv_sparse_matrix_index_for_hash(i32 %298, i32 %299)
  %301 = add nsw i32 %300, 2
  store i32 %301, i32* %16, align 4
  br label %302

302:                                              ; preds = %288, %285
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* %16, align 4
  %305 = icmp sle i32 %303, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %302
  br label %357

307:                                              ; preds = %302
  %308 = load i32, i32* %11, align 4
  %309 = icmp sgt i32 %308, 255
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  br label %313

311:                                              ; preds = %307
  %312 = load i32, i32* %11, align 4
  br label %313

313:                                              ; preds = %311, %310
  %314 = phi i32 [ 255, %310 ], [ %312, %311 ]
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %316 = load i32, i32* %12, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 0
  store i32 %314, i32* %319, align 4
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %321 = load i32, i32* %12, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %17, align 4
  %326 = load i32, i32* %9, align 4
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %328 = load i32, i32* %12, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 1
  store i32 %326, i32* %331, align 4
  %332 = load i32, i32* %17, align 4
  store i32 %332, i32* %9, align 4
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %334 = load i32, i32* %12, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i64 %335
  %337 = bitcast %struct.TYPE_7__* %18 to i8*
  %338 = bitcast %struct.TYPE_7__* %336 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %337, i8* align 4 %338, i64 8, i1 false)
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %340 = load i32, i32* %12, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i64 %341
  %343 = bitcast %struct.TYPE_7__* %342 to i8*
  %344 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %343, i8* align 4 %344, i64 8, i1 false)
  %345 = bitcast %struct.TYPE_7__* %10 to i8*
  %346 = bitcast %struct.TYPE_7__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %345, i8* align 4 %346, i64 8, i1 false)
  %347 = load i32, i32* %16, align 4
  %348 = icmp ne i32 %347, 1
  br i1 %348, label %349, label %351

349:                                              ; preds = %313
  %350 = load i32, i32* %16, align 4
  store i32 %350, i32* %11, align 4
  br label %356

351:                                              ; preds = %313
  %352 = load i32, i32* %9, align 4
  %353 = load i32, i32* %4, align 4
  %354 = call i32 @_ccv_sparse_matrix_index_for_hash(i32 %352, i32 %353)
  %355 = sub nsw i32 %354, 1
  store i32 %355, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %356

356:                                              ; preds = %351, %349
  br label %357

357:                                              ; preds = %356, %306
  %358 = load i32, i32* %12, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %12, align 4
  %360 = load i32, i32* %11, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %11, align 4
  br label %246

362:                                              ; preds = %266
  br label %363

363:                                              ; preds = %362, %122
  br label %364

364:                                              ; preds = %363, %244
  %365 = load i32, i32* %8, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %8, align 4
  br label %118

367:                                              ; preds = %118
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_ccv_sparse_matrix_index_next_size_over(i32) #1

declare dso_local i32 @_ccv_sparse_matrix_size_for_index(i32) #1

declare dso_local i64 @ccrealloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_ccv_sparse_matrix_index_for_hash(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
