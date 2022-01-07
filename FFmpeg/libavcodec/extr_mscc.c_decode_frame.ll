; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mscc.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mscc.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, i32*, i32, i32, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32, i32*, i32, i32, i64* }

@AV_CODEC_ID_MSCC = common dso_local global i64 0, align 8
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Palette size %d is wrong\0A\00", align 1
@Z_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Inflate reset error: %d\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Inflate error: %d\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_15__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_17__* %0, i8* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %11, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %12, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  br label %257

37:                                               ; preds = %4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %40 = call i32 @ff_get_buffer(%struct.TYPE_17__* %38, %struct.TYPE_16__* %39, i32 0)
  store i32 %40, i32* %16, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %5, align 4
  br label %257

44:                                               ; preds = %37
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AV_CODEC_ID_MSCC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %60, %55
  store i32 %61, i32* %59, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32* %63, i32** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 %64, 2
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %50, %44
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %126

72:                                               ; preds = %66
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %75 = call i32* @av_packet_get_side_data(%struct.TYPE_15__* %73, i32 %74, i32* %18)
  store i32* %75, i32** %19, align 8
  %76 = load i32*, i32** %19, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %106

78:                                               ; preds = %72
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* @AVPALETTE_SIZE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %78
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  store i32 0, i32* %17, align 4
  br label %85

85:                                               ; preds = %102, %82
  %86 = load i32, i32* %17, align 4
  %87 = icmp slt i32 %86, 256
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = load i32*, i32** %19, align 8
  %90 = load i32, i32* %17, align 4
  %91 = mul nsw i32 %90, 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = call i32 @AV_RL32(i32* %93)
  %95 = or i32 -16777216, %94
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %17, align 4
  br label %85

105:                                              ; preds = %85
  br label %115

106:                                              ; preds = %78, %72
  %107 = load i32*, i32** %19, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %111 = load i32, i32* @AV_LOG_ERROR, align 4
  %112 = load i32, i32* %18, align 4
  %113 = call i32 @av_log(%struct.TYPE_17__* %110, i32 %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %109, %106
  br label %115

115:                                              ; preds = %114, %105
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 4
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @AVPALETTE_SIZE, align 4
  %125 = call i32 @memcpy(i64 %120, i32* %123, i32 %124)
  br label %126

126:                                              ; preds = %115, %66
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 4
  %129 = call i32 @inflateReset(%struct.TYPE_18__* %128)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* @Z_OK, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %126
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @av_log(%struct.TYPE_17__* %134, i32 %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %138, i32* %5, align 4
  br label %257

139:                                              ; preds = %126
  %140 = load i32*, i32** %12, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 4
  store i32* %140, i32** %143, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 3
  store i32 %150, i32* %153, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 2
  store i32 %156, i32* %159, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 4
  %162 = load i32, i32* @Z_FINISH, align 4
  %163 = call i32 @inflate(%struct.TYPE_18__* %161, i32 %162)
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* @Z_STREAM_END, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %139
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %169 = load i32, i32* @AV_LOG_ERROR, align 4
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @av_log(%struct.TYPE_17__* %168, i32 %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %172, i32* %5, align 4
  br label %257

173:                                              ; preds = %139
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @bytestream2_init(i32* %14, i32 %176, i32 %180)
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @bytestream2_init_writer(i32* %15, i32* %184, i32 %187)
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %190 = call i32 @rle_uncompress(%struct.TYPE_17__* %189, i32* %14, i32* %15)
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* %16, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %173
  %194 = load i32, i32* %16, align 4
  store i32 %194, i32* %5, align 4
  br label %257

195:                                              ; preds = %173
  store i32 0, i32* %17, align 4
  br label %196

196:                                              ; preds = %244, %195
  %197 = load i32, i32* %17, align 4
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %247

202:                                              ; preds = %196
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 4
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %17, align 4
  %212 = sub nsw i32 %210, %211
  %213 = sub nsw i32 %212, 1
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 %213, %218
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %207, %220
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %17, align 4
  %229 = mul nsw i32 %227, %228
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 %229, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %224, i64 %234
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = mul nsw i32 %238, %241
  %243 = call i32 @memcpy(i64 %221, i32* %235, i32 %242)
  br label %244

244:                                              ; preds = %202
  %245 = load i32, i32* %17, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %17, align 4
  br label %196

247:                                              ; preds = %196
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 2
  store i32 1, i32* %249, align 8
  %250 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 4
  %253 = load i32*, i32** %8, align 8
  store i32 1, i32* %253, align 4
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  store i32 %256, i32* %5, align 4
  br label %257

257:                                              ; preds = %247, %193, %167, %133, %42, %35
  %258 = load i32, i32* %5, align 4
  ret i32 %258
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @inflateReset(%struct.TYPE_18__*) #1

declare dso_local i32 @inflate(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_init_writer(i32*, i32*, i32) #1

declare dso_local i32 @rle_uncompress(%struct.TYPE_17__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
