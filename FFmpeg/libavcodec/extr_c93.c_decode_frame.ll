; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_c93.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_c93.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32*, i32, i32, i32**, i32 }
%struct.TYPE_15__ = type { i32, i32* }

@WIDTH = common dso_local global i32 0, align 4
@HEIGHT = common dso_local global i32 0, align 4
@C93_FIRST_FRAME = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"block overlap %d %d %d %d\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unexpected type %x at %dx%d\0A\00", align 1
@C93_HAS_PALETTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_15__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_17__* %0, i8* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [4 x i32], align 16
  %28 = alloca [4 x i32], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %10, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %12, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %45, i64 %48
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %13, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = xor i64 %56, 1
  %58 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %53, i64 %57
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %14, align 8
  store i32 0, i32* %23, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = load i32, i32* @WIDTH, align 4
  %62 = load i32, i32* @HEIGHT, align 4
  %63 = call i32 @ff_set_dimensions(%struct.TYPE_17__* %60, i32 %61, i32 %62)
  store i32 %63, i32* %18, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %4
  %66 = load i32, i32* %18, align 4
  store i32 %66, i32* %5, align 4
  br label %428

67:                                               ; preds = %4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = xor i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %74 = call i32 @ff_reget_buffer(%struct.TYPE_17__* %72, %struct.TYPE_16__* %73, i32 0)
  store i32 %74, i32* %18, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %18, align 4
  store i32 %77, i32* %5, align 4
  br label %428

78:                                               ; preds = %67
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %17, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @bytestream2_init(i32* %15, i32* %84, i32 %85)
  %87 = call i8* @bytestream2_get_byte(i32* %15)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* %22, align 4
  %90 = load i32, i32* @C93_FIRST_FRAME, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %78
  %94 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  store i32 1, i32* %98, align 8
  br label %105

99:                                               ; preds = %78
  %100 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  store i32 0, i32* %104, align 8
  br label %105

105:                                              ; preds = %99, %93
  store i32 0, i32* %21, align 4
  br label %106

106:                                              ; preds = %368, %105
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* @HEIGHT, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %371

110:                                              ; preds = %106
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 3
  %113 = load i32**, i32*** %112, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %17, align 4
  %118 = mul nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  store i32* %120, i32** %16, align 8
  store i32 0, i32* %20, align 4
  br label %121

121:                                              ; preds = %364, %110
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* @WIDTH, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %367

125:                                              ; preds = %121
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  %128 = load i32**, i32*** %127, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 0
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %24, align 8
  %131 = load i32, i32* %23, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %125
  %134 = call i8* @bytestream2_get_byte(i32* %15)
  %135 = ptrtoint i8* %134 to i32
  store i32 %135, i32* %23, align 4
  br label %136

136:                                              ; preds = %133, %125
  %137 = load i32, i32* %23, align 4
  %138 = and i32 %137, 15
  store i32 %138, i32* %29, align 4
  %139 = load i32, i32* %29, align 4
  switch i32 %139, label %351 [
    i32 130, label %140
    i32 133, label %153
    i32 132, label %159
    i32 131, label %240
    i32 136, label %261
    i32 135, label %261
    i32 134, label %261
    i32 128, label %334
    i32 129, label %335
  ]

140:                                              ; preds = %136
  %141 = call i8* @bytestream2_get_le16(i32* %15)
  %142 = ptrtoint i8* %141 to i32
  store i32 %142, i32* %25, align 4
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = load i32*, i32** %16, align 8
  %145 = load i32*, i32** %24, align 8
  %146 = load i32, i32* %25, align 4
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @copy_block(%struct.TYPE_17__* %143, i32* %144, i32* %145, i32 %146, i32 8, i32 %147)
  store i32 %148, i32* %18, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %140
  %151 = load i32, i32* %18, align 4
  store i32 %151, i32* %5, align 4
  br label %428

152:                                              ; preds = %140
  br label %359

153:                                              ; preds = %136
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 3
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 0
  %158 = load i32*, i32** %157, align 8
  store i32* %158, i32** %24, align 8
  br label %159

159:                                              ; preds = %136, %153
  store i32 0, i32* %26, align 4
  br label %160

160:                                              ; preds = %236, %159
  %161 = load i32, i32* %26, align 4
  %162 = icmp ult i32 %161, 8
  br i1 %162, label %163, label %239

163:                                              ; preds = %160
  store i32 0, i32* %19, align 4
  br label %164

164:                                              ; preds = %232, %163
  %165 = load i32, i32* %19, align 4
  %166 = icmp slt i32 %165, 8
  br i1 %166, label %167, label %235

167:                                              ; preds = %164
  %168 = call i8* @bytestream2_get_le16(i32* %15)
  %169 = ptrtoint i8* %168 to i32
  store i32 %169, i32* %30, align 4
  %170 = load i32, i32* %30, align 4
  %171 = load i32, i32* @WIDTH, align 4
  %172 = srem i32 %170, %171
  store i32 %172, i32* %31, align 4
  %173 = load i32, i32* %30, align 4
  %174 = load i32, i32* @WIDTH, align 4
  %175 = sdiv i32 %173, %174
  store i32 %175, i32* %32, align 4
  %176 = load i32, i32* %29, align 4
  %177 = icmp eq i32 %176, 133
  br i1 %177, label %178, label %214

178:                                              ; preds = %167
  %179 = load i32, i32* %32, align 4
  %180 = load i32, i32* %21, align 4
  %181 = load i32, i32* %26, align 4
  %182 = add i32 %180, %181
  %183 = icmp eq i32 %179, %182
  br i1 %183, label %184, label %214

184:                                              ; preds = %178
  %185 = load i32, i32* %31, align 4
  %186 = load i32, i32* %20, align 4
  %187 = sub nsw i32 %185, %186
  %188 = load i32, i32* %19, align 4
  %189 = sub nsw i32 %187, %188
  %190 = call i32 @FFABS(i32 %189)
  %191 = icmp slt i32 %190, 4
  br i1 %191, label %202, label %192

192:                                              ; preds = %184
  %193 = load i32, i32* %31, align 4
  %194 = load i32, i32* %20, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load i32, i32* %19, align 4
  %197 = sub nsw i32 %195, %196
  %198 = call i32 @FFABS(i32 %197)
  %199 = load i32, i32* @WIDTH, align 4
  %200 = sub nsw i32 %199, 4
  %201 = icmp sgt i32 %198, %200
  br i1 %201, label %202, label %214

202:                                              ; preds = %192, %184
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %204 = load i32, i32* %31, align 4
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* %19, align 4
  %207 = add nsw i32 %205, %206
  %208 = load i32, i32* %32, align 4
  %209 = load i32, i32* %21, align 4
  %210 = load i32, i32* %26, align 4
  %211 = add i32 %209, %210
  %212 = call i32 @avpriv_request_sample(%struct.TYPE_17__* %203, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %204, i32 %207, i32 %208, i32 %211)
  %213 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %213, i32* %5, align 4
  br label %428

214:                                              ; preds = %192, %178, %167
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %216 = load i32*, i32** %16, align 8
  %217 = load i32, i32* %26, align 4
  %218 = load i32, i32* %17, align 4
  %219 = mul i32 %217, %218
  %220 = load i32, i32* %19, align 4
  %221 = add i32 %219, %220
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %216, i64 %222
  %224 = load i32*, i32** %24, align 8
  %225 = load i32, i32* %30, align 4
  %226 = load i32, i32* %17, align 4
  %227 = call i32 @copy_block(%struct.TYPE_17__* %215, i32* %223, i32* %224, i32 %225, i32 4, i32 %226)
  store i32 %227, i32* %18, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %214
  %230 = load i32, i32* %18, align 4
  store i32 %230, i32* %5, align 4
  br label %428

231:                                              ; preds = %214
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %19, align 4
  %234 = add nsw i32 %233, 4
  store i32 %234, i32* %19, align 4
  br label %164

235:                                              ; preds = %164
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %26, align 4
  %238 = add i32 %237, 4
  store i32 %238, i32* %26, align 4
  br label %160

239:                                              ; preds = %160
  br label %359

240:                                              ; preds = %136
  %241 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0
  %242 = call i32 @bytestream2_get_buffer(i32* %15, i32* %241, i32 2)
  store i32 0, i32* %19, align 4
  br label %243

243:                                              ; preds = %257, %240
  %244 = load i32, i32* %19, align 4
  %245 = icmp slt i32 %244, 8
  br i1 %245, label %246, label %260

246:                                              ; preds = %243
  %247 = load i32*, i32** %16, align 8
  %248 = load i32, i32* %19, align 4
  %249 = load i32, i32* %17, align 4
  %250 = mul nsw i32 %248, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %247, i64 %251
  %253 = load i32, i32* %17, align 4
  %254 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0
  %255 = call i8* @bytestream2_get_byte(i32* %15)
  %256 = call i32 @draw_n_color(i32* %252, i32 %253, i32 8, i32 1, i32 1, i32* %254, i32* null, i8* %255)
  br label %257

257:                                              ; preds = %246
  %258 = load i32, i32* %19, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %19, align 4
  br label %243

260:                                              ; preds = %243
  br label %359

261:                                              ; preds = %136, %136, %136
  store i32 0, i32* %26, align 4
  br label %262

262:                                              ; preds = %330, %261
  %263 = load i32, i32* %26, align 4
  %264 = icmp ult i32 %263, 8
  br i1 %264, label %265, label %333

265:                                              ; preds = %262
  store i32 0, i32* %19, align 4
  br label %266

266:                                              ; preds = %326, %265
  %267 = load i32, i32* %19, align 4
  %268 = icmp slt i32 %267, 8
  br i1 %268, label %269, label %329

269:                                              ; preds = %266
  %270 = load i32, i32* %29, align 4
  %271 = icmp eq i32 %270, 136
  br i1 %271, label %272, label %288

272:                                              ; preds = %269
  %273 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0
  %274 = call i32 @bytestream2_get_buffer(i32* %15, i32* %273, i32 2)
  %275 = load i32*, i32** %16, align 8
  %276 = load i32, i32* %19, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %26, align 4
  %280 = load i32, i32* %17, align 4
  %281 = mul i32 %279, %280
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %278, i64 %282
  %284 = load i32, i32* %17, align 4
  %285 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0
  %286 = call i8* @bytestream2_get_le16(i32* %15)
  %287 = call i32 @draw_n_color(i32* %283, i32 %284, i32 4, i32 4, i32 1, i32* %285, i32* null, i8* %286)
  br label %325

288:                                              ; preds = %269
  %289 = load i32, i32* %29, align 4
  %290 = icmp eq i32 %289, 135
  br i1 %290, label %291, label %307

291:                                              ; preds = %288
  %292 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0
  %293 = call i32 @bytestream2_get_buffer(i32* %15, i32* %292, i32 4)
  %294 = load i32*, i32** %16, align 8
  %295 = load i32, i32* %19, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %26, align 4
  %299 = load i32, i32* %17, align 4
  %300 = mul i32 %298, %299
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %297, i64 %301
  %303 = load i32, i32* %17, align 4
  %304 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0
  %305 = call i8* @bytestream2_get_le32(i32* %15)
  %306 = call i32 @draw_n_color(i32* %302, i32 %303, i32 4, i32 4, i32 2, i32* %304, i32* null, i8* %305)
  br label %324

307:                                              ; preds = %288
  %308 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %309 = call i32 @bytestream2_get_buffer(i32* %15, i32* %308, i32 4)
  %310 = load i32*, i32** %16, align 8
  %311 = load i32, i32* %19, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %26, align 4
  %315 = load i32, i32* %17, align 4
  %316 = mul i32 %314, %315
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %313, i64 %317
  %319 = load i32, i32* %17, align 4
  %320 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0
  %321 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %322 = call i8* @bytestream2_get_le16(i32* %15)
  %323 = call i32 @draw_n_color(i32* %318, i32 %319, i32 4, i32 4, i32 1, i32* %320, i32* %321, i8* %322)
  br label %324

324:                                              ; preds = %307, %291
  br label %325

325:                                              ; preds = %324, %272
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %19, align 4
  %328 = add nsw i32 %327, 4
  store i32 %328, i32* %19, align 4
  br label %266

329:                                              ; preds = %266
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %26, align 4
  %332 = add i32 %331, 4
  store i32 %332, i32* %26, align 4
  br label %262

333:                                              ; preds = %262
  br label %359

334:                                              ; preds = %136
  br label %359

335:                                              ; preds = %136
  store i32 0, i32* %26, align 4
  br label %336

336:                                              ; preds = %347, %335
  %337 = load i32, i32* %26, align 4
  %338 = icmp ult i32 %337, 8
  br i1 %338, label %339, label %350

339:                                              ; preds = %336
  %340 = load i32*, i32** %16, align 8
  %341 = load i32, i32* %26, align 4
  %342 = load i32, i32* %17, align 4
  %343 = mul i32 %341, %342
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %340, i64 %344
  %346 = call i32 @bytestream2_get_buffer(i32* %15, i32* %345, i32 8)
  br label %347

347:                                              ; preds = %339
  %348 = load i32, i32* %26, align 4
  %349 = add i32 %348, 1
  store i32 %349, i32* %26, align 4
  br label %336

350:                                              ; preds = %336
  br label %359

351:                                              ; preds = %136
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %353 = load i32, i32* @AV_LOG_ERROR, align 4
  %354 = load i32, i32* %29, align 4
  %355 = load i32, i32* %20, align 4
  %356 = load i32, i32* %21, align 4
  %357 = call i32 @av_log(%struct.TYPE_17__* %352, i32 %353, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %354, i32 %355, i32 %356)
  %358 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %358, i32* %5, align 4
  br label %428

359:                                              ; preds = %350, %334, %333, %260, %239, %152
  %360 = load i32, i32* %23, align 4
  %361 = ashr i32 %360, 4
  store i32 %361, i32* %23, align 4
  %362 = load i32*, i32** %16, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 8
  store i32* %363, i32** %16, align 8
  br label %364

364:                                              ; preds = %359
  %365 = load i32, i32* %20, align 4
  %366 = add nsw i32 %365, 8
  store i32 %366, i32* %20, align 4
  br label %121

367:                                              ; preds = %121
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %21, align 4
  %370 = add nsw i32 %369, 8
  store i32 %370, i32* %21, align 4
  br label %106

371:                                              ; preds = %106
  %372 = load i32, i32* %22, align 4
  %373 = load i32, i32* @C93_HAS_PALETTE, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %398

376:                                              ; preds = %371
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 3
  %379 = load i32**, i32*** %378, align 8
  %380 = getelementptr inbounds i32*, i32** %379, i64 1
  %381 = load i32*, i32** %380, align 8
  store i32* %381, i32** %33, align 8
  store i32 0, i32* %19, align 4
  br label %382

382:                                              ; preds = %392, %376
  %383 = load i32, i32* %19, align 4
  %384 = icmp slt i32 %383, 256
  br i1 %384, label %385, label %395

385:                                              ; preds = %382
  %386 = call i32 @bytestream2_get_be24(i32* %15)
  %387 = or i32 -16777216, %386
  %388 = load i32*, i32** %33, align 8
  %389 = load i32, i32* %19, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  store i32 %387, i32* %391, align 4
  br label %392

392:                                              ; preds = %385
  %393 = load i32, i32* %19, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %19, align 4
  br label %382

395:                                              ; preds = %382
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 2
  store i32 1, i32* %397, align 4
  br label %418

398:                                              ; preds = %371
  %399 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %400 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %399, i32 0, i32 3
  %401 = load i32**, i32*** %400, align 8
  %402 = getelementptr inbounds i32*, i32** %401, i64 1
  %403 = load i32*, i32** %402, align 8
  %404 = icmp ne i32* %403, null
  br i1 %404, label %405, label %417

405:                                              ; preds = %398
  %406 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 3
  %408 = load i32**, i32*** %407, align 8
  %409 = getelementptr inbounds i32*, i32** %408, i64 1
  %410 = load i32*, i32** %409, align 8
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 3
  %413 = load i32**, i32*** %412, align 8
  %414 = getelementptr inbounds i32*, i32** %413, i64 1
  %415 = load i32*, i32** %414, align 8
  %416 = call i32 @memcpy(i32* %410, i32* %415, i32 1024)
  br label %417

417:                                              ; preds = %405, %398
  br label %418

418:                                              ; preds = %417, %395
  %419 = load i8*, i8** %7, align 8
  %420 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %421 = call i32 @av_frame_ref(i8* %419, %struct.TYPE_16__* %420)
  store i32 %421, i32* %18, align 4
  %422 = icmp slt i32 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %418
  %424 = load i32, i32* %18, align 4
  store i32 %424, i32* %5, align 4
  br label %428

425:                                              ; preds = %418
  %426 = load i32*, i32** %8, align 8
  store i32 1, i32* %426, align 4
  %427 = load i32, i32* %11, align 4
  store i32 %427, i32* %5, align 4
  br label %428

428:                                              ; preds = %425, %423, %351, %229, %202, %150, %76, %65
  %429 = load i32, i32* %5, align 4
  ret i32 %429
}

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i8* @bytestream2_get_byte(i32*) #1

declare dso_local i8* @bytestream2_get_le16(i32*) #1

declare dso_local i32 @copy_block(%struct.TYPE_17__*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_17__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i32*, i32) #1

declare dso_local i32 @draw_n_color(i32*, i32, i32, i32, i32, i32*, i32*, i8*) #1

declare dso_local i8* @bytestream2_get_le32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bytestream2_get_be24(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
