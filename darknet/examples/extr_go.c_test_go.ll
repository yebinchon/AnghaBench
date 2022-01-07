; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_test_go.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_test_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"%.2f%% Win Chance\0A\00", align 1
@nind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%d: Pass, %.2f%%\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%d: %c %d, %.2f%%\0A\00", align 1
@noi = common dso_local global i64 0, align 8
@inverted = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"X Enter move: \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"O Enter move: \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%c %d\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%c %c %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_go(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8, align 1
  %29 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32* @load_network(i8* %30, i8* %31, i32 0)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @set_batch_network(i32* %33, i32 1)
  %35 = call i32 @time(i32 0)
  %36 = call i32 @srand(i32 %35)
  %37 = call float* @calloc(i32 1083, i32 4)
  store float* %37, float** %9, align 8
  %38 = load float*, float** %9, align 8
  %39 = call i32 @flip_board(float* %38)
  %40 = call float* @calloc(i32 362, i32 4)
  store float* %40, float** %10, align 8
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %3, %336
  %42 = load i32*, i32** %8, align 8
  %43 = load float*, float** %9, align 8
  %44 = load float*, float** %10, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call float @predict_move2(i32* %42, float* %43, float* %44, i32 %45)
  store float %46, float* %12, align 4
  %47 = load float, float* %12, align 4
  %48 = fadd float %47, 1.000000e+00
  %49 = fdiv float %48, 2.000000e+00
  %50 = fmul float %49, 1.000000e+02
  %51 = fpext float %50 to double
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), double %51)
  %53 = load i32, i32* @nind, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %13, align 8
  %56 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %14, align 8
  %57 = load float*, float** %10, align 8
  %58 = load i32, i32* @nind, align 4
  %59 = call i32 @top_k(float* %57, i32 362, i32 %58, i32* %56)
  %60 = load i32, i32* @stderr, align 4
  %61 = load float*, float** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @print_board(i32 %60, float* %61, i32 %62, i32* %56)
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %124, %41
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @nind, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %127

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %56, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = sdiv i32 %73, 19
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %17, align 4
  %76 = srem i32 %75, 19
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp eq i32 %77, 19
  br i1 %78, label %79, label %90

79:                                               ; preds = %68
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  %82 = load float*, float** %10, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  %87 = fmul float %86, 1.000000e+02
  %88 = fpext float %87 to double
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %81, double %88)
  br label %123

90:                                               ; preds = %68
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 65
  %95 = load i32, i32* %16, align 4
  %96 = icmp sgt i32 %95, 7
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i64, i64* @noi, align 8
  %99 = icmp ne i64 %98, 0
  br label %100

100:                                              ; preds = %97, %90
  %101 = phi i1 [ false, %90 ], [ %99, %97 ]
  %102 = zext i1 %101 to i32
  %103 = mul nsw i32 1, %102
  %104 = add nsw i32 %94, %103
  %105 = load i64, i64* @inverted, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 19, %108
  br label %113

110:                                              ; preds = %100
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi i32 [ %109, %107 ], [ %112, %110 ]
  %115 = load float*, float** %10, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  %120 = fmul float %119, 1.000000e+02
  %121 = fpext float %120 to double
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %104, i32 %114, double %121)
  br label %123

123:                                              ; preds = %113, %79
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %64

127:                                              ; preds = %64
  %128 = load i32, i32* %11, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %134

132:                                              ; preds = %127
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %130
  %135 = load i32, i32* @stdin, align 4
  %136 = call i8* @fgetl(i32 %135)
  store i8* %136, i8** %19, align 8
  store i32 1, i32* %20, align 4
  %137 = load i8*, i8** %19, align 8
  %138 = call i32 (i8*, i8*, ...) @sscanf(i8* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %20)
  store i32 %138, i32* %21, align 4
  %139 = load i8*, i8** %19, align 8
  %140 = call i32 (i8*, i8*, ...) @sscanf(i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %18)
  store i32 %140, i32* %22, align 4
  %141 = load i8*, i8** %19, align 8
  %142 = call i64 @strlen(i8* %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %134
  %145 = load i32, i32* %21, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %144, %134
  %148 = load i32, i32* %20, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %20, align 4
  %151 = load i32, i32* @nind, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %147
  %154 = load i32, i32* %20, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %56, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %23, align 4
  %158 = load i32, i32* %23, align 4
  %159 = sdiv i32 %158, 19
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %23, align 4
  %161 = srem i32 %160, 19
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %15, align 4
  %163 = icmp slt i32 %162, 19
  br i1 %163, label %164, label %169

164:                                              ; preds = %153
  %165 = load float*, float** %9, align 8
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @move_go(float* %165, i32 1, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %153
  br label %170

170:                                              ; preds = %169, %147
  br label %336

171:                                              ; preds = %144
  %172 = load i32, i32* %22, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %335

174:                                              ; preds = %171
  %175 = load i8, i8* %18, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp sle i32 %176, 84
  br i1 %177, label %178, label %215

178:                                              ; preds = %174
  %179 = load i8, i8* %18, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp sge i32 %180, 65
  br i1 %181, label %182, label %215

182:                                              ; preds = %178
  %183 = load i8*, i8** %19, align 8
  %184 = call i32 (i8*, i8*, ...) @sscanf(i8* %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %18, i32* %15)
  store i32 %184, i32* %24, align 4
  %185 = load i64, i64* @inverted, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i32, i32* %15, align 4
  %189 = sub nsw i32 19, %188
  br label %193

190:                                              ; preds = %182
  %191 = load i32, i32* %15, align 4
  %192 = sub nsw i32 %191, 1
  br label %193

193:                                              ; preds = %190, %187
  %194 = phi i32 [ %189, %187 ], [ %192, %190 ]
  store i32 %194, i32* %15, align 4
  %195 = load i8, i8* %18, align 1
  %196 = sext i8 %195 to i32
  %197 = sub nsw i32 %196, 65
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %16, align 4
  %199 = icmp sgt i32 %198, 7
  br i1 %199, label %200, label %206

200:                                              ; preds = %193
  %201 = load i64, i64* @noi, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32, i32* %16, align 4
  %205 = sub nsw i32 %204, 1
  store i32 %205, i32* %16, align 4
  br label %206

206:                                              ; preds = %203, %200, %193
  %207 = load i32, i32* %24, align 4
  %208 = icmp eq i32 %207, 2
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load float*, float** %9, align 8
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* %16, align 4
  %213 = call i32 @move_go(float* %210, i32 1, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %209, %206
  br label %334

215:                                              ; preds = %178, %174
  %216 = load i8, i8* %18, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 112
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %333

220:                                              ; preds = %215
  %221 = load i8, i8* %18, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 98
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  %225 = load i8, i8* %18, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 119
  br i1 %227, label %228, label %283

228:                                              ; preds = %224, %220
  %229 = load i8*, i8** %19, align 8
  %230 = call i32 (i8*, i8*, ...) @sscanf(i8* %229, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %25, i8* %18, i32* %15)
  store i32 %230, i32* %26, align 4
  %231 = load i64, i64* @inverted, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = load i32, i32* %15, align 4
  %235 = sub nsw i32 19, %234
  br label %239

236:                                              ; preds = %228
  %237 = load i32, i32* %15, align 4
  %238 = sub nsw i32 %237, 1
  br label %239

239:                                              ; preds = %236, %233
  %240 = phi i32 [ %235, %233 ], [ %238, %236 ]
  store i32 %240, i32* %15, align 4
  %241 = load i8, i8* %18, align 1
  %242 = sext i8 %241 to i32
  %243 = sub nsw i32 %242, 65
  store i32 %243, i32* %16, align 4
  %244 = load i32, i32* %16, align 4
  %245 = icmp sgt i32 %244, 7
  br i1 %245, label %246, label %252

246:                                              ; preds = %239
  %247 = load i64, i64* @noi, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32, i32* %16, align 4
  %251 = sub nsw i32 %250, 1
  store i32 %251, i32* %16, align 4
  br label %252

252:                                              ; preds = %249, %246, %239
  %253 = load i32, i32* %26, align 4
  %254 = icmp eq i32 %253, 3
  br i1 %254, label %255, label %282

255:                                              ; preds = %252
  %256 = load i8, i8* %25, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 98
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i32 1, i32 -1
  store i32 %260, i32* %27, align 4
  %261 = load i32, i32* %27, align 4
  %262 = load i32, i32* %11, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %272

264:                                              ; preds = %255
  %265 = load float*, float** %9, align 8
  %266 = load i32, i32* %15, align 4
  %267 = mul nsw i32 %266, 19
  %268 = load i32, i32* %16, align 4
  %269 = add nsw i32 %267, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %265, i64 %270
  store float 1.000000e+00, float* %271, align 4
  br label %281

272:                                              ; preds = %255
  %273 = load float*, float** %9, align 8
  %274 = load i32, i32* %15, align 4
  %275 = mul nsw i32 %274, 19
  %276 = add nsw i32 361, %275
  %277 = load i32, i32* %16, align 4
  %278 = add nsw i32 %276, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %273, i64 %279
  store float 1.000000e+00, float* %280, align 4
  br label %281

281:                                              ; preds = %272, %264
  br label %282

282:                                              ; preds = %281, %252
  br label %332

283:                                              ; preds = %224
  %284 = load i8, i8* %18, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 99
  br i1 %286, label %287, label %331

287:                                              ; preds = %283
  %288 = load i8*, i8** %19, align 8
  %289 = call i32 (i8*, i8*, ...) @sscanf(i8* %288, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %28, i8* %18, i32* %15)
  store i32 %289, i32* %29, align 4
  %290 = load i64, i64* @inverted, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %287
  %293 = load i32, i32* %15, align 4
  %294 = sub nsw i32 19, %293
  br label %298

295:                                              ; preds = %287
  %296 = load i32, i32* %15, align 4
  %297 = sub nsw i32 %296, 1
  br label %298

298:                                              ; preds = %295, %292
  %299 = phi i32 [ %294, %292 ], [ %297, %295 ]
  store i32 %299, i32* %15, align 4
  %300 = load i8, i8* %18, align 1
  %301 = sext i8 %300 to i32
  %302 = sub nsw i32 %301, 65
  store i32 %302, i32* %16, align 4
  %303 = load i32, i32* %16, align 4
  %304 = icmp sgt i32 %303, 7
  br i1 %304, label %305, label %311

305:                                              ; preds = %298
  %306 = load i64, i64* @noi, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load i32, i32* %16, align 4
  %310 = sub nsw i32 %309, 1
  store i32 %310, i32* %16, align 4
  br label %311

311:                                              ; preds = %308, %305, %298
  %312 = load i32, i32* %29, align 4
  %313 = icmp eq i32 %312, 3
  br i1 %313, label %314, label %330

314:                                              ; preds = %311
  %315 = load float*, float** %9, align 8
  %316 = load i32, i32* %15, align 4
  %317 = mul nsw i32 %316, 19
  %318 = load i32, i32* %16, align 4
  %319 = add nsw i32 %317, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds float, float* %315, i64 %320
  store float 0.000000e+00, float* %321, align 4
  %322 = load float*, float** %9, align 8
  %323 = load i32, i32* %15, align 4
  %324 = mul nsw i32 %323, 19
  %325 = add nsw i32 361, %324
  %326 = load i32, i32* %16, align 4
  %327 = add nsw i32 %325, %326
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds float, float* %322, i64 %328
  store float 0.000000e+00, float* %329, align 4
  br label %330

330:                                              ; preds = %314, %311
  br label %331

331:                                              ; preds = %330, %283
  br label %332

332:                                              ; preds = %331, %282
  br label %333

333:                                              ; preds = %332, %219
  br label %334

334:                                              ; preds = %333, %214
  br label %335

335:                                              ; preds = %334, %171
  br label %336

336:                                              ; preds = %335, %170
  %337 = load i8*, i8** %19, align 8
  %338 = call i32 @free(i8* %337)
  %339 = load float*, float** %9, align 8
  %340 = call i32 @flip_board(float* %339)
  %341 = load i32, i32* %11, align 4
  %342 = sub nsw i32 0, %341
  store i32 %342, i32* %11, align 4
  %343 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %343)
  br label %41
}

declare dso_local i32* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(i32*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local float* @calloc(i32, i32) #1

declare dso_local i32 @flip_board(float*) #1

declare dso_local float @predict_move2(i32*, float*, float*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @top_k(float*, i32, i32, i32*) #1

declare dso_local i32 @print_board(i32, float*, i32, i32*) #1

declare dso_local i8* @fgetl(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @move_go(float*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
