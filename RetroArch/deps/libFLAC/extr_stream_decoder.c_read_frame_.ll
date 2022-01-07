; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_frame_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_frame_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32**, %struct.TYPE_19__, i64, i64, i64, i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i64, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64 }

@FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC = common dso_local global i64 0, align 8
@FLAC__FRAME_FOOTER_CRC_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_ERROR_STATUS_FRAME_CRC_MISMATCH = common dso_local global i32 0, align 4
@FLAC__FRAME_NUMBER_TYPE_SAMPLE_NUMBER = common dso_local global i64 0, align 8
@FLAC__STREAM_DECODER_WRITE_STATUS_CONTINUE = common dso_local global i64 0, align 8
@FLAC__STREAM_DECODER_ABORTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_frame_(%struct.TYPE_18__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @FLAC__CRC16_UPDATE(i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @FLAC__CRC16_UPDATE(i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @FLAC__bitreader_reset_read_crc16(i32 %38, i32 %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = call i32 @read_frame_header_(%struct.TYPE_18__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %592

45:                                               ; preds = %3
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %592

54:                                               ; preds = %45
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @allocate_output_(%struct.TYPE_18__* %55, i32 %62, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %592

73:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %171, %73
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ult i32 %75, %82
  br i1 %83, label %84, label %174

84:                                               ; preds = %74
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %14, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %151 [
    i32 131, label %99
    i32 130, label %100
    i32 128, label %117
    i32 129, label %134
  ]

99:                                               ; preds = %84
  br label %153

100:                                              ; preds = %84
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 2
  %109 = zext i1 %108 to i32
  %110 = call i32 @FLAC__ASSERT(i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load i32, i32* %14, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %113, %100
  br label %153

117:                                              ; preds = %84
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 2
  %126 = zext i1 %125 to i32
  %127 = call i32 @FLAC__ASSERT(i32 %126)
  %128 = load i32, i32* %8, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %117
  %131 = load i32, i32* %14, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %130, %117
  br label %153

134:                                              ; preds = %84
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i32
  %144 = call i32 @FLAC__ASSERT(i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %150

147:                                              ; preds = %134
  %148 = load i32, i32* %14, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %147, %134
  br label %153

151:                                              ; preds = %84
  %152 = call i32 @FLAC__ASSERT(i32 0)
  br label %153

153:                                              ; preds = %151, %150, %133, %116, %99
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @read_subframe_(%struct.TYPE_18__* %154, i32 %155, i32 %156, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %592

161:                                              ; preds = %153
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  store i32 1, i32* %4, align 4
  br label %592

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %8, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %74

174:                                              ; preds = %74
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %176 = call i32 @read_zero_padding_(%struct.TYPE_18__* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  store i32 0, i32* %4, align 4
  br label %592

179:                                              ; preds = %174
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  store i32 1, i32* %4, align 4
  br label %592

188:                                              ; preds = %179
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @FLAC__bitreader_get_read_crc16(i32 %193)
  store i32 %194, i32* %12, align 4
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @FLAC__FRAME_FOOTER_CRC_LEN, align 4
  %201 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %199, i32* %13, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %188
  store i32 0, i32* %4, align 4
  br label %592

204:                                              ; preds = %188
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %414

208:                                              ; preds = %204
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %413

211:                                              ; preds = %208
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  switch i32 %218, label %410 [
    i32 131, label %219
    i32 130, label %220
    i32 128, label %279
    i32 129, label %328
  ]

219:                                              ; preds = %211
  br label %412

220:                                              ; preds = %211
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, 2
  %229 = zext i1 %228 to i32
  %230 = call i32 @FLAC__ASSERT(i32 %229)
  store i32 0, i32* %9, align 4
  br label %231

231:                                              ; preds = %275, %220
  %232 = load i32, i32* %9, align 4
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ult i32 %232, %239
  br i1 %240, label %241, label %278

241:                                              ; preds = %231
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  %246 = load i32**, i32*** %245, align 8
  %247 = getelementptr inbounds i32*, i32** %246, i64 0
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %9, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  %257 = load i32**, i32*** %256, align 8
  %258 = getelementptr inbounds i32*, i32** %257, i64 1
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %252, %263
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 0
  %269 = load i32**, i32*** %268, align 8
  %270 = getelementptr inbounds i32*, i32** %269, i64 1
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  store i32 %264, i32* %274, align 4
  br label %275

275:                                              ; preds = %241
  %276 = load i32, i32* %9, align 4
  %277 = add i32 %276, 1
  store i32 %277, i32* %9, align 4
  br label %231

278:                                              ; preds = %231
  br label %412

279:                                              ; preds = %211
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %286, 2
  %288 = zext i1 %287 to i32
  %289 = call i32 @FLAC__ASSERT(i32 %288)
  store i32 0, i32* %9, align 4
  br label %290

290:                                              ; preds = %324, %279
  %291 = load i32, i32* %9, align 4
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp ult i32 %291, %298
  br i1 %299, label %300, label %327

300:                                              ; preds = %290
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 0
  %305 = load i32**, i32*** %304, align 8
  %306 = getelementptr inbounds i32*, i32** %305, i64 1
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 0
  %316 = load i32**, i32*** %315, align 8
  %317 = getelementptr inbounds i32*, i32** %316, i64 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %9, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, %311
  store i32 %323, i32* %321, align 4
  br label %324

324:                                              ; preds = %300
  %325 = load i32, i32* %9, align 4
  %326 = add i32 %325, 1
  store i32 %326, i32* %9, align 4
  br label %290

327:                                              ; preds = %290
  br label %412

328:                                              ; preds = %211
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp eq i32 %335, 2
  %337 = zext i1 %336 to i32
  %338 = call i32 @FLAC__ASSERT(i32 %337)
  store i32 0, i32* %9, align 4
  br label %339

339:                                              ; preds = %406, %328
  %340 = load i32, i32* %9, align 4
  %341 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = icmp ult i32 %340, %347
  br i1 %348, label %349, label %409

349:                                              ; preds = %339
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %352, i32 0, i32 0
  %354 = load i32**, i32*** %353, align 8
  %355 = getelementptr inbounds i32*, i32** %354, i64 0
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %9, align 4
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  store i32 %360, i32* %10, align 4
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 1
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 0
  %365 = load i32**, i32*** %364, align 8
  %366 = getelementptr inbounds i32*, i32** %365, i64 1
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* %9, align 4
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  store i32 %371, i32* %11, align 4
  %372 = load i32, i32* %10, align 4
  %373 = shl i32 %372, 1
  store i32 %373, i32* %10, align 4
  %374 = load i32, i32* %11, align 4
  %375 = and i32 %374, 1
  %376 = load i32, i32* %10, align 4
  %377 = or i32 %376, %375
  store i32 %377, i32* %10, align 4
  %378 = load i32, i32* %10, align 4
  %379 = load i32, i32* %11, align 4
  %380 = add nsw i32 %378, %379
  %381 = ashr i32 %380, 1
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 1
  %384 = load %struct.TYPE_17__*, %struct.TYPE_17__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 0
  %386 = load i32**, i32*** %385, align 8
  %387 = getelementptr inbounds i32*, i32** %386, i64 0
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* %9, align 4
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  store i32 %381, i32* %391, align 4
  %392 = load i32, i32* %10, align 4
  %393 = load i32, i32* %11, align 4
  %394 = sub nsw i32 %392, %393
  %395 = ashr i32 %394, 1
  %396 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %396, i32 0, i32 1
  %398 = load %struct.TYPE_17__*, %struct.TYPE_17__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 0
  %400 = load i32**, i32*** %399, align 8
  %401 = getelementptr inbounds i32*, i32** %400, i64 1
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %9, align 4
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  store i32 %395, i32* %405, align 4
  br label %406

406:                                              ; preds = %349
  %407 = load i32, i32* %9, align 4
  %408 = add i32 %407, 1
  store i32 %408, i32* %9, align 4
  br label %339

409:                                              ; preds = %339
  br label %412

410:                                              ; preds = %211
  %411 = call i32 @FLAC__ASSERT(i32 0)
  br label %412

412:                                              ; preds = %410, %409, %327, %278, %219
  br label %413

413:                                              ; preds = %412, %208
  br label %457

414:                                              ; preds = %204
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %416 = load i32, i32* @FLAC__STREAM_DECODER_ERROR_STATUS_FRAME_CRC_MISMATCH, align 4
  %417 = call i32 @send_error_to_client_(%struct.TYPE_18__* %415, i32 %416)
  %418 = load i32, i32* %7, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %456

420:                                              ; preds = %414
  store i32 0, i32* %8, align 4
  br label %421

421:                                              ; preds = %452, %420
  %422 = load i32, i32* %8, align 4
  %423 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %423, i32 0, i32 1
  %425 = load %struct.TYPE_17__*, %struct.TYPE_17__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = icmp ult i32 %422, %429
  br i1 %430, label %431, label %455

431:                                              ; preds = %421
  %432 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %432, i32 0, i32 1
  %434 = load %struct.TYPE_17__*, %struct.TYPE_17__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %434, i32 0, i32 0
  %436 = load i32**, i32*** %435, align 8
  %437 = load i32, i32* %8, align 4
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds i32*, i32** %436, i64 %438
  %440 = load i32*, i32** %439, align 8
  %441 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %441, i32 0, i32 1
  %443 = load %struct.TYPE_17__*, %struct.TYPE_17__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = sext i32 %447 to i64
  %449 = mul i64 4, %448
  %450 = trunc i64 %449 to i32
  %451 = call i32 @memset(i32* %440, i32 0, i32 %450)
  br label %452

452:                                              ; preds = %431
  %453 = load i32, i32* %8, align 4
  %454 = add i32 %453, 1
  store i32 %454, i32* %8, align 4
  br label %421

455:                                              ; preds = %421
  br label %456

456:                                              ; preds = %455, %414
  br label %457

457:                                              ; preds = %456, %413
  %458 = load i32*, i32** %6, align 8
  store i32 1, i32* %458, align 4
  %459 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %459, i32 0, i32 1
  %461 = load %struct.TYPE_17__*, %struct.TYPE_17__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %461, i32 0, i32 3
  %463 = load i64, i64* %462, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %475

465:                                              ; preds = %457
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %466, i32 0, i32 1
  %468 = load %struct.TYPE_17__*, %struct.TYPE_17__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %468, i32 0, i32 3
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %471, i32 0, i32 1
  %473 = load %struct.TYPE_17__*, %struct.TYPE_17__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %473, i32 0, i32 4
  store i64 %470, i64* %474, align 8
  br label %475

475:                                              ; preds = %465, %457
  %476 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %477 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %476, i32 0, i32 1
  %478 = load %struct.TYPE_17__*, %struct.TYPE_17__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %478, i32 0, i32 1
  %480 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %483, i32 0, i32 0
  %485 = load %struct.TYPE_15__*, %struct.TYPE_15__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %485, i32 0, i32 1
  store i32 %482, i32* %486, align 8
  %487 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %488 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %487, i32 0, i32 1
  %489 = load %struct.TYPE_17__*, %struct.TYPE_17__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %491, i32 0, i32 3
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %495 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %494, i32 0, i32 0
  %496 = load %struct.TYPE_15__*, %struct.TYPE_15__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %496, i32 0, i32 2
  store i32 %493, i32* %497, align 4
  %498 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %498, i32 0, i32 1
  %500 = load %struct.TYPE_17__*, %struct.TYPE_17__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %500, i32 0, i32 1
  %502 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %502, i32 0, i32 2
  %504 = load i32, i32* %503, align 8
  %505 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %506 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %505, i32 0, i32 0
  %507 = load %struct.TYPE_15__*, %struct.TYPE_15__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %507, i32 0, i32 3
  store i32 %504, i32* %508, align 8
  %509 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %510 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %509, i32 0, i32 1
  %511 = load %struct.TYPE_17__*, %struct.TYPE_17__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %513, i32 0, i32 6
  %515 = load i32, i32* %514, align 8
  %516 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %517 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %516, i32 0, i32 0
  %518 = load %struct.TYPE_15__*, %struct.TYPE_15__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %518, i32 0, i32 5
  store i32 %515, i32* %519, align 8
  %520 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %521 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %520, i32 0, i32 1
  %522 = load %struct.TYPE_17__*, %struct.TYPE_17__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %528 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %527, i32 0, i32 0
  %529 = load %struct.TYPE_15__*, %struct.TYPE_15__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %529, i32 0, i32 4
  store i32 %526, i32* %530, align 4
  %531 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %532 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %531, i32 0, i32 1
  %533 = load %struct.TYPE_17__*, %struct.TYPE_17__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %535, i32 0, i32 4
  %537 = load i64, i64* %536, align 8
  %538 = load i64, i64* @FLAC__FRAME_NUMBER_TYPE_SAMPLE_NUMBER, align 8
  %539 = icmp eq i64 %537, %538
  %540 = zext i1 %539 to i32
  %541 = call i32 @FLAC__ASSERT(i32 %540)
  %542 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %543 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %542, i32 0, i32 1
  %544 = load %struct.TYPE_17__*, %struct.TYPE_17__** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %546, i32 0, i32 5
  %548 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %547, i32 0, i32 0
  %549 = load i64, i64* %548, align 8
  %550 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %551 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %550, i32 0, i32 1
  %552 = load %struct.TYPE_17__*, %struct.TYPE_17__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = sext i32 %556 to i64
  %558 = add nsw i64 %549, %557
  %559 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %560 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %559, i32 0, i32 1
  %561 = load %struct.TYPE_17__*, %struct.TYPE_17__** %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %561, i32 0, i32 2
  store i64 %558, i64* %562, align 8
  %563 = load i32, i32* %7, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %586

565:                                              ; preds = %475
  %566 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %567 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %568 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %567, i32 0, i32 1
  %569 = load %struct.TYPE_17__*, %struct.TYPE_17__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %569, i32 0, i32 1
  %571 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %572 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %571, i32 0, i32 1
  %573 = load %struct.TYPE_17__*, %struct.TYPE_17__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %573, i32 0, i32 0
  %575 = load i32**, i32*** %574, align 8
  %576 = call i64 @write_audio_frame_to_client_(%struct.TYPE_18__* %566, %struct.TYPE_19__* %570, i32** %575)
  %577 = load i64, i64* @FLAC__STREAM_DECODER_WRITE_STATUS_CONTINUE, align 8
  %578 = icmp ne i64 %576, %577
  br i1 %578, label %579, label %585

579:                                              ; preds = %565
  %580 = load i64, i64* @FLAC__STREAM_DECODER_ABORTED, align 8
  %581 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %582 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %581, i32 0, i32 0
  %583 = load %struct.TYPE_15__*, %struct.TYPE_15__** %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %583, i32 0, i32 0
  store i64 %580, i64* %584, align 8
  store i32 0, i32* %4, align 4
  br label %592

585:                                              ; preds = %565
  br label %586

586:                                              ; preds = %585, %475
  %587 = load i64, i64* @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %588 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %589 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %588, i32 0, i32 0
  %590 = load %struct.TYPE_15__*, %struct.TYPE_15__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %590, i32 0, i32 0
  store i64 %587, i64* %591, align 8
  store i32 1, i32* %4, align 4
  br label %592

592:                                              ; preds = %586, %579, %203, %187, %178, %169, %160, %72, %53, %44
  %593 = load i32, i32* %4, align 4
  ret i32 %593
}

declare dso_local i32 @FLAC__CRC16_UPDATE(i32, i32) #1

declare dso_local i32 @FLAC__bitreader_reset_read_crc16(i32, i32) #1

declare dso_local i32 @read_frame_header_(%struct.TYPE_18__*) #1

declare dso_local i32 @allocate_output_(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @read_subframe_(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @read_zero_padding_(%struct.TYPE_18__*) #1

declare dso_local i32 @FLAC__bitreader_get_read_crc16(i32) #1

declare dso_local i32 @FLAC__bitreader_read_raw_uint32(i32, i32*, i32) #1

declare dso_local i32 @send_error_to_client_(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @write_audio_frame_to_client_(%struct.TYPE_18__*, %struct.TYPE_19__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
