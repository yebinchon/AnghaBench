; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgv.c_tgv_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgv.c_tgv_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32*, i32*, %struct.TYPE_16__*, %struct.TYPE_21__* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32, i32*, i32, i64* }

@EA_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@kVGT_TAG = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"truncated header\0A\00", align 1
@AVPALETTE_COUNT = common dso_local global i32 0, align 4
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"truncated intra frame\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"inter frame without corresponding intra frame\0A\00", align 1
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"truncated inter frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i8*, i32*, %struct.TYPE_18__*)* @tgv_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgv_decode_frame(%struct.TYPE_20__* %0, i8* %1, i32* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %12, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %13, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %14, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = ptrtoint i32* %35 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = load i32, i32* @EA_PREAMBLE_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %4
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %5, align 4
  br label %333

46:                                               ; preds = %4
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i32 @AV_RL32(i32* %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* @EA_PREAMBLE_SIZE, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %10, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @kVGT_TAG, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %175

57:                                               ; preds = %46
  %58 = load i32*, i32** %13, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = ptrtoint i32* %58 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = icmp slt i64 %63, 12
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %67 = load i32, i32* @AV_LOG_WARNING, align 4
  %68 = call i32 @av_log(%struct.TYPE_20__* %66, i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %69, i32* %5, align 4
  br label %333

70:                                               ; preds = %57
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = call i8* @AV_RL16(i32* %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = call i8* @AV_RL16(i32* %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 5
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %87, %90
  br i1 %91, label %102, label %92

92:                                               ; preds = %70
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %92, %70
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = call i32 @av_freep(i32** %104)
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = call i32 @av_frame_unref(%struct.TYPE_16__* %108)
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ff_set_dimensions(%struct.TYPE_21__* %112, i32 %115, i32 %118)
  store i32 %119, i32* %16, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %102
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %5, align 4
  br label %333

123:                                              ; preds = %102
  br label %124

124:                                              ; preds = %123, %92
  %125 = load i32*, i32** %10, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 6
  %127 = call i8* @AV_RL16(i32* %126)
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %17, align 4
  %129 = load i32*, i32** %10, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 12
  store i32* %130, i32** %10, align 8
  store i32 0, i32* %18, align 4
  br label %131

131:                                              ; preds = %161, %124
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %131
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* @AVPALETTE_COUNT, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = load i32*, i32** %13, align 8
  %141 = load i32*, i32** %10, align 8
  %142 = ptrtoint i32* %140 to i64
  %143 = ptrtoint i32* %141 to i64
  %144 = sub i64 %142, %143
  %145 = sdiv exact i64 %144, 4
  %146 = icmp sge i64 %145, 3
  br label %147

147:                                              ; preds = %139, %135, %131
  %148 = phi i1 [ false, %135 ], [ false, %131 ], [ %146, %139 ]
  br i1 %148, label %149, label %164

149:                                              ; preds = %147
  %150 = load i32*, i32** %10, align 8
  %151 = call i32 @AV_RB24(i32* %150)
  %152 = or i32 -16777216, %151
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %152, i32* %158, align 4
  %159 = load i32*, i32** %10, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  store i32* %160, i32** %10, align 8
  br label %161

161:                                              ; preds = %149
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %18, align 4
  br label %131

164:                                              ; preds = %147
  %165 = load i32*, i32** %13, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = ptrtoint i32* %165 to i64
  %168 = ptrtoint i32* %166 to i64
  %169 = sub i64 %167, %168
  %170 = sdiv exact i64 %169, 4
  %171 = icmp slt i64 %170, 5
  br i1 %171, label %172, label %174

172:                                              ; preds = %164
  %173 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %173, i32* %5, align 4
  br label %333

174:                                              ; preds = %164
  br label %175

175:                                              ; preds = %174, %46
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %178 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %179 = call i32 @ff_get_buffer(%struct.TYPE_20__* %176, %struct.TYPE_19__* %177, i32 %178)
  store i32 %179, i32* %16, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = load i32, i32* %16, align 4
  store i32 %182, i32* %5, align 4
  br label %333

183:                                              ; preds = %175
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 3
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* @AVPALETTE_SIZE, align 4
  %193 = call i32 @memcpy(i64 %188, i32* %191, i32 %192)
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* @kVGT_TAG, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %285

197:                                              ; preds = %183
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  store i32 1, i32* %199, align 8
  %200 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %222, label %207

207:                                              ; preds = %197
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %210, %213
  %215 = call i32* @av_mallocz(i32 %214)
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 2
  store i32* %215, i32** %217, align 8
  %218 = icmp ne i32* %215, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %207
  %220 = load i32, i32* @ENOMEM, align 4
  %221 = call i32 @AVERROR(i32 %220)
  store i32 %221, i32* %5, align 4
  br label %333

222:                                              ; preds = %207, %197
  %223 = load i32*, i32** %10, align 8
  %224 = load i32*, i32** %13, align 8
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 5
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 5
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i64 @unpack(i32* %223, i32* %224, i32* %227, i32 %232, i32 %237)
  %239 = icmp slt i64 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %222
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %242 = load i32, i32* @AV_LOG_WARNING, align 4
  %243 = call i32 @av_log(%struct.TYPE_20__* %241, i32 %242, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %244 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %244, i32* %5, align 4
  br label %333

245:                                              ; preds = %222
  store i32 0, i32* %19, align 4
  br label %246

246:                                              ; preds = %281, %245
  %247 = load i32, i32* %19, align 4
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %284

252:                                              ; preds = %246
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 3
  %255 = load i64*, i64** %254, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 0
  %257 = load i64, i64* %256, align 8
  %258 = load i32, i32* %19, align 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  %263 = load i32, i32* %262, align 4
  %264 = mul nsw i32 %258, %263
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %257, %265
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 2
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %19, align 4
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = mul nsw i32 %270, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %269, i64 %275
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @memcpy(i64 %266, i32* %276, i32 %279)
  br label %281

281:                                              ; preds = %252
  %282 = load i32, i32* %19, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %19, align 4
  br label %246

284:                                              ; preds = %246
  br label %317

285:                                              ; preds = %183
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 4
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %285
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %296 = load i32, i32* @AV_LOG_WARNING, align 4
  %297 = call i32 @av_log(%struct.TYPE_20__* %295, i32 %296, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %298 = load i32, i32* %11, align 4
  store i32 %298, i32* %5, align 4
  br label %333

299:                                              ; preds = %285
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 0
  store i32 0, i32* %301, align 8
  %302 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 8
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %307 = load i32*, i32** %10, align 8
  %308 = load i32*, i32** %13, align 8
  %309 = call i64 @tgv_decode_inter(%struct.TYPE_17__* %305, %struct.TYPE_19__* %306, i32* %307, i32* %308)
  %310 = icmp slt i64 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %299
  %312 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %313 = load i32, i32* @AV_LOG_WARNING, align 4
  %314 = call i32 @av_log(%struct.TYPE_20__* %312, i32 %313, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %315 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %315, i32* %5, align 4
  br label %333

316:                                              ; preds = %299
  br label %317

317:                                              ; preds = %316, %284
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 4
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %319, align 8
  %321 = call i32 @av_frame_unref(%struct.TYPE_16__* %320)
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 4
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %323, align 8
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %326 = call i32 @av_frame_ref(%struct.TYPE_16__* %324, %struct.TYPE_19__* %325)
  store i32 %326, i32* %16, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %317
  %329 = load i32, i32* %16, align 4
  store i32 %329, i32* %5, align 4
  br label %333

330:                                              ; preds = %317
  %331 = load i32*, i32** %8, align 8
  store i32 1, i32* %331, align 4
  %332 = load i32, i32* %11, align 4
  store i32 %332, i32* %5, align 4
  br label %333

333:                                              ; preds = %330, %328, %311, %294, %240, %219, %181, %172, %121, %65, %44
  %334 = load i32, i32* %5, align 4
  ret i32 %334
}

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i8* @AV_RL16(i32*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_16__*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @unpack(i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @tgv_decode_inter(%struct.TYPE_17__*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @av_frame_ref(%struct.TYPE_16__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
