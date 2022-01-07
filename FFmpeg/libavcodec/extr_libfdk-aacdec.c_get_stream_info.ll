; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libfdk-aacdec.c_get_stream_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libfdk-aacdec.c_get_stream_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i64*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to get stream info\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Stream info not initialized\0A\00", align 1
@ACT_NONE = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"unknown channel type\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"%d channels - front:%d side:%d back:%d lfe:%d top:%d\0A\00", align 1
@ACT_FRONT = common dso_local global i64 0, align 8
@ACT_SIDE = common dso_local global i64 0, align 8
@ACT_BACK = common dso_local global i64 0, align 8
@ACT_LFE = common dso_local global i64 0, align 8
@ACT_FRONT_TOP = common dso_local global i64 0, align 8
@ACT_SIDE_TOP = common dso_local global i64 0, align 8
@ACT_BACK_TOP = common dso_local global i64 0, align 8
@ACT_TOP = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@AV_CH_FRONT_LEFT_OF_CENTER = common dso_local global i32 0, align 4
@AV_CH_FRONT_RIGHT_OF_CENTER = common dso_local global i32 0, align 4
@AV_CH_FRONT_CENTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"unsupported number of front channels: %d\0A\00", align 1
@AV_CH_SIDE_LEFT = common dso_local global i32 0, align 4
@AV_CH_SIDE_RIGHT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"unsupported number of side channels: %d\0A\00", align 1
@AV_CH_BACK_LEFT = common dso_local global i32 0, align 4
@AV_CH_BACK_RIGHT = common dso_local global i32 0, align 4
@AV_CH_BACK_CENTER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"unsupported number of back channels: %d\0A\00", align 1
@AV_CH_LOW_FREQUENCY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"unsupported number of LFE channels: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"unsupported channel configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @get_stream_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_stream_info(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca [36 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_8__* @aacDecoder_GetStreamInfo(i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %5, align 8
  %18 = bitcast [36 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 144, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load i32, i32* @AV_LOG_ERROR, align 4
  %24 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %22, i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %25, i32* %2, align 4
  br label %258

26:                                               ; preds = %1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %32, i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %35, i32* %2, align 4
  br label %258

36:                                               ; preds = %26
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %78, %36
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @ACT_NONE, align 8
  %63 = icmp ule i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %53
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %67 = call i64 @FF_ARRAY_ELEMS(i32* %66)
  %68 = icmp uge i64 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64, %53
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = load i32, i32* @AV_LOG_WARNING, align 4
  %72 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %70, i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %81

73:                                               ; preds = %64
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %47

81:                                               ; preds = %69, %47
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = load i32, i32* @AV_LOG_DEBUG, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* @ACT_FRONT, align 8
  %88 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* @ACT_SIDE, align 8
  %91 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* @ACT_BACK, align 8
  %94 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* @ACT_LFE, align 8
  %97 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* @ACT_FRONT_TOP, align 8
  %100 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* @ACT_SIDE_TOP, align 8
  %103 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = load i64, i64* @ACT_BACK_TOP, align 8
  %107 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = load i64, i64* @ACT_TOP, align 8
  %111 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %82, i32 %83, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %89, i32 %92, i32 %95, i32 %98, i32 %113)
  %115 = load i64, i64* @ACT_FRONT, align 8
  %116 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %140 [
    i32 4, label %118
    i32 3, label %126
    i32 2, label %132
    i32 1, label %136
  ]

118:                                              ; preds = %81
  %119 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %120 = load i32, i32* @AV_CH_FRONT_LEFT_OF_CENTER, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @AV_CH_FRONT_RIGHT_OF_CENTER, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %9, align 4
  br label %147

126:                                              ; preds = %81
  %127 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %128 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %9, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %9, align 4
  br label %147

132:                                              ; preds = %81
  %133 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  br label %147

136:                                              ; preds = %81
  %137 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %138 = load i32, i32* %9, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %9, align 4
  br label %147

140:                                              ; preds = %81
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = load i32, i32* @AV_LOG_WARNING, align 4
  %143 = load i64, i64* @ACT_FRONT, align 8
  %144 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %141, i32 %142, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  store i32 1, i32* %8, align 4
  br label %147

147:                                              ; preds = %140, %136, %132, %126, %118
  %148 = load i64, i64* @ACT_SIDE, align 8
  %149 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %147
  %153 = load i64, i64* @ACT_SIDE, align 8
  %154 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load i32, i32* @AV_CH_SIDE_LEFT, align 4
  %159 = load i32, i32* @AV_CH_SIDE_RIGHT, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* %9, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %9, align 4
  br label %170

163:                                              ; preds = %152
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %165 = load i32, i32* @AV_LOG_WARNING, align 4
  %166 = load i64, i64* @ACT_SIDE, align 8
  %167 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %164, i32 %165, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %168)
  store i32 1, i32* %8, align 4
  br label %170

170:                                              ; preds = %163, %157
  br label %171

171:                                              ; preds = %170, %147
  %172 = load i64, i64* @ACT_BACK, align 8
  %173 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %206

176:                                              ; preds = %171
  %177 = load i64, i64* @ACT_BACK, align 8
  %178 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  switch i32 %179, label %198 [
    i32 3, label %180
    i32 2, label %188
    i32 1, label %194
  ]

180:                                              ; preds = %176
  %181 = load i32, i32* @AV_CH_BACK_LEFT, align 4
  %182 = load i32, i32* @AV_CH_BACK_RIGHT, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @AV_CH_BACK_CENTER, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* %9, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %9, align 4
  br label %205

188:                                              ; preds = %176
  %189 = load i32, i32* @AV_CH_BACK_LEFT, align 4
  %190 = load i32, i32* @AV_CH_BACK_RIGHT, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* %9, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %9, align 4
  br label %205

194:                                              ; preds = %176
  %195 = load i32, i32* @AV_CH_BACK_CENTER, align 4
  %196 = load i32, i32* %9, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %9, align 4
  br label %205

198:                                              ; preds = %176
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %200 = load i32, i32* @AV_LOG_WARNING, align 4
  %201 = load i64, i64* @ACT_BACK, align 8
  %202 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %199, i32 %200, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %203)
  store i32 1, i32* %8, align 4
  br label %205

205:                                              ; preds = %198, %194, %188, %180
  br label %206

206:                                              ; preds = %205, %171
  %207 = load i64, i64* @ACT_LFE, align 8
  %208 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %228

211:                                              ; preds = %206
  %212 = load i64, i64* @ACT_LFE, align 8
  %213 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load i32, i32* @AV_CH_LOW_FREQUENCY, align 4
  %218 = load i32, i32* %9, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %9, align 4
  br label %227

220:                                              ; preds = %211
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %222 = load i32, i32* @AV_LOG_WARNING, align 4
  %223 = load i64, i64* @ACT_LFE, align 8
  %224 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %221, i32 %222, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %225)
  store i32 1, i32* %8, align 4
  br label %227

227:                                              ; preds = %220, %216
  br label %228

228:                                              ; preds = %227, %206
  %229 = load i32, i32* %8, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %242, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @av_get_channel_layout_nb_channels(i32 %232)
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %233, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %231
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %240 = load i32, i32* @AV_LOG_WARNING, align 4
  %241 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %239, i32 %240, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %242

242:                                              ; preds = %238, %231, %228
  %243 = load i32, i32* %8, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 1
  store i32 0, i32* %247, align 8
  br label %252

248:                                              ; preds = %242
  %249 = load i32, i32* %9, align 4
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 8
  br label %252

252:                                              ; preds = %248, %245
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 4
  store i32 0, i32* %2, align 4
  br label %258

258:                                              ; preds = %252, %31, %21
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local %struct.TYPE_8__* @aacDecoder_GetStreamInfo(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i64 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @av_get_channel_layout_nb_channels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
