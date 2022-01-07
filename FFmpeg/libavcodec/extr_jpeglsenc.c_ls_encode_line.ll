; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeglsenc.c_ls_encode_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeglsenc.c_ls_encode_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64*, i32*, i32 }

@ff_log2_run = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i8*, i8*, i32, i32, i32, i32, i32)* @ls_encode_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ls_encode_line(%struct.TYPE_7__* %0, i32* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
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
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %34

34:                                               ; preds = %445, %9
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %449

38:                                               ; preds = %34
  %39 = load i32, i32* %19, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %16, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i32 @R(i8* %42, i32 %45)
  br label %51

47:                                               ; preds = %38
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @R(i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi i32 [ %46, %41 ], [ %50, %47 ]
  store i32 %52, i32* %20, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %19, align 4
  %55 = call i32 @R(i8* %53, i32 %54)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* %16, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @R(i8* %59, i32 %62)
  br label %66

64:                                               ; preds = %51
  %65 = load i32, i32* %14, align 4
  br label %66

66:                                               ; preds = %64, %58
  %67 = phi i32 [ %63, %58 ], [ %65, %64 ]
  store i32 %67, i32* %22, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %16, align 4
  %71 = sub nsw i32 %69, %70
  %72 = icmp sge i32 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %19, align 4
  %76 = call i32 @R(i8* %74, i32 %75)
  br label %83

77:                                               ; preds = %66
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i32 @R(i8* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %73
  %84 = phi i32 [ %76, %73 ], [ %82, %77 ]
  store i32 %84, i32* %23, align 4
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %21, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %24, align 4
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %22, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %25, align 4
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %20, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %26, align 4
  %94 = load i32, i32* %24, align 4
  %95 = call i32 @FFABS(i32 %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sle i32 %95, %98
  br i1 %99, label %100, label %314

100:                                              ; preds = %83
  %101 = load i32, i32* %25, align 4
  %102 = call i32 @FFABS(i32 %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sle i32 %102, %105
  br i1 %106, label %107, label %314

107:                                              ; preds = %100
  %108 = load i32, i32* %26, align 4
  %109 = call i32 @FFABS(i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp sle i32 %109, %112
  br i1 %113, label %114, label %314

114:                                              ; preds = %107
  store i32 0, i32* %32, align 4
  %115 = load i32, i32* %20, align 4
  store i32 %115, i32* %30, align 4
  br label %116

116:                                              ; preds = %133, %114
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load i8*, i8** %13, align 8
  %122 = load i32, i32* %19, align 4
  %123 = call i32 @R(i8* %121, i32 %122)
  %124 = load i32, i32* %30, align 4
  %125 = sub nsw i32 %123, %124
  %126 = call i32 @FFABS(i32 %125)
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sle i32 %126, %129
  br label %131

131:                                              ; preds = %120, %116
  %132 = phi i1 [ false, %116 ], [ %130, %120 ]
  br i1 %132, label %133, label %143

133:                                              ; preds = %131
  %134 = load i32, i32* %32, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %32, align 4
  %136 = load i8*, i8** %13, align 8
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* %20, align 4
  %139 = call i32 @W(i8* %136, i32 %137, i32 %138)
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %19, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %19, align 4
  br label %116

143:                                              ; preds = %131
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %32, align 4
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp slt i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @ls_encode_run(%struct.TYPE_7__* %144, i32* %145, i32 %146, i32 %147, i32 %151)
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %143
  br label %449

157:                                              ; preds = %143
  %158 = load i8*, i8** %12, align 8
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @R(i8* %158, i32 %159)
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* %21, align 4
  %163 = sub nsw i32 %161, %162
  %164 = call i32 @FFABS(i32 %163)
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp sle i32 %164, %167
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %31, align 4
  %170 = load i32, i32* %31, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %157
  %173 = load i32, i32* %20, align 4
  br label %176

174:                                              ; preds = %157
  %175 = load i32, i32* %21, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  store i32 %177, i32* %28, align 4
  %178 = load i8*, i8** %13, align 8
  %179 = load i32, i32* %19, align 4
  %180 = call i32 @R(i8* %178, i32 %179)
  %181 = load i32, i32* %28, align 4
  %182 = sub nsw i32 %180, %181
  store i32 %182, i32* %27, align 4
  %183 = load i32, i32* %31, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %176
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* %21, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i32, i32* %27, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %27, align 4
  br label %192

192:                                              ; preds = %189, %185, %176
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %257

197:                                              ; preds = %192
  %198 = load i32, i32* %27, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %197
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %27, align 4
  %205 = add nsw i32 %203, %204
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = sdiv i32 %205, %208
  store i32 %209, i32* %27, align 4
  br label %221

210:                                              ; preds = %197
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %27, align 4
  %215 = sub nsw i32 %213, %214
  %216 = sub nsw i32 0, %215
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sdiv i32 %216, %219
  store i32 %220, i32* %27, align 4
  br label %221

221:                                              ; preds = %210, %200
  %222 = load i32, i32* %31, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %21, align 4
  %226 = load i32, i32* %20, align 4
  %227 = icmp sge i32 %225, %226
  br i1 %227, label %228, label %240

228:                                              ; preds = %224, %221
  %229 = load i32, i32* %28, align 4
  %230 = load i32, i32* %27, align 4
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %230, %233
  %235 = add nsw i32 %229, %234
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @av_clip(i32 %235, i32 0, i32 %238)
  store i32 %239, i32* %20, align 4
  br label %252

240:                                              ; preds = %224
  %241 = load i32, i32* %28, align 4
  %242 = load i32, i32* %27, align 4
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = mul nsw i32 %242, %245
  %247 = sub nsw i32 %241, %246
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @av_clip(i32 %247, i32 0, i32 %250)
  store i32 %251, i32* %20, align 4
  br label %252

252:                                              ; preds = %240, %228
  %253 = load i8*, i8** %13, align 8
  %254 = load i32, i32* %19, align 4
  %255 = load i32, i32* %20, align 4
  %256 = call i32 @W(i8* %253, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %252, %192
  %258 = load i32, i32* %27, align 4
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %257
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %27, align 4
  %265 = add nsw i32 %264, %263
  store i32 %265, i32* %27, align 4
  br label %266

266:                                              ; preds = %260, %257
  %267 = load i32, i32* %27, align 4
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, 1
  %272 = ashr i32 %271, 1
  %273 = icmp sge i32 %267, %272
  br i1 %273, label %274, label %280

274:                                              ; preds = %266
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %27, align 4
  %279 = sub nsw i32 %278, %277
  store i32 %279, i32* %27, align 4
  br label %280

280:                                              ; preds = %274, %266
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %282 = load i32*, i32** %11, align 8
  %283 = load i32, i32* %31, align 4
  %284 = load i32, i32* %27, align 4
  %285 = load i32*, i32** @ff_log2_run, align 8
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 3
  %288 = load i64*, i64** %287, align 8
  %289 = load i32, i32* %17, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64, i64* %288, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = getelementptr inbounds i32, i32* %285, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @ls_encode_runterm(%struct.TYPE_7__* %281, i32* %282, i32 %283, i32 %284, i32 %294)
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 3
  %298 = load i64*, i64** %297, align 8
  %299 = load i32, i32* %17, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %298, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = icmp ugt i64 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %280
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 3
  %307 = load i64*, i64** %306, align 8
  %308 = load i32, i32* %17, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %307, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = add i64 %311, -1
  store i64 %312, i64* %310, align 8
  br label %313

313:                                              ; preds = %304, %280
  br label %445

314:                                              ; preds = %107, %100, %83
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %316 = load i32, i32* %24, align 4
  %317 = call i32 @ff_jpegls_quantize(%struct.TYPE_7__* %315, i32 %316)
  %318 = mul nsw i32 %317, 81
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %320 = load i32, i32* %25, align 4
  %321 = call i32 @ff_jpegls_quantize(%struct.TYPE_7__* %319, i32 %320)
  %322 = mul nsw i32 %321, 9
  %323 = add nsw i32 %318, %322
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %325 = load i32, i32* %26, align 4
  %326 = call i32 @ff_jpegls_quantize(%struct.TYPE_7__* %324, i32 %325)
  %327 = add nsw i32 %323, %326
  store i32 %327, i32* %33, align 4
  %328 = load i32, i32* %20, align 4
  %329 = load i32, i32* %20, align 4
  %330 = load i32, i32* %21, align 4
  %331 = add nsw i32 %329, %330
  %332 = load i32, i32* %22, align 4
  %333 = sub nsw i32 %331, %332
  %334 = load i32, i32* %21, align 4
  %335 = call i32 @mid_pred(i32 %328, i32 %333, i32 %334)
  store i32 %335, i32* %28, align 4
  %336 = load i32, i32* %33, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %359

338:                                              ; preds = %314
  %339 = load i32, i32* %33, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %33, align 4
  store i32 1, i32* %29, align 4
  %341 = load i32, i32* %28, align 4
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 4
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %33, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 %341, %348
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @av_clip(i32 %349, i32 0, i32 %352)
  store i32 %353, i32* %28, align 4
  %354 = load i32, i32* %28, align 4
  %355 = load i8*, i8** %13, align 8
  %356 = load i32, i32* %19, align 4
  %357 = call i32 @R(i8* %355, i32 %356)
  %358 = sub nsw i32 %354, %357
  store i32 %358, i32* %27, align 4
  br label %378

359:                                              ; preds = %314
  store i32 0, i32* %29, align 4
  %360 = load i32, i32* %28, align 4
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 4
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %33, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = add nsw i32 %360, %367
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 5
  %371 = load i32, i32* %370, align 8
  %372 = call i32 @av_clip(i32 %368, i32 0, i32 %371)
  store i32 %372, i32* %28, align 4
  %373 = load i8*, i8** %13, align 8
  %374 = load i32, i32* %19, align 4
  %375 = call i32 @R(i8* %373, i32 %374)
  %376 = load i32, i32* %28, align 4
  %377 = sub nsw i32 %375, %376
  store i32 %377, i32* %27, align 4
  br label %378

378:                                              ; preds = %359, %338
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %439

383:                                              ; preds = %378
  %384 = load i32, i32* %27, align 4
  %385 = icmp sgt i32 %384, 0
  br i1 %385, label %386, label %396

386:                                              ; preds = %383
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* %27, align 4
  %391 = add nsw i32 %389, %390
  %392 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = sdiv i32 %391, %394
  store i32 %395, i32* %27, align 4
  br label %407

396:                                              ; preds = %383
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* %27, align 4
  %401 = sub nsw i32 %399, %400
  %402 = sub nsw i32 0, %401
  %403 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = sdiv i32 %402, %405
  store i32 %406, i32* %27, align 4
  br label %407

407:                                              ; preds = %396, %386
  %408 = load i32, i32* %29, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %422, label %410

410:                                              ; preds = %407
  %411 = load i32, i32* %28, align 4
  %412 = load i32, i32* %27, align 4
  %413 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = mul nsw i32 %412, %415
  %417 = add nsw i32 %411, %416
  %418 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i32 0, i32 5
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @av_clip(i32 %417, i32 0, i32 %420)
  store i32 %421, i32* %20, align 4
  br label %434

422:                                              ; preds = %407
  %423 = load i32, i32* %28, align 4
  %424 = load i32, i32* %27, align 4
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = mul nsw i32 %424, %427
  %429 = sub nsw i32 %423, %428
  %430 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 5
  %432 = load i32, i32* %431, align 8
  %433 = call i32 @av_clip(i32 %429, i32 0, i32 %432)
  store i32 %433, i32* %20, align 4
  br label %434

434:                                              ; preds = %422, %410
  %435 = load i8*, i8** %13, align 8
  %436 = load i32, i32* %19, align 4
  %437 = load i32, i32* %20, align 4
  %438 = call i32 @W(i8* %435, i32 %436, i32 %437)
  br label %439

439:                                              ; preds = %434, %378
  %440 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %441 = load i32*, i32** %11, align 8
  %442 = load i32, i32* %33, align 4
  %443 = load i32, i32* %27, align 4
  %444 = call i32 @ls_encode_regular(%struct.TYPE_7__* %440, i32* %441, i32 %442, i32 %443)
  br label %445

445:                                              ; preds = %439, %313
  %446 = load i32, i32* %16, align 4
  %447 = load i32, i32* %19, align 4
  %448 = add nsw i32 %447, %446
  store i32 %448, i32* %19, align 4
  br label %34

449:                                              ; preds = %156, %34
  ret void
}

declare dso_local i32 @R(i8*, i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @W(i8*, i32, i32) #1

declare dso_local i32 @ls_encode_run(%struct.TYPE_7__*, i32*, i32, i32, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @ls_encode_runterm(%struct.TYPE_7__*, i32*, i32, i32, i32) #1

declare dso_local i32 @ff_jpegls_quantize(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mid_pred(i32, i32, i32) #1

declare dso_local i32 @ls_encode_regular(%struct.TYPE_7__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
