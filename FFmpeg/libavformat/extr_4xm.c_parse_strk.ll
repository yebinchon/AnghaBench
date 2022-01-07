; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_4xm.c_parse_strk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_4xm.c_parse_strk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@strk_SIZE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"current_track too large\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FF_SANE_NB_CHANNELS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"audio header invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"bits unspecified for non ADPCM\0A\00", align 1
@INT64_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Overflow during bit rate calculation %d * %d * %d\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_4XM = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U8 = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, i32*, i32, i32)* @parse_strk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_strk(i32* %0, %struct.TYPE_10__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @strk_SIZE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, 8
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %5
  %23 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %23, i32* %6, align 4
  br label %423

24:                                               ; preds = %17
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 8
  %27 = call i8* @AV_RL32(i32* %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = zext i32 %29 to i64
  %31 = load i32, i32* @UINT_MAX, align 4
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 4
  %34 = sub i64 %33, 1
  %35 = icmp uge i64 %30, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %37, i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %6, align 4
  br label %423

41:                                               ; preds = %24
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %41
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i64 @av_reallocp_array(%struct.TYPE_12__** %50, i32 %52, i32 4)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %6, align 4
  br label %423

58:                                               ; preds = %48
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 %65
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memset(%struct.TYPE_12__* %66, i32 0, i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %58, %41
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 12
  %84 = call i8* @AV_RL32(i32* %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 36
  %95 = call i8* @AV_RL32(i32* %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  store i32 %96, i32* %103, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 40
  %106 = call i8* @AV_RL32(i32* %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  store i32 %107, i32* %114, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 44
  %117 = call i8* @AV_RL32(i32* %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  store i32 %118, i32* %125, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 5
  store i64 0, i64* %132, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp sle i32 %140, 0
  br i1 %141, label %186, label %142

142:                                              ; preds = %81
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @FF_SANE_NB_CHANNELS, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %186, label %153

153:                                              ; preds = %142
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp sle i32 %161, 0
  br i1 %162, label %186, label %163

163:                                              ; preds = %153
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = icmp sle i32 %171, 0
  br i1 %172, label %186, label %173

173:                                              ; preds = %163
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @INT_MAX, align 4
  %183 = load i32, i32* @FF_SANE_NB_CHANNELS, align 4
  %184 = sdiv i32 %182, %183
  %185 = icmp sgt i32 %181, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %173, %163, %153, %142, %81
  %187 = load i32*, i32** %7, align 8
  %188 = load i32, i32* @AV_LOG_ERROR, align 4
  %189 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %187, i32 %188, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %190 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %190, i32* %6, align 4
  br label %423

191:                                              ; preds = %173
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %216, label %201

201:                                              ; preds = %191
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %203, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %209, 8
  br i1 %210, label %211, label %216

211:                                              ; preds = %201
  %212 = load i32*, i32** %7, align 8
  %213 = load i32, i32* @AV_LOG_ERROR, align 4
  %214 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %212, i32 %213, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %215 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %215, i32* %6, align 4
  br label %423

216:                                              ; preds = %201, %191
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %218, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @INT64_MAX, align 4
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %227, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = sdiv i32 %225, %233
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %236, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = sdiv i32 %234, %242
  %244 = icmp sgt i32 %224, %243
  br i1 %244, label %245, label %274

245:                                              ; preds = %216
  %246 = load i32*, i32** %7, align 8
  %247 = load i32, i32* @AV_LOG_ERROR, align 4
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %257, align 8
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  %267 = load i32, i32* %13, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %246, i32 %247, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %255, i32 %263, i32 %271)
  %273 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %273, i32* %6, align 4
  br label %423

274:                                              ; preds = %216
  %275 = load i32*, i32** %7, align 8
  %276 = call %struct.TYPE_11__* @avformat_new_stream(i32* %275, i32* null)
  store %struct.TYPE_11__* %276, %struct.TYPE_11__** %12, align 8
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %278 = icmp ne %struct.TYPE_11__* %277, null
  br i1 %278, label %282, label %279

279:                                              ; preds = %274
  %280 = load i32, i32* @ENOMEM, align 4
  %281 = call i32 @AVERROR(i32 %280)
  store i32 %281, i32* %6, align 4
  br label %423

282:                                              ; preds = %274
  %283 = load i32, i32* %13, align 4
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 8
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %288, align 8
  %290 = load i32, i32* %13, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %286, i32 60, i32 1, i32 %294)
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %300, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 4
  store i32 %298, i32* %305, align 8
  %306 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 7
  store i32 %306, i32* %310, align 8
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 1
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 6
  store i64 0, i64* %314, align 8
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %316, align 8
  %318 = load i32, i32* %13, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 0
  store i32 %322, i32* %326, align 8
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %328, align 8
  %330 = load i32, i32* %13, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 1
  store i32 %334, i32* %338, align 4
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %340, align 8
  %342 = load i32, i32* %13, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 1
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 2
  store i32 %346, i32* %350, align 8
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 1
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = mul nsw i32 %355, %360
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 1
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = mul nsw i32 %361, %366
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 1
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 3
  store i32 %367, i32* %371, align 4
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 1
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i32 0, i32 1
  %379 = load %struct.TYPE_9__*, %struct.TYPE_9__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = mul nsw i32 %376, %381
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 4
  store i32 %382, i32* %386, align 8
  %387 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %388 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %388, align 8
  %390 = load i32, i32* %13, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %402

396:                                              ; preds = %282
  %397 = load i32, i32* @AV_CODEC_ID_ADPCM_4XM, align 4
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 1
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 5
  store i32 %397, i32* %401, align 4
  br label %422

402:                                              ; preds = %282
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 1
  %405 = load %struct.TYPE_9__*, %struct.TYPE_9__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = icmp eq i32 %407, 8
  br i1 %408, label %409, label %415

409:                                              ; preds = %402
  %410 = load i32, i32* @AV_CODEC_ID_PCM_U8, align 4
  %411 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %412 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %411, i32 0, i32 1
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 5
  store i32 %410, i32* %414, align 4
  br label %421

415:                                              ; preds = %402
  %416 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  %417 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %418 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %417, i32 0, i32 1
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 5
  store i32 %416, i32* %420, align 4
  br label %421

421:                                              ; preds = %415, %409
  br label %422

422:                                              ; preds = %421, %396
  store i32 0, i32* %6, align 4
  br label %423

423:                                              ; preds = %422, %279, %245, %211, %186, %55, %36, %22
  %424 = load i32, i32* %6, align 4
  ret i32 %424
}

declare dso_local i8* @AV_RL32(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i64 @av_reallocp_array(%struct.TYPE_12__**, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @avformat_new_stream(i32*, i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
