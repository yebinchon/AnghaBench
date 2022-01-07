; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_jpeg.c_ff_rtp_send_jpeg.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_jpeg.c_ff_rtp_send_jpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__**, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32*, i64, i32, i32 }

@AV_PIX_FMT_YUVJ422P = common dso_local global i64 0, align 8
@AVCOL_RANGE_JPEG = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV422P = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUVJ420P = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV420P = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported pixel format\0A\00", align 1
@DQT = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Only 8-bit precision is supported.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Too short JPEG header. Aborted!\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Invalid number of quantisation tables\0A\00", align 1
@SOF0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Only 1x1 chroma blocks are supported. Aborted!\0A\00", align 1
@DHT = common dso_local global i32 0, align 4
@avpriv_mjpeg_bits_dc_luminance = common dso_local global i32 0, align 4
@avpriv_mjpeg_val_dc = common dso_local global i32 0, align 4
@avpriv_mjpeg_bits_dc_chrominance = common dso_local global i32 0, align 4
@avpriv_mjpeg_bits_ac_luminance = common dso_local global i32 0, align 4
@avpriv_mjpeg_val_ac_luminance = common dso_local global i32 0, align 4
@avpriv_mjpeg_bits_ac_chrominance = common dso_local global i32 0, align 4
@avpriv_mjpeg_val_ac_chrominance = common dso_local global i32 0, align 4
@SOS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Insufficient data. Aborted!\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"RFC 2435 requires standard Huffman tables for jpeg\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"RFC 2435 suggests two quantization tables, %d provided\0A\00", align 1
@EOI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_rtp_send_jpeg(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca [4 x i32*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %7, align 8
  %25 = bitcast [4 x i32*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 32, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %38, i64 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @AV_CEIL_RSHIFT(i32 %44, i32 3)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %48, i64 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @AV_CEIL_RSHIFT(i32 %54, i32 3)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %58, i64 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AV_PIX_FMT_YUVJ422P, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %91, label %67

67:                                               ; preds = %3
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %70, i64 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AVCOL_RANGE_JPEG, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %67
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %82, i64 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AV_PIX_FMT_YUV422P, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %79, %3
  store i32 0, i32* %10, align 4
  br label %134

92:                                               ; preds = %79, %67
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %95, i64 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AV_PIX_FMT_YUVJ420P, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %128, label %104

104:                                              ; preds = %92
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %107, i64 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @AVCOL_RANGE_JPEG, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %104
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %119, i64 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @AV_PIX_FMT_YUV420P, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %116, %92
  store i32 1, i32* %10, align 4
  br label %133

129:                                              ; preds = %116, %104
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = load i32, i32* @AV_LOG_ERROR, align 4
  %132 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %130, i32 %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %618

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %133, %91
  store i32 0, i32* %16, align 4
  br label %135

135:                                              ; preds = %466, %134
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %469

139:                                              ; preds = %135
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 255
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %466

147:                                              ; preds = %139
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @DQT, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %224

156:                                              ; preds = %147
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %16, align 4
  %159 = add nsw i32 %158, 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 240
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %156
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %167 = load i32, i32* @AV_LOG_WARNING, align 4
  %168 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %166, i32 %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %169

169:                                              ; preds = %165, %156
  %170 = load i32*, i32** %5, align 8
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 2
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = call i32 @AV_RB16(i32* %174)
  %176 = sdiv i32 %175, 65
  store i32 %176, i32* %18, align 4
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %177, 5
  %179 = load i32, i32* %18, align 4
  %180 = mul nsw i32 %179, 65
  %181 = add nsw i32 %178, %180
  %182 = load i32, i32* %6, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %169
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %186 = load i32, i32* @AV_LOG_ERROR, align 4
  %187 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %185, i32 %186, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %618

188:                                              ; preds = %169
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 %189, %190
  %192 = icmp sgt i32 %191, 4
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %195 = load i32, i32* @AV_LOG_ERROR, align 4
  %196 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %194, i32 %195, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %618

197:                                              ; preds = %188
  store i32 0, i32* %19, align 4
  br label %198

198:                                              ; preds = %217, %197
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %18, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %220

202:                                              ; preds = %198
  %203 = load i32*, i32** %5, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = getelementptr inbounds i32, i32* %206, i64 5
  %208 = load i32, i32* %19, align 4
  %209 = mul nsw i32 %208, 65
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %19, align 4
  %214 = add nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %215
  store i32* %211, i32** %216, align 8
  br label %217

217:                                              ; preds = %202
  %218 = load i32, i32* %19, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %19, align 4
  br label %198

220:                                              ; preds = %198
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %9, align 4
  br label %465

224:                                              ; preds = %147
  %225 = load i32*, i32** %5, align 8
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @SOF0, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %254

233:                                              ; preds = %224
  %234 = load i32*, i32** %5, align 8
  %235 = load i32, i32* %16, align 4
  %236 = add nsw i32 %235, 14
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 17
  br i1 %240, label %249, label %241

241:                                              ; preds = %233
  %242 = load i32*, i32** %5, align 8
  %243 = load i32, i32* %16, align 4
  %244 = add nsw i32 %243, 17
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 17
  br i1 %248, label %249, label %253

249:                                              ; preds = %241, %233
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %251 = load i32, i32* @AV_LOG_ERROR, align 4
  %252 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %250, i32 %251, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %618

253:                                              ; preds = %241
  br label %464

254:                                              ; preds = %224
  %255 = load i32*, i32** %5, align 8
  %256 = load i32, i32* %16, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @DHT, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %435

263:                                              ; preds = %254
  %264 = load i32*, i32** %5, align 8
  %265 = load i32, i32* %16, align 4
  %266 = add nsw i32 %265, 2
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  %269 = call i32 @AV_RB16(i32* %268)
  store i32 %269, i32* %20, align 4
  %270 = load i32, i32* %17, align 4
  %271 = or i32 %270, 16
  store i32 %271, i32* %17, align 4
  %272 = load i32, i32* %16, align 4
  %273 = add nsw i32 %272, 3
  store i32 %273, i32* %16, align 4
  %274 = load i32, i32* %20, align 4
  %275 = sub nsw i32 %274, 2
  store i32 %275, i32* %20, align 4
  %276 = load i32, i32* %16, align 4
  %277 = load i32, i32* %20, align 4
  %278 = add nsw i32 %276, %277
  %279 = load i32, i32* %6, align 4
  %280 = icmp sge i32 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %263
  br label %466

282:                                              ; preds = %263
  br label %283

283:                                              ; preds = %433, %429, %282
  %284 = load i32, i32* %20, align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %434

286:                                              ; preds = %283
  %287 = load i32*, i32** %5, align 8
  %288 = load i32, i32* %16, align 4
  %289 = add nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %287, i64 %290
  %292 = load i32, i32* %291, align 4
  switch i32 %292, label %429 [
    i32 0, label %293
    i32 1, label %327
    i32 16, label %361
    i32 17, label %395
  ]

293:                                              ; preds = %286
  %294 = load i32, i32* %20, align 4
  %295 = icmp sge i32 %294, 29
  br i1 %295, label %296, label %322

296:                                              ; preds = %293
  %297 = load i32*, i32** %5, align 8
  %298 = load i32, i32* %16, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = getelementptr inbounds i32, i32* %300, i64 2
  %302 = load i32, i32* @avpriv_mjpeg_bits_dc_luminance, align 4
  %303 = add nsw i32 %302, 1
  %304 = call i32 @memcmp(i32* %301, i32 %303, i32 16)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %322, label %306

306:                                              ; preds = %296
  %307 = load i32*, i32** %5, align 8
  %308 = load i32, i32* %16, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = getelementptr inbounds i32, i32* %310, i64 18
  %312 = load i32, i32* @avpriv_mjpeg_val_dc, align 4
  %313 = call i32 @memcmp(i32* %311, i32 %312, i32 12)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %322, label %315

315:                                              ; preds = %306
  %316 = load i32, i32* %17, align 4
  %317 = or i32 %316, 1
  store i32 %317, i32* %17, align 4
  %318 = load i32, i32* %16, align 4
  %319 = add nsw i32 %318, 29
  store i32 %319, i32* %16, align 4
  %320 = load i32, i32* %20, align 4
  %321 = sub nsw i32 %320, 29
  store i32 %321, i32* %20, align 4
  br label %326

322:                                              ; preds = %306, %296, %293
  %323 = load i32, i32* %20, align 4
  %324 = load i32, i32* %16, align 4
  %325 = add nsw i32 %324, %323
  store i32 %325, i32* %16, align 4
  store i32 0, i32* %20, align 4
  br label %326

326:                                              ; preds = %322, %315
  br label %433

327:                                              ; preds = %286
  %328 = load i32, i32* %20, align 4
  %329 = icmp sge i32 %328, 29
  br i1 %329, label %330, label %356

330:                                              ; preds = %327
  %331 = load i32*, i32** %5, align 8
  %332 = load i32, i32* %16, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = getelementptr inbounds i32, i32* %334, i64 2
  %336 = load i32, i32* @avpriv_mjpeg_bits_dc_chrominance, align 4
  %337 = add nsw i32 %336, 1
  %338 = call i32 @memcmp(i32* %335, i32 %337, i32 16)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %356, label %340

340:                                              ; preds = %330
  %341 = load i32*, i32** %5, align 8
  %342 = load i32, i32* %16, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = getelementptr inbounds i32, i32* %344, i64 18
  %346 = load i32, i32* @avpriv_mjpeg_val_dc, align 4
  %347 = call i32 @memcmp(i32* %345, i32 %346, i32 12)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %356, label %349

349:                                              ; preds = %340
  %350 = load i32, i32* %17, align 4
  %351 = or i32 %350, 2
  store i32 %351, i32* %17, align 4
  %352 = load i32, i32* %16, align 4
  %353 = add nsw i32 %352, 29
  store i32 %353, i32* %16, align 4
  %354 = load i32, i32* %20, align 4
  %355 = sub nsw i32 %354, 29
  store i32 %355, i32* %20, align 4
  br label %360

356:                                              ; preds = %340, %330, %327
  %357 = load i32, i32* %20, align 4
  %358 = load i32, i32* %16, align 4
  %359 = add nsw i32 %358, %357
  store i32 %359, i32* %16, align 4
  store i32 0, i32* %20, align 4
  br label %360

360:                                              ; preds = %356, %349
  br label %433

361:                                              ; preds = %286
  %362 = load i32, i32* %20, align 4
  %363 = icmp sge i32 %362, 179
  br i1 %363, label %364, label %390

364:                                              ; preds = %361
  %365 = load i32*, i32** %5, align 8
  %366 = load i32, i32* %16, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = getelementptr inbounds i32, i32* %368, i64 2
  %370 = load i32, i32* @avpriv_mjpeg_bits_ac_luminance, align 4
  %371 = add nsw i32 %370, 1
  %372 = call i32 @memcmp(i32* %369, i32 %371, i32 16)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %390, label %374

374:                                              ; preds = %364
  %375 = load i32*, i32** %5, align 8
  %376 = load i32, i32* %16, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = getelementptr inbounds i32, i32* %378, i64 18
  %380 = load i32, i32* @avpriv_mjpeg_val_ac_luminance, align 4
  %381 = call i32 @memcmp(i32* %379, i32 %380, i32 162)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %390, label %383

383:                                              ; preds = %374
  %384 = load i32, i32* %17, align 4
  %385 = or i32 %384, 4
  store i32 %385, i32* %17, align 4
  %386 = load i32, i32* %16, align 4
  %387 = add nsw i32 %386, 179
  store i32 %387, i32* %16, align 4
  %388 = load i32, i32* %20, align 4
  %389 = sub nsw i32 %388, 179
  store i32 %389, i32* %20, align 4
  br label %394

390:                                              ; preds = %374, %364, %361
  %391 = load i32, i32* %20, align 4
  %392 = load i32, i32* %16, align 4
  %393 = add nsw i32 %392, %391
  store i32 %393, i32* %16, align 4
  store i32 0, i32* %20, align 4
  br label %394

394:                                              ; preds = %390, %383
  br label %433

395:                                              ; preds = %286
  %396 = load i32, i32* %20, align 4
  %397 = icmp sge i32 %396, 179
  br i1 %397, label %398, label %424

398:                                              ; preds = %395
  %399 = load i32*, i32** %5, align 8
  %400 = load i32, i32* %16, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = getelementptr inbounds i32, i32* %402, i64 2
  %404 = load i32, i32* @avpriv_mjpeg_bits_ac_chrominance, align 4
  %405 = add nsw i32 %404, 1
  %406 = call i32 @memcmp(i32* %403, i32 %405, i32 16)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %424, label %408

408:                                              ; preds = %398
  %409 = load i32*, i32** %5, align 8
  %410 = load i32, i32* %16, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = getelementptr inbounds i32, i32* %412, i64 18
  %414 = load i32, i32* @avpriv_mjpeg_val_ac_chrominance, align 4
  %415 = call i32 @memcmp(i32* %413, i32 %414, i32 162)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %424, label %417

417:                                              ; preds = %408
  %418 = load i32, i32* %17, align 4
  %419 = or i32 %418, 8
  store i32 %419, i32* %17, align 4
  %420 = load i32, i32* %16, align 4
  %421 = add nsw i32 %420, 179
  store i32 %421, i32* %16, align 4
  %422 = load i32, i32* %20, align 4
  %423 = sub nsw i32 %422, 179
  store i32 %423, i32* %20, align 4
  br label %428

424:                                              ; preds = %408, %398, %395
  %425 = load i32, i32* %20, align 4
  %426 = load i32, i32* %16, align 4
  %427 = add nsw i32 %426, %425
  store i32 %427, i32* %16, align 4
  store i32 0, i32* %20, align 4
  br label %428

428:                                              ; preds = %424, %417
  br label %433

429:                                              ; preds = %286
  %430 = load i32, i32* %20, align 4
  %431 = load i32, i32* %16, align 4
  %432 = add nsw i32 %431, %430
  store i32 %432, i32* %16, align 4
  store i32 0, i32* %20, align 4
  br label %283

433:                                              ; preds = %428, %394, %360, %326
  br label %283

434:                                              ; preds = %283
  br label %463

435:                                              ; preds = %254
  %436 = load i32*, i32** %5, align 8
  %437 = load i32, i32* %16, align 4
  %438 = add nsw i32 %437, 1
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %436, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* @SOS, align 4
  %443 = icmp eq i32 %441, %442
  br i1 %443, label %444, label %462

444:                                              ; preds = %435
  %445 = load i32*, i32** %5, align 8
  %446 = load i32, i32* %16, align 4
  %447 = add nsw i32 %446, 2
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %445, i64 %448
  %450 = call i32 @AV_RB16(i32* %449)
  %451 = add nsw i32 %450, 2
  %452 = load i32, i32* %16, align 4
  %453 = add nsw i32 %452, %451
  store i32 %453, i32* %16, align 4
  %454 = load i32, i32* %16, align 4
  %455 = load i32, i32* %6, align 4
  %456 = icmp sgt i32 %454, %455
  br i1 %456, label %457, label %461

457:                                              ; preds = %444
  %458 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %459 = load i32, i32* @AV_LOG_ERROR, align 4
  %460 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %458, i32 %459, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %618

461:                                              ; preds = %444
  br label %469

462:                                              ; preds = %435
  br label %463

463:                                              ; preds = %462, %434
  br label %464

464:                                              ; preds = %463, %253
  br label %465

465:                                              ; preds = %464, %220
  br label %466

466:                                              ; preds = %465, %281, %146
  %467 = load i32, i32* %16, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %16, align 4
  br label %135

469:                                              ; preds = %461, %135
  %470 = load i32, i32* %17, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %479

472:                                              ; preds = %469
  %473 = load i32, i32* %17, align 4
  %474 = icmp ne i32 %473, 31
  br i1 %474, label %475, label %479

475:                                              ; preds = %472
  %476 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %477 = load i32, i32* @AV_LOG_ERROR, align 4
  %478 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %476, i32 %477, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %618

479:                                              ; preds = %472, %469
  %480 = load i32, i32* %9, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %490

482:                                              ; preds = %479
  %483 = load i32, i32* %9, align 4
  %484 = icmp ne i32 %483, 2
  br i1 %484, label %485, label %490

485:                                              ; preds = %482
  %486 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %487 = load i32, i32* @AV_LOG_WARNING, align 4
  %488 = load i32, i32* %9, align 4
  %489 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %486, i32 %487, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %488)
  br label %490

490:                                              ; preds = %485, %482, %479
  %491 = load i32, i32* %16, align 4
  %492 = load i32*, i32** %5, align 8
  %493 = sext i32 %491 to i64
  %494 = getelementptr inbounds i32, i32* %492, i64 %493
  store i32* %494, i32** %5, align 8
  %495 = load i32, i32* %16, align 4
  %496 = load i32, i32* %6, align 4
  %497 = sub nsw i32 %496, %495
  store i32 %497, i32* %6, align 4
  %498 = load i32, i32* %6, align 4
  %499 = sub nsw i32 %498, 2
  store i32 %499, i32* %16, align 4
  br label %500

500:                                              ; preds = %522, %490
  %501 = load i32, i32* %16, align 4
  %502 = icmp sge i32 %501, 0
  br i1 %502, label %503, label %525

503:                                              ; preds = %500
  %504 = load i32*, i32** %5, align 8
  %505 = load i32, i32* %16, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = icmp eq i32 %508, 255
  br i1 %509, label %510, label %521

510:                                              ; preds = %503
  %511 = load i32*, i32** %5, align 8
  %512 = load i32, i32* %16, align 4
  %513 = add nsw i32 %512, 1
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %511, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = load i32, i32* @EOI, align 4
  %518 = icmp eq i32 %516, %517
  br i1 %518, label %519, label %521

519:                                              ; preds = %510
  %520 = load i32, i32* %16, align 4
  store i32 %520, i32* %6, align 4
  br label %525

521:                                              ; preds = %510, %503
  br label %522

522:                                              ; preds = %521
  %523 = load i32, i32* %16, align 4
  %524 = add nsw i32 %523, -1
  store i32 %524, i32* %16, align 4
  br label %500

525:                                              ; preds = %519, %500
  %526 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %527 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %526, i32 0, i32 0
  %528 = load i32*, i32** %527, align 8
  store i32* %528, i32** %13, align 8
  br label %529

529:                                              ; preds = %588, %525
  %530 = load i32, i32* %6, align 4
  %531 = icmp sgt i32 %530, 0
  br i1 %531, label %532, label %618

532:                                              ; preds = %529
  store i32 8, i32* %21, align 4
  %533 = load i32, i32* %14, align 4
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %544

535:                                              ; preds = %532
  %536 = load i32, i32* %9, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %544

538:                                              ; preds = %535
  %539 = load i32, i32* %9, align 4
  %540 = mul nsw i32 64, %539
  %541 = add nsw i32 4, %540
  %542 = load i32, i32* %21, align 4
  %543 = add nsw i32 %542, %541
  store i32 %543, i32* %21, align 4
  br label %544

544:                                              ; preds = %538, %535, %532
  %545 = load i32, i32* %6, align 4
  %546 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %547 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %546, i32 0, i32 2
  %548 = load i64, i64* %547, align 8
  %549 = load i32, i32* %21, align 4
  %550 = sext i32 %549 to i64
  %551 = sub nsw i64 %548, %550
  %552 = call i32 @FFMIN(i32 %545, i64 %551)
  store i32 %552, i32* %15, align 4
  %553 = call i32 @bytestream_put_byte(i32** %13, i32 0)
  %554 = load i32, i32* %14, align 4
  %555 = call i32 @bytestream_put_be24(i32** %13, i32 %554)
  %556 = load i32, i32* %10, align 4
  %557 = call i32 @bytestream_put_byte(i32** %13, i32 %556)
  %558 = call i32 @bytestream_put_byte(i32** %13, i32 255)
  %559 = load i32, i32* %11, align 4
  %560 = call i32 @bytestream_put_byte(i32** %13, i32 %559)
  %561 = load i32, i32* %12, align 4
  %562 = call i32 @bytestream_put_byte(i32** %13, i32 %561)
  %563 = load i32, i32* %14, align 4
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %588

565:                                              ; preds = %544
  %566 = load i32, i32* %9, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %588

568:                                              ; preds = %565
  %569 = call i32 @bytestream_put_byte(i32** %13, i32 0)
  %570 = call i32 @bytestream_put_byte(i32** %13, i32 0)
  %571 = load i32, i32* %9, align 4
  %572 = mul nsw i32 64, %571
  %573 = call i32 @bytestream_put_be16(i32** %13, i32 %572)
  store i32 0, i32* %16, align 4
  br label %574

574:                                              ; preds = %584, %568
  %575 = load i32, i32* %16, align 4
  %576 = load i32, i32* %9, align 4
  %577 = icmp slt i32 %575, %576
  br i1 %577, label %578, label %587

578:                                              ; preds = %574
  %579 = load i32, i32* %16, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %580
  %582 = load i32*, i32** %581, align 8
  %583 = call i32 @bytestream_put_buffer(i32** %13, i32* %582, i32 64)
  br label %584

584:                                              ; preds = %578
  %585 = load i32, i32* %16, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %16, align 4
  br label %574

587:                                              ; preds = %574
  br label %588

588:                                              ; preds = %587, %565, %544
  %589 = load i32*, i32** %13, align 8
  %590 = load i32*, i32** %5, align 8
  %591 = load i32, i32* %15, align 4
  %592 = call i32 @memcpy(i32* %589, i32* %590, i32 %591)
  %593 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %594 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %595 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %594, i32 0, i32 1
  %596 = load i32*, i32** %595, align 8
  %597 = load i32, i32* %15, align 4
  %598 = load i32, i32* %21, align 4
  %599 = add nsw i32 %597, %598
  %600 = load i32, i32* %6, align 4
  %601 = load i32, i32* %15, align 4
  %602 = icmp eq i32 %600, %601
  %603 = zext i1 %602 to i32
  %604 = call i32 @ff_rtp_send_data(%struct.TYPE_11__* %593, i32* %596, i32 %599, i32 %603)
  %605 = load i32, i32* %15, align 4
  %606 = load i32*, i32** %5, align 8
  %607 = sext i32 %605 to i64
  %608 = getelementptr inbounds i32, i32* %606, i64 %607
  store i32* %608, i32** %5, align 8
  %609 = load i32, i32* %15, align 4
  %610 = load i32, i32* %6, align 4
  %611 = sub nsw i32 %610, %609
  store i32 %611, i32* %6, align 4
  %612 = load i32, i32* %15, align 4
  %613 = load i32, i32* %14, align 4
  %614 = add nsw i32 %613, %612
  store i32 %614, i32* %14, align 4
  %615 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %616 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %615, i32 0, i32 1
  %617 = load i32*, i32** %616, align 8
  store i32* %617, i32** %13, align 8
  br label %529

618:                                              ; preds = %129, %184, %193, %249, %457, %475, %529
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #2

declare dso_local i32 @AV_RB16(i32*) #2

declare dso_local i32 @memcmp(i32*, i32, i32) #2

declare dso_local i32 @FFMIN(i32, i64) #2

declare dso_local i32 @bytestream_put_byte(i32**, i32) #2

declare dso_local i32 @bytestream_put_be24(i32**, i32) #2

declare dso_local i32 @bytestream_put_be16(i32**, i32) #2

declare dso_local i32 @bytestream_put_buffer(i32**, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @ff_rtp_send_data(%struct.TYPE_11__*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
