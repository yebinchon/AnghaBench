; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264dec.c_h264_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264dec.c_h264_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64, i64, i32, i64, i32*, i32, i32, i32, i64, i32, i64, i64, i32 }
%struct.TYPE_18__ = type { i32*, i32 }
%struct.TYPE_19__ = type { i64* }

@AV_PKT_DATA_NEW_EXTRADATA = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@H264_NAL_END_SEQUENCE = common dso_local global i64 0, align 8
@AV_CODEC_FLAG2_CHUNKS = common dso_local global i32 0, align 4
@AVDISCARD_NONREF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Q264\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"no frame!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i8*, i32*, %struct.TYPE_18__*)* @h264_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_decode_frame(%struct.TYPE_20__* %0, i8* %1, i32* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %12, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %13, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 13
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 12
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 11
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 3
  %41 = call i32 @ff_h264_unref_picture(%struct.TYPE_17__* %38, i32* %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @send_next_delayed_frame(%struct.TYPE_17__* %45, %struct.TYPE_19__* %46, i32* %47, i32 0)
  store i32 %48, i32* %5, align 4
  br label %266

49:                                               ; preds = %4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %49
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %56 = load i32, i32* @AV_PKT_DATA_NEW_EXTRADATA, align 4
  %57 = call i32* @av_packet_get_side_data(%struct.TYPE_18__* %55, i32 %56, i32* null)
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %61 = load i32, i32* @AV_PKT_DATA_NEW_EXTRADATA, align 4
  %62 = call i32* @av_packet_get_side_data(%struct.TYPE_18__* %60, i32 %61, i32* %16)
  store i32* %62, i32** %17, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = load i32, i32* %16, align 4
  %65 = call i64 @is_extra(i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load i32*, i32** %17, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 10
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 9
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %80 = call i32 @ff_h264_decode_extradata(i32* %68, i32 %69, i32* %71, i64* %73, i32* %75, i32 %78, %struct.TYPE_20__* %79)
  br label %81

81:                                               ; preds = %67, %59
  br label %82

82:                                               ; preds = %81, %54, %49
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 9
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %126

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  %89 = icmp sge i32 %88, 9
  br i1 %89, label %90, label %126

90:                                               ; preds = %87
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %126

95:                                               ; preds = %90
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %95
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 252
  %105 = icmp eq i32 %104, 252
  br i1 %105, label %106, label %126

106:                                              ; preds = %100
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i64 @is_extra(i32* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 10
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 9
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %124 = call i32 @ff_h264_decode_extradata(i32* %112, i32 %113, i32* %115, i64* %117, i32* %119, i32 %122, %struct.TYPE_20__* %123)
  store i32 %124, i32* %5, align 4
  br label %266

125:                                              ; preds = %106
  br label %126

126:                                              ; preds = %125, %100, %95, %90, %87, %82
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @decode_nal_units(%struct.TYPE_17__* %127, i32* %128, i32 %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %134, i32* %5, align 4
  br label %266

135:                                              ; preds = %126
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %157, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @H264_NAL_END_SEQUENCE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %140
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp sle i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @av_assert0(i32 %150)
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @send_next_delayed_frame(%struct.TYPE_17__* %152, %struct.TYPE_19__* %153, i32* %154, i32 %155)
  store i32 %156, i32* %5, align 4
  br label %266

157:                                              ; preds = %140, %135
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @AV_CODEC_FLAG2_CHUNKS, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %194, label %164

164:                                              ; preds = %157
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %194, label %174

174:                                              ; preds = %169, %164
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @AVDISCARD_NONREF, align 8
  %179 = icmp sge i64 %177, %178
  br i1 %179, label %187, label %180

180:                                              ; preds = %174
  %181 = load i32, i32* %11, align 4
  %182 = icmp sge i32 %181, 4
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32*, i32** %10, align 8
  %185 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %184, i32 4)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183, %174
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %5, align 4
  br label %266

189:                                              ; preds = %183, %180
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %191 = load i32, i32* @AV_LOG_ERROR, align 4
  %192 = call i32 @av_log(%struct.TYPE_20__* %190, i32 %191, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %193 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %193, i32* %5, align 4
  br label %266

194:                                              ; preds = %169, %157
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @AV_CODEC_FLAG2_CHUNKS, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %194
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp sge i64 %204, %207
  br i1 %208, label %209, label %243

209:                                              ; preds = %201
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %243

214:                                              ; preds = %209, %194
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 5
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = call i32 @ff_h264_field_end(%struct.TYPE_17__* %215, i32* %219, i32 0)
  store i32 %220, i32* %15, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %214
  %223 = load i32, i32* %15, align 4
  store i32 %223, i32* %5, align 4
  br label %266

224:                                              ; preds = %214
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %224
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = load i32*, i32** %8, align 8
  %236 = call i32 @finalize_frame(%struct.TYPE_17__* %230, %struct.TYPE_19__* %231, i64 %234, i32* %235)
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %15, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %229
  %240 = load i32, i32* %15, align 4
  store i32 %240, i32* %5, align 4
  br label %266

241:                                              ; preds = %229
  br label %242

242:                                              ; preds = %241, %224
  br label %243

243:                                              ; preds = %242, %209, %201
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 0
  %246 = load i64*, i64** %245, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %243
  %251 = load i32*, i32** %8, align 8
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  %254 = xor i1 %253, true
  br label %255

255:                                              ; preds = %250, %243
  %256 = phi i1 [ true, %243 ], [ %254, %250 ]
  %257 = zext i1 %256 to i32
  %258 = call i32 @av_assert0(i32 %257)
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 3
  %262 = call i32 @ff_h264_unref_picture(%struct.TYPE_17__* %259, i32* %261)
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* %11, align 4
  %265 = call i32 @get_consumed_bytes(i32 %263, i32 %264)
  store i32 %265, i32* %5, align 4
  br label %266

266:                                              ; preds = %255, %239, %222, %189, %187, %146, %133, %111, %44
  %267 = load i32, i32* %5, align 4
  ret i32 %267
}

declare dso_local i32 @ff_h264_unref_picture(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @send_next_delayed_frame(%struct.TYPE_17__*, %struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i64 @is_extra(i32*, i32) #1

declare dso_local i32 @ff_h264_decode_extradata(i32*, i32, i32*, i64*, i32*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @decode_nal_units(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @ff_h264_field_end(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @finalize_frame(%struct.TYPE_17__*, %struct.TYPE_19__*, i64, i32*) #1

declare dso_local i32 @get_consumed_bytes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
