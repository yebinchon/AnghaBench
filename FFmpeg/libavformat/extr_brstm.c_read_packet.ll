; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_brstm.c_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_brstm.c_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__** }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i64, i32* }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_THP = common dso_local global i64 0, align 8
@AV_CODEC_ID_ADPCM_THP_LE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"adpcm_thp requires ADPC chunk, but none was found.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_packet(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %17, i64 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %6, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %7, align 8
  store i32 0, i32* %10, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @avio_feof(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %31, i32* %3, align 4
  br label %302

32:                                               ; preds = %2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %32
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 14
  %61 = sdiv i32 %60, 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %44
  %64 = load i32, i32* %8, align 4
  %65 = sdiv i32 %64, 14
  %66 = mul nsw i32 %65, 8
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %8, align 4
  %68 = srem i32 %67, 14
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  %72 = srem i32 %71, 14
  %73 = add nsw i32 %72, 1
  %74 = sdiv i32 %73, 2
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %70, %63
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %78, %44
  br label %104

86:                                               ; preds = %32
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %9, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %8, align 4
  br label %103

101:                                              ; preds = %86
  %102 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %102, i32* %3, align 4
  br label %302

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %85
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AV_CODEC_ID_ADPCM_THP, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @AV_CODEC_ID_ADPCM_THP_LE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %279

116:                                              ; preds = %110, %104
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = call i32 @av_log(%struct.TYPE_15__* %122, i32 %123, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %125, i32* %3, align 4
  br label %302

126:                                              ; preds = %116
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %147, label %131

131:                                              ; preds = %126
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 32, %134
  %136 = call i64 @av_mallocz(i32 %135)
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 8
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 8
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %131
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = call i32 @AVERROR(i32 %144)
  store i32 %145, i32* %3, align 4
  br label %302

146:                                              ; preds = %131
  br label %147

147:                                              ; preds = %146, %126
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @INT_MAX, align 4
  %150 = sub nsw i32 %149, 32
  %151 = sub nsw i32 %150, 4
  %152 = icmp sgt i32 %148, %151
  br i1 %152, label %172, label %153

153:                                              ; preds = %147
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 36, %154
  %156 = load i32, i32* @INT_MAX, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = sdiv i32 %156, %159
  %161 = icmp sgt i32 %155, %160
  br i1 %161, label %172, label %162

162:                                              ; preds = %153
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 36, %163
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = mul nsw i32 %164, %167
  %169 = load i32, i32* @INT_MAX, align 4
  %170 = sub nsw i32 %169, 8
  %171 = icmp sgt i32 %168, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %162, %153, %147
  %173 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %173, i32* %3, align 4
  br label %302

174:                                              ; preds = %162
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 36, %176
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = mul nsw i32 %177, %180
  %182 = add nsw i32 8, %181
  %183 = call i64 @av_new_packet(%struct.TYPE_14__* %175, i32 %182)
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %174
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = call i32 @AVERROR(i32 %186)
  store i32 %187, i32* %3, align 4
  br label %302

188:                                              ; preds = %174
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  store i32* %191, i32** %14, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @AV_CODEC_ID_ADPCM_THP_LE, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %188
  %198 = load i32, i32* %9, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 %198, %201
  %203 = call i32 @bytestream_put_le32(i32** %14, i32 %202)
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @bytestream_put_le32(i32** %14, i32 %204)
  br label %215

206:                                              ; preds = %188
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = mul nsw i32 %207, %210
  %212 = call i32 @bytestream_put_be32(i32** %14, i32 %211)
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @bytestream_put_be32(i32** %14, i32 %213)
  br label %215

215:                                              ; preds = %206, %197
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 8
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = mul nsw i32 32, %221
  %223 = call i32 @bytestream_put_buffer(i32** %14, i64 %218, i32 %222)
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 7
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = mul nsw i32 4, %229
  %231 = sext i32 %230 to i64
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = sub nsw i64 %234, 1
  %236 = mul nsw i64 %231, %235
  %237 = add nsw i64 %226, %236
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = mul nsw i32 4, %240
  %242 = call i32 @bytestream_put_buffer(i32** %14, i64 %237, i32 %241)
  store i32 0, i32* %12, align 4
  br label %243

243:                                              ; preds = %272, %215
  %244 = load i32, i32* %12, align 4
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %275

249:                                              ; preds = %243
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32*, i32** %14, align 8
  %254 = load i32, i32* %9, align 4
  %255 = call i32 @avio_read(i32 %252, i32* %253, i32 %254)
  store i32 %255, i32* %11, align 4
  %256 = load i32, i32* %9, align 4
  %257 = load i32*, i32** %14, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  store i32* %259, i32** %14, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %10, align 4
  %264 = call i32 @avio_skip(i32 %262, i32 %263)
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* %9, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %249
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %270 = call i32 @av_packet_unref(%struct.TYPE_14__* %269)
  br label %275

271:                                              ; preds = %249
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %12, align 4
  br label %243

275:                                              ; preds = %268, %243
  %276 = load i32, i32* %8, align 4
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 8
  br label %291

279:                                              ; preds = %110
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %9, align 4
  %284 = mul nsw i32 %283, %282
  store i32 %284, i32* %9, align 4
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %289 = load i32, i32* %9, align 4
  %290 = call i32 @av_get_packet(i32 %287, %struct.TYPE_14__* %288, i32 %289)
  store i32 %290, i32* %11, align 4
  br label %291

291:                                              ; preds = %279, %275
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 1
  store i64 0, i64* %293, align 8
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* %9, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %291
  %298 = load i32, i32* @EIO, align 4
  %299 = call i32 @AVERROR(i32 %298)
  store i32 %299, i32* %11, align 4
  br label %300

300:                                              ; preds = %297, %291
  %301 = load i32, i32* %11, align 4
  store i32 %301, i32* %3, align 4
  br label %302

302:                                              ; preds = %300, %185, %172, %143, %121, %101, %30
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local i64 @avio_feof(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i64 @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @bytestream_put_le32(i32**, i32) #1

declare dso_local i32 @bytestream_put_be32(i32**, i32) #1

declare dso_local i32 @bytestream_put_buffer(i32**, i64, i32) #1

declare dso_local i32 @avio_read(i32, i32*, i32) #1

declare dso_local i32 @avio_skip(i32, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_14__*) #1

declare dso_local i32 @av_get_packet(i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
