; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_single_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_single_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_17__**, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64, i64, i64, i64, i64, i32, i64, %struct.TYPE_16__*, %struct.TYPE_22__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32, i64, i8* }
%struct.TYPE_20__ = type { i64, i32, i64, i64, i32 }

@FF_MOV_FLAG_FRAG_DISCONT = common dso_local global i32 0, align 4
@FF_MOV_FLAG_NEGATIVE_CTS_OFFSETS = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_CODEC_ID_MP4ALS = common dso_local global i64 0, align 8
@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@AV_CODEC_ID_AV1 = common dso_local global i64 0, align 8
@AV_CODEC_ID_FLAC = common dso_local global i64 0, align 8
@AV_PKT_DATA_NEW_EXTRADATA = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@FF_MOV_FLAG_FRAG_KEYFRAME = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@FF_MOV_FLAG_FRAG_EVERY_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @mov_write_single_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_single_packet(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %6, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 6
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i64 %24
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %7, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 9
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %8, align 8
  store i64 0, i64* %9, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = call i32 @check_pkt(%struct.TYPE_21__* %32, %struct.TYPE_20__* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %3, align 4
  br label %375

39:                                               ; preds = %2
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FF_MOV_FLAG_FRAG_DISCONT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %61, %46
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %47

64:                                               ; preds = %47
  %65 = load i32, i32* @FF_MOV_FLAG_FRAG_DISCONT, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %64, %39
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FF_MOV_FLAG_NEGATIVE_CTS_OFFSETS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %71
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %84, %78
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, %97
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %94, %71
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 9
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AV_CODEC_ID_MP4ALS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %134, label %110

110:                                              ; preds = %102
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 9
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %134, label %118

118:                                              ; preds = %110
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 9
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AV_CODEC_ID_AV1, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 9
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @AV_CODEC_ID_FLAC, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %194

134:                                              ; preds = %126, %118, %110, %102
  store i32 0, i32* %13, align 4
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %136 = load i32, i32* @AV_PKT_DATA_NEW_EXTRADATA, align 4
  %137 = call i32* @av_packet_get_side_data(%struct.TYPE_20__* %135, i32 %136, i32* %13)
  store i32* %137, i32** %14, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %193

140:                                              ; preds = %134
  %141 = load i32, i32* %13, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %193

143:                                              ; preds = %140
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %144, %147
  br i1 %148, label %157, label %149

149:                                              ; preds = %143
  %150 = load i32*, i32** %14, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 3
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = call i64 @memcmp(i32* %150, i8* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %193

157:                                              ; preds = %149, %143
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i8* @av_mallocz(i64 %161)
  store i8* %162, i8** %15, align 8
  %163 = load i8*, i8** %15, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %157
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = call i32 @AVERROR(i32 %166)
  store i32 %167, i32* %3, align 4
  br label %375

168:                                              ; preds = %157
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 3
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @av_free(i8* %171)
  %173 = load i8*, i8** %15, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 3
  store i8* %173, i8** %175, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = load i32*, i32** %14, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @memcpy(i8* %178, i32* %179, i32 %180)
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %168
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 1
  store i32 1, i32* %191, align 4
  br label %192

192:                                              ; preds = %189, %168
  br label %193

193:                                              ; preds = %192, %149, %140, %134
  br label %194

194:                                              ; preds = %193, %126
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %236, label %199

199:                                              ; preds = %194
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %235

205:                                              ; preds = %199
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %235

210:                                              ; preds = %205
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 2
  store i64 %213, i64* %215, align 8
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %231

221:                                              ; preds = %210
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = sub nsw i64 %224, %227
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 3
  store i64 %228, i64* %230, align 8
  br label %234

231:                                              ; preds = %210
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 3
  store i64 0, i64* %233, align 8
  br label %234

234:                                              ; preds = %231, %221
  br label %235

235:                                              ; preds = %234, %205, %199
  store i32 0, i32* %3, align 4
  br label %375

236:                                              ; preds = %194
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 7
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %273

241:                                              ; preds = %236
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = icmp ult i64 %244, %248
  br i1 %249, label %250, label %273

250:                                              ; preds = %241
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 8
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = sub nsw i64 %253, %259
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %262, align 8
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %263, i64 %266
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %272 = call i64 @av_rescale_q(i64 %260, i32 %270, i32 %271)
  store i64 %272, i64* %9, align 8
  br label %273

273:                                              ; preds = %250, %241, %236
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %273
  %279 = load i64, i64* %9, align 8
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = icmp sge i64 %279, %282
  br i1 %283, label %332, label %284

284:                                              ; preds = %278, %273
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %300

289:                                              ; preds = %284
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 4
  %292 = load i64, i64* %291, align 8
  %293 = load i32, i32* %10, align 4
  %294 = sext i32 %293 to i64
  %295 = add nsw i64 %292, %294
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = icmp sge i64 %295, %298
  br i1 %299, label %332, label %300

300:                                              ; preds = %289, %284
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @FF_MOV_FLAG_FRAG_KEYFRAME, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %325

307:                                              ; preds = %300
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %325

313:                                              ; preds = %307
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 7
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %313
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %318, %313, %307, %300
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @FF_MOV_FLAG_FRAG_EVERY_FRAME, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %371

332:                                              ; preds = %325, %318, %289, %278
  %333 = load i64, i64* %9, align 8
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 5
  %336 = load i64, i64* %335, align 8
  %337 = icmp sge i64 %333, %336
  br i1 %337, label %338, label %370

338:                                              ; preds = %332
  %339 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 3
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = sub nsw i64 %341, %344
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %346, i32 0, i32 4
  store i64 %345, i64* %347, align 8
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %352 = icmp ne i64 %350, %351
  br i1 %352, label %353, label %359

353:                                              ; preds = %338
  %354 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 5
  store i64 %356, i64* %358, align 8
  br label %365

359:                                              ; preds = %338
  %360 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %360, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 5
  store i64 %362, i64* %364, align 8
  br label %365

365:                                              ; preds = %359, %353
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %366, i32 0, i32 6
  store i32 1, i32* %367, align 8
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %369 = call i32 @mov_auto_flush_fragment(%struct.TYPE_21__* %368, i32 0)
  br label %370

370:                                              ; preds = %365, %332
  br label %371

371:                                              ; preds = %370, %325
  %372 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %374 = call i32 @ff_mov_write_packet(%struct.TYPE_21__* %372, %struct.TYPE_20__* %373)
  store i32 %374, i32* %3, align 4
  br label %375

375:                                              ; preds = %371, %235, %165, %37
  %376 = load i32, i32* %3, align 4
  ret i32 %376
}

declare dso_local i32 @check_pkt(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i8* @av_mallocz(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @mov_auto_flush_fragment(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ff_mov_write_packet(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
