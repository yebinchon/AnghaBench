; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pcx.c_pcx_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pcx.c_pcx_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32**, i32*, i32 }

@PCX_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Packet too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"this is not PCX encoded data\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid image dimensions\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"PCX data is corrupted\0A\00", align 1
@AV_PIX_FMT_RGB24 = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"invalid PCX file\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"File is too short\0A\00", align 1
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"image data possibly corrupted\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"expected palette after image data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_12__*)* @pcx_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcx_decode_frame(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
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
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %11, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PCX_HEADER_SIZE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 @av_log(%struct.TYPE_14__* %42, i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %5, align 4
  br label %526

46:                                               ; preds = %4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bytestream2_init(i32* %10, i32 %49, i32 %52)
  %54 = call i32 @bytestream2_get_byteu(i32* %10)
  %55 = icmp ne i32 %54, 10
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = call i32 @bytestream2_get_byteu(i32* %10)
  %58 = icmp sgt i32 %57, 5
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %46
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = call i32 @av_log(%struct.TYPE_14__* %60, i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %63, i32* %5, align 4
  br label %526

64:                                               ; preds = %56
  %65 = call i32 @bytestream2_get_byteu(i32* %10)
  store i32 %65, i32* %12, align 4
  %66 = call i32 @bytestream2_get_byteu(i32* %10)
  store i32 %66, i32* %20, align 4
  %67 = call i8* @bytestream2_get_le16u(i32* %10)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %13, align 4
  %69 = call i8* @bytestream2_get_le16u(i32* %10)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = call i8* @bytestream2_get_le16u(i32* %10)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %15, align 4
  %73 = call i8* @bytestream2_get_le16u(i32* %10)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %16, align 4
  %75 = call i8* @bytestream2_get_le16u(i32* %10)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  %79 = call i8* @bytestream2_get_le16u(i32* %10)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %64
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86, %64
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = call i32 @av_log(%struct.TYPE_14__* %91, i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %5, align 4
  br label %526

95:                                               ; preds = %86
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %13, align 4
  %98 = sub nsw i32 %96, %97
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %14, align 4
  %102 = sub nsw i32 %100, %101
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %19, align 4
  %104 = call i32 @bytestream2_skipu(i32* %10, i32 49)
  %105 = call i32 @bytestream2_get_byteu(i32* %10)
  store i32 %105, i32* %22, align 4
  %106 = call i8* @bytestream2_get_le16u(i32* %10)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* %21, align 4
  %110 = mul i32 %108, %109
  store i32 %110, i32* %26, align 4
  %111 = load i32, i32* %26, align 4
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %20, align 4
  %114 = mul i32 %112, %113
  %115 = load i32, i32* %22, align 4
  %116 = mul i32 %114, %115
  %117 = add i32 %116, 7
  %118 = udiv i32 %117, 8
  %119 = icmp ult i32 %111, %118
  br i1 %119, label %129, label %120

120:                                              ; preds = %95
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %26, align 4
  %125 = call i32 @bytestream2_get_bytes_left(i32* %10)
  %126 = load i32, i32* %19, align 4
  %127 = udiv i32 %125, %126
  %128 = icmp ugt i32 %124, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123, %95
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = load i32, i32* @AV_LOG_ERROR, align 4
  %132 = call i32 @av_log(%struct.TYPE_14__* %130, i32 %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %133, i32* %5, align 4
  br label %526

134:                                              ; preds = %123, %120
  %135 = load i32, i32* %22, align 4
  %136 = shl i32 %135, 8
  %137 = load i32, i32* %20, align 4
  %138 = add i32 %136, %137
  switch i32 %138, label %147 [
    i32 776, label %139
    i32 264, label %143
    i32 260, label %143
    i32 258, label %143
    i32 257, label %143
    i32 1025, label %143
    i32 769, label %143
    i32 513, label %143
  ]

139:                                              ; preds = %134
  %140 = load i32, i32* @AV_PIX_FMT_RGB24, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %152

143:                                              ; preds = %134, %134, %134, %134, %134, %134, %134
  %144 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %152

147:                                              ; preds = %134
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %149 = load i32, i32* @AV_LOG_ERROR, align 4
  %150 = call i32 @av_log(%struct.TYPE_14__* %148, i32 %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %151, i32* %5, align 4
  br label %526

152:                                              ; preds = %143, %139
  %153 = call i32 @bytestream2_skipu(i32* %10, i32 60)
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %19, align 4
  %157 = call i32 @ff_set_dimensions(%struct.TYPE_14__* %154, i32 %155, i32 %156)
  store i32 %157, i32* %17, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i32, i32* %17, align 4
  store i32 %160, i32* %5, align 4
  br label %526

161:                                              ; preds = %152
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %164 = call i32 @ff_get_buffer(%struct.TYPE_14__* %162, %struct.TYPE_13__* %163, i32 0)
  store i32 %164, i32* %17, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i32, i32* %17, align 4
  store i32 %167, i32* %5, align 4
  br label %526

168:                                              ; preds = %161
  %169 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i32**, i32*** %173, align 8
  %175 = getelementptr inbounds i32*, i32** %174, i64 0
  %176 = load i32*, i32** %175, align 8
  store i32* %176, i32** %27, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %23, align 4
  %182 = load i32, i32* %26, align 4
  %183 = zext i32 %182 to i64
  %184 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32* @av_malloc(i64 %185)
  store i32* %186, i32** %28, align 8
  %187 = load i32*, i32** %28, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %168
  %190 = load i32, i32* @ENOMEM, align 4
  %191 = call i32 @AVERROR(i32 %190)
  store i32 %191, i32* %5, align 4
  br label %526

192:                                              ; preds = %168
  %193 = load i32, i32* %22, align 4
  %194 = icmp eq i32 %193, 3
  br i1 %194, label %195, label %266

195:                                              ; preds = %192
  %196 = load i32, i32* %20, align 4
  %197 = icmp eq i32 %196, 8
  br i1 %197, label %198, label %266

198:                                              ; preds = %195
  store i32 0, i32* %24, align 4
  br label %199

199:                                              ; preds = %262, %198
  %200 = load i32, i32* %24, align 4
  %201 = load i32, i32* %19, align 4
  %202 = icmp ult i32 %200, %201
  br i1 %202, label %203, label %265

203:                                              ; preds = %199
  %204 = load i32*, i32** %28, align 8
  %205 = load i32, i32* %26, align 4
  %206 = load i32, i32* %12, align 4
  %207 = call i32 @pcx_rle_decode(i32* %10, i32* %204, i32 %205, i32 %206)
  store i32 %207, i32* %17, align 4
  %208 = load i32, i32* %17, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  br label %522

211:                                              ; preds = %203
  store i32 0, i32* %25, align 4
  br label %212

212:                                              ; preds = %254, %211
  %213 = load i32, i32* %25, align 4
  %214 = load i32, i32* %18, align 4
  %215 = icmp ult i32 %213, %214
  br i1 %215, label %216, label %257

216:                                              ; preds = %212
  %217 = load i32*, i32** %28, align 8
  %218 = load i32, i32* %25, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %27, align 8
  %223 = load i32, i32* %25, align 4
  %224 = mul i32 3, %223
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32 %221, i32* %226, align 4
  %227 = load i32*, i32** %28, align 8
  %228 = load i32, i32* %25, align 4
  %229 = load i32, i32* %21, align 4
  %230 = add i32 %228, %229
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %227, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %27, align 8
  %235 = load i32, i32* %25, align 4
  %236 = mul i32 3, %235
  %237 = add i32 %236, 1
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %234, i64 %238
  store i32 %233, i32* %239, align 4
  %240 = load i32*, i32** %28, align 8
  %241 = load i32, i32* %25, align 4
  %242 = load i32, i32* %21, align 4
  %243 = shl i32 %242, 1
  %244 = add i32 %241, %243
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %240, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %27, align 8
  %249 = load i32, i32* %25, align 4
  %250 = mul i32 3, %249
  %251 = add i32 %250, 2
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %248, i64 %252
  store i32 %247, i32* %253, align 4
  br label %254

254:                                              ; preds = %216
  %255 = load i32, i32* %25, align 4
  %256 = add i32 %255, 1
  store i32 %256, i32* %25, align 4
  br label %212

257:                                              ; preds = %212
  %258 = load i32, i32* %23, align 4
  %259 = load i32*, i32** %27, align 8
  %260 = zext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32* %261, i32** %27, align 8
  br label %262

262:                                              ; preds = %257
  %263 = load i32, i32* %24, align 4
  %264 = add i32 %263, 1
  store i32 %264, i32* %24, align 4
  br label %199

265:                                              ; preds = %199
  br label %471

266:                                              ; preds = %195, %192
  %267 = load i32, i32* %22, align 4
  %268 = icmp eq i32 %267, 1
  br i1 %268, label %269, label %357

269:                                              ; preds = %266
  %270 = load i32, i32* %20, align 4
  %271 = icmp eq i32 %270, 8
  br i1 %271, label %272, label %357

272:                                              ; preds = %269
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %275, 769
  store i32 %276, i32* %29, align 4
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp slt i32 %279, 769
  br i1 %280, label %281, label %299

281:                                              ; preds = %272
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %283 = load i32, i32* @AV_LOG_ERROR, align 4
  %284 = call i32 @av_log(%struct.TYPE_14__* %282, i32 %283, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @AV_EF_EXPLODE, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %281
  %292 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %297

293:                                              ; preds = %281
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  br label %297

297:                                              ; preds = %293, %291
  %298 = phi i32 [ %292, %291 ], [ %296, %293 ]
  store i32 %298, i32* %17, align 4
  br label %522

299:                                              ; preds = %272
  store i32 0, i32* %24, align 4
  br label %300

300:                                              ; preds = %317, %299
  %301 = load i32, i32* %24, align 4
  %302 = load i32, i32* %19, align 4
  %303 = icmp ult i32 %301, %302
  br i1 %303, label %304, label %324

304:                                              ; preds = %300
  %305 = load i32*, i32** %28, align 8
  %306 = load i32, i32* %26, align 4
  %307 = load i32, i32* %12, align 4
  %308 = call i32 @pcx_rle_decode(i32* %10, i32* %305, i32 %306, i32 %307)
  store i32 %308, i32* %17, align 4
  %309 = load i32, i32* %17, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %304
  br label %522

312:                                              ; preds = %304
  %313 = load i32*, i32** %27, align 8
  %314 = load i32*, i32** %28, align 8
  %315 = load i32, i32* %18, align 4
  %316 = call i32 @memcpy(i32* %313, i32* %314, i32 %315)
  br label %317

317:                                              ; preds = %312
  %318 = load i32, i32* %24, align 4
  %319 = add i32 %318, 1
  store i32 %319, i32* %24, align 4
  %320 = load i32, i32* %23, align 4
  %321 = load i32*, i32** %27, align 8
  %322 = zext i32 %320 to i64
  %323 = getelementptr inbounds i32, i32* %321, i64 %322
  store i32* %323, i32** %27, align 8
  br label %300

324:                                              ; preds = %300
  %325 = call i32 @bytestream2_tell(i32* %10)
  %326 = load i32, i32* %29, align 4
  %327 = icmp ne i32 %325, %326
  br i1 %327, label %328, label %335

328:                                              ; preds = %324
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %330 = load i32, i32* @AV_LOG_WARNING, align 4
  %331 = call i32 @av_log(%struct.TYPE_14__* %329, i32 %330, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %332 = load i32, i32* %29, align 4
  %333 = load i32, i32* @SEEK_SET, align 4
  %334 = call i32 @bytestream2_seek(i32* %10, i32 %332, i32 %333)
  br label %335

335:                                              ; preds = %328, %324
  %336 = call i32 @bytestream2_get_byte(i32* %10)
  %337 = icmp ne i32 %336, 12
  br i1 %337, label %338, label %356

338:                                              ; preds = %335
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %340 = load i32, i32* @AV_LOG_ERROR, align 4
  %341 = call i32 @av_log(%struct.TYPE_14__* %339, i32 %340, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @AV_EF_EXPLODE, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %338
  %349 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %354

350:                                              ; preds = %338
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  br label %354

354:                                              ; preds = %350, %348
  %355 = phi i32 [ %349, %348 ], [ %353, %350 ]
  store i32 %355, i32* %17, align 4
  br label %522

356:                                              ; preds = %335
  br label %470

357:                                              ; preds = %269, %266
  %358 = load i32, i32* %22, align 4
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %360, label %400

360:                                              ; preds = %357
  store i32 0, i32* %24, align 4
  br label %361

361:                                              ; preds = %396, %360
  %362 = load i32, i32* %24, align 4
  %363 = load i32, i32* %19, align 4
  %364 = icmp ult i32 %362, %363
  br i1 %364, label %365, label %399

365:                                              ; preds = %361
  %366 = load i32*, i32** %28, align 8
  %367 = load i32, i32* %26, align 4
  %368 = call i32 @init_get_bits8(i32* %30, i32* %366, i32 %367)
  %369 = load i32*, i32** %28, align 8
  %370 = load i32, i32* %26, align 4
  %371 = load i32, i32* %12, align 4
  %372 = call i32 @pcx_rle_decode(i32* %10, i32* %369, i32 %370, i32 %371)
  store i32 %372, i32* %17, align 4
  %373 = load i32, i32* %17, align 4
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %365
  br label %522

376:                                              ; preds = %365
  store i32 0, i32* %25, align 4
  br label %377

377:                                              ; preds = %388, %376
  %378 = load i32, i32* %25, align 4
  %379 = load i32, i32* %18, align 4
  %380 = icmp ult i32 %378, %379
  br i1 %380, label %381, label %391

381:                                              ; preds = %377
  %382 = load i32, i32* %20, align 4
  %383 = call i32 @get_bits(i32* %30, i32 %382)
  %384 = load i32*, i32** %27, align 8
  %385 = load i32, i32* %25, align 4
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  store i32 %383, i32* %387, align 4
  br label %388

388:                                              ; preds = %381
  %389 = load i32, i32* %25, align 4
  %390 = add i32 %389, 1
  store i32 %390, i32* %25, align 4
  br label %377

391:                                              ; preds = %377
  %392 = load i32, i32* %23, align 4
  %393 = load i32*, i32** %27, align 8
  %394 = zext i32 %392 to i64
  %395 = getelementptr inbounds i32, i32* %393, i64 %394
  store i32* %395, i32** %27, align 8
  br label %396

396:                                              ; preds = %391
  %397 = load i32, i32* %24, align 4
  %398 = add i32 %397, 1
  store i32 %398, i32* %24, align 4
  br label %361

399:                                              ; preds = %361
  br label %469

400:                                              ; preds = %357
  store i32 0, i32* %24, align 4
  br label %401

401:                                              ; preds = %465, %400
  %402 = load i32, i32* %24, align 4
  %403 = load i32, i32* %19, align 4
  %404 = icmp ult i32 %402, %403
  br i1 %404, label %405, label %468

405:                                              ; preds = %401
  %406 = load i32*, i32** %28, align 8
  %407 = load i32, i32* %26, align 4
  %408 = load i32, i32* %12, align 4
  %409 = call i32 @pcx_rle_decode(i32* %10, i32* %406, i32 %407, i32 %408)
  store i32 %409, i32* %17, align 4
  %410 = load i32, i32* %17, align 4
  %411 = icmp slt i32 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %405
  br label %522

413:                                              ; preds = %405
  store i32 0, i32* %25, align 4
  br label %414

414:                                              ; preds = %457, %413
  %415 = load i32, i32* %25, align 4
  %416 = load i32, i32* %18, align 4
  %417 = icmp ult i32 %415, %416
  br i1 %417, label %418, label %460

418:                                              ; preds = %414
  %419 = load i32, i32* %25, align 4
  %420 = and i32 %419, 7
  %421 = ashr i32 128, %420
  store i32 %421, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %422 = load i32, i32* %22, align 4
  %423 = sub i32 %422, 1
  store i32 %423, i32* %31, align 4
  br label %424

424:                                              ; preds = %448, %418
  %425 = load i32, i32* %31, align 4
  %426 = icmp sge i32 %425, 0
  br i1 %426, label %427, label %451

427:                                              ; preds = %424
  %428 = load i32, i32* %33, align 4
  %429 = shl i32 %428, 1
  store i32 %429, i32* %33, align 4
  %430 = load i32*, i32** %28, align 8
  %431 = load i32, i32* %31, align 4
  %432 = load i32, i32* %21, align 4
  %433 = mul i32 %431, %432
  %434 = load i32, i32* %25, align 4
  %435 = lshr i32 %434, 3
  %436 = add i32 %433, %435
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %430, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* %32, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  %443 = xor i1 %442, true
  %444 = xor i1 %443, true
  %445 = zext i1 %444 to i32
  %446 = load i32, i32* %33, align 4
  %447 = add nsw i32 %446, %445
  store i32 %447, i32* %33, align 4
  br label %448

448:                                              ; preds = %427
  %449 = load i32, i32* %31, align 4
  %450 = add nsw i32 %449, -1
  store i32 %450, i32* %31, align 4
  br label %424

451:                                              ; preds = %424
  %452 = load i32, i32* %33, align 4
  %453 = load i32*, i32** %27, align 8
  %454 = load i32, i32* %25, align 4
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %453, i64 %455
  store i32 %452, i32* %456, align 4
  br label %457

457:                                              ; preds = %451
  %458 = load i32, i32* %25, align 4
  %459 = add i32 %458, 1
  store i32 %459, i32* %25, align 4
  br label %414

460:                                              ; preds = %414
  %461 = load i32, i32* %23, align 4
  %462 = load i32*, i32** %27, align 8
  %463 = zext i32 %461 to i64
  %464 = getelementptr inbounds i32, i32* %462, i64 %463
  store i32* %464, i32** %27, align 8
  br label %465

465:                                              ; preds = %460
  %466 = load i32, i32* %24, align 4
  %467 = add i32 %466, 1
  store i32 %467, i32* %24, align 4
  br label %401

468:                                              ; preds = %401
  br label %469

469:                                              ; preds = %468, %399
  br label %470

470:                                              ; preds = %469, %356
  br label %471

471:                                              ; preds = %470, %265
  %472 = call i32 @bytestream2_tell(i32* %10)
  store i32 %472, i32* %17, align 4
  %473 = load i32, i32* %22, align 4
  %474 = icmp eq i32 %473, 1
  br i1 %474, label %475, label %487

475:                                              ; preds = %471
  %476 = load i32, i32* %20, align 4
  %477 = icmp eq i32 %476, 8
  br i1 %477, label %478, label %487

478:                                              ; preds = %475
  %479 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %480 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %479, i32 0, i32 0
  %481 = load i32**, i32*** %480, align 8
  %482 = getelementptr inbounds i32*, i32** %481, i64 1
  %483 = load i32*, i32** %482, align 8
  %484 = call i32 @pcx_palette(i32* %10, i32* %483, i32 256)
  %485 = load i32, i32* %17, align 4
  %486 = add nsw i32 %485, 768
  store i32 %486, i32* %17, align 4
  br label %520

487:                                              ; preds = %475, %471
  %488 = load i32, i32* %20, align 4
  %489 = load i32, i32* %22, align 4
  %490 = mul i32 %488, %489
  %491 = icmp eq i32 %490, 1
  br i1 %491, label %492, label %506

492:                                              ; preds = %487
  %493 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %494 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %493, i32 0, i32 0
  %495 = load i32**, i32*** %494, align 8
  %496 = getelementptr inbounds i32*, i32** %495, i64 1
  %497 = load i32*, i32** %496, align 8
  %498 = call i32 @AV_WN32A(i32* %497, i32 -16777216)
  %499 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %500 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %499, i32 0, i32 0
  %501 = load i32**, i32*** %500, align 8
  %502 = getelementptr inbounds i32*, i32** %501, i64 1
  %503 = load i32*, i32** %502, align 8
  %504 = getelementptr inbounds i32, i32* %503, i64 4
  %505 = call i32 @AV_WN32A(i32* %504, i32 -1)
  br label %519

506:                                              ; preds = %487
  %507 = load i32, i32* %20, align 4
  %508 = icmp ult i32 %507, 8
  br i1 %508, label %509, label %518

509:                                              ; preds = %506
  %510 = load i32, i32* @SEEK_SET, align 4
  %511 = call i32 @bytestream2_seek(i32* %10, i32 16, i32 %510)
  %512 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %513 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %512, i32 0, i32 0
  %514 = load i32**, i32*** %513, align 8
  %515 = getelementptr inbounds i32*, i32** %514, i64 1
  %516 = load i32*, i32** %515, align 8
  %517 = call i32 @pcx_palette(i32* %10, i32* %516, i32 16)
  br label %518

518:                                              ; preds = %509, %506
  br label %519

519:                                              ; preds = %518, %492
  br label %520

520:                                              ; preds = %519, %478
  %521 = load i32*, i32** %8, align 8
  store i32 1, i32* %521, align 4
  br label %522

522:                                              ; preds = %520, %412, %375, %354, %311, %297, %210
  %523 = load i32*, i32** %28, align 8
  %524 = call i32 @av_free(i32* %523)
  %525 = load i32, i32* %17, align 4
  store i32 %525, i32* %5, align 4
  br label %526

526:                                              ; preds = %522, %189, %166, %159, %147, %129, %90, %59, %41
  %527 = load i32, i32* %5, align 4
  ret i32 %527
}

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i8* @bytestream2_get_le16u(i32*) #1

declare dso_local i32 @bytestream2_skipu(i32*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32* @av_malloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @pcx_rle_decode(i32*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @pcx_palette(i32*, i32*, i32) #1

declare dso_local i32 @AV_WN32A(i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
