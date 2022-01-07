; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bmvvideo.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bmvvideo.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32*, i32* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32**, i32, i32* }

@BMV_AUDIO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Audio data doesn't fit in frame\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@BMV_COMMAND = common dso_local global i32 0, align 4
@BMV_PRINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Command data doesn't fit in frame\0A\00", align 1
@BMV_PALETTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Palette data doesn't fit in frame\0A\00", align 1
@BMV_SCROLL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Screen offset data doesn't fit in frame\0A\00", align 1
@BMV_INTRA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Error decoding frame data\0A\00", align 1
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32*, %struct.TYPE_11__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_13__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %11, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = call i32 @bytestream_get_byte(i64* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @BMV_AUDIO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = call i32 @bytestream_get_byte(i64* %39)
  store i32 %40, i32* %18, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %18, align 4
  %45 = mul nsw i32 %44, 65
  %46 = add nsw i32 %45, 2
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = call i32 @av_log(%struct.TYPE_13__* %49, i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %5, align 4
  br label %274

53:                                               ; preds = %37
  %54 = load i32, i32* %18, align 4
  %55 = mul nsw i32 %54, 65
  %56 = sext i32 %55 to i64
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %53, %4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @BMV_COMMAND, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %100

66:                                               ; preds = %61
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @BMV_PRINT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 8, i32 10
  store i32 %72, i32* %19, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = icmp sgt i64 %82, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %66
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = load i32, i32* @AV_LOG_ERROR, align 4
  %91 = call i32 @av_log(%struct.TYPE_13__* %89, i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %92, i32* %5, align 4
  br label %274

93:                                               ; preds = %66
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %93, %61
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @BMV_PALETTE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %143

105:                                              ; preds = %100
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %108, %111
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 768
  %117 = sext i32 %116 to i64
  %118 = icmp sgt i64 %112, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %105
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = load i32, i32* @AV_LOG_ERROR, align 4
  %122 = call i32 @av_log(%struct.TYPE_13__* %120, i32 %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %123, i32* %5, align 4
  br label %274

124:                                              ; preds = %105
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %139, %124
  %126 = load i32, i32* %14, align 4
  %127 = icmp slt i32 %126, 256
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = call i32 @bytestream_get_be24(i64* %130)
  %132 = or i32 -16777216, %131
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %128
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %125

142:                                              ; preds = %125
  br label %143

143:                                              ; preds = %142, %100
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @BMV_SCROLL, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %172

148:                                              ; preds = %143
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %151, %154
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %158, 2
  %160 = sext i32 %159 to i64
  %161 = icmp sgt i64 %155, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %148
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %164 = load i32, i32* @AV_LOG_ERROR, align 4
  %165 = call i32 @av_log(%struct.TYPE_13__* %163, i32 %164, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %166, i32* %5, align 4
  br label %274

167:                                              ; preds = %148
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = call i64 @bytestream_get_le16(i64* %169)
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %13, align 4
  br label %181

172:                                              ; preds = %143
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @BMV_INTRA, align 4
  %175 = and i32 %173, %174
  %176 = load i32, i32* @BMV_INTRA, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  store i32 -640, i32* %13, align 4
  br label %180

179:                                              ; preds = %172
  store i32 0, i32* %13, align 4
  br label %180

180:                                              ; preds = %179, %178
  br label %181

181:                                              ; preds = %180, %167
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %184 = call i32 @ff_get_buffer(%struct.TYPE_13__* %182, %struct.TYPE_12__* %183, i32 0)
  store i32 %184, i32* %15, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* %15, align 4
  store i32 %187, i32* %5, align 4
  br label %274

188:                                              ; preds = %181
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %198, %201
  %203 = sub nsw i64 %195, %202
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = call i64 @decode_bmv_frame(i64 %191, i64 %203, i32* %206, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %188
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %212 = load i32, i32* @AV_LOG_ERROR, align 4
  %213 = call i32 @av_log(%struct.TYPE_13__* %211, i32 %212, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %214 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %214, i32* %5, align 4
  br label %274

215:                                              ; preds = %188
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load i32**, i32*** %217, align 8
  %219 = getelementptr inbounds i32*, i32** %218, i64 1
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* @AVPALETTE_SIZE, align 4
  %225 = call i32 @memcpy(i32* %220, i32* %223, i32 %224)
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* @BMV_PALETTE, align 4
  %228 = and i32 %226, %227
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 8
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load i32**, i32*** %232, align 8
  %234 = getelementptr inbounds i32*, i32** %233, i64 0
  %235 = load i32*, i32** %234, align 8
  store i32* %235, i32** %17, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  store i32* %238, i32** %16, align 8
  store i32 0, i32* %14, align 4
  br label %239

239:                                              ; preds = %266, %215
  %240 = load i32, i32* %14, align 4
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp slt i32 %240, %243
  br i1 %244, label %245, label %269

245:                                              ; preds = %239
  %246 = load i32*, i32** %17, align 8
  %247 = load i32*, i32** %16, align 8
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @memcpy(i32* %246, i32* %247, i32 %250)
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32*, i32** %16, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32* %257, i32** %16, align 8
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32*, i32** %17, align 8
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  store i32* %265, i32** %17, align 8
  br label %266

266:                                              ; preds = %245
  %267 = load i32, i32* %14, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %14, align 4
  br label %239

269:                                              ; preds = %239
  %270 = load i32*, i32** %8, align 8
  store i32 1, i32* %270, align 4
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  store i32 %273, i32* %5, align 4
  br label %274

274:                                              ; preds = %269, %210, %186, %162, %119, %88, %48
  %275 = load i32, i32* %5, align 4
  ret i32 %275
}

declare dso_local i32 @bytestream_get_byte(i64*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @bytestream_get_be24(i64*) #1

declare dso_local i64 @bytestream_get_le16(i64*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @decode_bmv_frame(i64, i64, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
