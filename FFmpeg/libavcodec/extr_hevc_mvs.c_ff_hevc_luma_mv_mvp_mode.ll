; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_mvs.c_ff_hevc_luma_mv_mvp_mode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_mvs.c_ff_hevc_luma_mv_mvp_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_16__*, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_21__* }
%struct.TYPE_23__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64, i32 }

@A0 = common dso_local global i32 0, align 4
@A1 = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4
@B1 = common dso_local global i32 0, align 4
@B2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_hevc_luma_mv_mvp_mode(%struct.TYPE_24__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.TYPE_21__* %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca %struct.TYPE_21__*, align 8
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
  %45 = alloca [2 x %struct.TYPE_22__], align 16
  %46 = alloca %struct.TYPE_22__, align 8
  %47 = alloca %struct.TYPE_22__, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca %struct.TYPE_22__, align 8
  %58 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store %struct.TYPE_21__* %8, %struct.TYPE_21__** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %60, align 8
  store %struct.TYPE_23__* %61, %struct.TYPE_23__** %23, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %65, align 8
  store %struct.TYPE_21__* %66, %struct.TYPE_21__** %24, align 8
  store i32 0, i32* %25, align 4
  store i32 1, i32* %26, align 4
  store i32 1, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %29, align 4
  %73 = bitcast [2 x %struct.TYPE_22__]* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %73, i8 0, i64 48, i1 false)
  store i32 0, i32* %49, align 4
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %52, align 4
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %53, align 4
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %54, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %55, align 4
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %56, align 4
  %94 = load i32, i32* %22, align 4
  store i32 %94, i32* %48, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %22, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %49, align 4
  %102 = load i32, i32* %22, align 4
  store i32 %102, i32* %50, align 4
  %103 = load i32, i32* %22, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %51, align 4
  %107 = load i32, i32* %13, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %30, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %31, align 4
  %112 = load i32, i32* %52, align 4
  %113 = load i32, i32* @A0, align 4
  %114 = call i32 @AVAILABLE(i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %11
  %117 = load i32, i32* %31, align 4
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %117, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load i32, i32* @A0, align 4
  %127 = call i64 @PRED_BLOCK_AVAILABLE(i32 %126)
  %128 = icmp ne i64 %127, 0
  br label %129

129:                                              ; preds = %125, %116, %11
  %130 = phi i1 [ false, %116 ], [ false, %11 ], [ %128, %125 ]
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %32, align 4
  %132 = load i32, i32* %13, align 4
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %33, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %134, %135
  %137 = sub nsw i32 %136, 1
  store i32 %137, i32* %34, align 4
  %138 = load i32, i32* %53, align 4
  %139 = load i32, i32* @A1, align 4
  %140 = call i32 @AVAILABLE(i32 %138, i32 %139)
  store i32 %140, i32* %35, align 4
  %141 = load i32, i32* %32, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %129
  %144 = load i32, i32* %35, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143, %129
  store i32 1, i32* %25, align 4
  br label %147

147:                                              ; preds = %146, %143
  %148 = load i32, i32* %32, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load i32, i32* @A0, align 4
  %152 = load i32, i32* %50, align 4
  %153 = call i64 @MP_MX(i32 %151, i32 %152, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %46)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %212

156:                                              ; preds = %150
  %157 = load i32, i32* @A0, align 4
  %158 = load i32, i32* %51, align 4
  %159 = call i64 @MP_MX(i32 %157, i32 %158, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %46)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %212

162:                                              ; preds = %156
  br label %163

163:                                              ; preds = %162, %147
  %164 = load i32, i32* %35, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %163
  %167 = load i32, i32* @A1, align 4
  %168 = load i32, i32* %50, align 4
  %169 = call i64 @MP_MX(i32 %167, i32 %168, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %46)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %212

172:                                              ; preds = %166
  %173 = load i32, i32* @A1, align 4
  %174 = load i32, i32* %51, align 4
  %175 = call i64 @MP_MX(i32 %173, i32 %174, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %46)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %212

178:                                              ; preds = %172
  br label %179

179:                                              ; preds = %178, %163
  %180 = load i32, i32* %32, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %179
  %183 = load i32, i32* @A0, align 4
  %184 = load i32, i32* %50, align 4
  %185 = call i32 @MP_MX_LT(i32 %183, i32 %184, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %46)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %212

188:                                              ; preds = %182
  %189 = load i32, i32* @A0, align 4
  %190 = load i32, i32* %51, align 4
  %191 = call i32 @MP_MX_LT(i32 %189, i32 %190, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %46)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %212

194:                                              ; preds = %188
  br label %195

195:                                              ; preds = %194, %179
  %196 = load i32, i32* %35, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %195
  %199 = load i32, i32* @A1, align 4
  %200 = load i32, i32* %50, align 4
  %201 = call i32 @MP_MX_LT(i32 %199, i32 %200, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %46)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %212

204:                                              ; preds = %198
  %205 = load i32, i32* @A1, align 4
  %206 = load i32, i32* %51, align 4
  %207 = call i32 @MP_MX_LT(i32 %205, i32 %206, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %46)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %212

210:                                              ; preds = %204
  br label %211

211:                                              ; preds = %210, %195
  store i32 0, i32* %26, align 4
  br label %212

212:                                              ; preds = %211, %209, %203, %193, %187, %177, %171, %161, %155
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %213, %214
  store i32 %215, i32* %36, align 4
  %216 = load i32, i32* %14, align 4
  %217 = sub nsw i32 %216, 1
  store i32 %217, i32* %37, align 4
  %218 = load i32, i32* %56, align 4
  %219 = load i32, i32* @B0, align 4
  %220 = call i32 @AVAILABLE(i32 %218, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %212
  %223 = load i32, i32* %36, align 4
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %223, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %222
  %232 = load i32, i32* @B0, align 4
  %233 = call i64 @PRED_BLOCK_AVAILABLE(i32 %232)
  %234 = icmp ne i64 %233, 0
  br label %235

235:                                              ; preds = %231, %222, %212
  %236 = phi i1 [ false, %222 ], [ false, %212 ], [ %234, %231 ]
  %237 = zext i1 %236 to i32
  store i32 %237, i32* %38, align 4
  %238 = load i32, i32* %13, align 4
  %239 = load i32, i32* %15, align 4
  %240 = add nsw i32 %238, %239
  %241 = sub nsw i32 %240, 1
  store i32 %241, i32* %39, align 4
  %242 = load i32, i32* %14, align 4
  %243 = sub nsw i32 %242, 1
  store i32 %243, i32* %40, align 4
  %244 = load i32, i32* %55, align 4
  %245 = load i32, i32* @B1, align 4
  %246 = call i32 @AVAILABLE(i32 %244, i32 %245)
  store i32 %246, i32* %41, align 4
  %247 = load i32, i32* %13, align 4
  %248 = sub nsw i32 %247, 1
  store i32 %248, i32* %42, align 4
  %249 = load i32, i32* %14, align 4
  %250 = sub nsw i32 %249, 1
  store i32 %250, i32* %43, align 4
  %251 = load i32, i32* %54, align 4
  %252 = load i32, i32* @B2, align 4
  %253 = call i32 @AVAILABLE(i32 %251, i32 %252)
  store i32 %253, i32* %44, align 4
  %254 = load i32, i32* %38, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %235
  %257 = load i32, i32* @B0, align 4
  %258 = load i32, i32* %50, align 4
  %259 = call i64 @MP_MX(i32 %257, i32 %258, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %47)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  br label %302

262:                                              ; preds = %256
  %263 = load i32, i32* @B0, align 4
  %264 = load i32, i32* %51, align 4
  %265 = call i64 @MP_MX(i32 %263, i32 %264, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %47)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  br label %302

268:                                              ; preds = %262
  br label %269

269:                                              ; preds = %268, %235
  %270 = load i32, i32* %41, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %285

272:                                              ; preds = %269
  %273 = load i32, i32* @B1, align 4
  %274 = load i32, i32* %50, align 4
  %275 = call i64 @MP_MX(i32 %273, i32 %274, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %47)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  br label %302

278:                                              ; preds = %272
  %279 = load i32, i32* @B1, align 4
  %280 = load i32, i32* %51, align 4
  %281 = call i64 @MP_MX(i32 %279, i32 %280, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %47)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  br label %302

284:                                              ; preds = %278
  br label %285

285:                                              ; preds = %284, %269
  %286 = load i32, i32* %44, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %301

288:                                              ; preds = %285
  %289 = load i32, i32* @B2, align 4
  %290 = load i32, i32* %50, align 4
  %291 = call i64 @MP_MX(i32 %289, i32 %290, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %47)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  br label %302

294:                                              ; preds = %288
  %295 = load i32, i32* @B2, align 4
  %296 = load i32, i32* %51, align 4
  %297 = call i64 @MP_MX(i32 %295, i32 %296, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %47)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %294
  br label %302

300:                                              ; preds = %294
  br label %301

301:                                              ; preds = %300, %285
  store i32 0, i32* %27, align 4
  br label %302

302:                                              ; preds = %301, %299, %293, %283, %277, %267, %261
  %303 = load i32, i32* %25, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %360, label %305

305:                                              ; preds = %302
  %306 = load i32, i32* %27, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  store i32 1, i32* %26, align 4
  %309 = bitcast %struct.TYPE_22__* %46 to i8*
  %310 = bitcast %struct.TYPE_22__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %309, i8* align 8 %310, i64 24, i1 false)
  br label %311

311:                                              ; preds = %308, %305
  store i32 0, i32* %27, align 4
  %312 = load i32, i32* %38, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %325

314:                                              ; preds = %311
  %315 = load i32, i32* @B0, align 4
  %316 = load i32, i32* %50, align 4
  %317 = call i32 @MP_MX_LT(i32 %315, i32 %316, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %47)
  store i32 %317, i32* %27, align 4
  %318 = load i32, i32* %27, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %324, label %320

320:                                              ; preds = %314
  %321 = load i32, i32* @B0, align 4
  %322 = load i32, i32* %51, align 4
  %323 = call i32 @MP_MX_LT(i32 %321, i32 %322, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %47)
  store i32 %323, i32* %27, align 4
  br label %324

324:                                              ; preds = %320, %314
  br label %325

325:                                              ; preds = %324, %311
  %326 = load i32, i32* %41, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %342

328:                                              ; preds = %325
  %329 = load i32, i32* %27, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %342, label %331

331:                                              ; preds = %328
  %332 = load i32, i32* @B1, align 4
  %333 = load i32, i32* %50, align 4
  %334 = call i32 @MP_MX_LT(i32 %332, i32 %333, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %47)
  store i32 %334, i32* %27, align 4
  %335 = load i32, i32* %27, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %341, label %337

337:                                              ; preds = %331
  %338 = load i32, i32* @B1, align 4
  %339 = load i32, i32* %51, align 4
  %340 = call i32 @MP_MX_LT(i32 %338, i32 %339, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %47)
  store i32 %340, i32* %27, align 4
  br label %341

341:                                              ; preds = %337, %331
  br label %342

342:                                              ; preds = %341, %328, %325
  %343 = load i32, i32* %44, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %359

345:                                              ; preds = %342
  %346 = load i32, i32* %27, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %359, label %348

348:                                              ; preds = %345
  %349 = load i32, i32* @B2, align 4
  %350 = load i32, i32* %50, align 4
  %351 = call i32 @MP_MX_LT(i32 %349, i32 %350, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %47)
  store i32 %351, i32* %27, align 4
  %352 = load i32, i32* %27, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %358, label %354

354:                                              ; preds = %348
  %355 = load i32, i32* @B2, align 4
  %356 = load i32, i32* %51, align 4
  %357 = call i32 @MP_MX_LT(i32 %355, i32 %356, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %47)
  store i32 %357, i32* %27, align 4
  br label %358

358:                                              ; preds = %354, %348
  br label %359

359:                                              ; preds = %358, %345, %342
  br label %360

360:                                              ; preds = %359, %302
  %361 = load i32, i32* %26, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %360
  %364 = load i32, i32* %28, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %28, align 4
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds [2 x %struct.TYPE_22__], [2 x %struct.TYPE_22__]* %45, i64 0, i64 %366
  %368 = bitcast %struct.TYPE_22__* %367 to i8*
  %369 = bitcast %struct.TYPE_22__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %368, i8* align 8 %369, i64 24, i1 false)
  br label %370

370:                                              ; preds = %363, %360
  %371 = load i32, i32* %27, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %395

373:                                              ; preds = %370
  %374 = load i32, i32* %26, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %388

376:                                              ; preds = %373
  %377 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %378, %380
  br i1 %381, label %388, label %382

382:                                              ; preds = %376
  %383 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %384, %386
  br i1 %387, label %388, label %395

388:                                              ; preds = %382, %376, %373
  %389 = load i32, i32* %28, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %28, align 4
  %391 = sext i32 %389 to i64
  %392 = getelementptr inbounds [2 x %struct.TYPE_22__], [2 x %struct.TYPE_22__]* %45, i64 0, i64 %391
  %393 = bitcast %struct.TYPE_22__* %392 to i8*
  %394 = bitcast %struct.TYPE_22__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %393, i8* align 8 %394, i64 24, i1 false)
  br label %395

395:                                              ; preds = %388, %382, %370
  %396 = load i32, i32* %28, align 4
  %397 = icmp slt i32 %396, 2
  br i1 %397, label %398, label %427

398:                                              ; preds = %395
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %427

404:                                              ; preds = %398
  %405 = load i32, i32* %21, align 4
  %406 = load i32, i32* %28, align 4
  %407 = icmp eq i32 %405, %406
  br i1 %407, label %408, label %427

408:                                              ; preds = %404
  %409 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %410 = load i32, i32* %13, align 4
  %411 = load i32, i32* %14, align 4
  %412 = load i32, i32* %15, align 4
  %413 = load i32, i32* %16, align 4
  %414 = load i32, i32* %49, align 4
  %415 = load i32, i32* %22, align 4
  %416 = call i32 @temporal_luma_motion_vector(%struct.TYPE_24__* %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414, %struct.TYPE_22__* %57, i32 %415)
  store i32 %416, i32* %58, align 4
  %417 = load i32, i32* %58, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %426

419:                                              ; preds = %408
  %420 = load i32, i32* %28, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %28, align 4
  %422 = sext i32 %420 to i64
  %423 = getelementptr inbounds [2 x %struct.TYPE_22__], [2 x %struct.TYPE_22__]* %45, i64 0, i64 %422
  %424 = bitcast %struct.TYPE_22__* %423 to i8*
  %425 = bitcast %struct.TYPE_22__* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %424, i8* align 8 %425, i64 24, i1 false)
  br label %426

426:                                              ; preds = %419, %408
  br label %427

427:                                              ; preds = %426, %404, %398, %395
  %428 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %429 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %428, i32 0, i32 1
  %430 = load %struct.TYPE_22__*, %struct.TYPE_22__** %429, align 8
  %431 = load i32, i32* %22, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %430, i64 %432
  %434 = load i32, i32* %21, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [2 x %struct.TYPE_22__], [2 x %struct.TYPE_22__]* %45, i64 0, i64 %435
  %437 = bitcast %struct.TYPE_22__* %433 to i8*
  %438 = bitcast %struct.TYPE_22__* %436 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %437, i8* align 8 %438, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AVAILABLE(i32, i32) #2

declare dso_local i64 @PRED_BLOCK_AVAILABLE(i32) #2

declare dso_local i64 @MP_MX(i32, i32, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #2

declare dso_local i32 @MP_MX_LT(i32, i32, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @temporal_luma_motion_vector(%struct.TYPE_24__*, i32, i32, i32, i32, i32, %struct.TYPE_22__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
