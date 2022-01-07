; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ty.c_demux_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ty.c_demux_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i64, i64, i32, i64, i64, i64, i64, i64, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i64, i32* }

@.str = private unnamed_addr constant [23 x i8] c"continuing PES header\0A\00", align 1
@TIVO_AUDIO_MPEG = common dso_local global i64 0, align 8
@ty_MPEGAudioPacket = common dso_local global i32 0, align 4
@ty_AC3AudioPacket = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Can't find audio PES header in packet.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TIVO_AUDIO_AC3 = common dso_local global i64 0, align 8
@TIVO_SERIES2 = common dso_local global i64 0, align 8
@AC3_PKT_LENGTH = common dso_local global i64 0, align 8
@SA_PTS_OFFSET = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_13__*, %struct.TYPE_15__*)* @demux_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demux_audio(%struct.TYPE_16__* %0, %struct.TYPE_13__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %8, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %215

24:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %142

29:                                               ; preds = %24
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = call i32 @ff_dlog(%struct.TYPE_16__* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %29
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 10
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 9
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 8
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @memcpy(i32* %51, i64 %58, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, %62
  store i64 %66, i64* %64, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  store i32 0, i32* %4, align 4
  br label %413

73:                                               ; preds = %29
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 10
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @memcpy(i32* %80, i64 %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TIVO_AUDIO_MPEG, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %73
  %102 = load i32, i32* @ty_MPEGAudioPacket, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 10
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @find_es_header(i32 %102, i32* %105, i32 5)
  store i32 %106, i32* %11, align 4
  br label %113

107:                                              ; preds = %73
  %108 = load i32, i32* @ty_AC3AudioPacket, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 10
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @find_es_header(i32 %108, i32* %111, i32 5)
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %107, %101
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = call i32 @ff_dlog(%struct.TYPE_16__* %117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %139

119:                                              ; preds = %113
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 10
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %123, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %122, i64 %128
  %130 = call i8* @ff_parse_pes_pts(i32* %129)
  %131 = ptrtoint i8* %130 to i64
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %119, %116
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %139, %24
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %12, align 4
  %146 = sub nsw i32 %144, %145
  %147 = call i64 @av_new_packet(%struct.TYPE_15__* %143, i32 %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = call i32 @AVERROR(i32 %150)
  store i32 %151, i32* %4, align 4
  br label %413

152:                                              ; preds = %142
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 9
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 8
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %158, %161
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %12, align 4
  %165 = sub nsw i32 %163, %164
  %166 = call i32 @memcpy(i32* %155, i64 %162, i32 %165)
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %12, align 4
  %169 = sub nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 8
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, %170
  store i64 %174, i64* %172, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  store i32 1, i32* %176, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @TIVO_AUDIO_AC3, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %214

182:                                              ; preds = %152
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @TIVO_SERIES2, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %214

188:                                              ; preds = %182
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 6
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %191, %194
  %196 = load i64, i64* @AC3_PKT_LENGTH, align 8
  %197 = icmp sgt i64 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %188
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %201, 2
  store i64 %202, i64* %200, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 6
  store i64 0, i64* %204, align 8
  br label %213

205:                                              ; preds = %188
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, %208
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %205, %198
  br label %214

214:                                              ; preds = %213, %182, %152
  br label %412

215:                                              ; preds = %3
  %216 = load i32, i32* %9, align 4
  %217 = icmp eq i32 %216, 3
  br i1 %217, label %218, label %292

218:                                              ; preds = %215
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %220 = load i32, i32* %10, align 4
  %221 = call i64 @av_new_packet(%struct.TYPE_15__* %219, i32 %220)
  %222 = icmp slt i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = call i32 @AVERROR(i32 %224)
  store i32 %225, i32* %4, align 4
  br label %413

226:                                              ; preds = %218
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 9
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 8
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %232, %235
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @memcpy(i32* %229, i64 %236, i32 %237)
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 8
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, %240
  store i64 %244, i64* %242, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 1
  store i32 1, i32* %246, align 8
  %247 = load i32, i32* @ty_MPEGAudioPacket, align 4
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 3
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 @find_es_header(i32 %247, i32* %250, i32 5)
  store i32 %251, i32* %11, align 4
  %252 = load i32, i32* %11, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %281

254:                                              ; preds = %226
  %255 = load i32, i32* %10, align 4
  %256 = icmp eq i32 %255, 16
  br i1 %256, label %257, label %281

257:                                              ; preds = %254
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 3
  %260 = load i32*, i32** %259, align 8
  %261 = load i64, i64* @SA_PTS_OFFSET, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  %263 = call i8* @ff_parse_pes_pts(i32* %262)
  %264 = ptrtoint i8* %263 to i64
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 3
  store i64 %264, i64* %266, align 8
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 7
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %278

272:                                              ; preds = %257
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 7
  store i64 %275, i64* %277, align 8
  br label %278

278:                                              ; preds = %272, %257
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %280 = call i32 @av_packet_unref(%struct.TYPE_15__* %279)
  store i32 0, i32* %4, align 4
  br label %413

281:                                              ; preds = %254, %226
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* %10, align 4
  %286 = call i32 @check_sync_pes(%struct.TYPE_16__* %282, %struct.TYPE_15__* %283, i32 %284, i32 %285)
  %287 = icmp eq i32 %286, -1
  br i1 %287, label %288, label %291

288:                                              ; preds = %281
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %290 = call i32 @av_packet_unref(%struct.TYPE_15__* %289)
  store i32 0, i32* %4, align 4
  br label %413

291:                                              ; preds = %281
  br label %411

292:                                              ; preds = %215
  %293 = load i32, i32* %9, align 4
  %294 = icmp eq i32 %293, 4
  br i1 %294, label %295, label %329

295:                                              ; preds = %292
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %297 = load i32, i32* %10, align 4
  %298 = call i64 @av_new_packet(%struct.TYPE_15__* %296, i32 %297)
  %299 = icmp slt i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %295
  %301 = load i32, i32* @ENOMEM, align 4
  %302 = call i32 @AVERROR(i32 %301)
  store i32 %302, i32* %4, align 4
  br label %413

303:                                              ; preds = %295
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 9
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 8
  %312 = load i64, i64* %311, align 8
  %313 = add nsw i64 %309, %312
  %314 = load i32, i32* %10, align 4
  %315 = call i32 @memcpy(i32* %306, i64 %313, i32 %314)
  %316 = load i32, i32* %10, align 4
  %317 = sext i32 %316 to i64
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 8
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %320, %317
  store i64 %321, i64* %319, align 8
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 1
  store i32 1, i32* %323, align 8
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 0
  store i64 %326, i64* %328, align 8
  br label %410

329:                                              ; preds = %292
  %330 = load i32, i32* %9, align 4
  %331 = icmp eq i32 %330, 9
  br i1 %331, label %332, label %402

332:                                              ; preds = %329
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %334 = load i32, i32* %10, align 4
  %335 = call i64 @av_new_packet(%struct.TYPE_15__* %333, i32 %334)
  %336 = icmp slt i64 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %332
  %338 = load i32, i32* @ENOMEM, align 4
  %339 = call i32 @AVERROR(i32 %338)
  store i32 %339, i32* %4, align 4
  br label %413

340:                                              ; preds = %332
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 3
  %343 = load i32*, i32** %342, align 8
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 9
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 8
  %349 = load i64, i64* %348, align 8
  %350 = add nsw i64 %346, %349
  %351 = load i32, i32* %10, align 4
  %352 = call i32 @memcpy(i32* %343, i64 %350, i32 %351)
  %353 = load i32, i32* %10, align 4
  %354 = sext i32 %353 to i64
  %355 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %355, i32 0, i32 8
  %357 = load i64, i64* %356, align 8
  %358 = add nsw i64 %357, %354
  store i64 %358, i64* %356, align 8
  %359 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %359, i32 0, i32 1
  store i32 1, i32* %360, align 8
  %361 = load i32, i32* @ty_AC3AudioPacket, align 4
  %362 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 3
  %364 = load i32*, i32** %363, align 8
  %365 = call i32 @find_es_header(i32 %361, i32* %364, i32 5)
  store i32 %365, i32* %11, align 4
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %368 = load i32, i32* %11, align 4
  %369 = load i32, i32* %10, align 4
  %370 = call i32 @check_sync_pes(%struct.TYPE_16__* %366, %struct.TYPE_15__* %367, i32 %368, i32 %369)
  %371 = icmp eq i32 %370, -1
  br i1 %371, label %372, label %375

372:                                              ; preds = %340
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %374 = call i32 @av_packet_unref(%struct.TYPE_15__* %373)
  store i32 0, i32* %4, align 4
  br label %413

375:                                              ; preds = %340
  %376 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 5
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @TIVO_SERIES2, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %401

381:                                              ; preds = %375
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i32 0, i32 2
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @AC3_PKT_LENGTH, align 8
  %386 = icmp sgt i64 %384, %385
  br i1 %386, label %387, label %394

387:                                              ; preds = %381
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = sub nsw i64 %390, 2
  store i64 %391, i64* %389, align 8
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 6
  store i64 0, i64* %393, align 8
  br label %400

394:                                              ; preds = %381
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %399 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %398, i32 0, i32 6
  store i64 %397, i64* %399, align 8
  br label %400

400:                                              ; preds = %394, %387
  br label %401

401:                                              ; preds = %400, %375
  br label %409

402:                                              ; preds = %329
  %403 = load i32, i32* %10, align 4
  %404 = sext i32 %403 to i64
  %405 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %405, i32 0, i32 8
  %407 = load i64, i64* %406, align 8
  %408 = add nsw i64 %407, %404
  store i64 %408, i64* %406, align 8
  store i32 0, i32* %4, align 4
  br label %413

409:                                              ; preds = %401
  br label %410

410:                                              ; preds = %409, %303
  br label %411

411:                                              ; preds = %410, %291
  br label %412

412:                                              ; preds = %411, %214
  store i32 1, i32* %4, align 4
  br label %413

413:                                              ; preds = %412, %402, %372, %337, %300, %288, %278, %223, %149, %44
  %414 = load i32, i32* %4, align 4
  ret i32 %414
}

declare dso_local i32 @ff_dlog(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @find_es_header(i32, i32*, i32) #1

declare dso_local i8* @ff_parse_pes_pts(i32*) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_15__*) #1

declare dso_local i32 @check_sync_pes(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
