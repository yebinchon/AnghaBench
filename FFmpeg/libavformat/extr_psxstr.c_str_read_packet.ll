; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_psxstr.c_str_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_psxstr.c_str_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@RAW_CD_SECTOR_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@CDXA_TYPE_MASK = common dso_local global i8 0, align 1
@VIDEO_DATA_CHUNK_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid parameters %d %d %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_MDEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"mismatching sector_count\0A\00", align 1
@VIDEO_DATA_HEADER_SIZE = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_XA = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown sector type %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @str_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_read_packet(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %7, align 8
  %24 = load i32, i32* @RAW_CD_SECTOR_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  br label %28

28:                                               ; preds = %369, %2
  br label %29

29:                                               ; preds = %28
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @RAW_CD_SECTOR_SIZE, align 4
  %32 = call i32 @avio_read(i32* %30, i8* %27, i32 %31)
  %33 = load i32, i32* @RAW_CD_SECTOR_SIZE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EIO, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %370

38:                                               ; preds = %29
  %39 = getelementptr inbounds i8, i8* %27, i64 17
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %42, 32
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %370

46:                                               ; preds = %38
  %47 = getelementptr inbounds i8, i8* %27, i64 18
  %48 = load i8, i8* %47, align 2
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @CDXA_TYPE_MASK, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, %51
  switch i32 %52, label %355 [
    i32 129, label %53
    i32 128, label %53
    i32 130, label %231
  ]

53:                                               ; preds = %46, %46
  %54 = getelementptr inbounds i8, i8* %27, i64 28
  %55 = call i8* @AV_RL16(i8* %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %14, align 4
  %57 = getelementptr inbounds i8, i8* %27, i64 30
  %58 = call i8* @AV_RL16(i8* %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %15, align 4
  %60 = getelementptr inbounds i8, i8* %27, i64 36
  %61 = call i32 @AV_RL32(i8* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %53
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @VIDEO_DATA_CHUNK_SIZE, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %16, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %68, %64, %53
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %75, i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  br label %362

81:                                               ; preds = %68
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %138

91:                                               ; preds = %81
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %93 = call %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__* %92, i32* null)
  store %struct.TYPE_18__* %93, %struct.TYPE_18__** %12, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %95 = icmp ne %struct.TYPE_18__* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = call i32 @AVERROR(i32 %97)
  store i32 %98, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %370

99:                                               ; preds = %91
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = call i32 @avpriv_set_pts_info(%struct.TYPE_18__* %100, i32 64, i32 1, i32 15)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  store i32 %104, i32* %111, align 4
  %112 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 6
  store i32 %112, i32* %116, align 8
  %117 = load i32, i32* @AV_CODEC_ID_MDEC, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 5
  store i32 %117, i32* %121, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 4
  store i32 0, i32* %125, align 8
  %126 = getelementptr inbounds i8, i8* %27, i64 40
  %127 = call i8* @AV_RL16(i8* %126)
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 8
  store i8* %127, i8** %131, align 8
  %132 = getelementptr inbounds i8, i8* %27, i64 42
  %133 = call i8* @AV_RL16(i8* %132)
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 7
  store i8* %133, i8** %137, align 8
  br label %138

138:                                              ; preds = %99, %81
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  store %struct.TYPE_19__* %145, %struct.TYPE_19__** %11, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* @VIDEO_DATA_CHUNK_SIZE, align 4
  %151 = mul nsw i32 %149, %150
  %152 = icmp ne i32 %148, %151
  br i1 %152, label %153, label %198

153:                                              ; preds = %138
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %160 = load i32, i32* @AV_LOG_ERROR, align 4
  %161 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %159, i32 %160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %162

162:                                              ; preds = %158, %153
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %164 = call i32 @av_packet_unref(%struct.TYPE_19__* %163)
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* @VIDEO_DATA_CHUNK_SIZE, align 4
  %168 = mul nsw i32 %166, %167
  %169 = call i32 @av_new_packet(%struct.TYPE_19__* %165, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %162
  %172 = load i32, i32* @EIO, align 4
  %173 = call i32 @AVERROR(i32 %172)
  store i32 %173, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %370

174:                                              ; preds = %162
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* @VIDEO_DATA_CHUNK_SIZE, align 4
  %180 = mul nsw i32 %178, %179
  %181 = call i32 @memset(i32* %177, i32 0, i32 %180)
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @avio_tell(i32* %182)
  %184 = load i32, i32* @RAW_CD_SECTOR_SIZE, align 4
  %185 = sub nsw i32 %183, %184
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %174, %138
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* @VIDEO_DATA_CHUNK_SIZE, align 4
  %204 = mul nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %201, i64 %205
  %207 = load i32, i32* @VIDEO_DATA_HEADER_SIZE, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %27, i64 %208
  %210 = load i32, i32* @VIDEO_DATA_CHUNK_SIZE, align 4
  %211 = call i32 @memcpy(i32* %206, i8* %209, i32 %210)
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %15, align 4
  %214 = sub nsw i32 %213, 1
  %215 = icmp eq i32 %212, %214
  br i1 %215, label %216, label %230

216:                                              ; preds = %198
  %217 = load i32, i32* %16, align 4
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %222 = bitcast %struct.TYPE_19__* %220 to i8*
  %223 = bitcast %struct.TYPE_19__* %221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %222, i8* align 8 %223, i64 32, i1 false)
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 4
  store i32* null, i32** %225, align 8
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 0
  store i32 -1, i32* %227, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 5
  store i32* null, i32** %229, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %370

230:                                              ; preds = %198
  br label %362

231:                                              ; preds = %46
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %233, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %329

241:                                              ; preds = %231
  %242 = getelementptr inbounds i8, i8* %27, i64 19
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  store i32 %244, i32* %17, align 4
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %246 = call %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__* %245, i32* null)
  store %struct.TYPE_18__* %246, %struct.TYPE_18__** %12, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %248 = icmp ne %struct.TYPE_18__* %247, null
  br i1 %248, label %252, label %249

249:                                              ; preds = %241
  %250 = load i32, i32* @ENOMEM, align 4
  %251 = call i32 @AVERROR(i32 %250)
  store i32 %251, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %370

252:                                              ; preds = %241
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %257, align 8
  %259 = load i32, i32* %10, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 0
  store i32 %255, i32* %262, align 8
  %263 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 6
  store i32 %263, i32* %267, align 8
  %268 = load i32, i32* @AV_CODEC_ID_ADPCM_XA, align 4
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 5
  store i32 %268, i32* %272, align 4
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 4
  store i32 0, i32* %276, align 8
  %277 = load i32, i32* %17, align 4
  %278 = and i32 %277, 1
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %252
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  store i32 2, i32* %284, align 8
  %285 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 3
  store i32 %285, i32* %289, align 4
  br label %300

290:                                              ; preds = %252
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  store i32 1, i32* %294, align 8
  %295 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 3
  store i32 %295, i32* %299, align 4
  br label %300

300:                                              ; preds = %290, %280
  %301 = load i32, i32* %17, align 4
  %302 = and i32 %301, 4
  %303 = icmp ne i32 %302, 0
  %304 = zext i1 %303 to i64
  %305 = select i1 %303, i32 18900, i32 37800
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 1
  store i32 %305, i32* %309, align 4
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 2
  store i32 128, i32* %313, align 8
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = sdiv i32 4032, %319
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @avpriv_set_pts_info(%struct.TYPE_18__* %314, i32 64, i32 %320, i32 %325)
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 0
  store i32 0, i32* %328, align 8
  br label %329

329:                                              ; preds = %300, %231
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %330, %struct.TYPE_19__** %11, align 8
  %331 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %332 = call i32 @av_new_packet(%struct.TYPE_19__* %331, i32 2304)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %329
  %335 = load i32, i32* @EIO, align 4
  %336 = call i32 @AVERROR(i32 %335)
  store i32 %336, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %370

337:                                              ; preds = %329
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 4
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i8, i8* %27, i64 24
  %342 = call i32 @memcpy(i32* %340, i8* %341, i32 2304)
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %344, align 8
  %346 = load i32, i32* %10, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 3
  store i32 %350, i32* %352, align 4
  %353 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %353, i32 0, i32 2
  store i32 1, i32* %354, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %370

355:                                              ; preds = %46
  %356 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %357 = load i32, i32* @AV_LOG_WARNING, align 4
  %358 = getelementptr inbounds i8, i8* %27, i64 18
  %359 = load i8, i8* %358, align 2
  %360 = zext i8 %359 to i32
  %361 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %356, i32 %357, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %360)
  br label %362

362:                                              ; preds = %355, %230, %74
  %363 = load i32*, i32** %6, align 8
  %364 = call i64 @avio_feof(i32* %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %362
  %367 = load i32, i32* @EIO, align 4
  %368 = call i32 @AVERROR(i32 %367)
  store i32 %368, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %370

369:                                              ; preds = %362
  br label %28

370:                                              ; preds = %366, %337, %334, %249, %216, %171, %96, %44, %35
  %371 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %371)
  %372 = load i32, i32* %3, align 4
  ret i32 %372
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @avio_read(i32*, i8*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i8* @AV_RL16(i8*) #2

declare dso_local i32 @AV_RL32(i8*) #2

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #2

declare dso_local %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__*, i32*) #2

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_18__*, i32, i32, i32) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_19__*) #2

declare dso_local i32 @av_new_packet(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @avio_tell(i32*) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @avio_feof(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
