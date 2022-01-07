; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsespeex.c_speex_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsespeex.c_speex_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__**, %struct.ogg* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i32, %struct.speex_params*, i32* }
%struct.speex_params = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_SPEEX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"speex packet too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid sample rate %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"invalid channel count. Speex must be mono or stereo.\0A\00", align 1
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"invalid packet_size, frames_per_packet %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @speex_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speex_header(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca %struct.speex_params*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.ogg*, %struct.ogg** %13, align 8
  store %struct.ogg* %14, %struct.ogg** %6, align 8
  %15 = load %struct.ogg*, %struct.ogg** %6, align 8
  %16 = getelementptr inbounds %struct.ogg, %struct.ogg* %15, i32 0, i32 0
  %17 = load %struct.ogg_stream*, %struct.ogg_stream** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %17, i64 %19
  store %struct.ogg_stream* %20, %struct.ogg_stream** %7, align 8
  %21 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %22 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %21, i32 0, i32 2
  %23 = load %struct.speex_params*, %struct.speex_params** %22, align 8
  store %struct.speex_params* %23, %struct.speex_params** %8, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %26, i64 %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %9, align 8
  %31 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %32 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %35 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32* %38, i32** %10, align 8
  %39 = load %struct.speex_params*, %struct.speex_params** %8, align 8
  %40 = icmp ne %struct.speex_params* %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %2
  %42 = call %struct.speex_params* @av_mallocz(i32 8)
  store %struct.speex_params* %42, %struct.speex_params** %8, align 8
  %43 = load %struct.speex_params*, %struct.speex_params** %8, align 8
  %44 = icmp ne %struct.speex_params* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %243

48:                                               ; preds = %41
  %49 = load %struct.speex_params*, %struct.speex_params** %8, align 8
  %50 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %51 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %50, i32 0, i32 2
  store %struct.speex_params* %49, %struct.speex_params** %51, align 8
  br label %52

52:                                               ; preds = %48, %2
  %53 = load %struct.speex_params*, %struct.speex_params** %8, align 8
  %54 = getelementptr inbounds %struct.speex_params, %struct.speex_params* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %243

58:                                               ; preds = %52
  %59 = load %struct.speex_params*, %struct.speex_params** %8, align 8
  %60 = getelementptr inbounds %struct.speex_params, %struct.speex_params* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %230

63:                                               ; preds = %58
  %64 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 6
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @AV_CODEC_ID_SPEEX, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 5
  store i32 %69, i32* %73, align 8
  %74 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %75 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 68
  br i1 %77, label %78, label %83

78:                                               ; preds = %63
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %79, i32 %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %82, i32* %3, align 4
  br label %243

83:                                               ; preds = %63
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 36
  %86 = call i8* @AV_RL32(i32* %85)
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  store i64 %87, i64* %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sle i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %83
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %99, i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %105)
  %107 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %107, i32* %3, align 4
  br label %243

108:                                              ; preds = %83
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 48
  %111 = call i8* @AV_RL32(i32* %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store i32 %112, i32* %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %121, 1
  br i1 %122, label %130, label %123

123:                                              ; preds = %108
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %128, 2
  br i1 %129, label %130, label %135

130:                                              ; preds = %123, %108
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %132 = load i32, i32* @AV_LOG_ERROR, align 4
  %133 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %131, i32 %132, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %134, i32* %3, align 4
  br label %243

135:                                              ; preds = %123
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  br label %146

144:                                              ; preds = %135
  %145 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 4
  store i32 %147, i32* %151, align 4
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 56
  %154 = call i8* @AV_RL32(i32* %153)
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.speex_params*, %struct.speex_params** %8, align 8
  %157 = getelementptr inbounds %struct.speex_params, %struct.speex_params* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load i32*, i32** %10, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 64
  %160 = call i8* @AV_RL32(i32* %159)
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* %11, align 4
  %162 = load %struct.speex_params*, %struct.speex_params** %8, align 8
  %163 = getelementptr inbounds %struct.speex_params, %struct.speex_params* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %146
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %166
  %170 = load %struct.speex_params*, %struct.speex_params** %8, align 8
  %171 = getelementptr inbounds %struct.speex_params, %struct.speex_params* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %11, align 4
  %174 = mul nsw i32 %172, %173
  %175 = load i32, i32* @INT32_MAX, align 4
  %176 = sdiv i32 %175, 256
  %177 = icmp sgt i32 %174, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %169, %166, %146
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %180 = load i32, i32* @AV_LOG_ERROR, align 4
  %181 = load %struct.speex_params*, %struct.speex_params** %8, align 8
  %182 = getelementptr inbounds %struct.speex_params, %struct.speex_params* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %11, align 4
  %185 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %179, i32 %180, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %183, i32 %184)
  %186 = load %struct.speex_params*, %struct.speex_params** %8, align 8
  %187 = getelementptr inbounds %struct.speex_params, %struct.speex_params* %186, i32 0, i32 1
  store i32 0, i32* %187, align 4
  %188 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %188, i32* %3, align 4
  br label %243

189:                                              ; preds = %169
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.speex_params*, %struct.speex_params** %8, align 8
  %195 = getelementptr inbounds %struct.speex_params, %struct.speex_params* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %189
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %203 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @ff_alloc_extradata(%struct.TYPE_11__* %201, i32 %204)
  %206 = icmp slt i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %198
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = call i32 @AVERROR(i32 %208)
  store i32 %209, i32* %3, align 4
  br label %243

210:                                              ; preds = %198
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load i32*, i32** %10, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @memcpy(i32 %215, i32* %216, i32 %221)
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @avpriv_set_pts_info(%struct.TYPE_9__* %223, i32 64, i32 1, i64 %228)
  br label %238

230:                                              ; preds = %58
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %233 = load i32*, i32** %10, align 8
  %234 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %235 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @ff_vorbis_stream_comment(%struct.TYPE_10__* %231, %struct.TYPE_9__* %232, i32* %233, i32 %236)
  br label %238

238:                                              ; preds = %230, %210
  %239 = load %struct.speex_params*, %struct.speex_params** %8, align 8
  %240 = getelementptr inbounds %struct.speex_params, %struct.speex_params* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 4
  store i32 1, i32* %3, align 4
  br label %243

243:                                              ; preds = %238, %207, %178, %130, %98, %78, %57, %45
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

declare dso_local %struct.speex_params* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i8* @AV_RL32(i32*) #1

declare dso_local i64 @ff_alloc_extradata(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_9__*, i32, i32, i64) #1

declare dso_local i32 @ff_vorbis_stream_comment(%struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
