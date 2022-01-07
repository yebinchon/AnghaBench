; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_ff_mpeg4_decode_picture_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_ff_mpeg4_decode_picture_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64, i64, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32, i64, i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_35__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"WV1F\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"QMP4\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"frame skip %d\0A\00", align 1
@FRAME_SKIPPED = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@FF_DEBUG_STARTCODE = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"startcode: %3X \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Video Object Start\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Video Object Layer Start\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"FGS bp start\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Visual Object Seq Start\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Visual Object Seq End\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"User Data\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Group of VOP start\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Video Session Error\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Visual Object Start\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Video Object Plane start\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"slice start\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"extension start\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"fgs start\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"FBA Object start\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"FBA Object Plane start\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Mesh Object start\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Mesh Object Plane start\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"Still Texture Object start\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Texture Spatial Layer start\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Texture SNR Layer start\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Texture Tile start\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Texture Shape Layer start\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"stuffing start\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"System start\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c" at %d\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [31 x i8] c"Ignoring multiple VOL headers\0A\00", align 1
@USER_DATA_STARTCODE = common dso_local global i32 0, align 4
@GOP_STARTCODE = common dso_local global i32 0, align 4
@VOS_STARTCODE = common dso_local global i32 0, align 4
@FF_PROFILE_MPEG4_SIMPLE_STUDIO = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [37 x i8] c"Mixes studio and non studio profile\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@VISUAL_OBJ_STARTCODE = common dso_local global i32 0, align 4
@VOP_STARTCODE = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_LOW_DELAY = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [20 x i8] c"Missing VOL header\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mpeg4_decode_picture_header(%struct.TYPE_34__* %0, %struct.TYPE_35__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %5, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %15, i32 0, i32 2
  store %struct.TYPE_32__* %16, %struct.TYPE_32__** %8, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %18 = call i32 @align_get_bits(%struct.TYPE_35__* %17)
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_33__*, %struct.TYPE_33__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 8
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %23, %3
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %43 = call i32 @show_bits(%struct.TYPE_35__* %42, i32 24)
  %44 = icmp eq i32 %43, 5723696
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %47 = call i32 @skip_bits(%struct.TYPE_35__* %46, i32 24)
  %48 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %49 = call i32 @get_bits(%struct.TYPE_35__* %48, i32 8)
  %50 = icmp eq i32 %49, 240
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %533

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %41, %35
  store i32 255, i32* %9, align 4
  br label %54

54:                                               ; preds = %529, %417, %115, %53
  %55 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %56 = call i32 @get_bits_count(%struct.TYPE_35__* %55)
  %57 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %56, %59
  br i1 %60, label %61, label %105

61:                                               ; preds = %54
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 8
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71, %61
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76, %71, %66
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %84, align 8
  %86 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %87 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %85, i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @FRAME_SKIPPED, align 4
  store i32 %91, i32* %4, align 4
  br label %582

92:                                               ; preds = %76
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %97 = call i32 @get_bits_count(%struct.TYPE_35__* %96)
  %98 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %582

103:                                              ; preds = %95, %92
  %104 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %104, i32* %4, align 4
  br label %582

105:                                              ; preds = %54
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %107 = call i32 @get_bits(%struct.TYPE_35__* %106, i32 8)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = shl i32 %108, 8
  %110 = load i32, i32* %10, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, -256
  %114 = icmp ne i32 %113, 256
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %54

116:                                              ; preds = %105
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @FF_DEBUG_STARTCODE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %408

125:                                              ; preds = %116
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %127, align 8
  %129 = load i32, i32* @AV_LOG_DEBUG, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %128, i32 %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = icmp ule i32 %132, 287
  br i1 %133, label %134, label %140

134:                                              ; preds = %125
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %136, align 8
  %138 = load i32, i32* @AV_LOG_DEBUG, align 4
  %139 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %137, i32 %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %400

140:                                              ; preds = %125
  %141 = load i32, i32* %9, align 4
  %142 = icmp ule i32 %141, 303
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %145, align 8
  %147 = load i32, i32* @AV_LOG_DEBUG, align 4
  %148 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %146, i32 %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %399

149:                                              ; preds = %140
  %150 = load i32, i32* %9, align 4
  %151 = icmp ule i32 %150, 319
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %154, align 8
  %156 = load i32, i32* @AV_LOG_DEBUG, align 4
  %157 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %155, i32 %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %398

158:                                              ; preds = %149
  %159 = load i32, i32* %9, align 4
  %160 = icmp ule i32 %159, 351
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_33__*, %struct.TYPE_33__** %163, align 8
  %165 = load i32, i32* @AV_LOG_DEBUG, align 4
  %166 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %164, i32 %165, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %397

167:                                              ; preds = %158
  %168 = load i32, i32* %9, align 4
  %169 = icmp ule i32 %168, 431
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_33__*, %struct.TYPE_33__** %172, align 8
  %174 = load i32, i32* @AV_LOG_DEBUG, align 4
  %175 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %173, i32 %174, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %396

176:                                              ; preds = %167
  %177 = load i32, i32* %9, align 4
  %178 = icmp eq i32 %177, 432
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_33__*, %struct.TYPE_33__** %181, align 8
  %183 = load i32, i32* @AV_LOG_DEBUG, align 4
  %184 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %182, i32 %183, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %395

185:                                              ; preds = %176
  %186 = load i32, i32* %9, align 4
  %187 = icmp eq i32 %186, 433
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %190, align 8
  %192 = load i32, i32* @AV_LOG_DEBUG, align 4
  %193 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %191, i32 %192, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %394

194:                                              ; preds = %185
  %195 = load i32, i32* %9, align 4
  %196 = icmp eq i32 %195, 434
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %199, align 8
  %201 = load i32, i32* @AV_LOG_DEBUG, align 4
  %202 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %200, i32 %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %393

203:                                              ; preds = %194
  %204 = load i32, i32* %9, align 4
  %205 = icmp eq i32 %204, 435
  br i1 %205, label %206, label %212

206:                                              ; preds = %203
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_33__*, %struct.TYPE_33__** %208, align 8
  %210 = load i32, i32* @AV_LOG_DEBUG, align 4
  %211 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %209, i32 %210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %392

212:                                              ; preds = %203
  %213 = load i32, i32* %9, align 4
  %214 = icmp eq i32 %213, 436
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_33__*, %struct.TYPE_33__** %217, align 8
  %219 = load i32, i32* @AV_LOG_DEBUG, align 4
  %220 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %218, i32 %219, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  br label %391

221:                                              ; preds = %212
  %222 = load i32, i32* %9, align 4
  %223 = icmp eq i32 %222, 437
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_33__*, %struct.TYPE_33__** %226, align 8
  %228 = load i32, i32* @AV_LOG_DEBUG, align 4
  %229 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %227, i32 %228, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %390

230:                                              ; preds = %221
  %231 = load i32, i32* %9, align 4
  %232 = icmp eq i32 %231, 438
  br i1 %232, label %233, label %239

233:                                              ; preds = %230
  %234 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_33__*, %struct.TYPE_33__** %235, align 8
  %237 = load i32, i32* @AV_LOG_DEBUG, align 4
  %238 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %236, i32 %237, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  br label %389

239:                                              ; preds = %230
  %240 = load i32, i32* %9, align 4
  %241 = icmp eq i32 %240, 439
  br i1 %241, label %242, label %248

242:                                              ; preds = %239
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 3
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %244, align 8
  %246 = load i32, i32* @AV_LOG_DEBUG, align 4
  %247 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %245, i32 %246, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  br label %388

248:                                              ; preds = %239
  %249 = load i32, i32* %9, align 4
  %250 = icmp eq i32 %249, 440
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %252, i32 0, i32 3
  %254 = load %struct.TYPE_33__*, %struct.TYPE_33__** %253, align 8
  %255 = load i32, i32* @AV_LOG_DEBUG, align 4
  %256 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %254, i32 %255, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %387

257:                                              ; preds = %248
  %258 = load i32, i32* %9, align 4
  %259 = icmp eq i32 %258, 441
  br i1 %259, label %260, label %266

260:                                              ; preds = %257
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_33__*, %struct.TYPE_33__** %262, align 8
  %264 = load i32, i32* @AV_LOG_DEBUG, align 4
  %265 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %263, i32 %264, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  br label %386

266:                                              ; preds = %257
  %267 = load i32, i32* %9, align 4
  %268 = icmp eq i32 %267, 442
  br i1 %268, label %269, label %275

269:                                              ; preds = %266
  %270 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %270, i32 0, i32 3
  %272 = load %struct.TYPE_33__*, %struct.TYPE_33__** %271, align 8
  %273 = load i32, i32* @AV_LOG_DEBUG, align 4
  %274 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %272, i32 %273, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  br label %385

275:                                              ; preds = %266
  %276 = load i32, i32* %9, align 4
  %277 = icmp eq i32 %276, 443
  br i1 %277, label %278, label %284

278:                                              ; preds = %275
  %279 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %279, i32 0, i32 3
  %281 = load %struct.TYPE_33__*, %struct.TYPE_33__** %280, align 8
  %282 = load i32, i32* @AV_LOG_DEBUG, align 4
  %283 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %281, i32 %282, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  br label %384

284:                                              ; preds = %275
  %285 = load i32, i32* %9, align 4
  %286 = icmp eq i32 %285, 444
  br i1 %286, label %287, label %293

287:                                              ; preds = %284
  %288 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %288, i32 0, i32 3
  %290 = load %struct.TYPE_33__*, %struct.TYPE_33__** %289, align 8
  %291 = load i32, i32* @AV_LOG_DEBUG, align 4
  %292 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %290, i32 %291, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  br label %383

293:                                              ; preds = %284
  %294 = load i32, i32* %9, align 4
  %295 = icmp eq i32 %294, 445
  br i1 %295, label %296, label %302

296:                                              ; preds = %293
  %297 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %297, i32 0, i32 3
  %299 = load %struct.TYPE_33__*, %struct.TYPE_33__** %298, align 8
  %300 = load i32, i32* @AV_LOG_DEBUG, align 4
  %301 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %299, i32 %300, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %382

302:                                              ; preds = %293
  %303 = load i32, i32* %9, align 4
  %304 = icmp eq i32 %303, 446
  br i1 %304, label %305, label %311

305:                                              ; preds = %302
  %306 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %306, i32 0, i32 3
  %308 = load %struct.TYPE_33__*, %struct.TYPE_33__** %307, align 8
  %309 = load i32, i32* @AV_LOG_DEBUG, align 4
  %310 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %308, i32 %309, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  br label %381

311:                                              ; preds = %302
  %312 = load i32, i32* %9, align 4
  %313 = icmp eq i32 %312, 447
  br i1 %313, label %314, label %320

314:                                              ; preds = %311
  %315 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %315, i32 0, i32 3
  %317 = load %struct.TYPE_33__*, %struct.TYPE_33__** %316, align 8
  %318 = load i32, i32* @AV_LOG_DEBUG, align 4
  %319 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %317, i32 %318, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  br label %380

320:                                              ; preds = %311
  %321 = load i32, i32* %9, align 4
  %322 = icmp eq i32 %321, 448
  br i1 %322, label %323, label %329

323:                                              ; preds = %320
  %324 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %324, i32 0, i32 3
  %326 = load %struct.TYPE_33__*, %struct.TYPE_33__** %325, align 8
  %327 = load i32, i32* @AV_LOG_DEBUG, align 4
  %328 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %326, i32 %327, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  br label %379

329:                                              ; preds = %320
  %330 = load i32, i32* %9, align 4
  %331 = icmp eq i32 %330, 449
  br i1 %331, label %332, label %338

332:                                              ; preds = %329
  %333 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %333, i32 0, i32 3
  %335 = load %struct.TYPE_33__*, %struct.TYPE_33__** %334, align 8
  %336 = load i32, i32* @AV_LOG_DEBUG, align 4
  %337 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %335, i32 %336, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  br label %378

338:                                              ; preds = %329
  %339 = load i32, i32* %9, align 4
  %340 = icmp eq i32 %339, 450
  br i1 %340, label %341, label %347

341:                                              ; preds = %338
  %342 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %342, i32 0, i32 3
  %344 = load %struct.TYPE_33__*, %struct.TYPE_33__** %343, align 8
  %345 = load i32, i32* @AV_LOG_DEBUG, align 4
  %346 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %344, i32 %345, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0))
  br label %377

347:                                              ; preds = %338
  %348 = load i32, i32* %9, align 4
  %349 = icmp eq i32 %348, 451
  br i1 %349, label %350, label %356

350:                                              ; preds = %347
  %351 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %351, i32 0, i32 3
  %353 = load %struct.TYPE_33__*, %struct.TYPE_33__** %352, align 8
  %354 = load i32, i32* @AV_LOG_DEBUG, align 4
  %355 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %353, i32 %354, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  br label %376

356:                                              ; preds = %347
  %357 = load i32, i32* %9, align 4
  %358 = icmp ule i32 %357, 453
  br i1 %358, label %359, label %365

359:                                              ; preds = %356
  %360 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %360, i32 0, i32 3
  %362 = load %struct.TYPE_33__*, %struct.TYPE_33__** %361, align 8
  %363 = load i32, i32* @AV_LOG_DEBUG, align 4
  %364 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %362, i32 %363, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  br label %375

365:                                              ; preds = %356
  %366 = load i32, i32* %9, align 4
  %367 = icmp ule i32 %366, 511
  br i1 %367, label %368, label %374

368:                                              ; preds = %365
  %369 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %369, i32 0, i32 3
  %371 = load %struct.TYPE_33__*, %struct.TYPE_33__** %370, align 8
  %372 = load i32, i32* @AV_LOG_DEBUG, align 4
  %373 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %371, i32 %372, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  br label %374

374:                                              ; preds = %368, %365
  br label %375

375:                                              ; preds = %374, %359
  br label %376

376:                                              ; preds = %375, %350
  br label %377

377:                                              ; preds = %376, %341
  br label %378

378:                                              ; preds = %377, %332
  br label %379

379:                                              ; preds = %378, %323
  br label %380

380:                                              ; preds = %379, %314
  br label %381

381:                                              ; preds = %380, %305
  br label %382

382:                                              ; preds = %381, %296
  br label %383

383:                                              ; preds = %382, %287
  br label %384

384:                                              ; preds = %383, %278
  br label %385

385:                                              ; preds = %384, %269
  br label %386

386:                                              ; preds = %385, %260
  br label %387

387:                                              ; preds = %386, %251
  br label %388

388:                                              ; preds = %387, %242
  br label %389

389:                                              ; preds = %388, %233
  br label %390

390:                                              ; preds = %389, %224
  br label %391

391:                                              ; preds = %390, %215
  br label %392

392:                                              ; preds = %391, %206
  br label %393

393:                                              ; preds = %392, %197
  br label %394

394:                                              ; preds = %393, %188
  br label %395

395:                                              ; preds = %394, %179
  br label %396

396:                                              ; preds = %395, %170
  br label %397

397:                                              ; preds = %396, %161
  br label %398

398:                                              ; preds = %397, %152
  br label %399

399:                                              ; preds = %398, %143
  br label %400

400:                                              ; preds = %399, %134
  %401 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %401, i32 0, i32 3
  %403 = load %struct.TYPE_33__*, %struct.TYPE_33__** %402, align 8
  %404 = load i32, i32* @AV_LOG_DEBUG, align 4
  %405 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %406 = call i32 @get_bits_count(%struct.TYPE_35__* %405)
  %407 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %403, i32 %404, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i32 %406)
  br label %408

408:                                              ; preds = %400, %116
  %409 = load i32, i32* %9, align 4
  %410 = icmp uge i32 %409, 288
  br i1 %410, label %411, label %433

411:                                              ; preds = %408
  %412 = load i32, i32* %9, align 4
  %413 = icmp ule i32 %412, 303
  br i1 %413, label %414, label %433

414:                                              ; preds = %411
  %415 = load i32, i32* %12, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %423

417:                                              ; preds = %414
  %418 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %418, i32 0, i32 3
  %420 = load %struct.TYPE_33__*, %struct.TYPE_33__** %419, align 8
  %421 = load i32, i32* @AV_LOG_WARNING, align 4
  %422 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %420, i32 %421, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0))
  br label %54

423:                                              ; preds = %414
  %424 = load i32, i32* %12, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %12, align 4
  %426 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %427 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %428 = call i32 @decode_vol_header(%struct.TYPE_34__* %426, %struct.TYPE_35__* %427)
  store i32 %428, i32* %11, align 4
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %430, label %432

430:                                              ; preds = %423
  %431 = load i32, i32* %11, align 4
  store i32 %431, i32* %4, align 4
  br label %582

432:                                              ; preds = %423
  br label %529

433:                                              ; preds = %411, %408
  %434 = load i32, i32* %9, align 4
  %435 = load i32, i32* @USER_DATA_STARTCODE, align 4
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %437, label %441

437:                                              ; preds = %433
  %438 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %439 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %440 = call i32 @decode_user_data(%struct.TYPE_34__* %438, %struct.TYPE_35__* %439)
  br label %528

441:                                              ; preds = %433
  %442 = load i32, i32* %9, align 4
  %443 = load i32, i32* @GOP_STARTCODE, align 4
  %444 = icmp eq i32 %442, %443
  br i1 %444, label %445, label %449

445:                                              ; preds = %441
  %446 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %447 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %448 = call i32 @mpeg4_decode_gop_header(%struct.TYPE_32__* %446, %struct.TYPE_35__* %447)
  br label %527

449:                                              ; preds = %441
  %450 = load i32, i32* %9, align 4
  %451 = load i32, i32* @VOS_STARTCODE, align 4
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %453, label %497

453:                                              ; preds = %449
  %454 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %455 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %456 = call i32 @mpeg4_decode_profile_level(%struct.TYPE_32__* %454, %struct.TYPE_35__* %455, i32* %13, i32* %14)
  %457 = load i32, i32* %13, align 4
  %458 = load i32, i32* @FF_PROFILE_MPEG4_SIMPLE_STUDIO, align 4
  %459 = icmp eq i32 %457, %458
  br i1 %459, label %460, label %474

460:                                              ; preds = %453
  %461 = load i32, i32* %14, align 4
  %462 = icmp sgt i32 %461, 0
  br i1 %462, label %463, label %474

463:                                              ; preds = %460
  %464 = load i32, i32* %14, align 4
  %465 = icmp slt i32 %464, 9
  br i1 %465, label %466, label %474

466:                                              ; preds = %463
  %467 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %468 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %467, i32 0, i32 0
  store i32 1, i32* %468, align 8
  %469 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %470 = call i32 @next_start_code_studio(%struct.TYPE_35__* %469)
  %471 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %472 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %473 = call i32 @extension_and_user_data(%struct.TYPE_32__* %471, %struct.TYPE_35__* %472, i32 0)
  br label %486

474:                                              ; preds = %463, %460, %453
  %475 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %476 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %485

479:                                              ; preds = %474
  %480 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %481 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %480, i32 0, i32 3
  %482 = load %struct.TYPE_33__*, %struct.TYPE_33__** %481, align 8
  %483 = call i32 @avpriv_request_sample(%struct.TYPE_33__* %482, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0))
  %484 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %484, i32* %4, align 4
  br label %582

485:                                              ; preds = %474
  br label %486

486:                                              ; preds = %485, %466
  %487 = load i32, i32* %13, align 4
  %488 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %489 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %488, i32 0, i32 3
  %490 = load %struct.TYPE_33__*, %struct.TYPE_33__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %490, i32 0, i32 2
  store i32 %487, i32* %491, align 4
  %492 = load i32, i32* %14, align 4
  %493 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %494 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %493, i32 0, i32 3
  %495 = load %struct.TYPE_33__*, %struct.TYPE_33__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %495, i32 0, i32 3
  store i32 %492, i32* %496, align 4
  br label %526

497:                                              ; preds = %449
  %498 = load i32, i32* %9, align 4
  %499 = load i32, i32* @VISUAL_OBJ_STARTCODE, align 4
  %500 = icmp eq i32 %498, %499
  br i1 %500, label %501, label %519

501:                                              ; preds = %497
  %502 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %503 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %514

506:                                              ; preds = %501
  %507 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %508 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %509 = call i32 @decode_studiovisualobject(%struct.TYPE_34__* %507, %struct.TYPE_35__* %508)
  store i32 %509, i32* %11, align 4
  %510 = icmp slt i32 %509, 0
  br i1 %510, label %511, label %513

511:                                              ; preds = %506
  %512 = load i32, i32* %11, align 4
  store i32 %512, i32* %4, align 4
  br label %582

513:                                              ; preds = %506
  br label %518

514:                                              ; preds = %501
  %515 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %516 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %517 = call i32 @mpeg4_decode_visual_object(%struct.TYPE_32__* %515, %struct.TYPE_35__* %516)
  br label %518

518:                                              ; preds = %514, %513
  br label %525

519:                                              ; preds = %497
  %520 = load i32, i32* %9, align 4
  %521 = load i32, i32* @VOP_STARTCODE, align 4
  %522 = icmp eq i32 %520, %521
  br i1 %522, label %523, label %524

523:                                              ; preds = %519
  br label %532

524:                                              ; preds = %519
  br label %525

525:                                              ; preds = %524, %518
  br label %526

526:                                              ; preds = %525, %486
  br label %527

527:                                              ; preds = %526, %445
  br label %528

528:                                              ; preds = %527, %437
  br label %529

529:                                              ; preds = %528, %432
  %530 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %531 = call i32 @align_get_bits(%struct.TYPE_35__* %530)
  store i32 255, i32* %9, align 4
  br label %54

532:                                              ; preds = %523
  br label %533

533:                                              ; preds = %532, %51
  %534 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %535 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %534, i32 0, i32 3
  %536 = load %struct.TYPE_33__*, %struct.TYPE_33__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %536, i32 0, i32 4
  %538 = load i32, i32* %537, align 4
  %539 = load i32, i32* @AV_CODEC_FLAG_LOW_DELAY, align 4
  %540 = and i32 %538, %539
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %545

542:                                              ; preds = %533
  %543 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %544 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %543, i32 0, i32 2
  store i32 1, i32* %544, align 8
  br label %545

545:                                              ; preds = %542, %533
  %546 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %547 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %546, i32 0, i32 2
  %548 = load i32, i32* %547, align 8
  %549 = icmp ne i32 %548, 0
  %550 = xor i1 %549, true
  %551 = zext i1 %550 to i32
  %552 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %553 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %552, i32 0, i32 3
  %554 = load %struct.TYPE_33__*, %struct.TYPE_33__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %554, i32 0, i32 5
  store i32 %551, i32* %555, align 4
  %556 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %557 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %578

560:                                              ; preds = %545
  %561 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %562 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %561, i32 0, i32 3
  %563 = load %struct.TYPE_33__*, %struct.TYPE_33__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %574, label %567

567:                                              ; preds = %560
  %568 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %569 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %568, i32 0, i32 3
  %570 = load %struct.TYPE_33__*, %struct.TYPE_33__** %569, align 8
  %571 = load i32, i32* @AV_LOG_ERROR, align 4
  %572 = call i32 (%struct.TYPE_33__*, i32, i8*, ...) @av_log(%struct.TYPE_33__* %570, i32 %571, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0))
  %573 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %573, i32* %4, align 4
  br label %582

574:                                              ; preds = %560
  %575 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %576 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %577 = call i32 @decode_studio_vop_header(%struct.TYPE_34__* %575, %struct.TYPE_35__* %576)
  store i32 %577, i32* %4, align 4
  br label %582

578:                                              ; preds = %545
  %579 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %580 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %581 = call i32 @decode_vop_header(%struct.TYPE_34__* %579, %struct.TYPE_35__* %580)
  store i32 %581, i32* %4, align 4
  br label %582

582:                                              ; preds = %578, %574, %567, %511, %479, %430, %103, %102, %82
  %583 = load i32, i32* %4, align 4
  ret i32 %583
}

declare dso_local i32 @align_get_bits(%struct.TYPE_35__*) #1

declare dso_local i64 @AV_RL32(i8*) #1

declare dso_local i32 @show_bits(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @skip_bits(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @get_bits(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @get_bits_count(%struct.TYPE_35__*) #1

declare dso_local i32 @av_log(%struct.TYPE_33__*, i32, i8*, ...) #1

declare dso_local i32 @decode_vol_header(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i32 @decode_user_data(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i32 @mpeg4_decode_gop_header(%struct.TYPE_32__*, %struct.TYPE_35__*) #1

declare dso_local i32 @mpeg4_decode_profile_level(%struct.TYPE_32__*, %struct.TYPE_35__*, i32*, i32*) #1

declare dso_local i32 @next_start_code_studio(%struct.TYPE_35__*) #1

declare dso_local i32 @extension_and_user_data(%struct.TYPE_32__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @decode_studiovisualobject(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i32 @mpeg4_decode_visual_object(%struct.TYPE_32__*, %struct.TYPE_35__*) #1

declare dso_local i32 @decode_studio_vop_header(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i32 @decode_vop_header(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
