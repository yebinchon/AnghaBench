; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32 (%struct.TYPE_18__*, i32, i8*, i32*, i32)*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i64, i32*, i32, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32*, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i64 }

@AV_INPUT_BUFFER_MIN_SIZE = common dso_local global i64 0, align 8
@FRAME_ID = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_INTERLACED_DCT = common dso_local global i32 0, align 4
@QUANT_MAT_DEFAULT = common dso_local global i64 0, align 8
@find_quant_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Packet too small: is %i, needs %i (slice: %i). Correct allocation\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32*)* @encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_frame(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [4 x i32], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32* %3, i32** %9, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %10, align 8
  store i32 0, i32* %22, align 4
  %38 = bitcast [4 x i32]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %38, i8 0, i64 16, i1 false)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 2, %43
  store i32 %44, i32* %24, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 200
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = add nsw i32 %55, 1
  %57 = sdiv i32 %48, %56
  store i32 %57, i32* %30, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 17
  store %struct.TYPE_17__* %58, %struct.TYPE_17__** %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %28, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %66 = load i32, i32* %28, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @AV_INPUT_BUFFER_MIN_SIZE, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @ff_alloc_packet2(%struct.TYPE_18__* %64, %struct.TYPE_16__* %65, i64 %69, i32 0)
  store i32 %70, i32* %29, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %4
  %73 = load i32, i32* %29, align 4
  store i32 %73, i32* %5, align 4
  br label %553

74:                                               ; preds = %4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %11, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  store i32* %79, i32** %11, align 8
  %80 = load i32, i32* @FRAME_ID, align 4
  %81 = call i32 @bytestream_put_be32(i32** %11, i32 %80)
  %82 = load i32*, i32** %11, align 8
  store i32* %82, i32** %12, align 8
  %83 = load i32*, i32** %12, align 8
  store i32* %83, i32** %15, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32* %85, i32** %12, align 8
  %86 = call i32 @bytestream_put_be16(i32** %12, i32 0)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 16
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @bytestream_put_buffer(i32** %12, i32 %89, i32 4)
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @bytestream_put_be16(i32** %12, i32 %93)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @bytestream_put_be16(i32** %12, i32 %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 %101, 6
  store i32 %102, i32* %31, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @AV_CODEC_FLAG_INTERLACED_DCT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %74
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 4, i32 8
  %116 = load i32, i32* %31, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %31, align 4
  br label %118

118:                                              ; preds = %109, %74
  %119 = load i32, i32* %31, align 4
  %120 = call i32 @bytestream_put_byte(i32** %12, i32 %119)
  %121 = call i32 @bytestream_put_byte(i32** %12, i32 0)
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @bytestream_put_byte(i32** %12, i32 %124)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @bytestream_put_byte(i32** %12, i32 %128)
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @bytestream_put_byte(i32** %12, i32 %132)
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 3
  %138 = or i32 64, %137
  %139 = call i32 @bytestream_put_byte(i32** %12, i32 %138)
  %140 = call i32 @bytestream_put_byte(i32** %12, i32 0)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @QUANT_MAT_DEFAULT, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %180

146:                                              ; preds = %118
  %147 = call i32 @bytestream_put_byte(i32** %12, i32 3)
  store i32 0, i32* %20, align 4
  br label %148

148:                                              ; preds = %160, %146
  %149 = load i32, i32* %20, align 4
  %150 = icmp slt i32 %149, 64
  br i1 %150, label %151, label %163

151:                                              ; preds = %148
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 7
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %20, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @bytestream_put_byte(i32** %12, i32 %158)
  br label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %20, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %20, align 4
  br label %148

163:                                              ; preds = %148
  store i32 0, i32* %20, align 4
  br label %164

164:                                              ; preds = %176, %163
  %165 = load i32, i32* %20, align 4
  %166 = icmp slt i32 %165, 64
  br i1 %166, label %167, label %179

167:                                              ; preds = %164
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 7
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %20, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @bytestream_put_byte(i32** %12, i32 %174)
  br label %176

176:                                              ; preds = %167
  %177 = load i32, i32* %20, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %20, align 4
  br label %164

179:                                              ; preds = %164
  br label %182

180:                                              ; preds = %118
  %181 = call i32 @bytestream_put_byte(i32** %12, i32 0)
  br label %182

182:                                              ; preds = %180, %179
  %183 = load i32*, i32** %12, align 8
  %184 = load i32*, i32** %11, align 8
  %185 = ptrtoint i32* %183 to i64
  %186 = ptrtoint i32* %184 to i64
  %187 = sub i64 %185, %186
  %188 = sdiv exact i64 %187, 4
  %189 = trunc i64 %188 to i32
  %190 = call i32 @bytestream_put_be16(i32** %15, i32 %189)
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 8
  store i32 0, i32* %192, align 8
  br label %193

193:                                              ; preds = %527, %182
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %532

201:                                              ; preds = %193
  %202 = load i32*, i32** %12, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  store i32* %203, i32** %16, align 8
  %204 = call i32 @bytestream_put_byte(i32** %12, i32 64)
  %205 = load i32*, i32** %12, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 4
  store i32* %206, i32** %12, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @bytestream_put_be16(i32** %12, i32 %209)
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @av_log2(i32 %213)
  %215 = shl i32 %214, 4
  %216 = call i32 @bytestream_put_byte(i32** %12, i32 %215)
  %217 = load i32*, i32** %12, align 8
  store i32* %217, i32** %14, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %220, 2
  %222 = load i32*, i32** %12, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32* %224, i32** %12, align 8
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 10
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %246, label %229

229:                                              ; preds = %201
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 3
  %232 = load i32 (%struct.TYPE_18__*, i32, i8*, i32*, i32)*, i32 (%struct.TYPE_18__*, i32, i8*, i32*, i32)** %231, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %234 = load i32, i32* @find_quant_thread, align 4
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %236 = bitcast %struct.TYPE_17__* %235 to i8*
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 11
  %239 = load i32, i32* %238, align 4
  %240 = call i32 %232(%struct.TYPE_18__* %233, i32 %234, i8* %236, i32* null, i32 %239)
  store i32 %240, i32* %29, align 4
  %241 = load i32, i32* %29, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %229
  %244 = load i32, i32* %29, align 4
  store i32 %244, i32* %5, align 4
  br label %553

245:                                              ; preds = %229
  br label %246

246:                                              ; preds = %245, %201
  store i32 0, i32* %19, align 4
  br label %247

247:                                              ; preds = %513, %246
  %248 = load i32, i32* %19, align 4
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 11
  %251 = load i32, i32* %250, align 4
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %516

253:                                              ; preds = %247
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 9
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %32, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %18, align 4
  br label %257

257:                                              ; preds = %506, %253
  %258 = load i32, i32* %18, align 4
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 12
  %261 = load i32, i32* %260, align 8
  %262 = icmp slt i32 %258, %261
  br i1 %262, label %263, label %512

263:                                              ; preds = %257
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 10
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 10
  %271 = load i32, i32* %270, align 8
  br label %286

272:                                              ; preds = %263
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 13
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %21, align 4
  %277 = load i32, i32* %19, align 4
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 14
  %280 = load i32, i32* %279, align 8
  %281 = mul nsw i32 %277, %280
  %282 = add nsw i32 %276, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %275, i64 %283
  %285 = load i32, i32* %284, align 4
  br label %286

286:                                              ; preds = %272, %268
  %287 = phi i32 [ %271, %268 ], [ %285, %272 ]
  store i32 %287, i32* %22, align 4
  br label %288

288:                                              ; preds = %296, %286
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 12
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* %18, align 4
  %293 = sub nsw i32 %291, %292
  %294 = load i32, i32* %32, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %288
  %297 = load i32, i32* %32, align 4
  %298 = ashr i32 %297, 1
  store i32 %298, i32* %32, align 4
  br label %288

299:                                              ; preds = %288
  %300 = load i32, i32* %24, align 4
  %301 = shl i32 %300, 3
  %302 = call i32 @bytestream_put_byte(i32** %12, i32 %301)
  %303 = load i32*, i32** %12, align 8
  store i32* %303, i32** %13, align 8
  %304 = load i32, i32* %24, align 4
  %305 = sub nsw i32 %304, 1
  %306 = load i32*, i32** %12, align 8
  %307 = sext i32 %305 to i64
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  store i32* %308, i32** %12, align 8
  %309 = load i32, i32* %28, align 4
  %310 = sext i32 %309 to i64
  %311 = load i32*, i32** %12, align 8
  %312 = load i32*, i32** %11, align 8
  %313 = ptrtoint i32* %311 to i64
  %314 = ptrtoint i32* %312 to i64
  %315 = sub i64 %313, %314
  %316 = sdiv exact i64 %315, 4
  %317 = load i32, i32* %30, align 4
  %318 = mul nsw i32 2, %317
  %319 = sext i32 %318 to i64
  %320 = add nsw i64 %316, %319
  %321 = icmp sle i64 %310, %320
  br i1 %321, label %322, label %432

322:                                              ; preds = %299
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  store i32* %325, i32** %33, align 8
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = mul nsw i32 %328, %331
  %333 = add nsw i32 %332, 1
  %334 = load i32, i32* %30, align 4
  %335 = mul nsw i32 %333, %334
  %336 = add nsw i32 200, %335
  %337 = load i32, i32* %28, align 4
  %338 = sub nsw i32 %336, %337
  store i32 %338, i32* %34, align 4
  %339 = load i32, i32* %34, align 4
  %340 = load i32, i32* %30, align 4
  %341 = mul nsw i32 2, %340
  %342 = call i32 @FFMAX(i32 %339, i32 %341)
  store i32 %342, i32* %34, align 4
  %343 = load i32, i32* %34, align 4
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, %343
  store i32 %347, i32* %345, align 4
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 15
  %350 = load i32, i32* %349, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %360, label %352

352:                                              ; preds = %322
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %354 = load i32, i32* %28, align 4
  %355 = load i32, i32* %34, align 4
  %356 = load i32, i32* %30, align 4
  %357 = call i32 @avpriv_request_sample(%struct.TYPE_18__* %353, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %354, i32 %355, i32 %356)
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 15
  store i32 1, i32* %359, align 4
  br label %360

360:                                              ; preds = %352, %322
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %362 = load i32, i32* %34, align 4
  %363 = call i32 @av_grow_packet(%struct.TYPE_16__* %361, i32 %362)
  store i32 %363, i32* %29, align 4
  %364 = load i32, i32* %29, align 4
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %360
  %367 = load i32, i32* %29, align 4
  store i32 %367, i32* %5, align 4
  br label %553

368:                                              ; preds = %360
  %369 = load i32, i32* %34, align 4
  %370 = load i32, i32* %28, align 4
  %371 = add nsw i32 %370, %369
  store i32 %371, i32* %28, align 4
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  %375 = load i32*, i32** %11, align 8
  %376 = load i32*, i32** %33, align 8
  %377 = ptrtoint i32* %375 to i64
  %378 = ptrtoint i32* %376 to i64
  %379 = sub i64 %377, %378
  %380 = sdiv exact i64 %379, 4
  %381 = getelementptr inbounds i32, i32* %374, i64 %380
  store i32* %381, i32** %11, align 8
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 0
  %384 = load i32*, i32** %383, align 8
  %385 = load i32*, i32** %12, align 8
  %386 = load i32*, i32** %33, align 8
  %387 = ptrtoint i32* %385 to i64
  %388 = ptrtoint i32* %386 to i64
  %389 = sub i64 %387, %388
  %390 = sdiv exact i64 %389, 4
  %391 = getelementptr inbounds i32, i32* %384, i64 %390
  store i32* %391, i32** %12, align 8
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %392, i32 0, i32 0
  %394 = load i32*, i32** %393, align 8
  %395 = load i32*, i32** %16, align 8
  %396 = load i32*, i32** %33, align 8
  %397 = ptrtoint i32* %395 to i64
  %398 = ptrtoint i32* %396 to i64
  %399 = sub i64 %397, %398
  %400 = sdiv exact i64 %399, 4
  %401 = getelementptr inbounds i32, i32* %394, i64 %400
  store i32* %401, i32** %16, align 8
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  %405 = load i32*, i32** %14, align 8
  %406 = load i32*, i32** %33, align 8
  %407 = ptrtoint i32* %405 to i64
  %408 = ptrtoint i32* %406 to i64
  %409 = sub i64 %407, %408
  %410 = sdiv exact i64 %409, 4
  %411 = getelementptr inbounds i32, i32* %404, i64 %410
  store i32* %411, i32** %14, align 8
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 0
  %414 = load i32*, i32** %413, align 8
  %415 = load i32*, i32** %13, align 8
  %416 = load i32*, i32** %33, align 8
  %417 = ptrtoint i32* %415 to i64
  %418 = ptrtoint i32* %416 to i64
  %419 = sub i64 %417, %418
  %420 = sdiv exact i64 %419, 4
  %421 = getelementptr inbounds i32, i32* %414, i64 %420
  store i32* %421, i32** %13, align 8
  %422 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %422, i32 0, i32 0
  %424 = load i32*, i32** %423, align 8
  %425 = load i32*, i32** %15, align 8
  %426 = load i32*, i32** %33, align 8
  %427 = ptrtoint i32* %425 to i64
  %428 = ptrtoint i32* %426 to i64
  %429 = sub i64 %427, %428
  %430 = sdiv exact i64 %429, 4
  %431 = getelementptr inbounds i32, i32* %424, i64 %430
  store i32* %431, i32** %15, align 8
  br label %432

432:                                              ; preds = %368, %299
  %433 = load i32*, i32** %12, align 8
  %434 = load i32, i32* %28, align 4
  %435 = sext i32 %434 to i64
  %436 = load i32*, i32** %12, align 8
  %437 = load i32*, i32** %11, align 8
  %438 = ptrtoint i32* %436 to i64
  %439 = ptrtoint i32* %437 to i64
  %440 = sub i64 %438, %439
  %441 = sdiv exact i64 %440, 4
  %442 = sub nsw i64 %435, %441
  %443 = trunc i64 %442 to i32
  %444 = call i32 @init_put_bits(i32* %17, i32* %433, i32 %443)
  %445 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %446 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %447 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  %448 = load i32, i32* %18, align 4
  %449 = load i32, i32* %19, align 4
  %450 = load i32, i32* %22, align 4
  %451 = load i32, i32* %32, align 4
  %452 = call i32 @encode_slice(%struct.TYPE_18__* %445, %struct.TYPE_17__* %446, i32* %17, i32* %447, i32 %448, i32 %449, i32 %450, i32 %451)
  store i32 %452, i32* %29, align 4
  %453 = load i32, i32* %29, align 4
  %454 = icmp slt i32 %453, 0
  br i1 %454, label %455, label %457

455:                                              ; preds = %432
  %456 = load i32, i32* %29, align 4
  store i32 %456, i32* %5, align 4
  br label %553

457:                                              ; preds = %432
  %458 = load i32, i32* %22, align 4
  %459 = call i32 @bytestream_put_byte(i32** %13, i32 %458)
  %460 = load i32, i32* %24, align 4
  %461 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %462 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = sub nsw i32 %463, 1
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = add nsw i32 %460, %467
  store i32 %468, i32* %27, align 4
  store i32 0, i32* %20, align 4
  br label %469

469:                                              ; preds = %488, %457
  %470 = load i32, i32* %20, align 4
  %471 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %472 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = sub nsw i32 %473, 1
  %475 = icmp slt i32 %470, %474
  br i1 %475, label %476, label %491

476:                                              ; preds = %469
  %477 = load i32, i32* %20, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = call i32 @bytestream_put_be16(i32** %13, i32 %480)
  %482 = load i32, i32* %20, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* %27, align 4
  %487 = add nsw i32 %486, %485
  store i32 %487, i32* %27, align 4
  br label %488

488:                                              ; preds = %476
  %489 = load i32, i32* %20, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %20, align 4
  br label %469

491:                                              ; preds = %469
  %492 = load i32, i32* %27, align 4
  %493 = call i32 @bytestream_put_be16(i32** %14, i32 %492)
  %494 = load i32, i32* %27, align 4
  %495 = load i32, i32* %24, align 4
  %496 = sub nsw i32 %494, %495
  %497 = load i32*, i32** %12, align 8
  %498 = sext i32 %496 to i64
  %499 = getelementptr inbounds i32, i32* %497, i64 %498
  store i32* %499, i32** %12, align 8
  %500 = load i32, i32* %30, align 4
  %501 = load i32, i32* %27, align 4
  %502 = icmp slt i32 %500, %501
  br i1 %502, label %503, label %505

503:                                              ; preds = %491
  %504 = load i32, i32* %27, align 4
  store i32 %504, i32* %30, align 4
  br label %505

505:                                              ; preds = %503, %491
  br label %506

506:                                              ; preds = %505
  %507 = load i32, i32* %32, align 4
  %508 = load i32, i32* %18, align 4
  %509 = add nsw i32 %508, %507
  store i32 %509, i32* %18, align 4
  %510 = load i32, i32* %21, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %21, align 4
  br label %257

512:                                              ; preds = %257
  br label %513

513:                                              ; preds = %512
  %514 = load i32, i32* %19, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %19, align 4
  br label %247

516:                                              ; preds = %247
  %517 = load i32*, i32** %12, align 8
  %518 = load i32*, i32** %16, align 8
  %519 = getelementptr inbounds i32, i32* %518, i64 -1
  %520 = ptrtoint i32* %517 to i64
  %521 = ptrtoint i32* %519 to i64
  %522 = sub i64 %520, %521
  %523 = sdiv exact i64 %522, 4
  %524 = trunc i64 %523 to i32
  store i32 %524, i32* %26, align 4
  %525 = load i32, i32* %26, align 4
  %526 = call i32 @bytestream_put_be32(i32** %16, i32 %525)
  br label %527

527:                                              ; preds = %516
  %528 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %529 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %528, i32 0, i32 8
  %530 = load i32, i32* %529, align 8
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %529, align 8
  br label %193

532:                                              ; preds = %193
  %533 = load i32*, i32** %11, align 8
  %534 = getelementptr inbounds i32, i32* %533, i64 -8
  store i32* %534, i32** %11, align 8
  %535 = load i32*, i32** %12, align 8
  %536 = load i32*, i32** %11, align 8
  %537 = ptrtoint i32* %535 to i64
  %538 = ptrtoint i32* %536 to i64
  %539 = sub i64 %537, %538
  %540 = sdiv exact i64 %539, 4
  %541 = trunc i64 %540 to i32
  store i32 %541, i32* %25, align 4
  %542 = load i32, i32* %25, align 4
  %543 = call i32 @bytestream_put_be32(i32** %11, i32 %542)
  %544 = load i32, i32* %25, align 4
  %545 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %546 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %545, i32 0, i32 1
  store i32 %544, i32* %546, align 8
  %547 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %548 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %549 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %548, i32 0, i32 2
  %550 = load i32, i32* %549, align 4
  %551 = or i32 %550, %547
  store i32 %551, i32* %549, align 4
  %552 = load i32*, i32** %9, align 8
  store i32 1, i32* %552, align 4
  store i32 0, i32* %5, align 4
  br label %553

553:                                              ; preds = %532, %455, %366, %243, %72
  %554 = load i32, i32* %5, align 4
  ret i32 %554
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_18__*, %struct.TYPE_16__*, i64, i32) #2

declare dso_local i32 @bytestream_put_be32(i32**, i32) #2

declare dso_local i32 @bytestream_put_be16(i32**, i32) #2

declare dso_local i32 @bytestream_put_buffer(i32**, i32, i32) #2

declare dso_local i32 @bytestream_put_byte(i32**, i32) #2

declare dso_local i32 @av_log2(i32) #2

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_18__*, i8*, i32, i32, i32) #2

declare dso_local i32 @av_grow_packet(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #2

declare dso_local i32 @encode_slice(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i32*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
