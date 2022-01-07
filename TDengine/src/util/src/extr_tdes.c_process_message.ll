; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tdes.c_process_message.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tdes.c_process_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@initial_message_permutation = common dso_local global i32* null, align 8
@message_expansion = common dso_local global i32* null, align 8
@DECRYPTION_MODE = common dso_local global i32 0, align 4
@S1 = common dso_local global i64* null, align 8
@S2 = common dso_local global i64* null, align 8
@S3 = common dso_local global i64* null, align 8
@S4 = common dso_local global i64* null, align 8
@S5 = common dso_local global i64* null, align 8
@S6 = common dso_local global i64* null, align 8
@S7 = common dso_local global i64* null, align 8
@S8 = common dso_local global i64* null, align 8
@right_sub_message_permutation = common dso_local global i32* null, align 8
@final_message_permutation = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_message(i8* %0, i8* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca [8 x i8], align 1
  %14 = alloca [4 x i8], align 1
  %15 = alloca [4 x i8], align 1
  %16 = alloca [4 x i8], align 1
  %17 = alloca [4 x i8], align 1
  %18 = alloca [6 x i8], align 1
  %19 = alloca [4 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca [8 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 %3, i32* %8, align 4
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %25 = call i32 @memset(i8* %24, i32 0, i32 8)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @memset(i8* %26, i32 0, i32 8)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %74, %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 64
  br i1 %30, label %31, label %77

31:                                               ; preds = %28
  %32 = load i32*, i32** @initial_message_permutation, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %37, 1
  %39 = srem i32 %38, 8
  %40 = ashr i32 128, %39
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %12, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sdiv i32 %44, 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* %12, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %12, align 1
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %54, 1
  %56 = srem i32 %55, 8
  %57 = load i8, i8* %12, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, %56
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %12, align 1
  %61 = load i8, i8* %12, align 1
  %62 = zext i8 %61 to i32
  %63 = load i32, i32* %9, align 4
  %64 = srem i32 %63, 8
  %65 = ashr i32 %62, %64
  %66 = load i32, i32* %9, align 4
  %67 = sdiv i32 %66, 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %71, %65
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %69, align 1
  br label %74

74:                                               ; preds = %31
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %28

77:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %97, %77
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 4
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 %87
  store i8 %85, i8* %88, align 1
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 %95
  store i8 %93, i8* %96, align 1
  br label %97

97:                                               ; preds = %81
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %78

100:                                              ; preds = %78
  store i32 1, i32* %10, align 4
  br label %101

101:                                              ; preds = %695, %100
  %102 = load i32, i32* %10, align 4
  %103 = icmp sle i32 %102, 16
  br i1 %103, label %104, label %698

104:                                              ; preds = %101
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  %106 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %107 = call i32 @memcpy(i8* %105, i8* %106, i32 4)
  %108 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %109 = call i32 @memset(i8* %108, i32 0, i32 6)
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %155, %104
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %111, 48
  br i1 %112, label %113, label %158

113:                                              ; preds = %110
  %114 = load i32*, i32** @message_expansion, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %119, 1
  %121 = srem i32 %120, 8
  %122 = ashr i32 128, %121
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %12, align 1
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sdiv i32 %125, 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* %12, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %132, %130
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %12, align 1
  %135 = load i32, i32* %11, align 4
  %136 = sub nsw i32 %135, 1
  %137 = srem i32 %136, 8
  %138 = load i8, i8* %12, align 1
  %139 = zext i8 %138 to i32
  %140 = shl i32 %139, %137
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %12, align 1
  %142 = load i8, i8* %12, align 1
  %143 = zext i8 %142 to i32
  %144 = load i32, i32* %9, align 4
  %145 = srem i32 %144, 8
  %146 = ashr i32 %143, %145
  %147 = load i32, i32* %9, align 4
  %148 = sdiv i32 %147, 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = or i32 %152, %146
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %150, align 1
  br label %155

155:                                              ; preds = %113
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %110

158:                                              ; preds = %110
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @DECRYPTION_MODE, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i32, i32* %10, align 4
  %164 = sub nsw i32 17, %163
  store i32 %164, i32* %20, align 4
  br label %167

165:                                              ; preds = %158
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %20, align 4
  br label %167

167:                                              ; preds = %165, %162
  store i32 0, i32* %9, align 4
  br label %168

168:                                              ; preds = %190, %167
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %169, 6
  br i1 %170, label %171, label %193

171:                                              ; preds = %168
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %173 = load i32, i32* %20, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = xor i32 %187, %182
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %185, align 1
  br label %190

190:                                              ; preds = %171
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  br label %168

193:                                              ; preds = %168
  store i32 0, i32* %9, align 4
  br label %194

194:                                              ; preds = %201, %193
  %195 = load i32, i32* %9, align 4
  %196 = icmp slt i32 %195, 4
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 %199
  store i8 0, i8* %200, align 1
  br label %201

201:                                              ; preds = %197
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %194

204:                                              ; preds = %194
  store i8 0, i8* %21, align 1
  %205 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = and i32 %207, 128
  %209 = ashr i32 %208, 6
  %210 = load i8, i8* %21, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %211, %209
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %21, align 1
  %214 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = and i32 %216, 4
  %218 = ashr i32 %217, 2
  %219 = load i8, i8* %21, align 1
  %220 = zext i8 %219 to i32
  %221 = or i32 %220, %218
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %223 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = and i32 %225, 120
  %227 = ashr i32 %226, 3
  %228 = load i8, i8* %22, align 1
  %229 = zext i8 %228 to i32
  %230 = or i32 %229, %227
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %22, align 1
  %232 = load i64*, i64** @S1, align 8
  %233 = load i8, i8* %21, align 1
  %234 = zext i8 %233 to i32
  %235 = mul nsw i32 %234, 16
  %236 = load i8, i8* %22, align 1
  %237 = zext i8 %236 to i32
  %238 = add nsw i32 %235, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %232, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = trunc i64 %241 to i8
  %243 = zext i8 %242 to i32
  %244 = shl i32 %243, 4
  %245 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = or i32 %247, %244
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %245, align 1
  store i8 0, i8* %21, align 1
  %250 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = and i32 %252, 2
  %254 = load i8, i8* %21, align 1
  %255 = zext i8 %254 to i32
  %256 = or i32 %255, %253
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %21, align 1
  %258 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 1
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = and i32 %260, 16
  %262 = ashr i32 %261, 4
  %263 = load i8, i8* %21, align 1
  %264 = zext i8 %263 to i32
  %265 = or i32 %264, %262
  %266 = trunc i32 %265 to i8
  store i8 %266, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %267 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = and i32 %269, 1
  %271 = shl i32 %270, 3
  %272 = load i8, i8* %22, align 1
  %273 = zext i8 %272 to i32
  %274 = or i32 %273, %271
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %22, align 1
  %276 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 1
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = and i32 %278, 224
  %280 = ashr i32 %279, 5
  %281 = load i8, i8* %22, align 1
  %282 = zext i8 %281 to i32
  %283 = or i32 %282, %280
  %284 = trunc i32 %283 to i8
  store i8 %284, i8* %22, align 1
  %285 = load i64*, i64** @S2, align 8
  %286 = load i8, i8* %21, align 1
  %287 = zext i8 %286 to i32
  %288 = mul nsw i32 %287, 16
  %289 = load i8, i8* %22, align 1
  %290 = zext i8 %289 to i32
  %291 = add nsw i32 %288, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %285, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = trunc i64 %294 to i8
  %296 = zext i8 %295 to i32
  %297 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = or i32 %299, %296
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %297, align 1
  store i8 0, i8* %21, align 1
  %302 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 1
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = and i32 %304, 8
  %306 = ashr i32 %305, 2
  %307 = load i8, i8* %21, align 1
  %308 = zext i8 %307 to i32
  %309 = or i32 %308, %306
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %21, align 1
  %311 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 2
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = and i32 %313, 64
  %315 = ashr i32 %314, 6
  %316 = load i8, i8* %21, align 1
  %317 = zext i8 %316 to i32
  %318 = or i32 %317, %315
  %319 = trunc i32 %318 to i8
  store i8 %319, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %320 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 1
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i32
  %323 = and i32 %322, 7
  %324 = shl i32 %323, 1
  %325 = load i8, i8* %22, align 1
  %326 = zext i8 %325 to i32
  %327 = or i32 %326, %324
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %22, align 1
  %329 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 2
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = and i32 %331, 128
  %333 = ashr i32 %332, 7
  %334 = load i8, i8* %22, align 1
  %335 = zext i8 %334 to i32
  %336 = or i32 %335, %333
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %22, align 1
  %338 = load i64*, i64** @S3, align 8
  %339 = load i8, i8* %21, align 1
  %340 = zext i8 %339 to i32
  %341 = mul nsw i32 %340, 16
  %342 = load i8, i8* %22, align 1
  %343 = zext i8 %342 to i32
  %344 = add nsw i32 %341, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i64, i64* %338, i64 %345
  %347 = load i64, i64* %346, align 8
  %348 = trunc i64 %347 to i8
  %349 = zext i8 %348 to i32
  %350 = shl i32 %349, 4
  %351 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 1
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  %354 = or i32 %353, %350
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %351, align 1
  store i8 0, i8* %21, align 1
  %356 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 2
  %357 = load i8, i8* %356, align 1
  %358 = zext i8 %357 to i32
  %359 = and i32 %358, 32
  %360 = ashr i32 %359, 4
  %361 = load i8, i8* %21, align 1
  %362 = zext i8 %361 to i32
  %363 = or i32 %362, %360
  %364 = trunc i32 %363 to i8
  store i8 %364, i8* %21, align 1
  %365 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 2
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  %368 = and i32 %367, 1
  %369 = load i8, i8* %21, align 1
  %370 = zext i8 %369 to i32
  %371 = or i32 %370, %368
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %373 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 2
  %374 = load i8, i8* %373, align 1
  %375 = zext i8 %374 to i32
  %376 = and i32 %375, 30
  %377 = ashr i32 %376, 1
  %378 = load i8, i8* %22, align 1
  %379 = zext i8 %378 to i32
  %380 = or i32 %379, %377
  %381 = trunc i32 %380 to i8
  store i8 %381, i8* %22, align 1
  %382 = load i64*, i64** @S4, align 8
  %383 = load i8, i8* %21, align 1
  %384 = zext i8 %383 to i32
  %385 = mul nsw i32 %384, 16
  %386 = load i8, i8* %22, align 1
  %387 = zext i8 %386 to i32
  %388 = add nsw i32 %385, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i64, i64* %382, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = trunc i64 %391 to i8
  %393 = zext i8 %392 to i32
  %394 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 1
  %395 = load i8, i8* %394, align 1
  %396 = zext i8 %395 to i32
  %397 = or i32 %396, %393
  %398 = trunc i32 %397 to i8
  store i8 %398, i8* %394, align 1
  store i8 0, i8* %21, align 1
  %399 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 3
  %400 = load i8, i8* %399, align 1
  %401 = zext i8 %400 to i32
  %402 = and i32 %401, 128
  %403 = ashr i32 %402, 6
  %404 = load i8, i8* %21, align 1
  %405 = zext i8 %404 to i32
  %406 = or i32 %405, %403
  %407 = trunc i32 %406 to i8
  store i8 %407, i8* %21, align 1
  %408 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 3
  %409 = load i8, i8* %408, align 1
  %410 = zext i8 %409 to i32
  %411 = and i32 %410, 4
  %412 = ashr i32 %411, 2
  %413 = load i8, i8* %21, align 1
  %414 = zext i8 %413 to i32
  %415 = or i32 %414, %412
  %416 = trunc i32 %415 to i8
  store i8 %416, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %417 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 3
  %418 = load i8, i8* %417, align 1
  %419 = zext i8 %418 to i32
  %420 = and i32 %419, 120
  %421 = ashr i32 %420, 3
  %422 = load i8, i8* %22, align 1
  %423 = zext i8 %422 to i32
  %424 = or i32 %423, %421
  %425 = trunc i32 %424 to i8
  store i8 %425, i8* %22, align 1
  %426 = load i64*, i64** @S5, align 8
  %427 = load i8, i8* %21, align 1
  %428 = zext i8 %427 to i32
  %429 = mul nsw i32 %428, 16
  %430 = load i8, i8* %22, align 1
  %431 = zext i8 %430 to i32
  %432 = add nsw i32 %429, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i64, i64* %426, i64 %433
  %435 = load i64, i64* %434, align 8
  %436 = trunc i64 %435 to i8
  %437 = zext i8 %436 to i32
  %438 = shl i32 %437, 4
  %439 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 2
  %440 = load i8, i8* %439, align 1
  %441 = zext i8 %440 to i32
  %442 = or i32 %441, %438
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %439, align 1
  store i8 0, i8* %21, align 1
  %444 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 3
  %445 = load i8, i8* %444, align 1
  %446 = zext i8 %445 to i32
  %447 = and i32 %446, 2
  %448 = load i8, i8* %21, align 1
  %449 = zext i8 %448 to i32
  %450 = or i32 %449, %447
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %21, align 1
  %452 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 4
  %453 = load i8, i8* %452, align 1
  %454 = zext i8 %453 to i32
  %455 = and i32 %454, 16
  %456 = ashr i32 %455, 4
  %457 = load i8, i8* %21, align 1
  %458 = zext i8 %457 to i32
  %459 = or i32 %458, %456
  %460 = trunc i32 %459 to i8
  store i8 %460, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %461 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 3
  %462 = load i8, i8* %461, align 1
  %463 = zext i8 %462 to i32
  %464 = and i32 %463, 1
  %465 = shl i32 %464, 3
  %466 = load i8, i8* %22, align 1
  %467 = zext i8 %466 to i32
  %468 = or i32 %467, %465
  %469 = trunc i32 %468 to i8
  store i8 %469, i8* %22, align 1
  %470 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 4
  %471 = load i8, i8* %470, align 1
  %472 = zext i8 %471 to i32
  %473 = and i32 %472, 224
  %474 = ashr i32 %473, 5
  %475 = load i8, i8* %22, align 1
  %476 = zext i8 %475 to i32
  %477 = or i32 %476, %474
  %478 = trunc i32 %477 to i8
  store i8 %478, i8* %22, align 1
  %479 = load i64*, i64** @S6, align 8
  %480 = load i8, i8* %21, align 1
  %481 = zext i8 %480 to i32
  %482 = mul nsw i32 %481, 16
  %483 = load i8, i8* %22, align 1
  %484 = zext i8 %483 to i32
  %485 = add nsw i32 %482, %484
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i64, i64* %479, i64 %486
  %488 = load i64, i64* %487, align 8
  %489 = trunc i64 %488 to i8
  %490 = zext i8 %489 to i32
  %491 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 2
  %492 = load i8, i8* %491, align 1
  %493 = zext i8 %492 to i32
  %494 = or i32 %493, %490
  %495 = trunc i32 %494 to i8
  store i8 %495, i8* %491, align 1
  store i8 0, i8* %21, align 1
  %496 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 4
  %497 = load i8, i8* %496, align 1
  %498 = zext i8 %497 to i32
  %499 = and i32 %498, 8
  %500 = ashr i32 %499, 2
  %501 = load i8, i8* %21, align 1
  %502 = zext i8 %501 to i32
  %503 = or i32 %502, %500
  %504 = trunc i32 %503 to i8
  store i8 %504, i8* %21, align 1
  %505 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 5
  %506 = load i8, i8* %505, align 1
  %507 = zext i8 %506 to i32
  %508 = and i32 %507, 64
  %509 = ashr i32 %508, 6
  %510 = load i8, i8* %21, align 1
  %511 = zext i8 %510 to i32
  %512 = or i32 %511, %509
  %513 = trunc i32 %512 to i8
  store i8 %513, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %514 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 4
  %515 = load i8, i8* %514, align 1
  %516 = zext i8 %515 to i32
  %517 = and i32 %516, 7
  %518 = shl i32 %517, 1
  %519 = load i8, i8* %22, align 1
  %520 = zext i8 %519 to i32
  %521 = or i32 %520, %518
  %522 = trunc i32 %521 to i8
  store i8 %522, i8* %22, align 1
  %523 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 5
  %524 = load i8, i8* %523, align 1
  %525 = zext i8 %524 to i32
  %526 = and i32 %525, 128
  %527 = ashr i32 %526, 7
  %528 = load i8, i8* %22, align 1
  %529 = zext i8 %528 to i32
  %530 = or i32 %529, %527
  %531 = trunc i32 %530 to i8
  store i8 %531, i8* %22, align 1
  %532 = load i64*, i64** @S7, align 8
  %533 = load i8, i8* %21, align 1
  %534 = zext i8 %533 to i32
  %535 = mul nsw i32 %534, 16
  %536 = load i8, i8* %22, align 1
  %537 = zext i8 %536 to i32
  %538 = add nsw i32 %535, %537
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i64, i64* %532, i64 %539
  %541 = load i64, i64* %540, align 8
  %542 = trunc i64 %541 to i8
  %543 = zext i8 %542 to i32
  %544 = shl i32 %543, 4
  %545 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 3
  %546 = load i8, i8* %545, align 1
  %547 = zext i8 %546 to i32
  %548 = or i32 %547, %544
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %545, align 1
  store i8 0, i8* %21, align 1
  %550 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 5
  %551 = load i8, i8* %550, align 1
  %552 = zext i8 %551 to i32
  %553 = and i32 %552, 32
  %554 = ashr i32 %553, 4
  %555 = load i8, i8* %21, align 1
  %556 = zext i8 %555 to i32
  %557 = or i32 %556, %554
  %558 = trunc i32 %557 to i8
  store i8 %558, i8* %21, align 1
  %559 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 5
  %560 = load i8, i8* %559, align 1
  %561 = zext i8 %560 to i32
  %562 = and i32 %561, 1
  %563 = load i8, i8* %21, align 1
  %564 = zext i8 %563 to i32
  %565 = or i32 %564, %562
  %566 = trunc i32 %565 to i8
  store i8 %566, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %567 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 5
  %568 = load i8, i8* %567, align 1
  %569 = zext i8 %568 to i32
  %570 = and i32 %569, 30
  %571 = ashr i32 %570, 1
  %572 = load i8, i8* %22, align 1
  %573 = zext i8 %572 to i32
  %574 = or i32 %573, %571
  %575 = trunc i32 %574 to i8
  store i8 %575, i8* %22, align 1
  %576 = load i64*, i64** @S8, align 8
  %577 = load i8, i8* %21, align 1
  %578 = zext i8 %577 to i32
  %579 = mul nsw i32 %578, 16
  %580 = load i8, i8* %22, align 1
  %581 = zext i8 %580 to i32
  %582 = add nsw i32 %579, %581
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i64, i64* %576, i64 %583
  %585 = load i64, i64* %584, align 8
  %586 = trunc i64 %585 to i8
  %587 = zext i8 %586 to i32
  %588 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 3
  %589 = load i8, i8* %588, align 1
  %590 = zext i8 %589 to i32
  %591 = or i32 %590, %587
  %592 = trunc i32 %591 to i8
  store i8 %592, i8* %588, align 1
  store i32 0, i32* %9, align 4
  br label %593

593:                                              ; preds = %600, %204
  %594 = load i32, i32* %9, align 4
  %595 = icmp slt i32 %594, 4
  br i1 %595, label %596, label %603

596:                                              ; preds = %593
  %597 = load i32, i32* %9, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %598
  store i8 0, i8* %599, align 1
  br label %600

600:                                              ; preds = %596
  %601 = load i32, i32* %9, align 4
  %602 = add nsw i32 %601, 1
  store i32 %602, i32* %9, align 4
  br label %593

603:                                              ; preds = %593
  store i32 0, i32* %9, align 4
  br label %604

604:                                              ; preds = %649, %603
  %605 = load i32, i32* %9, align 4
  %606 = icmp slt i32 %605, 32
  br i1 %606, label %607, label %652

607:                                              ; preds = %604
  %608 = load i32*, i32** @right_sub_message_permutation, align 8
  %609 = load i32, i32* %9, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32, i32* %608, i64 %610
  %612 = load i32, i32* %611, align 4
  store i32 %612, i32* %11, align 4
  %613 = load i32, i32* %11, align 4
  %614 = sub nsw i32 %613, 1
  %615 = srem i32 %614, 8
  %616 = ashr i32 128, %615
  %617 = trunc i32 %616 to i8
  store i8 %617, i8* %12, align 1
  %618 = load i32, i32* %11, align 4
  %619 = sub nsw i32 %618, 1
  %620 = sdiv i32 %619, 8
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 %621
  %623 = load i8, i8* %622, align 1
  %624 = zext i8 %623 to i32
  %625 = load i8, i8* %12, align 1
  %626 = zext i8 %625 to i32
  %627 = and i32 %626, %624
  %628 = trunc i32 %627 to i8
  store i8 %628, i8* %12, align 1
  %629 = load i32, i32* %11, align 4
  %630 = sub nsw i32 %629, 1
  %631 = srem i32 %630, 8
  %632 = load i8, i8* %12, align 1
  %633 = zext i8 %632 to i32
  %634 = shl i32 %633, %631
  %635 = trunc i32 %634 to i8
  store i8 %635, i8* %12, align 1
  %636 = load i8, i8* %12, align 1
  %637 = zext i8 %636 to i32
  %638 = load i32, i32* %9, align 4
  %639 = srem i32 %638, 8
  %640 = ashr i32 %637, %639
  %641 = load i32, i32* %9, align 4
  %642 = sdiv i32 %641, 8
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %643
  %645 = load i8, i8* %644, align 1
  %646 = zext i8 %645 to i32
  %647 = or i32 %646, %640
  %648 = trunc i32 %647 to i8
  store i8 %648, i8* %644, align 1
  br label %649

649:                                              ; preds = %607
  %650 = load i32, i32* %9, align 4
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %9, align 4
  br label %604

652:                                              ; preds = %604
  store i32 0, i32* %9, align 4
  br label %653

653:                                              ; preds = %669, %652
  %654 = load i32, i32* %9, align 4
  %655 = icmp slt i32 %654, 4
  br i1 %655, label %656, label %672

656:                                              ; preds = %653
  %657 = load i32, i32* %9, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 %658
  %660 = load i8, i8* %659, align 1
  %661 = zext i8 %660 to i32
  %662 = load i32, i32* %9, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %663
  %665 = load i8, i8* %664, align 1
  %666 = zext i8 %665 to i32
  %667 = xor i32 %666, %661
  %668 = trunc i32 %667 to i8
  store i8 %668, i8* %664, align 1
  br label %669

669:                                              ; preds = %656
  %670 = load i32, i32* %9, align 4
  %671 = add nsw i32 %670, 1
  store i32 %671, i32* %9, align 4
  br label %653

672:                                              ; preds = %653
  store i32 0, i32* %9, align 4
  br label %673

673:                                              ; preds = %691, %672
  %674 = load i32, i32* %9, align 4
  %675 = icmp slt i32 %674, 4
  br i1 %675, label %676, label %694

676:                                              ; preds = %673
  %677 = load i32, i32* %9, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 %678
  %680 = load i8, i8* %679, align 1
  %681 = load i32, i32* %9, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 %682
  store i8 %680, i8* %683, align 1
  %684 = load i32, i32* %9, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 %685
  %687 = load i8, i8* %686, align 1
  %688 = load i32, i32* %9, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 %689
  store i8 %687, i8* %690, align 1
  br label %691

691:                                              ; preds = %676
  %692 = load i32, i32* %9, align 4
  %693 = add nsw i32 %692, 1
  store i32 %693, i32* %9, align 4
  br label %673

694:                                              ; preds = %673
  br label %695

695:                                              ; preds = %694
  %696 = load i32, i32* %10, align 4
  %697 = add nsw i32 %696, 1
  store i32 %697, i32* %10, align 4
  br label %101

698:                                              ; preds = %101
  store i32 0, i32* %9, align 4
  br label %699

699:                                              ; preds = %718, %698
  %700 = load i32, i32* %9, align 4
  %701 = icmp slt i32 %700, 4
  br i1 %701, label %702, label %721

702:                                              ; preds = %699
  %703 = load i32, i32* %9, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 %704
  %706 = load i8, i8* %705, align 1
  %707 = load i32, i32* %9, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 %708
  store i8 %706, i8* %709, align 1
  %710 = load i32, i32* %9, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 %711
  %713 = load i8, i8* %712, align 1
  %714 = load i32, i32* %9, align 4
  %715 = add nsw i32 4, %714
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 %716
  store i8 %713, i8* %717, align 1
  br label %718

718:                                              ; preds = %702
  %719 = load i32, i32* %9, align 4
  %720 = add nsw i32 %719, 1
  store i32 %720, i32* %9, align 4
  br label %699

721:                                              ; preds = %699
  store i32 0, i32* %9, align 4
  br label %722

722:                                              ; preds = %768, %721
  %723 = load i32, i32* %9, align 4
  %724 = icmp slt i32 %723, 64
  br i1 %724, label %725, label %771

725:                                              ; preds = %722
  %726 = load i32*, i32** @final_message_permutation, align 8
  %727 = load i32, i32* %9, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds i32, i32* %726, i64 %728
  %730 = load i32, i32* %729, align 4
  store i32 %730, i32* %11, align 4
  %731 = load i32, i32* %11, align 4
  %732 = sub nsw i32 %731, 1
  %733 = srem i32 %732, 8
  %734 = ashr i32 128, %733
  %735 = trunc i32 %734 to i8
  store i8 %735, i8* %12, align 1
  %736 = load i32, i32* %11, align 4
  %737 = sub nsw i32 %736, 1
  %738 = sdiv i32 %737, 8
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 %739
  %741 = load i8, i8* %740, align 1
  %742 = zext i8 %741 to i32
  %743 = load i8, i8* %12, align 1
  %744 = zext i8 %743 to i32
  %745 = and i32 %744, %742
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %12, align 1
  %747 = load i32, i32* %11, align 4
  %748 = sub nsw i32 %747, 1
  %749 = srem i32 %748, 8
  %750 = load i8, i8* %12, align 1
  %751 = zext i8 %750 to i32
  %752 = shl i32 %751, %749
  %753 = trunc i32 %752 to i8
  store i8 %753, i8* %12, align 1
  %754 = load i8, i8* %12, align 1
  %755 = zext i8 %754 to i32
  %756 = load i32, i32* %9, align 4
  %757 = srem i32 %756, 8
  %758 = ashr i32 %755, %757
  %759 = load i8*, i8** %6, align 8
  %760 = load i32, i32* %9, align 4
  %761 = sdiv i32 %760, 8
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i8, i8* %759, i64 %762
  %764 = load i8, i8* %763, align 1
  %765 = zext i8 %764 to i32
  %766 = or i32 %765, %758
  %767 = trunc i32 %766 to i8
  store i8 %767, i8* %763, align 1
  br label %768

768:                                              ; preds = %725
  %769 = load i32, i32* %9, align 4
  %770 = add nsw i32 %769, 1
  store i32 %770, i32* %9, align 4
  br label %722

771:                                              ; preds = %722
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
