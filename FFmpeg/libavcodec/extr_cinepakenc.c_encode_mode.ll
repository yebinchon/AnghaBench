; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_encode_mode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_encode_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i8, i8* }
%struct.TYPE_13__ = type { i32, i64, i32, i64, i32 }

@MB_AREA = common dso_local global i32 0, align 4
@ENC_SKIP = common dso_local global i64 0, align 8
@ENC_V1 = common dso_local global i64 0, align 8
@MB_SIZE = common dso_local global i64 0, align 8
@CHUNK_HEADER_SIZE = common dso_local global i32 0, align 4
@ENC_V4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i32**, i32*, i32**, i32*, %struct.TYPE_13__*, i8*)* @encode_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_mode(%struct.TYPE_15__* %0, i32 %1, i32** %2, i32* %3, i32** %4, i32* %5, %struct.TYPE_13__* %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i8*, align 8
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
  %28 = alloca [64 x i8], align 16
  %29 = alloca %struct.TYPE_14__*, align 8
  %30 = alloca [4 x i32*], align 16
  %31 = alloca [4 x i32*], align 16
  %32 = alloca [4 x i32], align 16
  %33 = alloca [4 x i32], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32** %2, i32*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_13__* %6, %struct.TYPE_13__** %15, align 8
  store i8* %7, i8** %16, align 8
  store i32 0, i32* %23, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* @MB_AREA, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %24, align 4
  %41 = bitcast [4 x i32*]* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %41, i8 0, i64 32, i1 false)
  %42 = bitcast [4 x i32*]* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 32, i1 false)
  %43 = bitcast [4 x i32]* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 16, i1 false)
  %44 = bitcast [4 x i32]* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %44, i8 0, i64 16, i1 false)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %49, %8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = load i32, i32* %23, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = call i64 @encode_codebook(%struct.TYPE_15__* %55, i32 %58, i64 %61, i32 32, i32 36, i8* %65)
  %67 = load i32, i32* %23, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %23, align 4
  br label %71

71:                                               ; preds = %54, %49
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i8*, i8** %16, align 8
  %90 = load i32, i32* %23, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = call i64 @encode_codebook(%struct.TYPE_15__* %82, i32 %85, i64 %88, i32 34, i32 38, i8* %92)
  %94 = load i32, i32* %23, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %23, align 4
  br label %98

98:                                               ; preds = %81, %76
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %99

99:                                               ; preds = %190, %98
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %196

103:                                              ; preds = %99
  store i32 0, i32* %17, align 4
  br label %104

104:                                              ; preds = %181, %103
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %189

110:                                              ; preds = %104
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i64 %115
  store %struct.TYPE_14__* %116, %struct.TYPE_14__** %29, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load i32**, i32*** %11, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = getelementptr inbounds [4 x i32*], [4 x i32*]* %30, i64 0, i64 0
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i64 0, i64 0
  %124 = call i32 @get_sub_picture(%struct.TYPE_15__* %117, i32 %118, i32 %119, i32** %120, i32* %121, i32** %122, i32* %123)
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 130
  br i1 %128, label %129, label %150

129:                                              ; preds = %110
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @ENC_SKIP, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %129
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32**, i32*** %13, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = getelementptr inbounds [4 x i32*], [4 x i32*]* %31, i64 0, i64 0
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i64 0, i64 0
  %143 = call i32 @get_sub_picture(%struct.TYPE_15__* %136, i32 %137, i32 %138, i32** %139, i32* %140, i32** %141, i32* %142)
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %145 = getelementptr inbounds [4 x i32*], [4 x i32*]* %30, i64 0, i64 0
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i64 0, i64 0
  %147 = getelementptr inbounds [4 x i32*], [4 x i32*]* %31, i64 0, i64 0
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i64 0, i64 0
  %149 = call i32 @copy_mb(%struct.TYPE_15__* %144, i32** %145, i32* %146, i32** %147, i32* %148)
  br label %180

150:                                              ; preds = %129, %110
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 129
  br i1 %154, label %161, label %155

155:                                              ; preds = %150
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @ENC_V1, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %155, %150
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %163 = getelementptr inbounds [4 x i32*], [4 x i32*]* %30, i64 0, i64 0
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i64 0, i64 0
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = load i8, i8* %166, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %169 = call i32 @decode_v1_vector(%struct.TYPE_15__* %162, i32** %163, i32* %164, i8 zeroext %167, %struct.TYPE_13__* %168)
  br label %179

170:                                              ; preds = %155
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %172 = getelementptr inbounds [4 x i32*], [4 x i32*]* %30, i64 0, i64 0
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i64 0, i64 0
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %178 = call i32 @decode_v4_vector(%struct.TYPE_15__* %171, i32** %172, i32* %173, i8* %176, %struct.TYPE_13__* %177)
  br label %179

179:                                              ; preds = %170, %161
  br label %180

180:                                              ; preds = %179, %135
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* @MB_SIZE, align 8
  %183 = load i32, i32* %17, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %19, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %19, align 4
  br label %104

189:                                              ; preds = %104
  br label %190

190:                                              ; preds = %189
  %191 = load i64, i64* @MB_SIZE, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %18, align 4
  br label %99

196:                                              ; preds = %99
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  switch i32 %199, label %537 [
    i32 129, label %200
    i32 128, label %231
    i32 130, label %350
  ]

200:                                              ; preds = %196
  %201 = load i8*, i8** %16, align 8
  %202 = load i32, i32* %23, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i32, i32* %24, align 4
  %206 = call i32 @write_chunk_header(i8* %204, i32 50, i32 %205)
  %207 = load i32, i32* %23, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %23, align 4
  store i32 0, i32* %17, align 4
  br label %209

209:                                              ; preds = %227, %200
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %24, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %230

213:                                              ; preds = %209
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = load i32, i32* %17, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  %221 = load i8, i8* %220, align 8
  %222 = load i8*, i8** %16, align 8
  %223 = load i32, i32* %23, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %23, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %222, i64 %225
  store i8 %221, i8* %226, align 1
  br label %227

227:                                              ; preds = %213
  %228 = load i32, i32* %17, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %17, align 4
  br label %209

230:                                              ; preds = %209
  br label %537

231:                                              ; preds = %196
  %232 = load i32, i32* %23, align 4
  store i32 %232, i32* %22, align 4
  %233 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %234 = load i32, i32* %23, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %23, align 4
  store i32 0, i32* %17, align 4
  br label %236

236:                                              ; preds = %336, %231
  %237 = load i32, i32* %17, align 4
  %238 = load i32, i32* %24, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %339

240:                                              ; preds = %236
  store i32 0, i32* %27, align 4
  %241 = load i32, i32* %17, align 4
  store i32 %241, i32* %18, align 4
  br label %242

242:                                              ; preds = %269, %240
  %243 = load i32, i32* %18, align 4
  %244 = load i32, i32* %17, align 4
  %245 = add nsw i32 %244, 32
  %246 = load i32, i32* %24, align 4
  %247 = call i32 @FFMIN(i32 %245, i32 %246)
  %248 = icmp slt i32 %243, %247
  br i1 %248, label %249, label %272

249:                                              ; preds = %242
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %251, align 8
  %253 = load i32, i32* %18, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @ENC_V4, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %268

260:                                              ; preds = %249
  %261 = load i32, i32* %18, align 4
  %262 = sub nsw i32 31, %261
  %263 = load i32, i32* %17, align 4
  %264 = add nsw i32 %262, %263
  %265 = shl i32 1, %264
  %266 = load i32, i32* %27, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %27, align 4
  br label %268

268:                                              ; preds = %260, %249
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %18, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %18, align 4
  br label %242

272:                                              ; preds = %242
  %273 = load i8*, i8** %16, align 8
  %274 = load i32, i32* %23, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i32, i32* %27, align 4
  %278 = call i32 @AV_WB32(i8* %276, i32 %277)
  %279 = load i32, i32* %23, align 4
  %280 = add nsw i32 %279, 4
  store i32 %280, i32* %23, align 4
  %281 = load i32, i32* %17, align 4
  store i32 %281, i32* %18, align 4
  br label %282

282:                                              ; preds = %332, %272
  %283 = load i32, i32* %18, align 4
  %284 = load i32, i32* %17, align 4
  %285 = add nsw i32 %284, 32
  %286 = load i32, i32* %24, align 4
  %287 = call i32 @FFMIN(i32 %285, i32 %286)
  %288 = icmp slt i32 %283, %287
  br i1 %288, label %289, label %335

289:                                              ; preds = %282
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %291, align 8
  %293 = load i32, i32* %18, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i64 %294
  store %struct.TYPE_14__* %295, %struct.TYPE_14__** %29, align 8
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @ENC_V1, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %310

301:                                              ; preds = %289
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 1
  %304 = load i8, i8* %303, align 8
  %305 = load i8*, i8** %16, align 8
  %306 = load i32, i32* %23, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %23, align 4
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i8, i8* %305, i64 %308
  store i8 %304, i8* %309, align 1
  br label %331

310:                                              ; preds = %289
  store i32 0, i32* %19, align 4
  br label %311

311:                                              ; preds = %327, %310
  %312 = load i32, i32* %19, align 4
  %313 = icmp slt i32 %312, 4
  br i1 %313, label %314, label %330

314:                                              ; preds = %311
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 2
  %317 = load i8*, i8** %316, align 8
  %318 = load i32, i32* %19, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = load i8*, i8** %16, align 8
  %323 = load i32, i32* %23, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %23, align 4
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i8, i8* %322, i64 %325
  store i8 %321, i8* %326, align 1
  br label %327

327:                                              ; preds = %314
  %328 = load i32, i32* %19, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %19, align 4
  br label %311

330:                                              ; preds = %311
  br label %331

331:                                              ; preds = %330, %301
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %18, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %18, align 4
  br label %282

335:                                              ; preds = %282
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %17, align 4
  %338 = add nsw i32 %337, 32
  store i32 %338, i32* %17, align 4
  br label %236

339:                                              ; preds = %236
  %340 = load i8*, i8** %16, align 8
  %341 = load i32, i32* %22, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, i8* %340, i64 %342
  %344 = load i32, i32* %23, align 4
  %345 = load i32, i32* %22, align 4
  %346 = sub nsw i32 %344, %345
  %347 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %348 = sub nsw i32 %346, %347
  %349 = call i32 @write_chunk_header(i8* %343, i32 48, i32 %348)
  br label %537

350:                                              ; preds = %196
  %351 = load i32, i32* %23, align 4
  store i32 %351, i32* %22, align 4
  %352 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %353 = load i32, i32* %23, align 4
  %354 = add nsw i32 %353, %352
  store i32 %354, i32* %23, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %17, align 4
  br label %355

355:                                              ; preds = %501, %350
  %356 = load i32, i32* %17, align 4
  %357 = load i32, i32* %24, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %359, label %504

359:                                              ; preds = %355
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 1
  %362 = load %struct.TYPE_14__*, %struct.TYPE_14__** %361, align 8
  %363 = load i32, i32* %17, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i64 %364
  store %struct.TYPE_14__* %365, %struct.TYPE_14__** %29, align 8
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @ENC_SKIP, align 8
  %370 = icmp ne i64 %368, %369
  %371 = zext i1 %370 to i32
  %372 = load i32, i32* %20, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %20, align 4
  %374 = sub nsw i32 31, %372
  %375 = shl i32 %371, %374
  %376 = load i32, i32* %27, align 4
  %377 = or i32 %376, %375
  store i32 %377, i32* %27, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %378 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @ENC_SKIP, align 8
  %382 = icmp ne i64 %380, %381
  br i1 %382, label %383, label %401

383:                                              ; preds = %359
  %384 = load i32, i32* %20, align 4
  %385 = icmp slt i32 %384, 32
  br i1 %385, label %386, label %399

386:                                              ; preds = %383
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @ENC_V4, align 8
  %391 = icmp eq i64 %389, %390
  %392 = zext i1 %391 to i32
  %393 = load i32, i32* %20, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %20, align 4
  %395 = sub nsw i32 31, %393
  %396 = shl i32 %392, %395
  %397 = load i32, i32* %27, align 4
  %398 = or i32 %397, %396
  store i32 %398, i32* %27, align 4
  br label %400

399:                                              ; preds = %383
  store i32 1, i32* %25, align 4
  br label %400

400:                                              ; preds = %399, %386
  br label %401

401:                                              ; preds = %400, %359
  %402 = load i32, i32* %20, align 4
  %403 = icmp eq i32 %402, 32
  br i1 %403, label %404, label %434

404:                                              ; preds = %401
  %405 = load i8*, i8** %16, align 8
  %406 = load i32, i32* %23, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i8, i8* %405, i64 %407
  %409 = load i32, i32* %27, align 4
  %410 = call i32 @AV_WB32(i8* %408, i32 %409)
  %411 = load i32, i32* %23, align 4
  %412 = add nsw i32 %411, 4
  store i32 %412, i32* %23, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %27, align 4
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = load i64, i64* @ENC_SKIP, align 8
  %417 = icmp eq i64 %415, %416
  br i1 %417, label %421, label %418

418:                                              ; preds = %404
  %419 = load i32, i32* %25, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %432

421:                                              ; preds = %418, %404
  %422 = load i8*, i8** %16, align 8
  %423 = load i32, i32* %23, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %422, i64 %424
  %426 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i64 0, i64 0
  %427 = load i32, i32* %21, align 4
  %428 = call i32 @memcpy(i8* %425, i8* %426, i32 %427)
  %429 = load i32, i32* %21, align 4
  %430 = load i32, i32* %23, align 4
  %431 = add nsw i32 %430, %429
  store i32 %431, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %433

432:                                              ; preds = %418
  store i32 1, i32* %26, align 4
  br label %433

433:                                              ; preds = %432, %421
  br label %434

434:                                              ; preds = %433, %401
  %435 = load i32, i32* %25, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %445

437:                                              ; preds = %434
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* @ENC_V4, align 8
  %442 = icmp eq i64 %440, %441
  %443 = zext i1 %442 to i32
  %444 = shl i32 %443, 31
  store i32 %444, i32* %27, align 4
  store i32 1, i32* %20, align 4
  br label %445

445:                                              ; preds = %437, %434
  %446 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %447 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* @ENC_V1, align 8
  %450 = icmp eq i64 %448, %449
  br i1 %450, label %451, label %459

451:                                              ; preds = %445
  %452 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %453 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %452, i32 0, i32 1
  %454 = load i8, i8* %453, align 8
  %455 = load i32, i32* %21, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %21, align 4
  %457 = sext i32 %455 to i64
  %458 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i64 0, i64 %457
  store i8 %454, i8* %458, align 1
  br label %486

459:                                              ; preds = %445
  %460 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %461 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = load i64, i64* @ENC_V4, align 8
  %464 = icmp eq i64 %462, %463
  br i1 %464, label %465, label %485

465:                                              ; preds = %459
  store i32 0, i32* %19, align 4
  br label %466

466:                                              ; preds = %481, %465
  %467 = load i32, i32* %19, align 4
  %468 = icmp slt i32 %467, 4
  br i1 %468, label %469, label %484

469:                                              ; preds = %466
  %470 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %471 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %470, i32 0, i32 2
  %472 = load i8*, i8** %471, align 8
  %473 = load i32, i32* %19, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i8, i8* %472, i64 %474
  %476 = load i8, i8* %475, align 1
  %477 = load i32, i32* %21, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %21, align 4
  %479 = sext i32 %477 to i64
  %480 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i64 0, i64 %479
  store i8 %476, i8* %480, align 1
  br label %481

481:                                              ; preds = %469
  %482 = load i32, i32* %19, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %19, align 4
  br label %466

484:                                              ; preds = %466
  br label %485

485:                                              ; preds = %484, %459
  br label %486

486:                                              ; preds = %485, %451
  %487 = load i32, i32* %26, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %500

489:                                              ; preds = %486
  %490 = load i8*, i8** %16, align 8
  %491 = load i32, i32* %23, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i8, i8* %490, i64 %492
  %494 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i64 0, i64 0
  %495 = load i32, i32* %21, align 4
  %496 = call i32 @memcpy(i8* %493, i8* %494, i32 %495)
  %497 = load i32, i32* %21, align 4
  %498 = load i32, i32* %23, align 4
  %499 = add nsw i32 %498, %497
  store i32 %499, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %500

500:                                              ; preds = %489, %486
  br label %501

501:                                              ; preds = %500
  %502 = load i32, i32* %17, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %17, align 4
  br label %355

504:                                              ; preds = %355
  %505 = load i32, i32* %20, align 4
  %506 = icmp sgt i32 %505, 0
  br i1 %506, label %507, label %526

507:                                              ; preds = %504
  %508 = load i8*, i8** %16, align 8
  %509 = load i32, i32* %23, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i8, i8* %508, i64 %510
  %512 = load i32, i32* %27, align 4
  %513 = call i32 @AV_WB32(i8* %511, i32 %512)
  %514 = load i32, i32* %23, align 4
  %515 = add nsw i32 %514, 4
  store i32 %515, i32* %23, align 4
  %516 = load i8*, i8** %16, align 8
  %517 = load i32, i32* %23, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i8, i8* %516, i64 %518
  %520 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i64 0, i64 0
  %521 = load i32, i32* %21, align 4
  %522 = call i32 @memcpy(i8* %519, i8* %520, i32 %521)
  %523 = load i32, i32* %21, align 4
  %524 = load i32, i32* %23, align 4
  %525 = add nsw i32 %524, %523
  store i32 %525, i32* %23, align 4
  br label %526

526:                                              ; preds = %507, %504
  %527 = load i8*, i8** %16, align 8
  %528 = load i32, i32* %22, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i8, i8* %527, i64 %529
  %531 = load i32, i32* %23, align 4
  %532 = load i32, i32* %22, align 4
  %533 = sub nsw i32 %531, %532
  %534 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %535 = sub nsw i32 %533, %534
  %536 = call i32 @write_chunk_header(i8* %530, i32 49, i32 %535)
  br label %537

537:                                              ; preds = %196, %526, %339, %230
  %538 = load i32, i32* %23, align 4
  ret i32 %538
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @encode_codebook(%struct.TYPE_15__*, i32, i64, i32, i32, i8*) #2

declare dso_local i32 @get_sub_picture(%struct.TYPE_15__*, i32, i32, i32**, i32*, i32**, i32*) #2

declare dso_local i32 @copy_mb(%struct.TYPE_15__*, i32**, i32*, i32**, i32*) #2

declare dso_local i32 @decode_v1_vector(%struct.TYPE_15__*, i32**, i32*, i8 zeroext, %struct.TYPE_13__*) #2

declare dso_local i32 @decode_v4_vector(%struct.TYPE_15__*, i32**, i32*, i8*, %struct.TYPE_13__*) #2

declare dso_local i32 @write_chunk_header(i8*, i32, i32) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @AV_WB32(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
