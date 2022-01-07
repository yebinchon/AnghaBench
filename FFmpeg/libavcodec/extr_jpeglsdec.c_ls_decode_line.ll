; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeglsdec.c_ls_decode_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeglsdec.c_ls_decode_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64*, i32*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_log2_run = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"run overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i8*, i8*, i32, i32, i32, i32, i32)* @ls_decode_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls_decode_line(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
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
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %36

36:                                               ; preds = %467, %9
  %37 = load i32, i32* %21, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %480

40:                                               ; preds = %36
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = call i64 @get_bits_left(i32* %42)
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %10, align 4
  br label %481

47:                                               ; preds = %40
  %48 = load i32, i32* %21, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i8*, i8** %14, align 8
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* %17, align 4
  %54 = sub nsw i32 %52, %53
  %55 = call i32 @R(i8* %51, i32 %54)
  br label %60

56:                                               ; preds = %47
  %57 = load i8*, i8** %13, align 8
  %58 = load i32, i32* %21, align 4
  %59 = call i32 @R(i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %50
  %61 = phi i32 [ %55, %50 ], [ %59, %56 ]
  store i32 %61, i32* %22, align 4
  %62 = load i8*, i8** %13, align 8
  %63 = load i32, i32* %21, align 4
  %64 = call i32 @R(i8* %62, i32 %63)
  store i32 %64, i32* %23, align 4
  %65 = load i32, i32* %21, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i8*, i8** %13, align 8
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %17, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i32 @R(i8* %68, i32 %71)
  br label %75

73:                                               ; preds = %60
  %74 = load i32, i32* %15, align 4
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi i32 [ %72, %67 ], [ %74, %73 ]
  store i32 %76, i32* %24, align 4
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  %80 = sub nsw i32 %78, %79
  %81 = icmp sge i32 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i8*, i8** %13, align 8
  %84 = load i32, i32* %21, align 4
  %85 = call i32 @R(i8* %83, i32 %84)
  br label %92

86:                                               ; preds = %75
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %88, %89
  %91 = call i32 @R(i8* %87, i32 %90)
  br label %92

92:                                               ; preds = %86, %82
  %93 = phi i32 [ %85, %82 ], [ %91, %86 ]
  store i32 %93, i32* %25, align 4
  %94 = load i32, i32* %25, align 4
  %95 = load i32, i32* %23, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %26, align 4
  %97 = load i32, i32* %23, align 4
  %98 = load i32, i32* %24, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %27, align 4
  %100 = load i32, i32* %24, align 4
  %101 = load i32, i32* %22, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %28, align 4
  %103 = load i32, i32* %26, align 4
  %104 = call i32 @FFABS(i32 %103)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sle i32 %104, %107
  br i1 %108, label %109, label %344

109:                                              ; preds = %92
  %110 = load i32, i32* %27, align 4
  %111 = call i32 @FFABS(i32 %110)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sle i32 %111, %114
  br i1 %115, label %116, label %344

116:                                              ; preds = %109
  %117 = load i32, i32* %28, align 4
  %118 = call i32 @FFABS(i32 %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sle i32 %118, %121
  br i1 %122, label %123, label %344

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %210, %123
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = call i64 @get_bits1(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %211

129:                                              ; preds = %124
  %130 = load i32*, i32** @ff_log2_run, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %130, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 1, %139
  store i32 %140, i32* %33, align 4
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* %33, align 4
  %143 = load i32, i32* %17, align 4
  %144 = mul nsw i32 %142, %143
  %145 = add nsw i32 %141, %144
  %146 = load i32, i32* %16, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %129
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %21, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i32, i32* %17, align 4
  %153 = sdiv i32 %151, %152
  store i32 %153, i32* %33, align 4
  br label %154

154:                                              ; preds = %148, %129
  store i32 0, i32* %20, align 4
  br label %155

155:                                              ; preds = %167, %154
  %156 = load i32, i32* %20, align 4
  %157 = load i32, i32* %33, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %155
  %160 = load i8*, i8** %14, align 8
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* %22, align 4
  %163 = call i32 @W(i8* %160, i32 %161, i32 %162)
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %21, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %21, align 4
  br label %167

167:                                              ; preds = %159
  %168 = load i32, i32* %20, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %20, align 4
  br label %155

170:                                              ; preds = %155
  %171 = load i32, i32* %33, align 4
  %172 = load i32*, i32** @ff_log2_run, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i32, i32* %172, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 1, %181
  %183 = icmp ne i32 %171, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %170
  store i32 0, i32* %10, align 4
  br label %481

185:                                              ; preds = %170
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = icmp ult i64 %192, 31
  br i1 %193, label %194, label %203

194:                                              ; preds = %185
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %18, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %200, align 8
  br label %203

203:                                              ; preds = %194, %185
  %204 = load i32, i32* %21, align 4
  %205 = load i32, i32* %17, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32, i32* %16, align 4
  %208 = icmp sgt i32 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  store i32 0, i32* %10, align 4
  br label %481

210:                                              ; preds = %203
  br label %124

211:                                              ; preds = %124
  %212 = load i32*, i32** @ff_log2_run, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* %18, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds i32, i32* %212, i64 %219
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %31, align 4
  %222 = load i32, i32* %31, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %211
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load i32, i32* %31, align 4
  %228 = call i32 @get_bits_long(i32* %226, i32 %227)
  store i32 %228, i32* %31, align 4
  br label %229

229:                                              ; preds = %224, %211
  %230 = load i32, i32* %21, align 4
  %231 = load i32, i32* %31, align 4
  %232 = load i32, i32* %17, align 4
  %233 = mul nsw i32 %231, %232
  %234 = add nsw i32 %230, %233
  %235 = load i32, i32* %16, align 4
  %236 = icmp sgt i32 %234, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %229
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* %21, align 4
  %240 = sub nsw i32 %238, %239
  %241 = load i32, i32* %17, align 4
  %242 = sdiv i32 %240, %241
  store i32 %242, i32* %31, align 4
  br label %243

243:                                              ; preds = %237, %229
  store i32 0, i32* %20, align 4
  br label %244

244:                                              ; preds = %256, %243
  %245 = load i32, i32* %20, align 4
  %246 = load i32, i32* %31, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %259

248:                                              ; preds = %244
  %249 = load i8*, i8** %14, align 8
  %250 = load i32, i32* %21, align 4
  %251 = load i32, i32* %22, align 4
  %252 = call i32 @W(i8* %249, i32 %250, i32 %251)
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %21, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %21, align 4
  br label %256

256:                                              ; preds = %248
  %257 = load i32, i32* %20, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %20, align 4
  br label %244

259:                                              ; preds = %244
  %260 = load i32, i32* %21, align 4
  %261 = load i32, i32* %16, align 4
  %262 = icmp sge i32 %260, %261
  br i1 %262, label %263, label %272

263:                                              ; preds = %259
  %264 = load i32, i32* @AV_LOG_ERROR, align 4
  %265 = call i32 @av_log(i32* null, i32 %264, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %266 = load i32, i32* %21, align 4
  %267 = load i32, i32* %16, align 4
  %268 = icmp sle i32 %266, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 @av_assert0(i32 %269)
  %271 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %271, i32* %10, align 4
  br label %481

272:                                              ; preds = %259
  %273 = load i8*, i8** %13, align 8
  %274 = load i32, i32* %21, align 4
  %275 = call i32 @R(i8* %273, i32 %274)
  store i32 %275, i32* %23, align 4
  %276 = load i32, i32* %22, align 4
  %277 = load i32, i32* %23, align 4
  %278 = sub nsw i32 %276, %277
  %279 = call i32 @FFABS(i32 %278)
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp sle i32 %279, %282
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i32 1, i32 0
  store i32 %285, i32* %32, align 4
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %289 = load i32, i32* %32, align 4
  %290 = load i32*, i32** @ff_log2_run, align 8
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 1
  %293 = load i64*, i64** %292, align 8
  %294 = load i32, i32* %18, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64, i64* %293, i64 %295
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds i32, i32* %290, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @ls_get_code_runterm(i32* %287, %struct.TYPE_9__* %288, i32 %289, i32 %299)
  store i32 %300, i32* %29, align 4
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 1
  %303 = load i64*, i64** %302, align 8
  %304 = load i32, i32* %18, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i64, i64* %303, i64 %305
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %272
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 1
  %312 = load i64*, i64** %311, align 8
  %313 = load i32, i32* %18, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i64, i64* %312, i64 %314
  %316 = load i64, i64* %315, align 8
  %317 = add i64 %316, -1
  store i64 %317, i64* %315, align 8
  br label %318

318:                                              ; preds = %309, %272
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %318
  %324 = load i32, i32* %32, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = load i32, i32* %22, align 4
  %328 = load i32, i32* %29, align 4
  %329 = add nsw i32 %327, %328
  store i32 %329, i32* %30, align 4
  br label %343

330:                                              ; preds = %323, %318
  %331 = load i32, i32* %23, align 4
  %332 = load i32, i32* %22, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %338

334:                                              ; preds = %330
  %335 = load i32, i32* %23, align 4
  %336 = load i32, i32* %29, align 4
  %337 = sub nsw i32 %335, %336
  store i32 %337, i32* %30, align 4
  br label %342

338:                                              ; preds = %330
  %339 = load i32, i32* %23, align 4
  %340 = load i32, i32* %29, align 4
  %341 = add nsw i32 %339, %340
  store i32 %341, i32* %30, align 4
  br label %342

342:                                              ; preds = %338, %334
  br label %343

343:                                              ; preds = %342, %326
  br label %418

344:                                              ; preds = %116, %109, %92
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %346 = load i32, i32* %26, align 4
  %347 = call i32 @ff_jpegls_quantize(%struct.TYPE_9__* %345, i32 %346)
  %348 = mul nsw i32 %347, 81
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %350 = load i32, i32* %27, align 4
  %351 = call i32 @ff_jpegls_quantize(%struct.TYPE_9__* %349, i32 %350)
  %352 = mul nsw i32 %351, 9
  %353 = add nsw i32 %348, %352
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %355 = load i32, i32* %28, align 4
  %356 = call i32 @ff_jpegls_quantize(%struct.TYPE_9__* %354, i32 %355)
  %357 = add nsw i32 %353, %356
  store i32 %357, i32* %34, align 4
  %358 = load i32, i32* %22, align 4
  %359 = load i32, i32* %22, align 4
  %360 = load i32, i32* %23, align 4
  %361 = add nsw i32 %359, %360
  %362 = load i32, i32* %24, align 4
  %363 = sub nsw i32 %361, %362
  %364 = load i32, i32* %23, align 4
  %365 = call i32 @mid_pred(i32 %358, i32 %363, i32 %364)
  store i32 %365, i32* %30, align 4
  %366 = load i32, i32* %34, align 4
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %344
  %369 = load i32, i32* %34, align 4
  %370 = sub nsw i32 0, %369
  store i32 %370, i32* %34, align 4
  store i32 1, i32* %35, align 4
  br label %372

371:                                              ; preds = %344
  store i32 0, i32* %35, align 4
  br label %372

372:                                              ; preds = %371, %368
  %373 = load i32, i32* %35, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %395

375:                                              ; preds = %372
  %376 = load i32, i32* %30, align 4
  %377 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 2
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %34, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = sub nsw i32 %376, %383
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @av_clip(i32 %384, i32 0, i32 %387)
  store i32 %388, i32* %30, align 4
  %389 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 0
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %392 = load i32, i32* %34, align 4
  %393 = call i32 @ls_get_code_regular(i32* %390, %struct.TYPE_9__* %391, i32 %392)
  %394 = sub nsw i32 0, %393
  store i32 %394, i32* %29, align 4
  br label %414

395:                                              ; preds = %372
  %396 = load i32, i32* %30, align 4
  %397 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 2
  %399 = load i32*, i32** %398, align 8
  %400 = load i32, i32* %34, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %396, %403
  %405 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %406 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @av_clip(i32 %404, i32 0, i32 %407)
  store i32 %408, i32* %30, align 4
  %409 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 0
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %412 = load i32, i32* %34, align 4
  %413 = call i32 @ls_get_code_regular(i32* %410, %struct.TYPE_9__* %411, i32 %412)
  store i32 %413, i32* %29, align 4
  br label %414

414:                                              ; preds = %395, %375
  %415 = load i32, i32* %29, align 4
  %416 = load i32, i32* %30, align 4
  %417 = add nsw i32 %416, %415
  store i32 %417, i32* %30, align 4
  br label %418

418:                                              ; preds = %414, %343
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %467

423:                                              ; preds = %418
  %424 = load i32, i32* %30, align 4
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = sub nsw i32 0, %427
  %429 = icmp slt i32 %424, %428
  br i1 %429, label %430, label %440

430:                                              ; preds = %423
  %431 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i32 0, i32 4
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 8
  %437 = mul nsw i32 %433, %436
  %438 = load i32, i32* %30, align 4
  %439 = add nsw i32 %438, %437
  store i32 %439, i32* %30, align 4
  br label %461

440:                                              ; preds = %423
  %441 = load i32, i32* %30, align 4
  %442 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %443 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 8
  %445 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %446 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = add nsw i32 %444, %447
  %449 = icmp sgt i32 %441, %448
  br i1 %449, label %450, label %460

450:                                              ; preds = %440
  %451 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 4
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 5
  %456 = load i32, i32* %455, align 8
  %457 = mul nsw i32 %453, %456
  %458 = load i32, i32* %30, align 4
  %459 = sub nsw i32 %458, %457
  store i32 %459, i32* %30, align 4
  br label %460

460:                                              ; preds = %450, %440
  br label %461

461:                                              ; preds = %460, %430
  %462 = load i32, i32* %30, align 4
  %463 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %464 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %463, i32 0, i32 3
  %465 = load i32, i32* %464, align 8
  %466 = call i32 @av_clip(i32 %462, i32 0, i32 %465)
  store i32 %466, i32* %30, align 4
  br label %467

467:                                              ; preds = %461, %418
  %468 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %469 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 8
  %471 = load i32, i32* %30, align 4
  %472 = and i32 %471, %470
  store i32 %472, i32* %30, align 4
  %473 = load i8*, i8** %14, align 8
  %474 = load i32, i32* %21, align 4
  %475 = load i32, i32* %30, align 4
  %476 = call i32 @W(i8* %473, i32 %474, i32 %475)
  %477 = load i32, i32* %17, align 4
  %478 = load i32, i32* %21, align 4
  %479 = add nsw i32 %478, %477
  store i32 %479, i32* %21, align 4
  br label %36

480:                                              ; preds = %36
  store i32 0, i32* %10, align 4
  br label %481

481:                                              ; preds = %480, %263, %209, %184, %45
  %482 = load i32, i32* %10, align 4
  ret i32 %482
}

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @R(i8*, i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @W(i8*, i32, i32) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ls_get_code_runterm(i32*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ff_jpegls_quantize(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mid_pred(i32, i32, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @ls_get_code_regular(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
