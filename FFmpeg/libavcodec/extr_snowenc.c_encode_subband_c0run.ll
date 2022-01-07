; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_encode_subband_c0run.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_encode_subband_c0run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32**, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"encoded frame too large\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ff_quant3bA = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32*, i32, i32)* @encode_subband_c0run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_subband_c0run(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
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
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %14, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %51

51:                                               ; preds = %194, %6
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %197

55:                                               ; preds = %51
  store i32 0, i32* %16, align 4
  br label %56

56:                                               ; preds = %190, %55
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %193

60:                                               ; preds = %56
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 %63, %64
  %66 = add nsw i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %61, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %22, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %115

72:                                               ; preds = %60
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %17, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %12, align 4
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %74, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %73, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %26, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %72
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %17, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load i32, i32* %12, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %88, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %86, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %25, align 4
  br label %97

97:                                               ; preds = %85, %72
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %97
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %17, align 4
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* %12, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %105, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %103, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %27, align 4
  br label %114

114:                                              ; preds = %102, %97
  br label %115

115:                                              ; preds = %114, %60
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %12, align 4
  %124 = mul nsw i32 %122, %123
  %125 = add nsw i32 %121, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %119, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %24, align 4
  br label %129

129:                                              ; preds = %118, %115
  %130 = load i32*, i32** %11, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %164

132:                                              ; preds = %129
  %133 = load i32, i32* %16, align 4
  %134 = ashr i32 %133, 1
  store i32 %134, i32* %28, align 4
  %135 = load i32, i32* %17, align 4
  %136 = ashr i32 %135, 1
  store i32 %136, i32* %29, align 4
  %137 = load i32, i32* %28, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %137, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %132
  %145 = load i32, i32* %29, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %145, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %144
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %28, align 4
  %155 = load i32, i32* %29, align 4
  %156 = mul nsw i32 %155, 2
  %157 = load i32, i32* %12, align 4
  %158 = mul nsw i32 %156, %157
  %159 = add nsw i32 %154, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %153, i64 %160
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %23, align 4
  br label %163

163:                                              ; preds = %152, %144, %132
  br label %164

164:                                              ; preds = %163, %129
  %165 = load i32, i32* %24, align 4
  %166 = load i32, i32* %25, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* %26, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %27, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* %23, align 4
  %173 = or i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %189, label %175

175:                                              ; preds = %164
  %176 = load i32, i32* %22, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load i32, i32* %18, align 4
  %180 = load i32*, i32** %19, align 8
  %181 = load i32, i32* %20, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %20, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  store i32 %179, i32* %184, align 4
  store i32 0, i32* %18, align 4
  br label %188

185:                                              ; preds = %175
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %18, align 4
  br label %188

188:                                              ; preds = %185, %178
  br label %189

189:                                              ; preds = %188, %164
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %16, align 4
  br label %56

193:                                              ; preds = %56
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %17, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %17, align 4
  br label %51

197:                                              ; preds = %51
  %198 = load i32, i32* %20, align 4
  store i32 %198, i32* %21, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load i32*, i32** %19, align 8
  %201 = load i32, i32* %20, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %20, align 4
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  store i32 %199, i32* %204, align 4
  store i32 0, i32* %20, align 4
  %205 = load i32*, i32** %19, align 8
  %206 = load i32, i32* %20, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %20, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %18, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 2
  %215 = load i32**, i32*** %214, align 8
  %216 = getelementptr inbounds i32*, i32** %215, i64 30
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %21, align 4
  %219 = call i32 @put_symbol2(%struct.TYPE_11__* %212, i32* %217, i32 %218, i32 0)
  %220 = load i32, i32* %20, align 4
  %221 = load i32, i32* %21, align 4
  %222 = icmp sle i32 %220, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %197
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 2
  %228 = load i32**, i32*** %227, align 8
  %229 = getelementptr inbounds i32*, i32** %228, i64 1
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %18, align 4
  %232 = call i32 @put_symbol2(%struct.TYPE_11__* %225, i32* %230, i32 %231, i32 3)
  br label %233

233:                                              ; preds = %223, %197
  store i32 0, i32* %17, align 4
  br label %234

234:                                              ; preds = %532, %233
  %235 = load i32, i32* %17, align 4
  %236 = load i32, i32* %15, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %535

238:                                              ; preds = %234
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = sub nsw i32 %242, %246
  %248 = load i32, i32* %14, align 4
  %249 = mul nsw i32 %248, 40
  %250 = icmp slt i32 %247, %249
  br i1 %250, label %251, label %259

251:                                              ; preds = %238
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @AV_LOG_ERROR, align 4
  %256 = call i32 @av_log(i32 %254, i32 %255, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %257 = load i32, i32* @ENOMEM, align 4
  %258 = call i32 @AVERROR(i32 %257)
  store i32 %258, i32* %7, align 4
  br label %536

259:                                              ; preds = %238
  store i32 0, i32* %16, align 4
  br label %260

260:                                              ; preds = %528, %259
  %261 = load i32, i32* %16, align 4
  %262 = load i32, i32* %14, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %531

264:                                              ; preds = %260
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %265 = load i32*, i32** %10, align 8
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* %17, align 4
  %268 = load i32, i32* %12, align 4
  %269 = mul nsw i32 %267, %268
  %270 = add nsw i32 %266, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %265, i64 %271
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %30, align 4
  %274 = load i32, i32* %17, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %319

276:                                              ; preds = %264
  %277 = load i32*, i32** %10, align 8
  %278 = load i32, i32* %16, align 4
  %279 = load i32, i32* %17, align 4
  %280 = sub nsw i32 %279, 1
  %281 = load i32, i32* %12, align 4
  %282 = mul nsw i32 %280, %281
  %283 = add nsw i32 %278, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %277, i64 %284
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %34, align 4
  %287 = load i32, i32* %16, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %301

289:                                              ; preds = %276
  %290 = load i32*, i32** %10, align 8
  %291 = load i32, i32* %16, align 4
  %292 = sub nsw i32 %291, 1
  %293 = load i32, i32* %17, align 4
  %294 = sub nsw i32 %293, 1
  %295 = load i32, i32* %12, align 4
  %296 = mul nsw i32 %294, %295
  %297 = add nsw i32 %292, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %290, i64 %298
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %33, align 4
  br label %301

301:                                              ; preds = %289, %276
  %302 = load i32, i32* %16, align 4
  %303 = add nsw i32 %302, 1
  %304 = load i32, i32* %14, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %318

306:                                              ; preds = %301
  %307 = load i32*, i32** %10, align 8
  %308 = load i32, i32* %16, align 4
  %309 = add nsw i32 %308, 1
  %310 = load i32, i32* %17, align 4
  %311 = sub nsw i32 %310, 1
  %312 = load i32, i32* %12, align 4
  %313 = mul nsw i32 %311, %312
  %314 = add nsw i32 %309, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %307, i64 %315
  %317 = load i32, i32* %316, align 4
  store i32 %317, i32* %35, align 4
  br label %318

318:                                              ; preds = %306, %301
  br label %319

319:                                              ; preds = %318, %264
  %320 = load i32, i32* %16, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %333

322:                                              ; preds = %319
  %323 = load i32*, i32** %10, align 8
  %324 = load i32, i32* %16, align 4
  %325 = sub nsw i32 %324, 1
  %326 = load i32, i32* %17, align 4
  %327 = load i32, i32* %12, align 4
  %328 = mul nsw i32 %326, %327
  %329 = add nsw i32 %325, %328
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %323, i64 %330
  %332 = load i32, i32* %331, align 4
  store i32 %332, i32* %32, align 4
  br label %333

333:                                              ; preds = %322, %319
  %334 = load i32*, i32** %11, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %368

336:                                              ; preds = %333
  %337 = load i32, i32* %16, align 4
  %338 = ashr i32 %337, 1
  store i32 %338, i32* %36, align 4
  %339 = load i32, i32* %17, align 4
  %340 = ashr i32 %339, 1
  store i32 %340, i32* %37, align 4
  %341 = load i32, i32* %36, align 4
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 3
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = icmp slt i32 %341, %346
  br i1 %347, label %348, label %367

348:                                              ; preds = %336
  %349 = load i32, i32* %37, align 4
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 3
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = icmp slt i32 %349, %354
  br i1 %355, label %356, label %367

356:                                              ; preds = %348
  %357 = load i32*, i32** %11, align 8
  %358 = load i32, i32* %36, align 4
  %359 = load i32, i32* %37, align 4
  %360 = mul nsw i32 %359, 2
  %361 = load i32, i32* %12, align 4
  %362 = mul nsw i32 %360, %361
  %363 = add nsw i32 %358, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %357, i64 %364
  %366 = load i32, i32* %365, align 4
  store i32 %366, i32* %31, align 4
  br label %367

367:                                              ; preds = %356, %348, %336
  br label %368

368:                                              ; preds = %367, %333
  %369 = load i32, i32* %32, align 4
  %370 = load i32, i32* %33, align 4
  %371 = or i32 %369, %370
  %372 = load i32, i32* %34, align 4
  %373 = or i32 %371, %372
  %374 = load i32, i32* %35, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* %31, align 4
  %377 = or i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %413

379:                                              ; preds = %368
  %380 = load i32, i32* %32, align 4
  %381 = call i32 @FFABS(i32 %380)
  %382 = mul nsw i32 3, %381
  %383 = load i32, i32* %33, align 4
  %384 = call i32 @FFABS(i32 %383)
  %385 = add nsw i32 %382, %384
  %386 = load i32, i32* %34, align 4
  %387 = call i32 @FFABS(i32 %386)
  %388 = mul nsw i32 2, %387
  %389 = add nsw i32 %385, %388
  %390 = load i32, i32* %35, align 4
  %391 = call i32 @FFABS(i32 %390)
  %392 = add nsw i32 %389, %391
  %393 = load i32, i32* %31, align 4
  %394 = call i32 @FFABS(i32 %393)
  %395 = add nsw i32 %392, %394
  %396 = call i32 @av_log2(i32 %395)
  store i32 %396, i32* %38, align 4
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 1
  %399 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 2
  %401 = load i32**, i32*** %400, align 8
  %402 = getelementptr inbounds i32*, i32** %401, i64 0
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %38, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  %407 = load i32, i32* %30, align 4
  %408 = icmp ne i32 %407, 0
  %409 = xor i1 %408, true
  %410 = xor i1 %409, true
  %411 = zext i1 %410 to i32
  %412 = call i32 @put_rac(%struct.TYPE_11__* %398, i32* %406, i32 %411)
  br label %448

413:                                              ; preds = %368
  %414 = load i32, i32* %18, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %439, label %416

416:                                              ; preds = %413
  %417 = load i32*, i32** %19, align 8
  %418 = load i32, i32* %20, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %20, align 4
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds i32, i32* %417, i64 %420
  %422 = load i32, i32* %421, align 4
  store i32 %422, i32* %18, align 4
  %423 = load i32, i32* %20, align 4
  %424 = load i32, i32* %21, align 4
  %425 = icmp sle i32 %423, %424
  br i1 %425, label %426, label %436

426:                                              ; preds = %416
  %427 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %428 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %427, i32 0, i32 1
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 2
  %431 = load i32**, i32*** %430, align 8
  %432 = getelementptr inbounds i32*, i32** %431, i64 1
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %18, align 4
  %435 = call i32 @put_symbol2(%struct.TYPE_11__* %428, i32* %433, i32 %434, i32 3)
  br label %436

436:                                              ; preds = %426, %416
  %437 = load i32, i32* %30, align 4
  %438 = call i32 @av_assert2(i32 %437)
  br label %447

439:                                              ; preds = %413
  %440 = load i32, i32* %18, align 4
  %441 = add nsw i32 %440, -1
  store i32 %441, i32* %18, align 4
  %442 = load i32, i32* %30, align 4
  %443 = icmp ne i32 %442, 0
  %444 = xor i1 %443, true
  %445 = zext i1 %444 to i32
  %446 = call i32 @av_assert2(i32 %445)
  br label %447

447:                                              ; preds = %439, %436
  br label %448

448:                                              ; preds = %447, %379
  %449 = load i32, i32* %30, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %527

451:                                              ; preds = %448
  %452 = load i32, i32* %32, align 4
  %453 = call i32 @FFABS(i32 %452)
  %454 = mul nsw i32 3, %453
  %455 = load i32, i32* %33, align 4
  %456 = call i32 @FFABS(i32 %455)
  %457 = add nsw i32 %454, %456
  %458 = load i32, i32* %34, align 4
  %459 = call i32 @FFABS(i32 %458)
  %460 = mul nsw i32 2, %459
  %461 = add nsw i32 %457, %460
  %462 = load i32, i32* %35, align 4
  %463 = call i32 @FFABS(i32 %462)
  %464 = add nsw i32 %461, %463
  %465 = load i32, i32* %31, align 4
  %466 = call i32 @FFABS(i32 %465)
  %467 = add nsw i32 %464, %466
  %468 = call i32 @av_log2(i32 %467)
  store i32 %468, i32* %39, align 4
  %469 = load i32, i32* %32, align 4
  %470 = call i32 @FFABS(i32 %469)
  %471 = mul nsw i32 2, %470
  %472 = load i32, i32* %32, align 4
  %473 = icmp slt i32 %472, 0
  %474 = zext i1 %473 to i32
  %475 = add nsw i32 %471, %474
  store i32 %475, i32* %40, align 4
  %476 = load i32, i32* %34, align 4
  %477 = call i32 @FFABS(i32 %476)
  %478 = mul nsw i32 2, %477
  %479 = load i32, i32* %34, align 4
  %480 = icmp slt i32 %479, 0
  %481 = zext i1 %480 to i32
  %482 = add nsw i32 %478, %481
  store i32 %482, i32* %41, align 4
  %483 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %484 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %483, i32 0, i32 1
  %485 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %486 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %485, i32 0, i32 2
  %487 = load i32**, i32*** %486, align 8
  %488 = load i32, i32* %39, align 4
  %489 = add nsw i32 %488, 2
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32*, i32** %487, i64 %490
  %492 = load i32*, i32** %491, align 8
  %493 = load i32, i32* %30, align 4
  %494 = call i32 @FFABS(i32 %493)
  %495 = sub nsw i32 %494, 1
  %496 = load i32, i32* %39, align 4
  %497 = sub nsw i32 %496, 4
  %498 = call i32 @put_symbol2(%struct.TYPE_11__* %484, i32* %492, i32 %495, i32 %497)
  %499 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %499, i32 0, i32 1
  %501 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %502 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %501, i32 0, i32 2
  %503 = load i32**, i32*** %502, align 8
  %504 = getelementptr inbounds i32*, i32** %503, i64 0
  %505 = load i32*, i32** %504, align 8
  %506 = load i32*, i32** @ff_quant3bA, align 8
  %507 = load i32, i32* %40, align 4
  %508 = and i32 %507, 255
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %506, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = add nsw i32 20, %511
  %513 = load i32*, i32** @ff_quant3bA, align 8
  %514 = load i32, i32* %41, align 4
  %515 = and i32 %514, 255
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i32, i32* %513, i64 %516
  %518 = load i32, i32* %517, align 4
  %519 = mul nsw i32 3, %518
  %520 = add nsw i32 %512, %519
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32, i32* %505, i64 %521
  %523 = load i32, i32* %30, align 4
  %524 = icmp slt i32 %523, 0
  %525 = zext i1 %524 to i32
  %526 = call i32 @put_rac(%struct.TYPE_11__* %500, i32* %522, i32 %525)
  br label %527

527:                                              ; preds = %451, %448
  br label %528

528:                                              ; preds = %527
  %529 = load i32, i32* %16, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %16, align 4
  br label %260

531:                                              ; preds = %260
  br label %532

532:                                              ; preds = %531
  %533 = load i32, i32* %17, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %17, align 4
  br label %234

535:                                              ; preds = %234
  store i32 0, i32* %7, align 4
  br label %536

536:                                              ; preds = %535, %251
  %537 = load i32, i32* %7, align 4
  ret i32 %537
}

declare dso_local i32 @put_symbol2(%struct.TYPE_11__*, i32*, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @put_rac(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @av_assert2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
