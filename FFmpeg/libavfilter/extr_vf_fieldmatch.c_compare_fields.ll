; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fieldmatch.c_compare_fields.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fieldmatch.c_compare_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32**, i32*, i32, i32, i32, i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i32)* @compare_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_fields(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca %struct.TYPE_12__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_12__*, align 8
  %31 = alloca %struct.TYPE_12__*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32*, align 8
  %48 = alloca i32*, align 8
  %49 = alloca i32*, align 8
  %50 = alloca i32*, align 8
  %51 = alloca i32*, align 8
  %52 = alloca i32*, align 8
  %53 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 7
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %24, align 8
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %550, %4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 3, i32 1
  %65 = icmp slt i32 %58, %64
  br i1 %65, label %66, label %553

66:                                               ; preds = %57
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %32, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %33, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %34, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %35, align 4
  %95 = load i32, i32* %35, align 4
  %96 = shl i32 %95, 1
  store i32 %96, i32* %36, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @get_width(%struct.TYPE_11__* %97, %struct.TYPE_12__* %98, i32 %99)
  store i32 %100, i32* %41, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @get_height(%struct.TYPE_11__* %101, %struct.TYPE_12__* %102, i32 %103)
  store i32 %104, i32* %42, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %66
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  br label %115

114:                                              ; preds = %66
  br label %115

115:                                              ; preds = %114, %110
  %116 = phi i32 [ %113, %110 ], [ 0, %114 ]
  %117 = ashr i32 %107, %116
  store i32 %117, i32* %43, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  br label %128

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127, %123
  %129 = phi i32 [ %126, %123 ], [ 0, %127 ]
  %130 = ashr i32 %120, %129
  store i32 %130, i32* %44, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %139

134:                                              ; preds = %128
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 8, %137
  br label %139

139:                                              ; preds = %134, %133
  %140 = phi i32 [ 8, %133 ], [ %138, %134 ]
  store i32 %140, i32* %45, align 4
  %141 = load i32, i32* %41, align 4
  %142 = load i32, i32* %45, align 4
  %143 = sub nsw i32 %141, %142
  store i32 %143, i32* %46, align 4
  %144 = load i32*, i32** %32, align 8
  %145 = load i32, i32* %41, align 4
  %146 = load i32, i32* %42, align 4
  %147 = load i32, i32* %33, align 4
  %148 = call i32 @fill_buf(i32* %144, i32 %145, i32 %146, i32 %147, i32 0)
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @get_field_base(i32 %149, i32 %150)
  store i32 %151, i32* %29, align 4
  %152 = load i32*, i32** %34, align 8
  %153 = load i32, i32* %29, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* %35, align 4
  %156 = mul nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  store i32* %158, i32** %48, align 8
  %159 = load i32*, i32** %48, align 8
  %160 = load i32, i32* %36, align 4
  %161 = sext i32 %160 to i64
  %162 = sub i64 0, %161
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  store i32* %163, i32** %47, align 8
  %164 = load i32*, i32** %48, align 8
  %165 = load i32, i32* %36, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32* %167, i32** %49, align 8
  %168 = load i32*, i32** %32, align 8
  %169 = load i32, i32* %29, align 4
  %170 = load i32, i32* %33, align 4
  %171 = mul nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  store i32* %173, i32** %32, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %175 = load i32, i32* %6, align 4
  %176 = call %struct.TYPE_12__* @select_frame(%struct.TYPE_11__* %174, i32 %175)
  store %struct.TYPE_12__* %176, %struct.TYPE_12__** %30, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %37, align 4
  %184 = load i32, i32* %37, align 4
  %185 = shl i32 %184, 1
  store i32 %185, i32* %39, align 4
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load i32**, i32*** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %29, align 4
  %194 = load i32, i32* %37, align 4
  %195 = mul nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  store i32* %197, i32** %50, align 8
  %198 = load i32*, i32** %50, align 8
  %199 = load i32, i32* %39, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32* %201, i32** %51, align 8
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @get_field_base(i32 %202, i32 %203)
  store i32 %204, i32* %29, align 4
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %206 = load i32, i32* %7, align 4
  %207 = call %struct.TYPE_12__* @select_frame(%struct.TYPE_11__* %205, i32 %206)
  store %struct.TYPE_12__* %207, %struct.TYPE_12__** %31, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %38, align 4
  %215 = load i32, i32* %38, align 4
  %216 = shl i32 %215, 1
  store i32 %216, i32* %40, align 4
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32**, i32*** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %29, align 4
  %225 = load i32, i32* %38, align 4
  %226 = mul nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  store i32* %228, i32** %52, align 8
  %229 = load i32*, i32** %52, align 8
  %230 = load i32, i32* %40, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32* %232, i32** %53, align 8
  %233 = load i32, i32* %33, align 4
  %234 = shl i32 %233, 1
  store i32 %234, i32* %33, align 4
  %235 = load i32, i32* %6, align 4
  %236 = icmp sge i32 %235, 3
  br i1 %236, label %237, label %240

237:                                              ; preds = %139
  %238 = load i32, i32* %8, align 4
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %246, label %240

240:                                              ; preds = %237, %139
  %241 = load i32, i32* %6, align 4
  %242 = icmp slt i32 %241, 3
  br i1 %242, label %243, label %258

243:                                              ; preds = %240
  %244 = load i32, i32* %8, align 4
  %245 = icmp ne i32 %244, 1
  br i1 %245, label %246, label %258

246:                                              ; preds = %243, %237
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %248 = load i32*, i32** %50, align 8
  %249 = load i32, i32* %39, align 4
  %250 = load i32*, i32** %52, align 8
  %251 = load i32, i32* %40, align 4
  %252 = load i32*, i32** %32, align 8
  %253 = load i32, i32* %33, align 4
  %254 = load i32, i32* %42, align 4
  %255 = load i32, i32* %41, align 4
  %256 = load i32, i32* %9, align 4
  %257 = call i32 @build_diff_map(%struct.TYPE_11__* %247, i32* %248, i32 %249, i32* %250, i32 %251, i32* %252, i32 %253, i32 %254, i32 %255, i32 %256)
  br label %273

258:                                              ; preds = %243, %240
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %260 = load i32*, i32** %51, align 8
  %261 = load i32, i32* %39, align 4
  %262 = load i32*, i32** %53, align 8
  %263 = load i32, i32* %40, align 4
  %264 = load i32*, i32** %32, align 8
  %265 = load i32, i32* %33, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %33, align 4
  %269 = load i32, i32* %42, align 4
  %270 = load i32, i32* %41, align 4
  %271 = load i32, i32* %9, align 4
  %272 = call i32 @build_diff_map(%struct.TYPE_11__* %259, i32* %260, i32 %261, i32* %262, i32 %263, i32* %267, i32 %268, i32 %269, i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %258, %246
  store i32 2, i32* %26, align 4
  br label %274

274:                                              ; preds = %546, %273
  %275 = load i32, i32* %26, align 4
  %276 = load i32, i32* %42, align 4
  %277 = sub nsw i32 %276, 2
  %278 = icmp slt i32 %275, %277
  br i1 %278, label %279, label %549

279:                                              ; preds = %274
  %280 = load i32, i32* %43, align 4
  %281 = load i32, i32* %44, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %291, label %283

283:                                              ; preds = %279
  %284 = load i32, i32* %26, align 4
  %285 = load i32, i32* %43, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %291, label %287

287:                                              ; preds = %283
  %288 = load i32, i32* %26, align 4
  %289 = load i32, i32* %44, align 4
  %290 = icmp sgt i32 %288, %289
  br i1 %290, label %291, label %513

291:                                              ; preds = %287, %283, %279
  %292 = load i32, i32* %45, align 4
  store i32 %292, i32* %25, align 4
  br label %293

293:                                              ; preds = %509, %291
  %294 = load i32, i32* %25, align 4
  %295 = load i32, i32* %46, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %512

297:                                              ; preds = %293
  %298 = load i32*, i32** %32, align 8
  %299 = load i32, i32* %25, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %313, label %304

304:                                              ; preds = %297
  %305 = load i32*, i32** %32, align 8
  %306 = load i32, i32* %25, align 4
  %307 = load i32, i32* %33, align 4
  %308 = add nsw i32 %306, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %305, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %508

313:                                              ; preds = %304, %297
  %314 = load i32*, i32** %47, align 8
  %315 = load i32, i32* %25, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** %48, align 8
  %320 = load i32, i32* %25, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = shl i32 %323, 2
  %325 = add nsw i32 %318, %324
  %326 = load i32*, i32** %49, align 8
  %327 = load i32, i32* %25, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = add nsw i32 %325, %330
  store i32 %331, i32* %27, align 4
  %332 = load i32*, i32** %50, align 8
  %333 = load i32, i32* %25, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load i32*, i32** %51, align 8
  %338 = load i32, i32* %25, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %336, %341
  %343 = mul nsw i32 3, %342
  %344 = load i32, i32* %27, align 4
  %345 = sub nsw i32 %343, %344
  %346 = call i32 @abs(i32 %345) #3
  store i32 %346, i32* %28, align 4
  %347 = load i32, i32* %28, align 4
  %348 = icmp sgt i32 %347, 23
  br i1 %348, label %349, label %371

349:                                              ; preds = %313
  %350 = load i32*, i32** %32, align 8
  %351 = load i32, i32* %25, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = and i32 %354, 1
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %367, label %357

357:                                              ; preds = %349
  %358 = load i32*, i32** %32, align 8
  %359 = load i32, i32* %25, align 4
  %360 = load i32, i32* %33, align 4
  %361 = add nsw i32 %359, %360
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %358, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = and i32 %364, 1
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %357, %349
  %368 = load i32, i32* %28, align 4
  %369 = load i32, i32* %11, align 4
  %370 = add nsw i32 %369, %368
  store i32 %370, i32* %11, align 4
  br label %371

371:                                              ; preds = %367, %357, %313
  %372 = load i32, i32* %28, align 4
  %373 = icmp sgt i32 %372, 42
  br i1 %373, label %374, label %419

374:                                              ; preds = %371
  %375 = load i32*, i32** %32, align 8
  %376 = load i32, i32* %25, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = and i32 %379, 2
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %392, label %382

382:                                              ; preds = %374
  %383 = load i32*, i32** %32, align 8
  %384 = load i32, i32* %25, align 4
  %385 = load i32, i32* %33, align 4
  %386 = add nsw i32 %384, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %383, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = and i32 %389, 2
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %382, %374
  %393 = load i32, i32* %28, align 4
  %394 = load i32, i32* %12, align 4
  %395 = add nsw i32 %394, %393
  store i32 %395, i32* %12, align 4
  br label %396

396:                                              ; preds = %392, %382
  %397 = load i32*, i32** %32, align 8
  %398 = load i32, i32* %25, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = and i32 %401, 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %414, label %404

404:                                              ; preds = %396
  %405 = load i32*, i32** %32, align 8
  %406 = load i32, i32* %25, align 4
  %407 = load i32, i32* %33, align 4
  %408 = add nsw i32 %406, %407
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %405, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = and i32 %411, 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %404, %396
  %415 = load i32, i32* %28, align 4
  %416 = load i32, i32* %13, align 4
  %417 = add nsw i32 %416, %415
  store i32 %417, i32* %13, align 4
  br label %418

418:                                              ; preds = %414, %404
  br label %419

419:                                              ; preds = %418, %371
  %420 = load i32*, i32** %52, align 8
  %421 = load i32, i32* %25, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = load i32*, i32** %53, align 8
  %426 = load i32, i32* %25, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %424, %429
  %431 = mul nsw i32 3, %430
  %432 = load i32, i32* %27, align 4
  %433 = sub nsw i32 %431, %432
  %434 = call i32 @abs(i32 %433) #3
  store i32 %434, i32* %28, align 4
  %435 = load i32, i32* %28, align 4
  %436 = icmp sgt i32 %435, 23
  br i1 %436, label %437, label %459

437:                                              ; preds = %419
  %438 = load i32*, i32** %32, align 8
  %439 = load i32, i32* %25, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = and i32 %442, 1
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %455, label %445

445:                                              ; preds = %437
  %446 = load i32*, i32** %32, align 8
  %447 = load i32, i32* %25, align 4
  %448 = load i32, i32* %33, align 4
  %449 = add nsw i32 %447, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %446, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = and i32 %452, 1
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %445, %437
  %456 = load i32, i32* %28, align 4
  %457 = load i32, i32* %14, align 4
  %458 = add nsw i32 %457, %456
  store i32 %458, i32* %14, align 4
  br label %459

459:                                              ; preds = %455, %445, %419
  %460 = load i32, i32* %28, align 4
  %461 = icmp sgt i32 %460, 42
  br i1 %461, label %462, label %507

462:                                              ; preds = %459
  %463 = load i32*, i32** %32, align 8
  %464 = load i32, i32* %25, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = and i32 %467, 2
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %480, label %470

470:                                              ; preds = %462
  %471 = load i32*, i32** %32, align 8
  %472 = load i32, i32* %25, align 4
  %473 = load i32, i32* %33, align 4
  %474 = add nsw i32 %472, %473
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, i32* %471, i64 %475
  %477 = load i32, i32* %476, align 4
  %478 = and i32 %477, 2
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %484

480:                                              ; preds = %470, %462
  %481 = load i32, i32* %28, align 4
  %482 = load i32, i32* %15, align 4
  %483 = add nsw i32 %482, %481
  store i32 %483, i32* %15, align 4
  br label %484

484:                                              ; preds = %480, %470
  %485 = load i32*, i32** %32, align 8
  %486 = load i32, i32* %25, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %485, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = and i32 %489, 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %502, label %492

492:                                              ; preds = %484
  %493 = load i32*, i32** %32, align 8
  %494 = load i32, i32* %25, align 4
  %495 = load i32, i32* %33, align 4
  %496 = add nsw i32 %494, %495
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %493, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = and i32 %499, 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %506

502:                                              ; preds = %492, %484
  %503 = load i32, i32* %28, align 4
  %504 = load i32, i32* %16, align 4
  %505 = add nsw i32 %504, %503
  store i32 %505, i32* %16, align 4
  br label %506

506:                                              ; preds = %502, %492
  br label %507

507:                                              ; preds = %506, %459
  br label %508

508:                                              ; preds = %507, %304
  br label %509

509:                                              ; preds = %508
  %510 = load i32, i32* %25, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %25, align 4
  br label %293

512:                                              ; preds = %293
  br label %513

513:                                              ; preds = %512, %287
  %514 = load i32, i32* %39, align 4
  %515 = load i32*, i32** %50, align 8
  %516 = sext i32 %514 to i64
  %517 = getelementptr inbounds i32, i32* %515, i64 %516
  store i32* %517, i32** %50, align 8
  %518 = load i32, i32* %39, align 4
  %519 = load i32*, i32** %51, align 8
  %520 = sext i32 %518 to i64
  %521 = getelementptr inbounds i32, i32* %519, i64 %520
  store i32* %521, i32** %51, align 8
  %522 = load i32, i32* %36, align 4
  %523 = load i32*, i32** %47, align 8
  %524 = sext i32 %522 to i64
  %525 = getelementptr inbounds i32, i32* %523, i64 %524
  store i32* %525, i32** %47, align 8
  %526 = load i32, i32* %36, align 4
  %527 = load i32*, i32** %48, align 8
  %528 = sext i32 %526 to i64
  %529 = getelementptr inbounds i32, i32* %527, i64 %528
  store i32* %529, i32** %48, align 8
  %530 = load i32, i32* %36, align 4
  %531 = load i32*, i32** %49, align 8
  %532 = sext i32 %530 to i64
  %533 = getelementptr inbounds i32, i32* %531, i64 %532
  store i32* %533, i32** %49, align 8
  %534 = load i32, i32* %40, align 4
  %535 = load i32*, i32** %52, align 8
  %536 = sext i32 %534 to i64
  %537 = getelementptr inbounds i32, i32* %535, i64 %536
  store i32* %537, i32** %52, align 8
  %538 = load i32, i32* %40, align 4
  %539 = load i32*, i32** %53, align 8
  %540 = sext i32 %538 to i64
  %541 = getelementptr inbounds i32, i32* %539, i64 %540
  store i32* %541, i32** %53, align 8
  %542 = load i32, i32* %33, align 4
  %543 = load i32*, i32** %32, align 8
  %544 = sext i32 %542 to i64
  %545 = getelementptr inbounds i32, i32* %543, i64 %544
  store i32* %545, i32** %32, align 8
  br label %546

546:                                              ; preds = %513
  %547 = load i32, i32* %26, align 4
  %548 = add nsw i32 %547, 2
  store i32 %548, i32* %26, align 4
  br label %274

549:                                              ; preds = %274
  br label %550

550:                                              ; preds = %549
  %551 = load i32, i32* %9, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %9, align 4
  br label %57

553:                                              ; preds = %57
  %554 = load i32, i32* %12, align 4
  %555 = icmp slt i32 %554, 500
  br i1 %555, label %556, label %577

556:                                              ; preds = %553
  %557 = load i32, i32* %15, align 4
  %558 = icmp slt i32 %557, 500
  br i1 %558, label %559, label %577

559:                                              ; preds = %556
  %560 = load i32, i32* %13, align 4
  %561 = icmp sge i32 %560, 500
  br i1 %561, label %565, label %562

562:                                              ; preds = %559
  %563 = load i32, i32* %16, align 4
  %564 = icmp sge i32 %563, 500
  br i1 %564, label %565, label %577

565:                                              ; preds = %562, %559
  %566 = load i32, i32* %13, align 4
  %567 = load i32, i32* %16, align 4
  %568 = call i32 @FFMAX(i32 %566, i32 %567)
  %569 = load i32, i32* %13, align 4
  %570 = load i32, i32* %16, align 4
  %571 = call i32 @FFMIN(i32 %569, i32 %570)
  %572 = mul nsw i32 3, %571
  %573 = icmp sgt i32 %568, %572
  br i1 %573, label %574, label %577

574:                                              ; preds = %565
  %575 = load i32, i32* %13, align 4
  store i32 %575, i32* %12, align 4
  %576 = load i32, i32* %16, align 4
  store i32 %576, i32* %15, align 4
  br label %577

577:                                              ; preds = %574, %565, %562, %556, %553
  %578 = load i32, i32* %11, align 4
  %579 = sitofp i32 %578 to float
  %580 = fdiv float %579, 6.000000e+00
  %581 = fadd float %580, 5.000000e-01
  %582 = fptosi float %581 to i32
  store i32 %582, i32* %17, align 4
  %583 = load i32, i32* %14, align 4
  %584 = sitofp i32 %583 to float
  %585 = fdiv float %584, 6.000000e+00
  %586 = fadd float %585, 5.000000e-01
  %587 = fptosi float %586 to i32
  store i32 %587, i32* %18, align 4
  %588 = load i32, i32* %12, align 4
  %589 = sitofp i32 %588 to float
  %590 = fdiv float %589, 6.000000e+00
  %591 = fadd float %590, 5.000000e-01
  %592 = fptosi float %591 to i32
  store i32 %592, i32* %19, align 4
  %593 = load i32, i32* %15, align 4
  %594 = sitofp i32 %593 to float
  %595 = fdiv float %594, 6.000000e+00
  %596 = fadd float %595, 5.000000e-01
  %597 = fptosi float %596 to i32
  store i32 %597, i32* %20, align 4
  %598 = load i32, i32* %17, align 4
  %599 = load i32, i32* %18, align 4
  %600 = call i32 @FFMAX(i32 %598, i32 %599)
  %601 = sitofp i32 %600 to float
  %602 = load i32, i32* %17, align 4
  %603 = load i32, i32* %18, align 4
  %604 = call i32 @FFMIN(i32 %602, i32 %603)
  %605 = call i32 @FFMAX(i32 %604, i32 1)
  %606 = sitofp i32 %605 to float
  %607 = fdiv float %601, %606
  store float %607, float* %21, align 4
  %608 = load i32, i32* %19, align 4
  %609 = load i32, i32* %20, align 4
  %610 = call i32 @FFMAX(i32 %608, i32 %609)
  %611 = sitofp i32 %610 to float
  %612 = load i32, i32* %19, align 4
  %613 = load i32, i32* %20, align 4
  %614 = call i32 @FFMIN(i32 %612, i32 %613)
  %615 = call i32 @FFMAX(i32 %614, i32 1)
  %616 = sitofp i32 %615 to float
  %617 = fdiv float %611, %616
  store float %617, float* %22, align 4
  %618 = load i32, i32* %19, align 4
  %619 = load i32, i32* %20, align 4
  %620 = call i32 @FFMAX(i32 %618, i32 %619)
  %621 = sitofp i32 %620 to float
  %622 = load i32, i32* %17, align 4
  %623 = load i32, i32* %18, align 4
  %624 = call i32 @FFMAX(i32 %622, i32 %623)
  %625 = call i32 @FFMAX(i32 %624, i32 1)
  %626 = sitofp i32 %625 to float
  %627 = fdiv float %621, %626
  store float %627, float* %23, align 4
  %628 = load i32, i32* %19, align 4
  %629 = icmp sge i32 %628, 500
  br i1 %629, label %633, label %630

630:                                              ; preds = %577
  %631 = load i32, i32* %20, align 4
  %632 = icmp sge i32 %631, 500
  br i1 %632, label %633, label %645

633:                                              ; preds = %630, %577
  %634 = load i32, i32* %19, align 4
  %635 = mul nsw i32 %634, 2
  %636 = load i32, i32* %20, align 4
  %637 = mul nsw i32 %636, 1
  %638 = icmp slt i32 %635, %637
  br i1 %638, label %691, label %639

639:                                              ; preds = %633
  %640 = load i32, i32* %20, align 4
  %641 = mul nsw i32 %640, 2
  %642 = load i32, i32* %19, align 4
  %643 = mul nsw i32 %642, 1
  %644 = icmp slt i32 %641, %643
  br i1 %644, label %691, label %645

645:                                              ; preds = %639, %630
  %646 = load i32, i32* %19, align 4
  %647 = icmp sge i32 %646, 1000
  br i1 %647, label %651, label %648

648:                                              ; preds = %645
  %649 = load i32, i32* %20, align 4
  %650 = icmp sge i32 %649, 1000
  br i1 %650, label %651, label %663

651:                                              ; preds = %648, %645
  %652 = load i32, i32* %19, align 4
  %653 = mul nsw i32 %652, 3
  %654 = load i32, i32* %20, align 4
  %655 = mul nsw i32 %654, 2
  %656 = icmp slt i32 %653, %655
  br i1 %656, label %691, label %657

657:                                              ; preds = %651
  %658 = load i32, i32* %20, align 4
  %659 = mul nsw i32 %658, 3
  %660 = load i32, i32* %19, align 4
  %661 = mul nsw i32 %660, 2
  %662 = icmp slt i32 %659, %661
  br i1 %662, label %691, label %663

663:                                              ; preds = %657, %648
  %664 = load i32, i32* %19, align 4
  %665 = icmp sge i32 %664, 2000
  br i1 %665, label %669, label %666

666:                                              ; preds = %663
  %667 = load i32, i32* %20, align 4
  %668 = icmp sge i32 %667, 2000
  br i1 %668, label %669, label %681

669:                                              ; preds = %666, %663
  %670 = load i32, i32* %19, align 4
  %671 = mul nsw i32 %670, 5
  %672 = load i32, i32* %20, align 4
  %673 = mul nsw i32 %672, 4
  %674 = icmp slt i32 %671, %673
  br i1 %674, label %691, label %675

675:                                              ; preds = %669
  %676 = load i32, i32* %20, align 4
  %677 = mul nsw i32 %676, 5
  %678 = load i32, i32* %19, align 4
  %679 = mul nsw i32 %678, 4
  %680 = icmp slt i32 %677, %679
  br i1 %680, label %691, label %681

681:                                              ; preds = %675, %666
  %682 = load i32, i32* %19, align 4
  %683 = icmp sge i32 %682, 4000
  br i1 %683, label %687, label %684

684:                                              ; preds = %681
  %685 = load i32, i32* %20, align 4
  %686 = icmp sge i32 %685, 4000
  br i1 %686, label %687, label %701

687:                                              ; preds = %684, %681
  %688 = load float, float* %22, align 4
  %689 = load float, float* %21, align 4
  %690 = fcmp ogt float %688, %689
  br i1 %690, label %691, label %701

691:                                              ; preds = %687, %675, %669, %657, %651, %639, %633
  %692 = load i32, i32* %19, align 4
  %693 = load i32, i32* %20, align 4
  %694 = icmp sgt i32 %692, %693
  br i1 %694, label %695, label %697

695:                                              ; preds = %691
  %696 = load i32, i32* %7, align 4
  br label %699

697:                                              ; preds = %691
  %698 = load i32, i32* %6, align 4
  br label %699

699:                                              ; preds = %697, %695
  %700 = phi i32 [ %696, %695 ], [ %698, %697 ]
  store i32 %700, i32* %10, align 4
  br label %743

701:                                              ; preds = %687, %684
  %702 = load float, float* %23, align 4
  %703 = fpext float %702 to double
  %704 = fcmp ogt double %703, 5.000000e-03
  br i1 %704, label %705, label %732

705:                                              ; preds = %701
  %706 = load i32, i32* %19, align 4
  %707 = load i32, i32* %20, align 4
  %708 = call i32 @FFMAX(i32 %706, i32 %707)
  %709 = icmp sgt i32 %708, 150
  br i1 %709, label %710, label %732

710:                                              ; preds = %705
  %711 = load i32, i32* %19, align 4
  %712 = mul nsw i32 %711, 2
  %713 = load i32, i32* %20, align 4
  %714 = mul nsw i32 %713, 1
  %715 = icmp slt i32 %712, %714
  br i1 %715, label %722, label %716

716:                                              ; preds = %710
  %717 = load i32, i32* %20, align 4
  %718 = mul nsw i32 %717, 2
  %719 = load i32, i32* %19, align 4
  %720 = mul nsw i32 %719, 1
  %721 = icmp slt i32 %718, %720
  br i1 %721, label %722, label %732

722:                                              ; preds = %716, %710
  %723 = load i32, i32* %19, align 4
  %724 = load i32, i32* %20, align 4
  %725 = icmp sgt i32 %723, %724
  br i1 %725, label %726, label %728

726:                                              ; preds = %722
  %727 = load i32, i32* %7, align 4
  br label %730

728:                                              ; preds = %722
  %729 = load i32, i32* %6, align 4
  br label %730

730:                                              ; preds = %728, %726
  %731 = phi i32 [ %727, %726 ], [ %729, %728 ]
  store i32 %731, i32* %10, align 4
  br label %742

732:                                              ; preds = %716, %705, %701
  %733 = load i32, i32* %17, align 4
  %734 = load i32, i32* %18, align 4
  %735 = icmp sgt i32 %733, %734
  br i1 %735, label %736, label %738

736:                                              ; preds = %732
  %737 = load i32, i32* %7, align 4
  br label %740

738:                                              ; preds = %732
  %739 = load i32, i32* %6, align 4
  br label %740

740:                                              ; preds = %738, %736
  %741 = phi i32 [ %737, %736 ], [ %739, %738 ]
  store i32 %741, i32* %10, align 4
  br label %742

742:                                              ; preds = %740, %730
  br label %743

743:                                              ; preds = %742, %699
  %744 = load i32, i32* %10, align 4
  ret i32 %744
}

declare dso_local i32 @get_width(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @get_height(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @fill_buf(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @get_field_base(i32, i32) #1

declare dso_local %struct.TYPE_12__* @select_frame(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @build_diff_map(%struct.TYPE_11__*, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
