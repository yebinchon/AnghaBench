; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_bucket_lookup.c_bucket_lookup.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_bucket_lookup.c_bucket_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32*, i32* }
%struct.time_conv = type { i32 }
%struct.timeval = type { i32 }

@TME_ERROR = common dso_local global i32 0, align 4
@TME_FALSE = common dso_local global i32 0, align 4
@TME_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bucket_lookup(i32* %0, %struct.TYPE_3__* %1, i32* %2, %struct.time_conv* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.time_conv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.time_conv* %3, %struct.time_conv** %9, align 8
  store i32 -1, i32* %13, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @TME_ERROR, align 4
  store i32 %31, i32* %5, align 4
  br label %357

32:                                               ; preds = %25, %4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %14, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %14, align 4
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32* %48, i32** %16, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %204

53:                                               ; preds = %32
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @SW_ULONG_AT(i32* %54, i32 0)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @SW_ULONG_AT(i32* %57, i32 0)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %71, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sub nsw i32 %64, 1
  %66 = mul nsw i32 %63, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = call i32 @SW_ULONG_AT(i32* %68, i32 4)
  %70 = icmp sgt i32 %61, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %60, %53
  %72 = load i32*, i32** %6, align 8
  store i32* %72, i32** %17, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 0, i32* %74, align 4
  %75 = load i32*, i32** %17, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 0, i32* %76, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  %81 = bitcast i32* %80 to %struct.timeval*
  %82 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %83 = call i32 @GET_TIME(%struct.timeval* %81, %struct.time_conv* %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* @TME_FALSE, align 4
  store i32 %86, i32* %5, align 4
  br label %357

87:                                               ; preds = %60
  br label %88

88:                                               ; preds = %155, %87
  %89 = load i32, i32* %13, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %156

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %98

95:                                               ; preds = %91
  %96 = load i32, i32* %11, align 4
  %97 = ashr i32 %96, 1
  br label %98

98:                                               ; preds = %95, %94
  %99 = phi i32 [ 1, %94 ], [ %97, %95 ]
  store i32 %99, i32* %11, align 4
  %100 = load i32*, i32** %16, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %12, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = call i32 @SW_ULONG_AT(i32* %105, i32 0)
  %107 = load i32, i32* %10, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %98
  %110 = load i32*, i32** %16, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %112, 1
  %114 = mul nsw i32 %111, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %110, i64 %115
  %117 = call i32 @SW_ULONG_AT(i32* %116, i32 4)
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  store i32 -2, i32* %13, align 4
  br label %125

121:                                              ; preds = %109
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %12, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %121, %120
  br label %155

126:                                              ; preds = %98
  %127 = load i32*, i32** %16, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %12, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = call i32 @SW_ULONG_AT(i32* %132, i32 4)
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %126
  %137 = load i32*, i32** %16, align 8
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %12, align 4
  %140 = mul nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  %143 = call i32 @SW_ULONG_AT(i32* %142, i32 0)
  %144 = load i32, i32* %10, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  store i32 -2, i32* %13, align 4
  br label %151

147:                                              ; preds = %136
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %147, %146
  br label %154

152:                                              ; preds = %126
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %152, %151
  br label %155

155:                                              ; preds = %154, %125
  br label %88

156:                                              ; preds = %88
  %157 = load i32, i32* %13, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %156
  %160 = load i32*, i32** %6, align 8
  store i32* %160, i32** %18, align 8
  %161 = load i32*, i32** %18, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 0, i32* %162, align 4
  %163 = load i32*, i32** %18, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 0, i32* %164, align 4
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 5
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 8
  %169 = bitcast i32* %168 to %struct.timeval*
  %170 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %171 = call i32 @GET_TIME(%struct.timeval* %169, %struct.time_conv* %170)
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 4
  store i32* null, i32** %173, align 8
  %174 = load i32, i32* @TME_FALSE, align 4
  store i32 %174, i32* %5, align 4
  br label %357

175:                                              ; preds = %156
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 4
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 4
  store i32* %182, i32** %184, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = load i32*, i32** %16, align 8
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %13, align 4
  %189 = mul nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  %192 = call i32 @COPY_MEMORY(i32* %185, i32* %191, i32 8)
  %193 = load i32*, i32** %16, align 8
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %13, align 4
  %196 = mul nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %193, i64 %197
  %199 = getelementptr inbounds i32, i32* %198, i64 8
  %200 = bitcast i32* %199 to %struct.timeval*
  %201 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %202 = call i32 @GET_TIME(%struct.timeval* %200, %struct.time_conv* %201)
  %203 = load i32, i32* @TME_TRUE, align 4
  store i32 %203, i32* %5, align 4
  br label %357

204:                                              ; preds = %32
  %205 = load i32*, i32** %6, align 8
  %206 = call i32 @SW_USHORT_AT(i32* %205, i32 0)
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load i32*, i32** %16, align 8
  %209 = call i32 @SW_USHORT_AT(i32* %208, i32 0)
  %210 = icmp slt i32 %207, %209
  br i1 %210, label %222, label %211

211:                                              ; preds = %204
  %212 = load i32, i32* %10, align 4
  %213 = load i32*, i32** %16, align 8
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* %14, align 4
  %216 = sub nsw i32 %215, 1
  %217 = mul nsw i32 %214, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %213, i64 %218
  %220 = call i32 @SW_USHORT_AT(i32* %219, i32 2)
  %221 = icmp sgt i32 %212, %220
  br i1 %221, label %222, label %239

222:                                              ; preds = %211, %204
  %223 = load i32*, i32** %6, align 8
  %224 = bitcast i32* %223 to i64*
  store i64* %224, i64** %19, align 8
  %225 = load i64*, i64** %19, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 1
  store i64 0, i64* %226, align 8
  %227 = load i64*, i64** %19, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 0
  store i64 0, i64* %228, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 5
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 4
  %233 = bitcast i32* %232 to %struct.timeval*
  %234 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %235 = call i32 @GET_TIME(%struct.timeval* %233, %struct.time_conv* %234)
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 4
  store i32* null, i32** %237, align 8
  %238 = load i32, i32* @TME_FALSE, align 4
  store i32 %238, i32* %5, align 4
  br label %357

239:                                              ; preds = %211
  br label %240

240:                                              ; preds = %307, %239
  %241 = load i32, i32* %13, align 4
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %243, label %308

243:                                              ; preds = %240
  %244 = load i32, i32* %11, align 4
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  br label %250

247:                                              ; preds = %243
  %248 = load i32, i32* %11, align 4
  %249 = ashr i32 %248, 1
  br label %250

250:                                              ; preds = %247, %246
  %251 = phi i32 [ 1, %246 ], [ %249, %247 ]
  store i32 %251, i32* %11, align 4
  %252 = load i32*, i32** %16, align 8
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* %12, align 4
  %255 = mul nsw i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %252, i64 %256
  %258 = call i32 @SW_USHORT_AT(i32* %257, i32 0)
  %259 = load i32, i32* %10, align 4
  %260 = icmp sgt i32 %258, %259
  br i1 %260, label %261, label %278

261:                                              ; preds = %250
  %262 = load i32*, i32** %16, align 8
  %263 = load i32, i32* %15, align 4
  %264 = load i32, i32* %12, align 4
  %265 = sub nsw i32 %264, 1
  %266 = mul nsw i32 %263, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %262, i64 %267
  %269 = call i32 @SW_USHORT_AT(i32* %268, i32 2)
  %270 = load i32, i32* %10, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %261
  store i32 -2, i32* %13, align 4
  br label %277

273:                                              ; preds = %261
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* %12, align 4
  %276 = sub nsw i32 %275, %274
  store i32 %276, i32* %12, align 4
  br label %277

277:                                              ; preds = %273, %272
  br label %307

278:                                              ; preds = %250
  %279 = load i32*, i32** %16, align 8
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* %12, align 4
  %282 = mul nsw i32 %280, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %279, i64 %283
  %285 = call i32 @SW_USHORT_AT(i32* %284, i32 2)
  %286 = load i32, i32* %10, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %304

288:                                              ; preds = %278
  %289 = load i32*, i32** %16, align 8
  %290 = load i32, i32* %15, align 4
  %291 = load i32, i32* %12, align 4
  %292 = mul nsw i32 %290, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %289, i64 %293
  %295 = call i32 @SW_USHORT_AT(i32* %294, i32 0)
  %296 = load i32, i32* %10, align 4
  %297 = icmp sgt i32 %295, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %288
  store i32 -2, i32* %13, align 4
  br label %303

299:                                              ; preds = %288
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* %12, align 4
  %302 = add nsw i32 %301, %300
  store i32 %302, i32* %12, align 4
  br label %303

303:                                              ; preds = %299, %298
  br label %306

304:                                              ; preds = %278
  %305 = load i32, i32* %12, align 4
  store i32 %305, i32* %13, align 4
  br label %306

306:                                              ; preds = %304, %303
  br label %307

307:                                              ; preds = %306, %277
  br label %240

308:                                              ; preds = %240
  %309 = load i32, i32* %13, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %328

311:                                              ; preds = %308
  %312 = load i32*, i32** %6, align 8
  %313 = bitcast i32* %312 to i64*
  store i64* %313, i64** %20, align 8
  %314 = load i64*, i64** %20, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 1
  store i64 0, i64* %315, align 8
  %316 = load i64*, i64** %20, align 8
  %317 = getelementptr inbounds i64, i64* %316, i64 0
  store i64 0, i64* %317, align 8
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 5
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 4
  %322 = bitcast i32* %321 to %struct.timeval*
  %323 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %324 = call i32 @GET_TIME(%struct.timeval* %322, %struct.time_conv* %323)
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 4
  store i32* null, i32** %326, align 8
  %327 = load i32, i32* @TME_FALSE, align 4
  store i32 %327, i32* %5, align 4
  br label %357

328:                                              ; preds = %308
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 3
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %13, align 4
  %333 = sext i32 %332 to i64
  %334 = mul i64 %333, 4
  %335 = getelementptr inbounds i32, i32* %331, i64 %334
  %336 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 4
  store i32* %335, i32** %337, align 8
  %338 = load i32*, i32** %16, align 8
  %339 = load i32, i32* %15, align 4
  %340 = load i32, i32* %13, align 4
  %341 = mul nsw i32 %339, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %338, i64 %342
  %344 = getelementptr inbounds i32, i32* %343, i64 4
  %345 = bitcast i32* %344 to %struct.timeval*
  %346 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %347 = call i32 @GET_TIME(%struct.timeval* %345, %struct.time_conv* %346)
  %348 = load i32*, i32** %6, align 8
  %349 = load i32*, i32** %16, align 8
  %350 = load i32, i32* %15, align 4
  %351 = load i32, i32* %13, align 4
  %352 = mul nsw i32 %350, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %349, i64 %353
  %355 = call i32 @COPY_MEMORY(i32* %348, i32* %354, i32 4)
  %356 = load i32, i32* @TME_TRUE, align 4
  store i32 %356, i32* %5, align 4
  br label %357

357:                                              ; preds = %328, %311, %222, %175, %159, %71, %30
  %358 = load i32, i32* %5, align 4
  ret i32 %358
}

declare dso_local i32 @SW_ULONG_AT(i32*, i32) #1

declare dso_local i32 @GET_TIME(%struct.timeval*, %struct.time_conv*) #1

declare dso_local i32 @COPY_MEMORY(i32*, i32*, i32) #1

declare dso_local i32 @SW_USHORT_AT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
