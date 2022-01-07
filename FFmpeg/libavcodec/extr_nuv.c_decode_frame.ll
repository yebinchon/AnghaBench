; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nuv.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nuv.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i8*, %struct.TYPE_19__*, i32, i64, i32, i32 }
%struct.TYPE_19__ = type { i8**, i32*, i32, i32 }
%struct.TYPE_17__ = type { i8*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"coded frame too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"not a nuv video frame\0A\00", align 1
@FF_REGET_BUFFER_FLAG_READONLY = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@AV_LZO_OUTPUT_PADDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"error during lzo decompression\0A\00", align 1
@RTJPEG_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Too small NUV video frame\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Unknown secondary frame header (wrong codec_tag?)\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"uncompressed frame too short\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"unknown compression\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_17__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_18__* %0, i8* %1, i32* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32*, align 8
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
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %12, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %13, align 8
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 12
  br i1 %49, label %50, label %55

50:                                               ; preds = %4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = call i32 @av_log(%struct.TYPE_18__* %51, i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %5, align 4
  br label %512

55:                                               ; preds = %4
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 68
  br i1 %60, label %61, label %98

61:                                               ; preds = %55
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 82
  br i1 %66, label %67, label %98

67:                                               ; preds = %61
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 12
  store i8* %69, i8** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %70, 12
  store i32 %71, i32* %11, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @get_quant(%struct.TYPE_18__* %72, %struct.TYPE_16__* %73, i8* %74, i32 %75)
  store i32 %76, i32* %23, align 4
  %77 = load i32, i32* %23, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %23, align 4
  store i32 %80, i32* %5, align 4
  br label %512

81:                                               ; preds = %67
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 5
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ff_rtjpeg_decode_init(i32* %83, i32 %86, i32 %89, i32 %92, i32 %95)
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %5, align 4
  br label %512

98:                                               ; preds = %61, %55
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 12
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 86
  br i1 %106, label %107, label %112

107:                                              ; preds = %101, %98
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %109 = load i32, i32* @AV_LOG_ERROR, align 4
  %110 = call i32 @av_log(%struct.TYPE_18__* %108, i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %111, i32* %5, align 4
  br label %512

112:                                              ; preds = %101
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  store i32 %116, i32* %22, align 4
  %117 = load i32, i32* %22, align 4
  switch i32 %117, label %141 [
    i32 50, label %118
    i32 49, label %118
    i32 76, label %137
  ]

118:                                              ; preds = %112, %112
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 2
  %121 = load i8, i8* %120, align 1
  %122 = icmp ne i8 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %15, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %127, 16
  br i1 %128, label %134, label %129

129:                                              ; preds = %118
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 16
  br i1 %133, label %134, label %136

134:                                              ; preds = %129, %118
  %135 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %135, i32* %5, align 4
  br label %512

136:                                              ; preds = %129
  br label %142

137:                                              ; preds = %112
  %138 = load i32, i32* @FF_REGET_BUFFER_FLAG_READONLY, align 4
  %139 = load i32, i32* %19, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %19, align 4
  store i32 0, i32* %15, align 4
  br label %142

141:                                              ; preds = %112
  store i32 1, i32* %15, align 4
  br label %142

142:                                              ; preds = %141, %137, %136
  %143 = load i32, i32* %22, align 4
  switch i32 %143, label %165 [
    i32 48, label %144
    i32 49, label %154
  ]

144:                                              ; preds = %142
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %147, %150
  %152 = mul nsw i32 %151, 3
  %153 = sdiv i32 %152, 2
  store i32 %153, i32* %18, align 4
  br label %165

154:                                              ; preds = %142
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sdiv i32 %157, 16
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sdiv i32 %161, 16
  %163 = mul nsw i32 %158, %162
  %164 = mul nsw i32 %163, 6
  store i32 %164, i32* %18, align 4
  br label %165

165:                                              ; preds = %142, %154, %144
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %18, align 4
  %168 = sdiv i32 %167, 4
  %169 = icmp slt i32 %166, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %171, i32* %5, align 4
  br label %512

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %276, %172
  %174 = load i8*, i8** %10, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 12
  store i8* %175, i8** %10, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sub nsw i32 %176, 12
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %22, align 4
  %179 = icmp eq i32 %178, 50
  br i1 %179, label %183, label %180

180:                                              ; preds = %173
  %181 = load i32, i32* %22, align 4
  %182 = icmp eq i32 %181, 51
  br i1 %182, label %183, label %224

183:                                              ; preds = %180, %173
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %188 = load i32, i32* @AV_LZO_OUTPUT_PADDING, align 4
  %189 = call i32 @FFMAX(i32 %187, i32 %188)
  %190 = sub nsw i32 %186, %189
  store i32 %190, i32* %24, align 4
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %25, align 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 3
  %194 = load i8*, i8** %193, align 8
  %195 = load i8*, i8** %10, align 8
  %196 = call i64 @av_lzo1x_decode(i8* %194, i32* %24, i8* %195, i32* %25)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %183
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %200 = load i32, i32* @AV_LOG_ERROR, align 4
  %201 = call i32 @av_log(%struct.TYPE_18__* %199, i32 %200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %202 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %202, i32* %5, align 4
  br label %512

203:                                              ; preds = %183
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 3
  %206 = load i8*, i8** %205, align 8
  store i8* %206, i8** %10, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %211 = load i32, i32* @AV_LZO_OUTPUT_PADDING, align 4
  %212 = call i32 @FFMAX(i32 %210, i32 %211)
  %213 = sub nsw i32 %209, %212
  %214 = load i32, i32* %24, align 4
  %215 = sub nsw i32 %213, %214
  store i32 %215, i32* %11, align 4
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 3
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %223 = call i32 @memset(i8* %221, i32 0, i32 %222)
  br label %224

224:                                              ; preds = %203, %180
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %291

229:                                              ; preds = %224
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* @RTJPEG_HEADER_SIZE, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %235 = load i32, i32* @AV_LOG_ERROR, align 4
  %236 = call i32 @av_log(%struct.TYPE_18__* %234, i32 %235, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %237 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %237, i32* %5, align 4
  br label %512

238:                                              ; preds = %229
  %239 = load i8*, i8** %10, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 0
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp ne i32 %242, 86
  br i1 %243, label %244, label %254

244:                                              ; preds = %238
  %245 = load i8*, i8** %10, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 4
  %247 = call i32 @AV_RL16(i8* %246)
  %248 = icmp ne i32 %247, 12
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %251 = load i32, i32* @AV_LOG_ERROR, align 4
  %252 = call i32 @av_log(%struct.TYPE_18__* %250, i32 %251, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %253 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %253, i32* %5, align 4
  br label %512

254:                                              ; preds = %244, %238
  %255 = load i8*, i8** %10, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 6
  %257 = call i32 @AV_RL16(i8* %256)
  store i32 %257, i32* %26, align 4
  %258 = load i8*, i8** %10, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 8
  %260 = call i32 @AV_RL16(i8* %259)
  store i32 %260, i32* %27, align 4
  %261 = load i8*, i8** %10, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 10
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  store i32 %264, i32* %28, align 4
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %266 = load i32, i32* %26, align 4
  %267 = load i32, i32* %27, align 4
  %268 = load i32, i32* %28, align 4
  %269 = call i32 @codec_reinit(%struct.TYPE_18__* %265, i32 %266, i32 %267, i32 %268)
  store i32 %269, i32* %20, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %254
  %272 = load i32, i32* %20, align 4
  store i32 %272, i32* %5, align 4
  br label %512

273:                                              ; preds = %254
  %274 = load i32, i32* %20, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %273
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  store i8* %279, i8** %10, align 8
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  store i32 %282, i32* %11, align 4
  store i32 1, i32* %17, align 4
  br label %173

283:                                              ; preds = %273
  %284 = load i8*, i8** %10, align 8
  %285 = load i32, i32* @RTJPEG_HEADER_SIZE, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  store i8* %287, i8** %10, align 8
  %288 = load i32, i32* @RTJPEG_HEADER_SIZE, align 4
  %289 = load i32, i32* %11, align 4
  %290 = sub nsw i32 %289, %288
  store i32 %290, i32* %11, align 4
  br label %291

291:                                              ; preds = %283, %224
  %292 = load i32, i32* %17, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %15, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %294, %291
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 4
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %299, align 8
  %301 = call i32 @av_frame_unref(%struct.TYPE_19__* %300)
  store i32 1, i32* %21, align 4
  br label %302

302:                                              ; preds = %297, %294
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 4
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %305, align 8
  %307 = load i32, i32* %19, align 4
  %308 = call i32 @ff_reget_buffer(%struct.TYPE_18__* %303, %struct.TYPE_19__* %306, i32 %307)
  store i32 %308, i32* %20, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %302
  %311 = load i32, i32* %20, align 4
  store i32 %311, i32* %5, align 4
  br label %512

312:                                              ; preds = %302
  %313 = load i32, i32* %21, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %375

315:                                              ; preds = %312
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 4
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 0
  %320 = load i8**, i8*** %319, align 8
  %321 = getelementptr inbounds i8*, i8** %320, i64 0
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 4
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 0
  %332 = load i32, i32* %331, align 4
  %333 = mul nsw i32 %325, %332
  %334 = call i32 @memset(i8* %322, i32 0, i32 %333)
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 4
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 0
  %339 = load i8**, i8*** %338, align 8
  %340 = getelementptr inbounds i8*, i8** %339, i64 1
  %341 = load i8*, i8** %340, align 8
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 4
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 1
  %351 = load i32, i32* %350, align 4
  %352 = mul nsw i32 %344, %351
  %353 = sdiv i32 %352, 2
  %354 = call i32 @memset(i8* %341, i32 128, i32 %353)
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 4
  %357 = load %struct.TYPE_19__*, %struct.TYPE_19__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 0
  %359 = load i8**, i8*** %358, align 8
  %360 = getelementptr inbounds i8*, i8** %359, i64 2
  %361 = load i8*, i8** %360, align 8
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 4
  %367 = load %struct.TYPE_19__*, %struct.TYPE_19__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 2
  %371 = load i32, i32* %370, align 4
  %372 = mul nsw i32 %364, %371
  %373 = sdiv i32 %372, 2
  %374 = call i32 @memset(i8* %361, i32 128, i32 %373)
  br label %375

375:                                              ; preds = %315, %312
  %376 = load i32, i32* %15, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %375
  %379 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  br label %382

380:                                              ; preds = %375
  %381 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  br label %382

382:                                              ; preds = %380, %378
  %383 = phi i32 [ %379, %378 ], [ %381, %380 ]
  %384 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i32 0, i32 4
  %386 = load %struct.TYPE_19__*, %struct.TYPE_19__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %386, i32 0, i32 3
  store i32 %383, i32* %387, align 4
  %388 = load i32, i32* %15, align 4
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 4
  %391 = load %struct.TYPE_19__*, %struct.TYPE_19__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %391, i32 0, i32 2
  store i32 %388, i32* %392, align 8
  %393 = load i32, i32* %22, align 4
  switch i32 %393, label %495 [
    i32 51, label %394
    i32 48, label %394
    i32 50, label %432
    i32 49, label %432
    i32 78, label %446
    i32 76, label %494
  ]

394:                                              ; preds = %382, %382
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  store i32 %397, i32* %29, align 4
  %398 = load i32, i32* %11, align 4
  %399 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %400 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* %29, align 4
  %403 = mul nsw i32 %401, %402
  %404 = mul nsw i32 %403, 3
  %405 = sdiv i32 %404, 2
  %406 = icmp slt i32 %398, %405
  br i1 %406, label %407, label %418

407:                                              ; preds = %394
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %409 = load i32, i32* @AV_LOG_ERROR, align 4
  %410 = call i32 @av_log(%struct.TYPE_18__* %408, i32 %409, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %411 = load i32, i32* %11, align 4
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = sdiv i32 %411, %414
  %416 = sdiv i32 %415, 3
  %417 = mul nsw i32 %416, 2
  store i32 %417, i32* %29, align 4
  br label %418

418:                                              ; preds = %407, %394
  %419 = load i32, i32* %29, align 4
  %420 = icmp sgt i32 %419, 0
  br i1 %420, label %421, label %431

421:                                              ; preds = %418
  %422 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %423 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %422, i32 0, i32 4
  %424 = load %struct.TYPE_19__*, %struct.TYPE_19__** %423, align 8
  %425 = load i8*, i8** %10, align 8
  %426 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %427 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* %29, align 4
  %430 = call i32 @copy_frame(%struct.TYPE_19__* %424, i8* %425, i32 %428, i32 %429)
  br label %431

431:                                              ; preds = %421, %418
  br label %500

432:                                              ; preds = %382, %382
  %433 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %434 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %433, i32 0, i32 5
  %435 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %436 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %435, i32 0, i32 4
  %437 = load %struct.TYPE_19__*, %struct.TYPE_19__** %436, align 8
  %438 = load i8*, i8** %10, align 8
  %439 = load i32, i32* %11, align 4
  %440 = call i32 @ff_rtjpeg_decode_frame_yuv420(i32* %434, %struct.TYPE_19__* %437, i8* %438, i32 %439)
  store i32 %440, i32* %16, align 4
  %441 = load i32, i32* %16, align 4
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %443, label %445

443:                                              ; preds = %432
  %444 = load i32, i32* %16, align 4
  store i32 %444, i32* %5, align 4
  br label %512

445:                                              ; preds = %432
  br label %500

446:                                              ; preds = %382
  %447 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %448 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %447, i32 0, i32 4
  %449 = load %struct.TYPE_19__*, %struct.TYPE_19__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %449, i32 0, i32 0
  %451 = load i8**, i8*** %450, align 8
  %452 = getelementptr inbounds i8*, i8** %451, i64 0
  %453 = load i8*, i8** %452, align 8
  %454 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %455 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %458 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = mul nsw i32 %456, %459
  %461 = call i32 @memset(i8* %453, i32 0, i32 %460)
  %462 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %463 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %462, i32 0, i32 4
  %464 = load %struct.TYPE_19__*, %struct.TYPE_19__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %464, i32 0, i32 0
  %466 = load i8**, i8*** %465, align 8
  %467 = getelementptr inbounds i8*, i8** %466, i64 1
  %468 = load i8*, i8** %467, align 8
  %469 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %470 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %473 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 4
  %475 = mul nsw i32 %471, %474
  %476 = sdiv i32 %475, 4
  %477 = call i32 @memset(i8* %468, i32 128, i32 %476)
  %478 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %479 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %478, i32 0, i32 4
  %480 = load %struct.TYPE_19__*, %struct.TYPE_19__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %480, i32 0, i32 0
  %482 = load i8**, i8*** %481, align 8
  %483 = getelementptr inbounds i8*, i8** %482, i64 2
  %484 = load i8*, i8** %483, align 8
  %485 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %486 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %489 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = mul nsw i32 %487, %490
  %492 = sdiv i32 %491, 4
  %493 = call i32 @memset(i8* %484, i32 128, i32 %492)
  br label %500

494:                                              ; preds = %382
  br label %500

495:                                              ; preds = %382
  %496 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %497 = load i32, i32* @AV_LOG_ERROR, align 4
  %498 = call i32 @av_log(%struct.TYPE_18__* %496, i32 %497, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %499 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %499, i32* %5, align 4
  br label %512

500:                                              ; preds = %494, %446, %445, %431
  %501 = load i32*, i32** %13, align 8
  %502 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %503 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %502, i32 0, i32 4
  %504 = load %struct.TYPE_19__*, %struct.TYPE_19__** %503, align 8
  %505 = call i32 @av_frame_ref(i32* %501, %struct.TYPE_19__* %504)
  store i32 %505, i32* %20, align 4
  %506 = icmp slt i32 %505, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %500
  %508 = load i32, i32* %20, align 4
  store i32 %508, i32* %5, align 4
  br label %512

509:                                              ; preds = %500
  %510 = load i32*, i32** %8, align 8
  store i32 1, i32* %510, align 4
  %511 = load i32, i32* %14, align 4
  store i32 %511, i32* %5, align 4
  br label %512

512:                                              ; preds = %509, %507, %495, %443, %310, %271, %249, %233, %198, %170, %134, %107, %81, %79, %50
  %513 = load i32, i32* %5, align 4
  ret i32 %513
}

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @get_quant(%struct.TYPE_18__*, %struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @ff_rtjpeg_decode_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i64 @av_lzo1x_decode(i8*, i32*, i8*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @AV_RL16(i8*) #1

declare dso_local i32 @codec_reinit(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_19__*) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @copy_frame(%struct.TYPE_19__*, i8*, i32, i32) #1

declare dso_local i32 @ff_rtjpeg_decode_frame_yuv420(i32*, %struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @av_frame_ref(i32*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
