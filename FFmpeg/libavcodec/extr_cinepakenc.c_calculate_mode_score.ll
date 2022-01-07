; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_calculate_mode_score.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_calculate_mode_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@AV_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@MB_AREA = common dso_local global i32 0, align 4
@CHUNK_HEADER_SIZE = common dso_local global i32 0, align 4
@FF_LAMBDA_SCALE = common dso_local global i32 0, align 4
@ENC_V1 = common dso_local global i8* null, align 8
@ENC_V4 = common dso_local global i8* null, align 8
@ENC_SKIP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, %struct.TYPE_6__*, i32, i32*, i32*)* @calculate_mode_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_mode_score(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_6__* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 6, i32 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* @MB_AREA, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %15, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %6
  %46 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %14, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %46, %51
  br label %54

53:                                               ; preds = %6
  br label %54

54:                                               ; preds = %53, %45
  %55 = phi i32 [ %52, %45 ], [ 0, %53 ]
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %61, %66
  br label %69

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %60
  %70 = phi i32 [ %67, %60 ], [ 0, %68 ]
  %71 = add nsw i32 %55, %70
  %72 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %73 = add nsw i32 %71, %72
  %74 = mul nsw i32 %40, %73
  %75 = shl i32 %74, 3
  store i32 %75, i32* %20, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %405 [
    i32 129, label %79
    i32 128, label %113
    i32 130, label %220
  ]

79:                                               ; preds = %69
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 8
  %84 = load i32, i32* %15, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %20, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %20, align 4
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %109, %79
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %16, align 8
  %99 = load i32, i32* @FF_LAMBDA_SCALE, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %99, %102
  %104 = load i32, i32* %20, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %20, align 4
  %106 = load i8*, i8** @ENC_V1, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %92
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %88

112:                                              ; preds = %88
  br label %405

113:                                              ; preds = %69
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %165

116:                                              ; preds = %113
  %117 = load i32*, i32** %12, align 8
  store i32 0, i32* %117, align 4
  %118 = load i32*, i32** %11, align 8
  store i32 0, i32* %118, align 4
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %161, %116
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %164

123:                                              ; preds = %119
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 %128
  store %struct.TYPE_7__* %129, %struct.TYPE_7__** %16, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load i8*, i8** @ENC_V1, align 8
  %134 = icmp eq i8* %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %123
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %138, 9
  %140 = load i32, i32* @FF_LAMBDA_SCALE, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %21, align 4
  %144 = mul nsw i32 %140, %143
  %145 = add nsw i32 %139, %144
  store i32 %145, i32* %17, align 4
  br label %157

146:                                              ; preds = %123
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %149, 33
  %151 = load i32, i32* @FF_LAMBDA_SCALE, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  store i32 %154, i32* %21, align 4
  %155 = mul nsw i32 %151, %154
  %156 = add nsw i32 %150, %155
  store i32 %156, i32* %17, align 4
  br label %157

157:                                              ; preds = %146, %135
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %20, align 4
  br label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %119

164:                                              ; preds = %119
  br label %219

165:                                              ; preds = %113
  store i32 0, i32* %13, align 4
  br label %166

166:                                              ; preds = %215, %165
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %15, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %218

170:                                              ; preds = %166
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %175
  store %struct.TYPE_7__* %176, %struct.TYPE_7__** %16, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %179, 9
  %181 = load i32, i32* @FF_LAMBDA_SCALE, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = mul nsw i32 %181, %184
  %186 = add nsw i32 %180, %185
  store i32 %186, i32* %17, align 4
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %189, 33
  %191 = load i32, i32* @FF_LAMBDA_SCALE, align 4
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = mul nsw i32 %191, %194
  %196 = add nsw i32 %190, %195
  store i32 %196, i32* %18, align 4
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* %18, align 4
  %199 = icmp sle i32 %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %170
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %20, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %20, align 4
  %204 = load i8*, i8** @ENC_V1, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  store i8* %204, i8** %206, align 8
  br label %214

207:                                              ; preds = %170
  %208 = load i32, i32* %18, align 4
  %209 = load i32, i32* %20, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %20, align 4
  %211 = load i8*, i8** @ENC_V4, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  store i8* %211, i8** %213, align 8
  br label %214

214:                                              ; preds = %207, %200
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  br label %166

218:                                              ; preds = %166
  br label %219

219:                                              ; preds = %218, %164
  br label %405

220:                                              ; preds = %69
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %324

223:                                              ; preds = %220
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %13, align 4
  br label %224

224:                                              ; preds = %316, %223
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %15, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %319

228:                                              ; preds = %224
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 3
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %230, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i64 %233
  store %struct.TYPE_7__* %234, %struct.TYPE_7__** %16, align 8
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = mul nsw i32 %237, 1
  %239 = load i32, i32* @FF_LAMBDA_SCALE, align 4
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = mul nsw i32 %239, %242
  %244 = add nsw i32 %238, %243
  store i32 %244, i32* %17, align 4
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  %248 = load i8*, i8** @ENC_SKIP, align 8
  %249 = icmp eq i8* %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %228
  %251 = load i32, i32* %17, align 4
  %252 = load i32, i32* %20, align 4
  %253 = add nsw i32 %252, %251
  store i32 %253, i32* %20, align 4
  br label %315

254:                                              ; preds = %228
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = load i8*, i8** @ENC_V1, align 8
  %259 = icmp eq i8* %257, %258
  br i1 %259, label %260, label %287

260:                                              ; preds = %254
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = mul nsw i32 %263, 10
  %265 = load i32, i32* @FF_LAMBDA_SCALE, align 4
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = mul nsw i32 %265, %268
  %270 = add nsw i32 %264, %269
  store i32 %270, i32* %18, align 4
  %271 = load i32, i32* %17, align 4
  %272 = icmp sge i32 %270, %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %260
  %274 = load i8*, i8** @ENC_SKIP, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 1
  store i8* %274, i8** %276, align 8
  %277 = load i32, i32* %22, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %22, align 4
  %279 = load i32, i32* %17, align 4
  %280 = load i32, i32* %20, align 4
  %281 = add nsw i32 %280, %279
  store i32 %281, i32* %20, align 4
  br label %286

282:                                              ; preds = %260
  %283 = load i32, i32* %18, align 4
  %284 = load i32, i32* %20, align 4
  %285 = add nsw i32 %284, %283
  store i32 %285, i32* %20, align 4
  br label %286

286:                                              ; preds = %282, %273
  br label %314

287:                                              ; preds = %254
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = mul nsw i32 %290, 34
  %292 = load i32, i32* @FF_LAMBDA_SCALE, align 4
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = mul nsw i32 %292, %295
  %297 = add nsw i32 %291, %296
  store i32 %297, i32* %19, align 4
  %298 = load i32, i32* %17, align 4
  %299 = icmp sge i32 %297, %298
  br i1 %299, label %300, label %309

300:                                              ; preds = %287
  %301 = load i8*, i8** @ENC_SKIP, align 8
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 1
  store i8* %301, i8** %303, align 8
  %304 = load i32, i32* %23, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %23, align 4
  %306 = load i32, i32* %17, align 4
  %307 = load i32, i32* %20, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %20, align 4
  br label %313

309:                                              ; preds = %287
  %310 = load i32, i32* %19, align 4
  %311 = load i32, i32* %20, align 4
  %312 = add nsw i32 %311, %310
  store i32 %312, i32* %20, align 4
  br label %313

313:                                              ; preds = %309, %300
  br label %314

314:                                              ; preds = %313, %286
  br label %315

315:                                              ; preds = %314, %250
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %13, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %13, align 4
  br label %224

319:                                              ; preds = %224
  %320 = load i32, i32* %22, align 4
  %321 = load i32*, i32** %11, align 8
  store i32 %320, i32* %321, align 4
  %322 = load i32, i32* %23, align 4
  %323 = load i32*, i32** %12, align 8
  store i32 %322, i32* %323, align 4
  br label %404

324:                                              ; preds = %220
  store i32 0, i32* %13, align 4
  br label %325

325:                                              ; preds = %400, %324
  %326 = load i32, i32* %13, align 4
  %327 = load i32, i32* %15, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %403

329:                                              ; preds = %325
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 3
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %331, align 8
  %333 = load i32, i32* %13, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i64 %334
  store %struct.TYPE_7__* %335, %struct.TYPE_7__** %16, align 8
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = mul nsw i32 %338, 1
  %340 = load i32, i32* @FF_LAMBDA_SCALE, align 4
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = mul nsw i32 %340, %343
  %345 = add nsw i32 %339, %344
  store i32 %345, i32* %17, align 4
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = mul nsw i32 %348, 10
  %350 = load i32, i32* @FF_LAMBDA_SCALE, align 4
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = mul nsw i32 %350, %353
  %355 = add nsw i32 %349, %354
  store i32 %355, i32* %18, align 4
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = mul nsw i32 %358, 34
  %360 = load i32, i32* @FF_LAMBDA_SCALE, align 4
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = mul nsw i32 %360, %363
  %365 = add nsw i32 %359, %364
  store i32 %365, i32* %19, align 4
  %366 = load i32, i32* %17, align 4
  %367 = load i32, i32* %18, align 4
  %368 = icmp sle i32 %366, %367
  br i1 %368, label %369, label %380

369:                                              ; preds = %329
  %370 = load i32, i32* %17, align 4
  %371 = load i32, i32* %19, align 4
  %372 = icmp sle i32 %370, %371
  br i1 %372, label %373, label %380

373:                                              ; preds = %369
  %374 = load i32, i32* %17, align 4
  %375 = load i32, i32* %20, align 4
  %376 = add nsw i32 %375, %374
  store i32 %376, i32* %20, align 4
  %377 = load i8*, i8** @ENC_SKIP, align 8
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 1
  store i8* %377, i8** %379, align 8
  br label %399

380:                                              ; preds = %369, %329
  %381 = load i32, i32* %18, align 4
  %382 = load i32, i32* %19, align 4
  %383 = icmp sle i32 %381, %382
  br i1 %383, label %384, label %391

384:                                              ; preds = %380
  %385 = load i32, i32* %18, align 4
  %386 = load i32, i32* %20, align 4
  %387 = add nsw i32 %386, %385
  store i32 %387, i32* %20, align 4
  %388 = load i8*, i8** @ENC_V1, align 8
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 1
  store i8* %388, i8** %390, align 8
  br label %398

391:                                              ; preds = %380
  %392 = load i32, i32* %19, align 4
  %393 = load i32, i32* %20, align 4
  %394 = add nsw i32 %393, %392
  store i32 %394, i32* %20, align 4
  %395 = load i8*, i8** @ENC_V4, align 8
  %396 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 1
  store i8* %395, i8** %397, align 8
  br label %398

398:                                              ; preds = %391, %384
  br label %399

399:                                              ; preds = %398, %373
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %13, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %13, align 4
  br label %325

403:                                              ; preds = %325
  br label %404

404:                                              ; preds = %403, %319
  br label %405

405:                                              ; preds = %69, %404, %219, %112
  %406 = load i32, i32* %20, align 4
  ret i32 %406
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
