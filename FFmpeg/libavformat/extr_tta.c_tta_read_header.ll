; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tta.c_tta_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tta.c_tta_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_21__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_25__*, i64 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ff_crcEDB88320_update = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"TTA1\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"nonsense samplerate\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid number of samples\0A\00", align 1
@AV_EF_CRCCHECK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Header CRC error\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"totalframes %d invalid\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Seek table CRC error\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_TTA = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @tta_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tta_read_header(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %4, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %21 = call i32 @ff_id3v1_read(%struct.TYPE_23__* %20)
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %25 = call i64 @avio_tell(%struct.TYPE_24__* %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i64, i64* %11, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %354

31:                                               ; preds = %1
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %35 = load i32, i32* @ff_crcEDB88320_update, align 4
  %36 = load i32, i32* @UINT32_MAX, align 4
  %37 = call i32 @ffio_init_checksum(%struct.TYPE_24__* %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %39, align 8
  %41 = call i32 @avio_rl32(%struct.TYPE_24__* %40)
  %42 = call i32 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %2, align 4
  br label %354

46:                                               ; preds = %31
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %48, align 8
  %50 = call i32 @avio_skip(%struct.TYPE_24__* %49, i32 2)
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = call i32 @avio_rl16(%struct.TYPE_24__* %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %56, align 8
  %58 = call i32 @avio_rl16(%struct.TYPE_24__* %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %60, align 8
  %62 = call i32 @avio_rl32(%struct.TYPE_24__* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %46
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 1000000
  br i1 %67, label %68, label %73

68:                                               ; preds = %65, %46
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %69, i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %72, i32* %2, align 4
  br label %354

73:                                               ; preds = %65
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %75, align 8
  %77 = call i32 @avio_rl32(%struct.TYPE_24__* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %81, i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %84, i32* %2, align 4
  br label %354

85:                                               ; preds = %73
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %87, align 8
  %89 = call i32 @ffio_get_checksum(%struct.TYPE_24__* %88)
  %90 = load i32, i32* @UINT32_MAX, align 4
  %91 = xor i32 %89, %90
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %94, align 8
  %96 = call i32 @avio_rl32(%struct.TYPE_24__* %95)
  %97 = icmp ne i32 %92, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %85
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @AV_EF_CRCCHECK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %106, i32 %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %109, i32* %2, align 4
  br label %354

110:                                              ; preds = %98, %85
  %111 = load i32, i32* %9, align 4
  %112 = mul nsw i32 %111, 256
  %113 = sdiv i32 %112, 245
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = srem i32 %116, %119
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %110
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %127, %110
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sdiv i32 %134, %137
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  %146 = zext i1 %145 to i32
  %147 = add nsw i32 %138, %146
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 3
  store i64 0, i64* %151, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = load i32, i32* @UINT_MAX, align 4
  %157 = sext i32 %156 to i64
  %158 = udiv i64 %157, 4
  %159 = icmp uge i64 %155, %158
  br i1 %159, label %165, label %160

160:                                              ; preds = %133
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %160, %133
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %167 = load i32, i32* @AV_LOG_ERROR, align 4
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %166, i32 %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %172, i32* %2, align 4
  br label %354

173:                                              ; preds = %160
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %175 = call %struct.TYPE_22__* @avformat_new_stream(%struct.TYPE_23__* %174, i32* null)
  store %struct.TYPE_22__* %175, %struct.TYPE_22__** %5, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %177 = icmp ne %struct.TYPE_22__* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %173
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = call i32 @AVERROR(i32 %179)
  store i32 %180, i32* %2, align 4
  br label %354

181:                                              ; preds = %173
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @avpriv_set_pts_info(%struct.TYPE_22__* %182, i32 64, i32 1, i32 %183)
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 2
  store i64 0, i64* %186, align 8
  %187 = load i32, i32* %12, align 4
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %191, align 8
  %193 = call i64 @avio_tell(%struct.TYPE_24__* %192)
  store i64 %193, i64* %10, align 8
  %194 = load i64, i64* %10, align 8
  %195 = icmp slt i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %181
  %197 = load i64, i64* %10, align 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %2, align 4
  br label %354

199:                                              ; preds = %181
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = mul nsw i32 4, %202
  %204 = add nsw i32 %203, 4
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %10, align 8
  %207 = add nsw i64 %206, %205
  store i64 %207, i64* %10, align 8
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %209, align 8
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %212, align 8
  %214 = call i64 @avio_tell(%struct.TYPE_24__* %213)
  %215 = load i64, i64* %11, align 8
  %216 = sub nsw i64 %214, %215
  %217 = call i64 @ff_alloc_extradata(%struct.TYPE_25__* %210, i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %199
  %220 = load i32, i32* @ENOMEM, align 4
  %221 = call i32 @AVERROR(i32 %220)
  store i32 %221, i32* %2, align 4
  br label %354

222:                                              ; preds = %199
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %224, align 8
  %226 = load i64, i64* %11, align 8
  %227 = load i32, i32* @SEEK_SET, align 4
  %228 = call i32 @avio_seek(%struct.TYPE_24__* %225, i64 %226, i32 %227)
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %230, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @avio_read(%struct.TYPE_24__* %231, i32 %236, i32 %241)
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %244, align 8
  %246 = load i32, i32* @ff_crcEDB88320_update, align 4
  %247 = load i32, i32* @UINT32_MAX, align 4
  %248 = call i32 @ffio_init_checksum(%struct.TYPE_24__* %245, i32 %246, i32 %247)
  store i32 0, i32* %6, align 4
  br label %249

249:                                              ; preds = %278, %222
  %250 = load i32, i32* %6, align 4
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = icmp slt i32 %250, %253
  br i1 %254, label %255, label %281

255:                                              ; preds = %249
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %257, align 8
  %259 = call i32 @avio_rl32(%struct.TYPE_24__* %258)
  store i32 %259, i32* %14, align 4
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %261 = load i64, i64* %10, align 8
  %262 = load i32, i32* %6, align 4
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = mul nsw i32 %262, %265
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %269 = call i32 @av_add_index_entry(%struct.TYPE_22__* %260, i64 %261, i32 %266, i32 %267, i32 0, i32 %268)
  store i32 %269, i32* %15, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %255
  %272 = load i32, i32* %15, align 4
  store i32 %272, i32* %2, align 4
  br label %354

273:                                              ; preds = %255
  %274 = load i32, i32* %14, align 4
  %275 = sext i32 %274 to i64
  %276 = load i64, i64* %10, align 8
  %277 = add nsw i64 %276, %275
  store i64 %277, i64* %10, align 8
  br label %278

278:                                              ; preds = %273
  %279 = load i32, i32* %6, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %6, align 4
  br label %249

281:                                              ; preds = %249
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %283, align 8
  %285 = call i32 @ffio_get_checksum(%struct.TYPE_24__* %284)
  %286 = load i32, i32* @UINT32_MAX, align 4
  %287 = xor i32 %285, %286
  store i32 %287, i32* %13, align 4
  %288 = load i32, i32* %13, align 4
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %290, align 8
  %292 = call i32 @avio_rl32(%struct.TYPE_24__* %291)
  %293 = icmp ne i32 %288, %292
  br i1 %293, label %294, label %306

294:                                              ; preds = %281
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @AV_EF_CRCCHECK, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %294
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %303 = load i32, i32* @AV_LOG_ERROR, align 4
  %304 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %302, i32 %303, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %305 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %305, i32* %2, align 4
  br label %354

306:                                              ; preds = %294, %281
  %307 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %310, i32 0, i32 4
  store i32 %307, i32* %311, align 4
  %312 = load i32, i32* @AV_CODEC_ID_TTA, align 4
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i32 0, i32 1
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 3
  store i32 %312, i32* %316, align 4
  %317 = load i32, i32* %7, align 4
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 0
  store i32 %317, i32* %321, align 4
  %322 = load i32, i32* %9, align 4
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 1
  store i32 %322, i32* %326, align 4
  %327 = load i32, i32* %8, align 4
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_25__*, %struct.TYPE_25__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %330, i32 0, i32 2
  store i32 %327, i32* %331, align 4
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %353

340:                                              ; preds = %306
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_24__*, %struct.TYPE_24__** %342, align 8
  %344 = call i64 @avio_tell(%struct.TYPE_24__* %343)
  store i64 %344, i64* %16, align 8
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %346 = call i32 @ff_ape_parse_tag(%struct.TYPE_23__* %345)
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 1
  %349 = load %struct.TYPE_24__*, %struct.TYPE_24__** %348, align 8
  %350 = load i64, i64* %16, align 8
  %351 = load i32, i32* @SEEK_SET, align 4
  %352 = call i32 @avio_seek(%struct.TYPE_24__* %349, i64 %350, i32 %351)
  br label %353

353:                                              ; preds = %340, %306
  store i32 0, i32* %2, align 4
  br label %354

354:                                              ; preds = %353, %301, %271, %219, %196, %178, %165, %105, %80, %68, %44, %28
  %355 = load i32, i32* %2, align 4
  ret i32 %355
}

declare dso_local i32 @ff_id3v1_read(%struct.TYPE_23__*) #1

declare dso_local i64 @avio_tell(%struct.TYPE_24__*) #1

declare dso_local i32 @ffio_init_checksum(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @avio_rl32(%struct.TYPE_24__*) #1

declare dso_local i32 @AV_RL32(i8*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @avio_rl16(%struct.TYPE_24__*) #1

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*, ...) #1

declare dso_local i32 @ffio_get_checksum(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_22__* @avformat_new_stream(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i64 @ff_alloc_extradata(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @avio_seek(%struct.TYPE_24__*, i64, i32) #1

declare dso_local i32 @avio_read(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @av_add_index_entry(%struct.TYPE_22__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ff_ape_parse_tag(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
