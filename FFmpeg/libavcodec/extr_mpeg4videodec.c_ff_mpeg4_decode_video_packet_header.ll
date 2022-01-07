; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_ff_mpeg4_decode_video_packet_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_ff_mpeg4_decode_video_packet_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i64, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"marker does not match f_code\0A\00", align 1
@RECT_SHAPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"illegal mb_num in video packet (%d %d) \0A\00", align 1
@BIN_ONLY_SHAPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"before time_increment in video packed header\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"before vop_coding_type in video packed header\00", align 1
@AV_PICTURE_TYPE_S = common dso_local global i64 0, align 8
@GMC_SPRITE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"untested\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"Error, video packet header damaged (f_code=0)\0A\00", align 1
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [47 x i8] c"Error, video packet header damaged (b_code=0)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mpeg4_decode_video_packet_header(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %4, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = call i32 @av_log2(i32 %18)
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 8
  %23 = call i32 @get_bits_count(%struct.TYPE_16__* %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 20
  %29 = icmp sgt i32 %23, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %2, align 4
  br label %257

32:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 32
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 8
  %39 = call i32 @get_bits1(%struct.TYPE_16__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %46

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %33

46:                                               ; preds = %41, %33
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = call i32 @ff_mpeg4_get_video_packet_prefix_length(%struct.TYPE_14__* %48)
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 (i32, i32, i8*, ...) @av_log(i32 %54, i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %2, align 4
  br label %257

58:                                               ; preds = %46
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RECT_SHAPE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 8
  %67 = call i32 @get_bits1(%struct.TYPE_16__* %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @get_bits(%struct.TYPE_16__* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %73, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %78, %68
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AV_LOG_ERROR, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i32, i8*, ...) @av_log(i32 %84, i32 %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %91, i32* %2, align 4
  br label %257

92:                                               ; preds = %78
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = srem i32 %93, %96
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = sdiv i32 %100, %103
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @BIN_ONLY_SHAPE, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %92
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @get_bits(%struct.TYPE_16__* %114, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %112
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 5
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %121, %112
  br label %128

128:                                              ; preds = %127, %92
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @RECT_SHAPE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 8
  %137 = call i32 @get_bits1(%struct.TYPE_16__* %136)
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %134, %128
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %246

141:                                              ; preds = %138
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %147, %141
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 8
  %145 = call i32 @get_bits1(%struct.TYPE_16__* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %142

150:                                              ; preds = %142
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 9
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 8
  %156 = call i32 @check_marker(i32 %153, %struct.TYPE_16__* %155, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @skip_bits(%struct.TYPE_16__* %158, i32 %161)
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 8
  %168 = call i32 @check_marker(i32 %165, %struct.TYPE_16__* %167, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 8
  %171 = call i32 @skip_bits(%struct.TYPE_16__* %170, i32 2)
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @BIN_ONLY_SHAPE, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %245

177:                                              ; preds = %150
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 8
  %180 = call i32 @skip_bits(%struct.TYPE_16__* %179, i32 3)
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 7
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @AV_PICTURE_TYPE_S, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %206

186:                                              ; preds = %177
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @GMC_SPRITE, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %186
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 8
  %196 = call i64 @mpeg4_decode_sprite_trajectory(%struct.TYPE_15__* %193, %struct.TYPE_16__* %195)
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %199, i32* %2, align 4
  br label %257

200:                                              ; preds = %192
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @AV_LOG_ERROR, align 4
  %205 = call i32 (i32, i32, i8*, ...) @av_log(i32 %203, i32 %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %206

206:                                              ; preds = %200, %186, %177
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 7
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %225

212:                                              ; preds = %206
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 8
  %215 = call i32 @get_bits(%struct.TYPE_16__* %214, i32 3)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %212
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 9
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @AV_LOG_ERROR, align 4
  %223 = call i32 (i32, i32, i8*, ...) @av_log(i32 %221, i32 %222, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %224

224:                                              ; preds = %218, %212
  br label %225

225:                                              ; preds = %224, %206
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 7
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %244

231:                                              ; preds = %225
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 8
  %234 = call i32 @get_bits(%struct.TYPE_16__* %233, i32 3)
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* %12, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %231
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @AV_LOG_ERROR, align 4
  %242 = call i32 (i32, i32, i8*, ...) @av_log(i32 %240, i32 %241, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %243

243:                                              ; preds = %237, %231
  br label %244

244:                                              ; preds = %243, %225
  br label %245

245:                                              ; preds = %244, %150
  br label %246

246:                                              ; preds = %245, %138
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 8
  %255 = call i32 @decode_new_pred(%struct.TYPE_15__* %252, %struct.TYPE_16__* %254)
  br label %256

256:                                              ; preds = %251, %246
  store i32 0, i32* %2, align 4
  br label %257

257:                                              ; preds = %256, %198, %81, %51, %30
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @get_bits_count(%struct.TYPE_16__*) #1

declare dso_local i32 @get_bits1(%struct.TYPE_16__*) #1

declare dso_local i32 @ff_mpeg4_get_video_packet_prefix_length(%struct.TYPE_14__*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @get_bits(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @check_marker(i32, %struct.TYPE_16__*, i8*) #1

declare dso_local i32 @skip_bits(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @mpeg4_decode_sprite_trajectory(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @decode_new_pred(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
