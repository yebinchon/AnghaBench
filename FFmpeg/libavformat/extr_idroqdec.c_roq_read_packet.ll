; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_idroqdec.c_roq_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_idroqdec.c_roq_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@RoQ_CHUNK_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_ROQ = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@RoQ_AUDIO_SAMPLE_RATE = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_ROQ_DPCM = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"  unknown RoQ chunk (%04X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @roq_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roq_read_packet(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %6, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %25 = load i32, i32* @RoQ_CHUNK_PREAMBLE_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %400, %2
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %401

33:                                               ; preds = %29
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @avio_feof(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EIO, align 4
  %41 = call i32 @AVERROR(i32 %40)
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

42:                                               ; preds = %33
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @RoQ_CHUNK_PREAMBLE_SIZE, align 4
  %45 = call i32 @avio_read(i32* %43, i8* %28, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @RoQ_CHUNK_PREAMBLE_SIZE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EIO, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

51:                                               ; preds = %42
  %52 = getelementptr inbounds i8, i8* %28, i64 0
  %53 = call i8* @AV_RL16(i8* %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = getelementptr inbounds i8, i8* %28, i64 2
  %56 = call i32 @AV_RL32(i8* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @INT_MAX, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

62:                                               ; preds = %51
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @ffio_limit(i32* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  switch i32 %66, label %394 [
    i32 132, label %67
    i32 131, label %133
    i32 129, label %197
    i32 128, label %197
    i32 130, label %309
  ]

67:                                               ; preds = %62
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %129

72:                                               ; preds = %67
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = call %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_19__* %73, i32* null)
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %17, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %76 = icmp ne %struct.TYPE_17__* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

80:                                               ; preds = %72
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @avpriv_set_pts_info(%struct.TYPE_17__* %81, i32 63, i32 1, i32 %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 8
  store i32 %91, i32* %95, align 8
  %96 = load i32, i32* @AV_CODEC_ID_ROQ, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 7
  store i32 %96, i32* %100, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 6
  store i32 0, i32* %104, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* @RoQ_CHUNK_PREAMBLE_SIZE, align 4
  %107 = call i32 @avio_read(i32* %105, i8* %28, i32 %106)
  %108 = load i32, i32* @RoQ_CHUNK_PREAMBLE_SIZE, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %80
  %111 = load i32, i32* @EIO, align 4
  %112 = call i32 @AVERROR(i32 %111)
  store i32 %112, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

113:                                              ; preds = %80
  %114 = call i8* @AV_RL16(i8* %28)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 7
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 10
  store i8* %114, i8** %120, align 8
  %121 = getelementptr inbounds i8, i8* %28, i64 2
  %122 = call i8* @AV_RL16(i8* %121)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 6
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 9
  store i8* %122, i8** %128, align 8
  br label %400

129:                                              ; preds = %67
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* @RoQ_CHUNK_PREAMBLE_SIZE, align 4
  %132 = call i32 @avio_skip(i32* %130, i32 %131)
  br label %400

133:                                              ; preds = %62
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %139, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

140:                                              ; preds = %133
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @avio_tell(i32* %141)
  %143 = load i32, i32* @RoQ_CHUNK_PREAMBLE_SIZE, align 4
  %144 = sub nsw i32 %142, %143
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %11, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @avio_skip(i32* %146, i32 %147)
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* @RoQ_CHUNK_PREAMBLE_SIZE, align 4
  %151 = call i32 @avio_read(i32* %149, i8* %28, i32 %150)
  %152 = load i32, i32* @RoQ_CHUNK_PREAMBLE_SIZE, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %140
  %155 = load i32, i32* @EIO, align 4
  %156 = call i32 @AVERROR(i32 %155)
  store i32 %156, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

157:                                              ; preds = %140
  %158 = getelementptr inbounds i8, i8* %28, i64 2
  %159 = call i32 @AV_RL32(i8* %158)
  %160 = load i32, i32* @RoQ_CHUNK_PREAMBLE_SIZE, align 4
  %161 = mul nsw i32 %160, 2
  %162 = add nsw i32 %159, %161
  %163 = load i32, i32* %11, align 4
  %164 = add i32 %162, %163
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @INT_MAX, align 4
  %167 = icmp ugt i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %157
  %169 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %169, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

170:                                              ; preds = %157
  %171 = load i32*, i32** %7, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* @SEEK_SET, align 4
  %174 = call i32 @avio_seek(i32* %171, i32 %172, i32 %173)
  %175 = load i32*, i32** %7, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @av_get_packet(i32* %175, %struct.TYPE_18__* %176, i32 %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %170
  %183 = load i32, i32* @EIO, align 4
  %184 = call i32 @AVERROR(i32 %183)
  store i32 %184, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

185:                                              ; preds = %170
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  store i32 %193, i32* %196, align 4
  store i32 1, i32* %14, align 4
  br label %400

197:                                              ; preds = %62, %62
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %308

202:                                              ; preds = %197
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %204 = call %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_19__* %203, i32* null)
  store %struct.TYPE_17__* %204, %struct.TYPE_17__** %18, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %206 = icmp ne %struct.TYPE_17__* %205, null
  br i1 %206, label %210, label %207

207:                                              ; preds = %202
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = call i32 @AVERROR(i32 %208)
  store i32 %209, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

210:                                              ; preds = %202
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %212 = load i32, i32* @RoQ_AUDIO_SAMPLE_RATE, align 4
  %213 = call i32 @avpriv_set_pts_info(%struct.TYPE_17__* %211, i32 32, i32 1, i32 %212)
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 8
  store i32 %219, i32* %223, align 8
  %224 = load i32, i32* @AV_CODEC_ID_ROQ_DPCM, align 4
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 7
  store i32 %224, i32* %228, align 4
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 6
  store i32 0, i32* %232, align 8
  %233 = load i32, i32* %10, align 4
  %234 = icmp eq i32 %233, 128
  br i1 %234, label %235, label %245

235:                                              ; preds = %210
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  store i32 2, i32* %239, align 8
  %240 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 5
  store i32 %240, i32* %244, align 4
  br label %255

245:                                              ; preds = %210
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  store i32 1, i32* %249, align 8
  %250 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 5
  store i32 %250, i32* %254, align 4
  br label %255

255:                                              ; preds = %245, %235
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 3
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* @RoQ_AUDIO_SAMPLE_RATE, align 4
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 1
  store i32 %263, i32* %267, align 4
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 2
  store i32 16, i32* %271, align 8
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = mul nsw i32 %276, %281
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = mul nsw i32 %282, %287
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 3
  store i32 %288, i32* %292, align 4
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = mul nsw i32 %297, %302
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 4
  store i32 %303, i32* %307, align 8
  br label %308

308:                                              ; preds = %255, %197
  br label %309

309:                                              ; preds = %62, %308
  %310 = load i32, i32* %10, align 4
  %311 = icmp eq i32 %310, 130
  br i1 %311, label %312, label %320

312:                                              ; preds = %309
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %318, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

319:                                              ; preds = %312
  br label %320

320:                                              ; preds = %319, %309
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* @RoQ_CHUNK_PREAMBLE_SIZE, align 4
  %324 = add i32 %322, %323
  %325 = call i32 @av_new_packet(%struct.TYPE_18__* %321, i32 %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %320
  %328 = load i32, i32* @EIO, align 4
  %329 = call i32 @AVERROR(i32 %328)
  store i32 %329, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

330:                                              ; preds = %320
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @RoQ_CHUNK_PREAMBLE_SIZE, align 4
  %335 = call i32 @memcpy(i32 %333, i8* %28, i32 %334)
  %336 = load i32, i32* %10, align 4
  %337 = icmp eq i32 %336, 130
  br i1 %337, label %338, label %350

338:                                              ; preds = %330
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 0
  store i32 %341, i32* %343, align 4
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 5
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %345, align 4
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %348, i32 0, i32 1
  store i32 %346, i32* %349, align 4
  br label %370

350:                                              ; preds = %330
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 0
  store i32 %353, i32* %355, align 4
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 1
  store i32 %358, i32* %360, align 4
  %361 = load i32, i32* %9, align 4
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = udiv i32 %361, %364
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 4
  %368 = load i32, i32* %367, align 8
  %369 = add i32 %368, %365
  store i32 %369, i32* %367, align 8
  br label %370

370:                                              ; preds = %350, %338
  %371 = load i32*, i32** %7, align 8
  %372 = call i32 @avio_tell(i32* %371)
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 3
  store i32 %372, i32* %374, align 4
  %375 = load i32*, i32** %7, align 8
  %376 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @RoQ_CHUNK_PREAMBLE_SIZE, align 4
  %380 = add nsw i32 %378, %379
  %381 = sext i32 %380 to i64
  %382 = inttoptr i64 %381 to i8*
  %383 = load i32, i32* %9, align 4
  %384 = call i32 @avio_read(i32* %375, i8* %382, i32 %383)
  store i32 %384, i32* %8, align 4
  %385 = load i32, i32* %8, align 4
  %386 = load i32, i32* %9, align 4
  %387 = icmp ne i32 %385, %386
  br i1 %387, label %388, label %393

388:                                              ; preds = %370
  %389 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %390 = call i32 @av_packet_unref(%struct.TYPE_18__* %389)
  %391 = load i32, i32* @EIO, align 4
  %392 = call i32 @AVERROR(i32 %391)
  store i32 %392, i32* %8, align 4
  br label %393

393:                                              ; preds = %388, %370
  store i32 1, i32* %14, align 4
  br label %400

394:                                              ; preds = %62
  %395 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %396 = load i32, i32* @AV_LOG_ERROR, align 4
  %397 = load i32, i32* %10, align 4
  %398 = call i32 @av_log(%struct.TYPE_19__* %395, i32 %396, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %397)
  %399 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %399, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

400:                                              ; preds = %393, %185, %129, %113
  br label %29

401:                                              ; preds = %29
  %402 = load i32, i32* %8, align 4
  store i32 %402, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %403

403:                                              ; preds = %401, %394, %327, %317, %207, %182, %168, %154, %138, %110, %77, %60, %48, %39
  %404 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %404)
  %405 = load i32, i32* %3, align 4
  ret i32 %405
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @avio_feof(i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @avio_read(i32*, i8*, i32) #2

declare dso_local i8* @AV_RL16(i8*) #2

declare dso_local i32 @AV_RL32(i8*) #2

declare dso_local i32 @ffio_limit(i32*, i32) #2

declare dso_local %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_19__*, i32*) #2

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_17__*, i32, i32, i32) #2

declare dso_local i32 @avio_skip(i32*, i32) #2

declare dso_local i32 @avio_tell(i32*) #2

declare dso_local i32 @avio_seek(i32*, i32, i32) #2

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @av_new_packet(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_18__*) #2

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
