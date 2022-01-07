; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_txd.c_txd_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_txd.c_txd_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i8*, i8*, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)* }
%struct.TYPE_24__ = type { i32*, i32**, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Texture data version %u\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGBA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Color depth of %u\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"d3d format (%08x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i8*, i32*, %struct.TYPE_23__*)* @txd_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txd_decode_frame(%struct.TYPE_25__* %0, i8* %1, i32* %2, %struct.TYPE_23__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_22__, align 4
  %11 = alloca %struct.TYPE_21__, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %9, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %12, align 8
  %33 = call i32 @ff_texturedsp_init(%struct.TYPE_21__* %11)
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bytestream2_init(%struct.TYPE_22__* %10, i32 %36, i32 %39)
  %41 = call i32 @bytestream2_get_le32(%struct.TYPE_22__* %10)
  store i32 %41, i32* %13, align 4
  %42 = call i32 @bytestream2_skip(%struct.TYPE_22__* %10, i32 72)
  %43 = call i32 @bytestream2_get_le32(%struct.TYPE_22__* %10)
  store i32 %43, i32* %16, align 4
  %44 = call i32 @bytestream2_get_le16(%struct.TYPE_22__* %10)
  store i32 %44, i32* %14, align 4
  %45 = call i32 @bytestream2_get_le16(%struct.TYPE_22__* %10)
  store i32 %45, i32* %15, align 4
  %46 = call i32 @bytestream2_get_byte(%struct.TYPE_22__* %10)
  store i32 %46, i32* %17, align 4
  %47 = call i32 @bytestream2_skip(%struct.TYPE_22__* %10, i32 2)
  %48 = call i32 @bytestream2_get_byte(%struct.TYPE_22__* %10)
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ult i32 %49, 8
  br i1 %50, label %54, label %51

51:                                               ; preds = %4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ugt i32 %52, 9
  br i1 %53, label %54, label %59

54:                                               ; preds = %51, %4
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @avpriv_report_missing_feature(%struct.TYPE_25__* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %58, i32* %5, align 4
  br label %336

59:                                               ; preds = %51
  %60 = load i32, i32* %17, align 4
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  br label %82

66:                                               ; preds = %59
  %67 = load i32, i32* %17, align 4
  %68 = icmp eq i32 %67, 16
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %17, align 4
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %76

72:                                               ; preds = %69, %66
  %73 = load i32, i32* @AV_PIX_FMT_RGBA, align 4
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  br label %81

76:                                               ; preds = %69
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @avpriv_report_missing_feature(%struct.TYPE_25__* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %80, i32* %5, align 4
  br label %336

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %62
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @ff_set_dimensions(%struct.TYPE_25__* %83, i32 %84, i32 %85)
  store i32 %86, i32* %26, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %26, align 4
  store i32 %89, i32* %5, align 4
  br label %336

90:                                               ; preds = %82
  %91 = load i32, i32* %14, align 4
  %92 = call i8* @FFALIGN(i32 %91, i32 4)
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i8* @FFALIGN(i32 %95, i32 4)
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %101 = call i32 @ff_get_buffer(%struct.TYPE_25__* %99, %struct.TYPE_24__* %100, i32 0)
  store i32 %101, i32* %26, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = load i32, i32* %26, align 4
  store i32 %104, i32* %5, align 4
  br label %336

105:                                              ; preds = %90
  %106 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %22, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp eq i32 %119, 8
  br i1 %120, label %121, label %170

121:                                              ; preds = %105
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 1
  %124 = load i32**, i32*** %123, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 1
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %23, align 8
  store i32 0, i32* %20, align 4
  br label %127

127:                                              ; preds = %141, %121
  %128 = load i32, i32* %20, align 4
  %129 = icmp ult i32 %128, 256
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = call i32 @bytestream2_get_be32(%struct.TYPE_22__* %10)
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %21, align 4
  %133 = lshr i32 %132, 8
  %134 = load i32, i32* %21, align 4
  %135 = shl i32 %134, 24
  %136 = add i32 %133, %135
  %137 = load i32*, i32** %23, align 8
  %138 = load i32, i32* %20, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %136, i32* %140, align 4
  br label %141

141:                                              ; preds = %130
  %142 = load i32, i32* %20, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %20, align 4
  br label %127

144:                                              ; preds = %127
  %145 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_22__* %10)
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %15, align 4
  %148 = mul i32 %146, %147
  %149 = icmp ult i32 %145, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %151, i32* %5, align 4
  br label %336

152:                                              ; preds = %144
  %153 = call i32 @bytestream2_skip(%struct.TYPE_22__* %10, i32 4)
  store i32 0, i32* %20, align 4
  br label %154

154:                                              ; preds = %166, %152
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = load i32*, i32** %22, align 8
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @bytestream2_get_buffer(%struct.TYPE_22__* %10, i32* %159, i32 %160)
  %162 = load i32, i32* %18, align 4
  %163 = load i32*, i32** %22, align 8
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32* %165, i32** %22, align 8
  br label %166

166:                                              ; preds = %158
  %167 = load i32, i32* %20, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %20, align 4
  br label %154

169:                                              ; preds = %154
  br label %326

170:                                              ; preds = %105
  %171 = load i32, i32* %17, align 4
  %172 = icmp eq i32 %171, 16
  br i1 %172, label %173, label %290

173:                                              ; preds = %170
  %174 = call i32 @bytestream2_skip(%struct.TYPE_22__* %10, i32 4)
  %175 = load i32, i32* %16, align 4
  switch i32 %175, label %288 [
    i32 0, label %176
    i32 129, label %182
    i32 128, label %235
  ]

176:                                              ; preds = %173
  %177 = load i32, i32* %19, align 4
  %178 = and i32 %177, 1
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  br label %331

181:                                              ; preds = %176
  br label %182

182:                                              ; preds = %173, %181
  %183 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_22__* %10)
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @AV_CEIL_RSHIFT(i32 %184, i32 2)
  %186 = load i32, i32* %15, align 4
  %187 = call i32 @AV_CEIL_RSHIFT(i32 %186, i32 2)
  %188 = mul nsw i32 %185, %187
  %189 = mul nsw i32 %188, 8
  %190 = icmp ult i32 %183, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %182
  %192 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %192, i32* %5, align 4
  br label %336

193:                                              ; preds = %182
  store i32 0, i32* %25, align 4
  br label %194

194:                                              ; preds = %231, %193
  %195 = load i32, i32* %25, align 4
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %234

200:                                              ; preds = %194
  store i32 0, i32* %24, align 4
  br label %201

201:                                              ; preds = %227, %200
  %202 = load i32, i32* %24, align 4
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %230

207:                                              ; preds = %201
  %208 = load i32*, i32** %22, align 8
  %209 = load i32, i32* %24, align 4
  %210 = mul nsw i32 %209, 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %25, align 4
  %214 = load i32, i32* %18, align 4
  %215 = mul i32 %213, %214
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %212, i64 %216
  store i32* %217, i32** %27, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %219 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %218, align 8
  %220 = load i32*, i32** %27, align 8
  %221 = load i32, i32* %18, align 4
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 %219(i32* %220, i32 %221, i32 %223)
  store i32 %224, i32* %28, align 4
  %225 = load i32, i32* %28, align 4
  %226 = call i32 @bytestream2_skip(%struct.TYPE_22__* %10, i32 %225)
  br label %227

227:                                              ; preds = %207
  %228 = load i32, i32* %24, align 4
  %229 = add nsw i32 %228, 4
  store i32 %229, i32* %24, align 4
  br label %201

230:                                              ; preds = %201
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %25, align 4
  %233 = add nsw i32 %232, 4
  store i32 %233, i32* %25, align 4
  br label %194

234:                                              ; preds = %194
  br label %289

235:                                              ; preds = %173
  %236 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_22__* %10)
  %237 = load i32, i32* %14, align 4
  %238 = call i32 @AV_CEIL_RSHIFT(i32 %237, i32 2)
  %239 = load i32, i32* %15, align 4
  %240 = call i32 @AV_CEIL_RSHIFT(i32 %239, i32 2)
  %241 = mul nsw i32 %238, %240
  %242 = mul nsw i32 %241, 16
  %243 = icmp ult i32 %236, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %235
  %245 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %245, i32* %5, align 4
  br label %336

246:                                              ; preds = %235
  store i32 0, i32* %25, align 4
  br label %247

247:                                              ; preds = %284, %246
  %248 = load i32, i32* %25, align 4
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %287

253:                                              ; preds = %247
  store i32 0, i32* %24, align 4
  br label %254

254:                                              ; preds = %280, %253
  %255 = load i32, i32* %24, align 4
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %283

260:                                              ; preds = %254
  %261 = load i32*, i32** %22, align 8
  %262 = load i32, i32* %24, align 4
  %263 = mul nsw i32 %262, 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %25, align 4
  %267 = load i32, i32* %18, align 4
  %268 = mul i32 %266, %267
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %265, i64 %269
  store i32* %270, i32** %29, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %272 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %271, align 8
  %273 = load i32*, i32** %29, align 8
  %274 = load i32, i32* %18, align 4
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 %272(i32* %273, i32 %274, i32 %276)
  store i32 %277, i32* %30, align 4
  %278 = load i32, i32* %30, align 4
  %279 = call i32 @bytestream2_skip(%struct.TYPE_22__* %10, i32 %278)
  br label %280

280:                                              ; preds = %260
  %281 = load i32, i32* %24, align 4
  %282 = add nsw i32 %281, 4
  store i32 %282, i32* %24, align 4
  br label %254

283:                                              ; preds = %254
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %25, align 4
  %286 = add nsw i32 %285, 4
  store i32 %286, i32* %25, align 4
  br label %247

287:                                              ; preds = %247
  br label %289

288:                                              ; preds = %173
  br label %331

289:                                              ; preds = %287, %234
  br label %325

290:                                              ; preds = %170
  %291 = load i32, i32* %17, align 4
  %292 = icmp eq i32 %291, 32
  br i1 %292, label %293, label %324

293:                                              ; preds = %290
  %294 = load i32, i32* %16, align 4
  switch i32 %294, label %322 [
    i32 21, label %295
    i32 22, label %295
  ]

295:                                              ; preds = %293, %293
  %296 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_22__* %10)
  %297 = load i32, i32* %15, align 4
  %298 = load i32, i32* %14, align 4
  %299 = mul i32 %297, %298
  %300 = mul i32 %299, 4
  %301 = icmp ult i32 %296, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %295
  %303 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %303, i32* %5, align 4
  br label %336

304:                                              ; preds = %295
  store i32 0, i32* %20, align 4
  br label %305

305:                                              ; preds = %318, %304
  %306 = load i32, i32* %20, align 4
  %307 = load i32, i32* %15, align 4
  %308 = icmp ult i32 %306, %307
  br i1 %308, label %309, label %321

309:                                              ; preds = %305
  %310 = load i32*, i32** %22, align 8
  %311 = load i32, i32* %14, align 4
  %312 = mul i32 %311, 4
  %313 = call i32 @bytestream2_get_buffer(%struct.TYPE_22__* %10, i32* %310, i32 %312)
  %314 = load i32, i32* %18, align 4
  %315 = load i32*, i32** %22, align 8
  %316 = zext i32 %314 to i64
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  store i32* %317, i32** %22, align 8
  br label %318

318:                                              ; preds = %309
  %319 = load i32, i32* %20, align 4
  %320 = add i32 %319, 1
  store i32 %320, i32* %20, align 4
  br label %305

321:                                              ; preds = %305
  br label %323

322:                                              ; preds = %293
  br label %331

323:                                              ; preds = %321
  br label %324

324:                                              ; preds = %323, %290
  br label %325

325:                                              ; preds = %324, %289
  br label %326

326:                                              ; preds = %325, %169
  %327 = load i32*, i32** %8, align 8
  store i32 1, i32* %327, align 4
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  store i32 %330, i32* %5, align 4
  br label %336

331:                                              ; preds = %322, %288, %180
  %332 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %333 = load i32, i32* %16, align 4
  %334 = call i32 @avpriv_report_missing_feature(%struct.TYPE_25__* %332, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %333)
  %335 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %335, i32* %5, align 4
  br label %336

336:                                              ; preds = %331, %326, %302, %244, %191, %150, %103, %88, %76, %54
  %337 = load i32, i32* %5, align 4
  ret i32 %337
}

declare dso_local i32 @ff_texturedsp_init(%struct.TYPE_21__*) #1

declare dso_local i32 @bytestream2_init(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @bytestream2_get_le32(%struct.TYPE_22__*) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @bytestream2_get_le16(%struct.TYPE_22__*) #1

declare dso_local i32 @bytestream2_get_byte(%struct.TYPE_22__*) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @bytestream2_get_be32(%struct.TYPE_22__*) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_22__*) #1

declare dso_local i32 @bytestream2_get_buffer(%struct.TYPE_22__*, i32*, i32) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
