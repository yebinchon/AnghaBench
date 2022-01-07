; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_amix.c_output_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_amix.c_output_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, i32, i64, i32, i32*, %struct.TYPE_14__*, i64, i32*, i32 }
%struct.TYPE_14__ = type { i32 (double*, double*, i32, i32)*, i32 (float*, float*, i32, i32)* }
%struct.TYPE_16__ = type { i64, i64, i64* }

@INPUT_ON = common dso_local global i32 0, align 4
@INPUT_EOF = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_FLT = common dso_local global i64 0, align 8
@AV_SAMPLE_FMT_FLTP = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @output_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_frame(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %4, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %5, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @INPUT_ON, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %82

28:                                               ; preds = %1
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @frame_list_next_frame_size(i32 %31)
  store i32 %32, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %33

33:                                               ; preds = %78, %28
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %33
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @INPUT_ON, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %39
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 7
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @av_audio_fifo_size(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %50
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @INPUT_EOF, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %343

74:                                               ; preds = %62
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %74, %50
  br label %77

77:                                               ; preds = %76, %39
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %33

81:                                               ; preds = %33
  br label %129

82:                                               ; preds = %1
  %83 = load i32, i32* @INT_MAX, align 4
  store i32 %83, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %84

84:                                               ; preds = %114, %82
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %84
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @INPUT_ON, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %90
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 7
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @av_audio_fifo_size(i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @FFMIN(i32 %110, i32 %111)
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %101, %90
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %84

117:                                              ; preds = %84
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @INT_MAX, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %123 = load i32, i32* @AVERROR_EOF, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @ff_outlink_set_status(%struct.TYPE_17__* %122, i32 %123, i64 %126)
  store i32 0, i32* %2, align 4
  br label %343

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %81
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @frame_list_next_pts(i32 %132)
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @frame_list_remove_samples(i32 %138, i32 %139)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @calculate_scales(%struct.TYPE_15__* %141, i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %129
  store i32 0, i32* %2, align 4
  br label %343

147:                                              ; preds = %129
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call %struct.TYPE_16__* @ff_get_audio_buffer(%struct.TYPE_17__* %148, i32 %149)
  store %struct.TYPE_16__* %150, %struct.TYPE_16__** %6, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %152 = icmp ne %struct.TYPE_16__* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = call i32 @AVERROR(i32 %154)
  store i32 %155, i32* %2, align 4
  br label %343

156:                                              ; preds = %147
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %158 = load i32, i32* %8, align 4
  %159 = call %struct.TYPE_16__* @ff_get_audio_buffer(%struct.TYPE_17__* %157, i32 %158)
  store %struct.TYPE_16__* %159, %struct.TYPE_16__** %7, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %161 = icmp ne %struct.TYPE_16__* %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = call i32 @av_frame_free(%struct.TYPE_16__** %6)
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = call i32 @AVERROR(i32 %164)
  store i32 %165, i32* %2, align 4
  br label %343

166:                                              ; preds = %156
  store i32 0, i32* %10, align 4
  br label %167

167:                                              ; preds = %317, %166
  %168 = load i32, i32* %10, align 4
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %320

173:                                              ; preds = %167
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @INPUT_ON, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %316

184:                                              ; preds = %173
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 7
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 2
  %194 = load i64*, i64** %193, align 8
  %195 = bitcast i64* %194 to i8**
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @av_audio_fifo_read(i32 %191, i8** %195, i32 %196)
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %184
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  br label %207

206:                                              ; preds = %184
  br label %207

207:                                              ; preds = %206, %202
  %208 = phi i32 [ %205, %202 ], [ 1, %206 ]
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 6
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %207
  br label %219

215:                                              ; preds = %207
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  br label %219

219:                                              ; preds = %215, %214
  %220 = phi i32 [ 1, %214 ], [ %218, %215 ]
  %221 = mul nsw i32 %209, %220
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @FFALIGN(i32 %222, i32 16)
  store i32 %223, i32* %12, align 4
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @AV_SAMPLE_FMT_FLT, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %235, label %229

229:                                              ; preds = %219
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @AV_SAMPLE_FMT_FLTP, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %275

235:                                              ; preds = %229, %219
  store i32 0, i32* %13, align 4
  br label %236

236:                                              ; preds = %271, %235
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %274

240:                                              ; preds = %236
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 5
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 1
  %245 = load i32 (float*, float*, i32, i32)*, i32 (float*, float*, i32, i32)** %244, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 2
  %248 = load i64*, i64** %247, align 8
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = inttoptr i64 %252 to float*
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 2
  %256 = load i64*, i64** %255, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %256, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = inttoptr i64 %260 to float*
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %10, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %12, align 4
  %270 = call i32 %245(float* %253, float* %261, i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %240
  %272 = load i32, i32* %13, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %13, align 4
  br label %236

274:                                              ; preds = %236
  br label %315

275:                                              ; preds = %229
  store i32 0, i32* %13, align 4
  br label %276

276:                                              ; preds = %311, %275
  %277 = load i32, i32* %13, align 4
  %278 = load i32, i32* %11, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %314

280:                                              ; preds = %276
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 5
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 0
  %285 = load i32 (double*, double*, i32, i32)*, i32 (double*, double*, i32, i32)** %284, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 2
  %288 = load i64*, i64** %287, align 8
  %289 = load i32, i32* %13, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64, i64* %288, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = inttoptr i64 %292 to double*
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 2
  %296 = load i64*, i64** %295, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64, i64* %296, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = inttoptr i64 %300 to double*
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 4
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %10, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %12, align 4
  %310 = call i32 %285(double* %293, double* %301, i32 %308, i32 %309)
  br label %311

311:                                              ; preds = %280
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %13, align 4
  br label %276

314:                                              ; preds = %276
  br label %315

315:                                              ; preds = %314, %274
  br label %316

316:                                              ; preds = %315, %173
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %10, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %10, align 4
  br label %167

320:                                              ; preds = %167
  %321 = call i32 @av_frame_free(%struct.TYPE_16__** %7)
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 1
  store i64 %324, i64* %326, align 8
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %339

332:                                              ; preds = %320
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 2
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %337, %334
  store i64 %338, i64* %336, align 8
  br label %339

339:                                              ; preds = %332, %320
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %342 = call i32 @ff_filter_frame(%struct.TYPE_17__* %340, %struct.TYPE_16__* %341)
  store i32 %342, i32* %2, align 4
  br label %343

343:                                              ; preds = %339, %162, %153, %146, %121, %73
  %344 = load i32, i32* %2, align 4
  ret i32 %344
}

declare dso_local i32 @frame_list_next_frame_size(i32) #1

declare dso_local i32 @av_audio_fifo_size(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_outlink_set_status(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i64 @frame_list_next_pts(i32) #1

declare dso_local i32 @frame_list_remove_samples(i32, i32) #1

declare dso_local i32 @calculate_scales(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_16__* @ff_get_audio_buffer(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_16__**) #1

declare dso_local i32 @av_audio_fifo_read(i32, i8**, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
