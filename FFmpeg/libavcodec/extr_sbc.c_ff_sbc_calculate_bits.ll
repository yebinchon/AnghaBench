; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbc.c_ff_sbc_calculate_bits.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbc.c_ff_sbc_calculate_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbc_frame = type { i32, i64, i64, i32, i64, i32**, i32 }

@MONO = common dso_local global i64 0, align 8
@DUAL_CHANNEL = common dso_local global i64 0, align 8
@SNR = common dso_local global i64 0, align 8
@sbc_offset4 = common dso_local global i32** null, align 8
@sbc_offset8 = common dso_local global i32** null, align 8
@STEREO = common dso_local global i64 0, align 8
@JOINT_STEREO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_sbc_calculate_bits(%struct.sbc_frame* %0, [8 x i32]* %1) #0 {
  %3 = alloca %struct.sbc_frame*, align 8
  %4 = alloca [8 x i32]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [2 x [8 x i32]], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x [8 x i32]], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.sbc_frame* %0, %struct.sbc_frame** %3, align 8
  store [8 x i32]* %1, [8 x i32]** %4, align 8
  %23 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %24 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %27 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %30 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MONO, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %2
  %35 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %36 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DUAL_CHANNEL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %477

40:                                               ; preds = %34, %2
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %473, %40
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %44 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %476

47:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  %48 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %49 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SNR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %98

53:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %94, %53
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %54
  %59 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %60 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %59, i32 0, i32 5
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %71
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %72, i64 0, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %77
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %78, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %58
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %87
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %88, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %85, %58
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %54

97:                                               ; preds = %54
  br label %212

98:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %208, %98
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %211

103:                                              ; preds = %99
  %104 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %105 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %104, i32 0, i32 5
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %103
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %118
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %119, i64 0, i64 %121
  store i32 -5, i32* %122, align 4
  br label %189

123:                                              ; preds = %103
  %124 = load i32, i32* %5, align 4
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %126, label %147

126:                                              ; preds = %123
  %127 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %128 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %127, i32 0, i32 5
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32**, i32*** @sbc_offset4, align 8
  %139 = load i64, i64* %6, align 8
  %140 = getelementptr inbounds i32*, i32** %138, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %137, %145
  store i32 %146, i32* %8, align 4
  br label %168

147:                                              ; preds = %123
  %148 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %149 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %148, i32 0, i32 5
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32**, i32*** @sbc_offset8, align 8
  %160 = load i64, i64* %6, align 8
  %161 = getelementptr inbounds i32*, i32** %159, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %158, %166
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %147, %126
  %169 = load i32, i32* %8, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %168
  %172 = load i32, i32* %8, align 4
  %173 = sdiv i32 %172, 2
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %175
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %176, i64 0, i64 %178
  store i32 %173, i32* %179, align 4
  br label %188

180:                                              ; preds = %168
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %183
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [8 x i32], [8 x i32]* %184, i64 0, i64 %186
  store i32 %181, i32* %187, align 4
  br label %188

188:                                              ; preds = %180, %171
  br label %189

189:                                              ; preds = %188, %116
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %191
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %192, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %189
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %201
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [8 x i32], [8 x i32]* %202, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %9, align 4
  br label %207

207:                                              ; preds = %199, %189
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %14, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %14, align 4
  br label %99

211:                                              ; preds = %99
  br label %212

212:                                              ; preds = %211, %97
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %12, align 4
  br label %215

215:                                              ; preds = %270, %212
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %221

221:                                              ; preds = %266, %215
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* %5, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %269

225:                                              ; preds = %221
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %227
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [8 x i32], [8 x i32]* %228, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 1
  %235 = icmp sgt i32 %232, %234
  br i1 %235, label %236, label %250

236:                                              ; preds = %225
  %237 = load i32, i32* %13, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %238
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [8 x i32], [8 x i32]* %239, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 16
  %246 = icmp slt i32 %243, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %236
  %248 = load i32, i32* %11, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %11, align 4
  br label %265

250:                                              ; preds = %236, %225
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %252
  %254 = load i32, i32* %14, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [8 x i32], [8 x i32]* %253, i64 0, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %12, align 4
  %259 = add nsw i32 %258, 1
  %260 = icmp eq i32 %257, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %250
  %262 = load i32, i32* %11, align 4
  %263 = add nsw i32 %262, 2
  store i32 %263, i32* %11, align 4
  br label %264

264:                                              ; preds = %261, %250
  br label %265

265:                                              ; preds = %264, %247
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %14, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %14, align 4
  br label %221

269:                                              ; preds = %221
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 %271, %272
  %274 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %275 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 8
  %277 = icmp slt i32 %273, %276
  br i1 %277, label %215, label %278

278:                                              ; preds = %270
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %279, %280
  %282 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %283 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 8
  %285 = icmp eq i32 %281, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %278
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* %10, align 4
  %289 = add nsw i32 %288, %287
  store i32 %289, i32* %10, align 4
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %290, -1
  store i32 %291, i32* %12, align 4
  br label %292

292:                                              ; preds = %286, %278
  store i32 0, i32* %14, align 4
  br label %293

293:                                              ; preds = %352, %292
  %294 = load i32, i32* %14, align 4
  %295 = load i32, i32* %5, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %355

297:                                              ; preds = %293
  %298 = load i32, i32* %13, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %299
  %301 = load i32, i32* %14, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [8 x i32], [8 x i32]* %300, i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %305, 2
  %307 = icmp slt i32 %304, %306
  br i1 %307, label %308, label %316

308:                                              ; preds = %297
  %309 = load [8 x i32]*, [8 x i32]** %4, align 8
  %310 = load i32, i32* %13, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [8 x i32], [8 x i32]* %309, i64 %311
  %313 = load i32, i32* %14, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [8 x i32], [8 x i32]* %312, i64 0, i64 %314
  store i32 0, i32* %315, align 4
  br label %351

316:                                              ; preds = %297
  %317 = load i32, i32* %13, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %318
  %320 = load i32, i32* %14, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [8 x i32], [8 x i32]* %319, i64 0, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %12, align 4
  %325 = sub nsw i32 %323, %324
  %326 = load [8 x i32]*, [8 x i32]** %4, align 8
  %327 = load i32, i32* %13, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [8 x i32], [8 x i32]* %326, i64 %328
  %330 = load i32, i32* %14, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [8 x i32], [8 x i32]* %329, i64 0, i64 %331
  store i32 %325, i32* %332, align 4
  %333 = load [8 x i32]*, [8 x i32]** %4, align 8
  %334 = load i32, i32* %13, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [8 x i32], [8 x i32]* %333, i64 %335
  %337 = load i32, i32* %14, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [8 x i32], [8 x i32]* %336, i64 0, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = icmp sgt i32 %340, 16
  br i1 %341, label %342, label %350

342:                                              ; preds = %316
  %343 = load [8 x i32]*, [8 x i32]** %4, align 8
  %344 = load i32, i32* %13, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [8 x i32], [8 x i32]* %343, i64 %345
  %347 = load i32, i32* %14, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [8 x i32], [8 x i32]* %346, i64 0, i64 %348
  store i32 16, i32* %349, align 4
  br label %350

350:                                              ; preds = %342, %316
  br label %351

351:                                              ; preds = %350, %308
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %14, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %14, align 4
  br label %293

355:                                              ; preds = %293
  store i32 0, i32* %14, align 4
  br label %356

356:                                              ; preds = %430, %355
  %357 = load i32, i32* %10, align 4
  %358 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %359 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %358, i32 0, i32 6
  %360 = load i32, i32* %359, align 8
  %361 = icmp slt i32 %357, %360
  br i1 %361, label %362, label %366

362:                                              ; preds = %356
  %363 = load i32, i32* %14, align 4
  %364 = load i32, i32* %5, align 4
  %365 = icmp slt i32 %363, %364
  br label %366

366:                                              ; preds = %362, %356
  %367 = phi i1 [ false, %356 ], [ %365, %362 ]
  br i1 %367, label %368, label %433

368:                                              ; preds = %366
  %369 = load [8 x i32]*, [8 x i32]** %4, align 8
  %370 = load i32, i32* %13, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [8 x i32], [8 x i32]* %369, i64 %371
  %373 = load i32, i32* %14, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [8 x i32], [8 x i32]* %372, i64 0, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = icmp sge i32 %376, 2
  br i1 %377, label %378, label %400

378:                                              ; preds = %368
  %379 = load [8 x i32]*, [8 x i32]** %4, align 8
  %380 = load i32, i32* %13, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [8 x i32], [8 x i32]* %379, i64 %381
  %383 = load i32, i32* %14, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [8 x i32], [8 x i32]* %382, i64 0, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = icmp slt i32 %386, 16
  br i1 %387, label %388, label %400

388:                                              ; preds = %378
  %389 = load [8 x i32]*, [8 x i32]** %4, align 8
  %390 = load i32, i32* %13, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [8 x i32], [8 x i32]* %389, i64 %391
  %393 = load i32, i32* %14, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [8 x i32], [8 x i32]* %392, i64 0, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %395, align 4
  %398 = load i32, i32* %10, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %10, align 4
  br label %429

400:                                              ; preds = %378, %368
  %401 = load i32, i32* %13, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %7, i64 0, i64 %402
  %404 = load i32, i32* %14, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [8 x i32], [8 x i32]* %403, i64 0, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* %12, align 4
  %409 = add nsw i32 %408, 1
  %410 = icmp eq i32 %407, %409
  br i1 %410, label %411, label %428

411:                                              ; preds = %400
  %412 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %413 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %412, i32 0, i32 6
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* %10, align 4
  %416 = add nsw i32 %415, 1
  %417 = icmp sgt i32 %414, %416
  br i1 %417, label %418, label %428

418:                                              ; preds = %411
  %419 = load [8 x i32]*, [8 x i32]** %4, align 8
  %420 = load i32, i32* %13, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [8 x i32], [8 x i32]* %419, i64 %421
  %423 = load i32, i32* %14, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [8 x i32], [8 x i32]* %422, i64 0, i64 %424
  store i32 2, i32* %425, align 4
  %426 = load i32, i32* %10, align 4
  %427 = add nsw i32 %426, 2
  store i32 %427, i32* %10, align 4
  br label %428

428:                                              ; preds = %418, %411, %400
  br label %429

429:                                              ; preds = %428, %388
  br label %430

430:                                              ; preds = %429
  %431 = load i32, i32* %14, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %14, align 4
  br label %356

433:                                              ; preds = %366
  store i32 0, i32* %14, align 4
  br label %434

434:                                              ; preds = %469, %433
  %435 = load i32, i32* %10, align 4
  %436 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %437 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %436, i32 0, i32 6
  %438 = load i32, i32* %437, align 8
  %439 = icmp slt i32 %435, %438
  br i1 %439, label %440, label %444

440:                                              ; preds = %434
  %441 = load i32, i32* %14, align 4
  %442 = load i32, i32* %5, align 4
  %443 = icmp slt i32 %441, %442
  br label %444

444:                                              ; preds = %440, %434
  %445 = phi i1 [ false, %434 ], [ %443, %440 ]
  br i1 %445, label %446, label %472

446:                                              ; preds = %444
  %447 = load [8 x i32]*, [8 x i32]** %4, align 8
  %448 = load i32, i32* %13, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [8 x i32], [8 x i32]* %447, i64 %449
  %451 = load i32, i32* %14, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [8 x i32], [8 x i32]* %450, i64 0, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = icmp slt i32 %454, 16
  br i1 %455, label %456, label %468

456:                                              ; preds = %446
  %457 = load [8 x i32]*, [8 x i32]** %4, align 8
  %458 = load i32, i32* %13, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [8 x i32], [8 x i32]* %457, i64 %459
  %461 = load i32, i32* %14, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [8 x i32], [8 x i32]* %460, i64 0, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %463, align 4
  %466 = load i32, i32* %10, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %10, align 4
  br label %468

468:                                              ; preds = %456, %446
  br label %469

469:                                              ; preds = %468
  %470 = load i32, i32* %14, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %14, align 4
  br label %434

472:                                              ; preds = %444
  br label %473

473:                                              ; preds = %472
  %474 = load i32, i32* %13, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %13, align 4
  br label %41

476:                                              ; preds = %41
  br label %954

477:                                              ; preds = %34
  %478 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %479 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %478, i32 0, i32 2
  %480 = load i64, i64* %479, align 8
  %481 = load i64, i64* @STEREO, align 8
  %482 = icmp eq i64 %480, %481
  br i1 %482, label %489, label %483

483:                                              ; preds = %477
  %484 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %485 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %484, i32 0, i32 2
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @JOINT_STEREO, align 8
  %488 = icmp eq i64 %486, %487
  br i1 %488, label %489, label %953

489:                                              ; preds = %483, %477
  store i32 0, i32* %17, align 4
  %490 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %491 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %490, i32 0, i32 4
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* @SNR, align 8
  %494 = icmp eq i64 %492, %493
  br i1 %494, label %495, label %548

495:                                              ; preds = %489
  store i32 0, i32* %21, align 4
  br label %496

496:                                              ; preds = %544, %495
  %497 = load i32, i32* %21, align 4
  %498 = icmp slt i32 %497, 2
  br i1 %498, label %499, label %547

499:                                              ; preds = %496
  store i32 0, i32* %22, align 4
  br label %500

500:                                              ; preds = %540, %499
  %501 = load i32, i32* %22, align 4
  %502 = load i32, i32* %5, align 4
  %503 = icmp slt i32 %501, %502
  br i1 %503, label %504, label %543

504:                                              ; preds = %500
  %505 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %506 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %505, i32 0, i32 5
  %507 = load i32**, i32*** %506, align 8
  %508 = load i32, i32* %21, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32*, i32** %507, i64 %509
  %511 = load i32*, i32** %510, align 8
  %512 = load i32, i32* %22, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %511, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = load i32, i32* %21, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %517
  %519 = load i32, i32* %22, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [8 x i32], [8 x i32]* %518, i64 0, i64 %520
  store i32 %515, i32* %521, align 4
  %522 = load i32, i32* %21, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %523
  %525 = load i32, i32* %22, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds [8 x i32], [8 x i32]* %524, i64 0, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* %17, align 4
  %530 = icmp sgt i32 %528, %529
  br i1 %530, label %531, label %539

531:                                              ; preds = %504
  %532 = load i32, i32* %21, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %533
  %535 = load i32, i32* %22, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds [8 x i32], [8 x i32]* %534, i64 0, i64 %536
  %538 = load i32, i32* %537, align 4
  store i32 %538, i32* %17, align 4
  br label %539

539:                                              ; preds = %531, %504
  br label %540

540:                                              ; preds = %539
  %541 = load i32, i32* %22, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %22, align 4
  br label %500

543:                                              ; preds = %500
  br label %544

544:                                              ; preds = %543
  %545 = load i32, i32* %21, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %21, align 4
  br label %496

547:                                              ; preds = %496
  br label %670

548:                                              ; preds = %489
  store i32 0, i32* %21, align 4
  br label %549

549:                                              ; preds = %666, %548
  %550 = load i32, i32* %21, align 4
  %551 = icmp slt i32 %550, 2
  br i1 %551, label %552, label %669

552:                                              ; preds = %549
  store i32 0, i32* %22, align 4
  br label %553

553:                                              ; preds = %662, %552
  %554 = load i32, i32* %22, align 4
  %555 = load i32, i32* %5, align 4
  %556 = icmp slt i32 %554, %555
  br i1 %556, label %557, label %665

557:                                              ; preds = %553
  %558 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %559 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %558, i32 0, i32 5
  %560 = load i32**, i32*** %559, align 8
  %561 = load i32, i32* %21, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32*, i32** %560, i64 %562
  %564 = load i32*, i32** %563, align 8
  %565 = load i32, i32* %22, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i32, i32* %564, i64 %566
  %568 = load i32, i32* %567, align 4
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %577

570:                                              ; preds = %557
  %571 = load i32, i32* %21, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %572
  %574 = load i32, i32* %22, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [8 x i32], [8 x i32]* %573, i64 0, i64 %575
  store i32 -5, i32* %576, align 4
  br label %643

577:                                              ; preds = %557
  %578 = load i32, i32* %5, align 4
  %579 = icmp eq i32 %578, 4
  br i1 %579, label %580, label %601

580:                                              ; preds = %577
  %581 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %582 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %581, i32 0, i32 5
  %583 = load i32**, i32*** %582, align 8
  %584 = load i32, i32* %21, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i32*, i32** %583, i64 %585
  %587 = load i32*, i32** %586, align 8
  %588 = load i32, i32* %22, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %587, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = load i32**, i32*** @sbc_offset4, align 8
  %593 = load i64, i64* %6, align 8
  %594 = getelementptr inbounds i32*, i32** %592, i64 %593
  %595 = load i32*, i32** %594, align 8
  %596 = load i32, i32* %22, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i32, i32* %595, i64 %597
  %599 = load i32, i32* %598, align 4
  %600 = sub nsw i32 %591, %599
  store i32 %600, i32* %16, align 4
  br label %622

601:                                              ; preds = %577
  %602 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %603 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %602, i32 0, i32 5
  %604 = load i32**, i32*** %603, align 8
  %605 = load i32, i32* %21, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i32*, i32** %604, i64 %606
  %608 = load i32*, i32** %607, align 8
  %609 = load i32, i32* %22, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32, i32* %608, i64 %610
  %612 = load i32, i32* %611, align 4
  %613 = load i32**, i32*** @sbc_offset8, align 8
  %614 = load i64, i64* %6, align 8
  %615 = getelementptr inbounds i32*, i32** %613, i64 %614
  %616 = load i32*, i32** %615, align 8
  %617 = load i32, i32* %22, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i32, i32* %616, i64 %618
  %620 = load i32, i32* %619, align 4
  %621 = sub nsw i32 %612, %620
  store i32 %621, i32* %16, align 4
  br label %622

622:                                              ; preds = %601, %580
  %623 = load i32, i32* %16, align 4
  %624 = icmp sgt i32 %623, 0
  br i1 %624, label %625, label %634

625:                                              ; preds = %622
  %626 = load i32, i32* %16, align 4
  %627 = sdiv i32 %626, 2
  %628 = load i32, i32* %21, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %629
  %631 = load i32, i32* %22, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [8 x i32], [8 x i32]* %630, i64 0, i64 %632
  store i32 %627, i32* %633, align 4
  br label %642

634:                                              ; preds = %622
  %635 = load i32, i32* %16, align 4
  %636 = load i32, i32* %21, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %637
  %639 = load i32, i32* %22, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds [8 x i32], [8 x i32]* %638, i64 0, i64 %640
  store i32 %635, i32* %641, align 4
  br label %642

642:                                              ; preds = %634, %625
  br label %643

643:                                              ; preds = %642, %570
  %644 = load i32, i32* %21, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %645
  %647 = load i32, i32* %22, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds [8 x i32], [8 x i32]* %646, i64 0, i64 %648
  %650 = load i32, i32* %649, align 4
  %651 = load i32, i32* %17, align 4
  %652 = icmp sgt i32 %650, %651
  br i1 %652, label %653, label %661

653:                                              ; preds = %643
  %654 = load i32, i32* %21, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %655
  %657 = load i32, i32* %22, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds [8 x i32], [8 x i32]* %656, i64 0, i64 %658
  %660 = load i32, i32* %659, align 4
  store i32 %660, i32* %17, align 4
  br label %661

661:                                              ; preds = %653, %643
  br label %662

662:                                              ; preds = %661
  %663 = load i32, i32* %22, align 4
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %22, align 4
  br label %553

665:                                              ; preds = %553
  br label %666

666:                                              ; preds = %665
  %667 = load i32, i32* %21, align 4
  %668 = add nsw i32 %667, 1
  store i32 %668, i32* %21, align 4
  br label %549

669:                                              ; preds = %549
  br label %670

670:                                              ; preds = %669, %547
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %671 = load i32, i32* %17, align 4
  %672 = add nsw i32 %671, 1
  store i32 %672, i32* %20, align 4
  br label %673

673:                                              ; preds = %736, %670
  %674 = load i32, i32* %20, align 4
  %675 = add nsw i32 %674, -1
  store i32 %675, i32* %20, align 4
  %676 = load i32, i32* %19, align 4
  %677 = load i32, i32* %18, align 4
  %678 = add nsw i32 %677, %676
  store i32 %678, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %679

679:                                              ; preds = %732, %673
  %680 = load i32, i32* %21, align 4
  %681 = icmp slt i32 %680, 2
  br i1 %681, label %682, label %735

682:                                              ; preds = %679
  store i32 0, i32* %22, align 4
  br label %683

683:                                              ; preds = %728, %682
  %684 = load i32, i32* %22, align 4
  %685 = load i32, i32* %5, align 4
  %686 = icmp slt i32 %684, %685
  br i1 %686, label %687, label %731

687:                                              ; preds = %683
  %688 = load i32, i32* %21, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %689
  %691 = load i32, i32* %22, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds [8 x i32], [8 x i32]* %690, i64 0, i64 %692
  %694 = load i32, i32* %693, align 4
  %695 = load i32, i32* %20, align 4
  %696 = add nsw i32 %695, 1
  %697 = icmp sgt i32 %694, %696
  br i1 %697, label %698, label %712

698:                                              ; preds = %687
  %699 = load i32, i32* %21, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %700
  %702 = load i32, i32* %22, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds [8 x i32], [8 x i32]* %701, i64 0, i64 %703
  %705 = load i32, i32* %704, align 4
  %706 = load i32, i32* %20, align 4
  %707 = add nsw i32 %706, 16
  %708 = icmp slt i32 %705, %707
  br i1 %708, label %709, label %712

709:                                              ; preds = %698
  %710 = load i32, i32* %19, align 4
  %711 = add nsw i32 %710, 1
  store i32 %711, i32* %19, align 4
  br label %727

712:                                              ; preds = %698, %687
  %713 = load i32, i32* %21, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %714
  %716 = load i32, i32* %22, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds [8 x i32], [8 x i32]* %715, i64 0, i64 %717
  %719 = load i32, i32* %718, align 4
  %720 = load i32, i32* %20, align 4
  %721 = add nsw i32 %720, 1
  %722 = icmp eq i32 %719, %721
  br i1 %722, label %723, label %726

723:                                              ; preds = %712
  %724 = load i32, i32* %19, align 4
  %725 = add nsw i32 %724, 2
  store i32 %725, i32* %19, align 4
  br label %726

726:                                              ; preds = %723, %712
  br label %727

727:                                              ; preds = %726, %709
  br label %728

728:                                              ; preds = %727
  %729 = load i32, i32* %22, align 4
  %730 = add nsw i32 %729, 1
  store i32 %730, i32* %22, align 4
  br label %683

731:                                              ; preds = %683
  br label %732

732:                                              ; preds = %731
  %733 = load i32, i32* %21, align 4
  %734 = add nsw i32 %733, 1
  store i32 %734, i32* %21, align 4
  br label %679

735:                                              ; preds = %679
  br label %736

736:                                              ; preds = %735
  %737 = load i32, i32* %18, align 4
  %738 = load i32, i32* %19, align 4
  %739 = add nsw i32 %737, %738
  %740 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %741 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %740, i32 0, i32 6
  %742 = load i32, i32* %741, align 8
  %743 = icmp slt i32 %739, %742
  br i1 %743, label %673, label %744

744:                                              ; preds = %736
  %745 = load i32, i32* %18, align 4
  %746 = load i32, i32* %19, align 4
  %747 = add nsw i32 %745, %746
  %748 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %749 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %748, i32 0, i32 6
  %750 = load i32, i32* %749, align 8
  %751 = icmp eq i32 %747, %750
  br i1 %751, label %752, label %758

752:                                              ; preds = %744
  %753 = load i32, i32* %19, align 4
  %754 = load i32, i32* %18, align 4
  %755 = add nsw i32 %754, %753
  store i32 %755, i32* %18, align 4
  %756 = load i32, i32* %20, align 4
  %757 = add nsw i32 %756, -1
  store i32 %757, i32* %20, align 4
  br label %758

758:                                              ; preds = %752, %744
  store i32 0, i32* %21, align 4
  br label %759

759:                                              ; preds = %826, %758
  %760 = load i32, i32* %21, align 4
  %761 = icmp slt i32 %760, 2
  br i1 %761, label %762, label %829

762:                                              ; preds = %759
  store i32 0, i32* %22, align 4
  br label %763

763:                                              ; preds = %822, %762
  %764 = load i32, i32* %22, align 4
  %765 = load i32, i32* %5, align 4
  %766 = icmp slt i32 %764, %765
  br i1 %766, label %767, label %825

767:                                              ; preds = %763
  %768 = load i32, i32* %21, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %769
  %771 = load i32, i32* %22, align 4
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds [8 x i32], [8 x i32]* %770, i64 0, i64 %772
  %774 = load i32, i32* %773, align 4
  %775 = load i32, i32* %20, align 4
  %776 = add nsw i32 %775, 2
  %777 = icmp slt i32 %774, %776
  br i1 %777, label %778, label %786

778:                                              ; preds = %767
  %779 = load [8 x i32]*, [8 x i32]** %4, align 8
  %780 = load i32, i32* %21, align 4
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds [8 x i32], [8 x i32]* %779, i64 %781
  %783 = load i32, i32* %22, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds [8 x i32], [8 x i32]* %782, i64 0, i64 %784
  store i32 0, i32* %785, align 4
  br label %821

786:                                              ; preds = %767
  %787 = load i32, i32* %21, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %788
  %790 = load i32, i32* %22, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds [8 x i32], [8 x i32]* %789, i64 0, i64 %791
  %793 = load i32, i32* %792, align 4
  %794 = load i32, i32* %20, align 4
  %795 = sub nsw i32 %793, %794
  %796 = load [8 x i32]*, [8 x i32]** %4, align 8
  %797 = load i32, i32* %21, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds [8 x i32], [8 x i32]* %796, i64 %798
  %800 = load i32, i32* %22, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds [8 x i32], [8 x i32]* %799, i64 0, i64 %801
  store i32 %795, i32* %802, align 4
  %803 = load [8 x i32]*, [8 x i32]** %4, align 8
  %804 = load i32, i32* %21, align 4
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds [8 x i32], [8 x i32]* %803, i64 %805
  %807 = load i32, i32* %22, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds [8 x i32], [8 x i32]* %806, i64 0, i64 %808
  %810 = load i32, i32* %809, align 4
  %811 = icmp sgt i32 %810, 16
  br i1 %811, label %812, label %820

812:                                              ; preds = %786
  %813 = load [8 x i32]*, [8 x i32]** %4, align 8
  %814 = load i32, i32* %21, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds [8 x i32], [8 x i32]* %813, i64 %815
  %817 = load i32, i32* %22, align 4
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds [8 x i32], [8 x i32]* %816, i64 0, i64 %818
  store i32 16, i32* %819, align 4
  br label %820

820:                                              ; preds = %812, %786
  br label %821

821:                                              ; preds = %820, %778
  br label %822

822:                                              ; preds = %821
  %823 = load i32, i32* %22, align 4
  %824 = add nsw i32 %823, 1
  store i32 %824, i32* %22, align 4
  br label %763

825:                                              ; preds = %763
  br label %826

826:                                              ; preds = %825
  %827 = load i32, i32* %21, align 4
  %828 = add nsw i32 %827, 1
  store i32 %828, i32* %21, align 4
  br label %759

829:                                              ; preds = %759
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %830

830:                                              ; preds = %909, %829
  %831 = load i32, i32* %18, align 4
  %832 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %833 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %832, i32 0, i32 6
  %834 = load i32, i32* %833, align 8
  %835 = icmp slt i32 %831, %834
  br i1 %835, label %836, label %910

836:                                              ; preds = %830
  %837 = load [8 x i32]*, [8 x i32]** %4, align 8
  %838 = load i32, i32* %21, align 4
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds [8 x i32], [8 x i32]* %837, i64 %839
  %841 = load i32, i32* %22, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds [8 x i32], [8 x i32]* %840, i64 0, i64 %842
  %844 = load i32, i32* %843, align 4
  %845 = icmp sge i32 %844, 2
  br i1 %845, label %846, label %868

846:                                              ; preds = %836
  %847 = load [8 x i32]*, [8 x i32]** %4, align 8
  %848 = load i32, i32* %21, align 4
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds [8 x i32], [8 x i32]* %847, i64 %849
  %851 = load i32, i32* %22, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds [8 x i32], [8 x i32]* %850, i64 0, i64 %852
  %854 = load i32, i32* %853, align 4
  %855 = icmp slt i32 %854, 16
  br i1 %855, label %856, label %868

856:                                              ; preds = %846
  %857 = load [8 x i32]*, [8 x i32]** %4, align 8
  %858 = load i32, i32* %21, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds [8 x i32], [8 x i32]* %857, i64 %859
  %861 = load i32, i32* %22, align 4
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds [8 x i32], [8 x i32]* %860, i64 0, i64 %862
  %864 = load i32, i32* %863, align 4
  %865 = add nsw i32 %864, 1
  store i32 %865, i32* %863, align 4
  %866 = load i32, i32* %18, align 4
  %867 = add nsw i32 %866, 1
  store i32 %867, i32* %18, align 4
  br label %897

868:                                              ; preds = %846, %836
  %869 = load i32, i32* %21, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %15, i64 0, i64 %870
  %872 = load i32, i32* %22, align 4
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds [8 x i32], [8 x i32]* %871, i64 0, i64 %873
  %875 = load i32, i32* %874, align 4
  %876 = load i32, i32* %20, align 4
  %877 = add nsw i32 %876, 1
  %878 = icmp eq i32 %875, %877
  br i1 %878, label %879, label %896

879:                                              ; preds = %868
  %880 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %881 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %880, i32 0, i32 6
  %882 = load i32, i32* %881, align 8
  %883 = load i32, i32* %18, align 4
  %884 = add nsw i32 %883, 1
  %885 = icmp sgt i32 %882, %884
  br i1 %885, label %886, label %896

886:                                              ; preds = %879
  %887 = load [8 x i32]*, [8 x i32]** %4, align 8
  %888 = load i32, i32* %21, align 4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds [8 x i32], [8 x i32]* %887, i64 %889
  %891 = load i32, i32* %22, align 4
  %892 = sext i32 %891 to i64
  %893 = getelementptr inbounds [8 x i32], [8 x i32]* %890, i64 0, i64 %892
  store i32 2, i32* %893, align 4
  %894 = load i32, i32* %18, align 4
  %895 = add nsw i32 %894, 2
  store i32 %895, i32* %18, align 4
  br label %896

896:                                              ; preds = %886, %879, %868
  br label %897

897:                                              ; preds = %896, %856
  %898 = load i32, i32* %21, align 4
  %899 = icmp eq i32 %898, 1
  br i1 %899, label %900, label %908

900:                                              ; preds = %897
  store i32 0, i32* %21, align 4
  %901 = load i32, i32* %22, align 4
  %902 = add nsw i32 %901, 1
  store i32 %902, i32* %22, align 4
  %903 = load i32, i32* %22, align 4
  %904 = load i32, i32* %5, align 4
  %905 = icmp sge i32 %903, %904
  br i1 %905, label %906, label %907

906:                                              ; preds = %900
  br label %910

907:                                              ; preds = %900
  br label %909

908:                                              ; preds = %897
  store i32 1, i32* %21, align 4
  br label %909

909:                                              ; preds = %908, %907
  br label %830

910:                                              ; preds = %906, %830
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %911

911:                                              ; preds = %951, %910
  %912 = load i32, i32* %18, align 4
  %913 = load %struct.sbc_frame*, %struct.sbc_frame** %3, align 8
  %914 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %913, i32 0, i32 6
  %915 = load i32, i32* %914, align 8
  %916 = icmp slt i32 %912, %915
  br i1 %916, label %917, label %952

917:                                              ; preds = %911
  %918 = load [8 x i32]*, [8 x i32]** %4, align 8
  %919 = load i32, i32* %21, align 4
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds [8 x i32], [8 x i32]* %918, i64 %920
  %922 = load i32, i32* %22, align 4
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds [8 x i32], [8 x i32]* %921, i64 0, i64 %923
  %925 = load i32, i32* %924, align 4
  %926 = icmp slt i32 %925, 16
  br i1 %926, label %927, label %939

927:                                              ; preds = %917
  %928 = load [8 x i32]*, [8 x i32]** %4, align 8
  %929 = load i32, i32* %21, align 4
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds [8 x i32], [8 x i32]* %928, i64 %930
  %932 = load i32, i32* %22, align 4
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds [8 x i32], [8 x i32]* %931, i64 0, i64 %933
  %935 = load i32, i32* %934, align 4
  %936 = add nsw i32 %935, 1
  store i32 %936, i32* %934, align 4
  %937 = load i32, i32* %18, align 4
  %938 = add nsw i32 %937, 1
  store i32 %938, i32* %18, align 4
  br label %939

939:                                              ; preds = %927, %917
  %940 = load i32, i32* %21, align 4
  %941 = icmp eq i32 %940, 1
  br i1 %941, label %942, label %950

942:                                              ; preds = %939
  store i32 0, i32* %21, align 4
  %943 = load i32, i32* %22, align 4
  %944 = add nsw i32 %943, 1
  store i32 %944, i32* %22, align 4
  %945 = load i32, i32* %22, align 4
  %946 = load i32, i32* %5, align 4
  %947 = icmp sge i32 %945, %946
  br i1 %947, label %948, label %949

948:                                              ; preds = %942
  br label %952

949:                                              ; preds = %942
  br label %951

950:                                              ; preds = %939
  store i32 1, i32* %21, align 4
  br label %951

951:                                              ; preds = %950, %949
  br label %911

952:                                              ; preds = %948, %911
  br label %953

953:                                              ; preds = %952, %483
  br label %954

954:                                              ; preds = %953, %476
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
