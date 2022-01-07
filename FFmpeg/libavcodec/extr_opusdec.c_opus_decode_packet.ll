; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusdec.c_opus_decode_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusdec.c_opus_decode_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, float**, i32*, i32*, i32, %struct.TYPE_16__*, i64, %struct.TYPE_20__*, i32*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32 (float*, float*, i32, i32)* }
%struct.TYPE_20__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_18__, i8*, i64, i32** }
%struct.TYPE_18__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_22__ = type { i32, float***, i32* }

@INT_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error parsing the packet header.\0A\00", align 1
@AVERROR_BUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Mismatching coded sample count in substream %d.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i8*, i32*, %struct.TYPE_21__*)* @opus_decode_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opus_decode_packet(%struct.TYPE_23__* %0, i8* %1, i32* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca %struct.TYPE_18__*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca float**, align 8
  %23 = alloca i32, align 4
  %24 = alloca [32 x float], align 16
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_17__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca [2 x float*], align 16
  %29 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %10, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %11, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %12, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %41 = load i32, i32* @INT_MAX, align 4
  store i32 %41, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %42

42:                                               ; preds = %78, %4
  %43 = load i32, i32* %17, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %42
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 9
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i64 %53
  store %struct.TYPE_17__* %54, %struct.TYPE_17__** %19, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 3
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = load i32**, i32*** %60, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 0
  store i32* null, i32** %62, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 8
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @av_audio_fifo_size(i32 %73)
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %66, %75
  %77 = call i32 @FFMAX(i32 %63, i64 %76)
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %48
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  br label %42

81:                                               ; preds = %42
  %82 = load i32*, i32** %12, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %125

84:                                               ; preds = %81
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 9
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %20, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sgt i32 %95, 1
  %97 = zext i1 %96 to i32
  %98 = call i32 @ff_opus_parse_packet(%struct.TYPE_18__* %90, i32* %91, i32 %92, i32 %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %84
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %103 = load i32, i32* @AV_LOG_ERROR, align 4
  %104 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %102, i32 %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* %18, align 4
  store i32 %105, i32* %5, align 4
  br label %679

106:                                              ; preds = %84
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %109, %112
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %14, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @get_silk_samplerate(i32 %118)
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 9
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  store i8* %119, i8** %124, align 8
  br label %125

125:                                              ; preds = %106, %81
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %126, %127
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %125
  %136 = load i32*, i32** %8, align 8
  store i32 0, i32* %136, align 4
  store i32 0, i32* %5, align 4
  br label %679

137:                                              ; preds = %125
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %140 = call i32 @ff_get_buffer(%struct.TYPE_23__* %138, %struct.TYPE_22__* %139, i32 0)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* %18, align 4
  store i32 %144, i32* %5, align 4
  br label %679

145:                                              ; preds = %137
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load float**, float*** %149, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = mul nsw i32 %153, 2
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 @memset(float** %150, i32 0, i32 %157)
  store i32 0, i32* %17, align 4
  br label %159

159:                                              ; preds = %199, %145
  %160 = load i32, i32* %17, align 4
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %202

165:                                              ; preds = %159
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 7
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %167, align 8
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i64 %170
  store %struct.TYPE_20__* %171, %struct.TYPE_20__** %21, align 8
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %198, label %176

176:                                              ; preds = %165
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 1
  %179 = load float***, float**** %178, align 8
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float**, float*** %179, i64 %181
  %183 = load float**, float*** %182, align 8
  %184 = bitcast float** %183 to float*
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 1
  %187 = load float**, float*** %186, align 8
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = mul nsw i32 2, %190
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %191, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float*, float** %187, i64 %196
  store float* %184, float** %197, align 8
  br label %198

198:                                              ; preds = %176, %165
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %17, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %17, align 4
  br label %159

202:                                              ; preds = %159
  store i32 0, i32* %17, align 4
  br label %203

203:                                              ; preds = %328, %202
  %204 = load i32, i32* %17, align 4
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %209, label %331

209:                                              ; preds = %203
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 1
  %212 = load float**, float*** %211, align 8
  %213 = load i32, i32* %17, align 4
  %214 = mul nsw i32 2, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float*, float** %212, i64 %215
  store float** %216, float*** %22, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 8
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %17, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @av_audio_fifo_size(i32 %223)
  store i32 %224, i32* %23, align 4
  %225 = load float**, float*** %22, align 8
  %226 = getelementptr inbounds float*, float** %225, i64 0
  %227 = load float*, float** %226, align 8
  %228 = icmp ne float* %227, null
  %229 = xor i1 %228, true
  %230 = zext i1 %229 to i32
  %231 = load float**, float*** %22, align 8
  %232 = getelementptr inbounds float*, float** %231, i64 1
  %233 = load float*, float** %232, align 8
  %234 = icmp ne float* %233, null
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  %237 = shl i32 %236, 1
  %238 = or i32 %230, %237
  store i32 %238, i32* %25, align 4
  %239 = load float**, float*** %22, align 8
  %240 = getelementptr inbounds float*, float** %239, i64 0
  %241 = load float*, float** %240, align 8
  %242 = icmp ne float* %241, null
  br i1 %242, label %247, label %243

243:                                              ; preds = %209
  %244 = getelementptr inbounds [32 x float], [32 x float]* %24, i64 0, i64 0
  %245 = load float**, float*** %22, align 8
  %246 = getelementptr inbounds float*, float** %245, i64 0
  store float* %244, float** %246, align 8
  br label %247

247:                                              ; preds = %243, %209
  %248 = load float**, float*** %22, align 8
  %249 = getelementptr inbounds float*, float** %248, i64 1
  %250 = load float*, float** %249, align 8
  %251 = icmp ne float* %250, null
  br i1 %251, label %256, label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds [32 x float], [32 x float]* %24, i64 0, i64 0
  %254 = load float**, float*** %22, align 8
  %255 = getelementptr inbounds float*, float** %254, i64 1
  store float* %253, float** %255, align 8
  br label %256

256:                                              ; preds = %252, %247
  %257 = load i32, i32* %25, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %256
  %260 = load i32, i32* %23, align 4
  %261 = getelementptr inbounds [32 x float], [32 x float]* %24, i64 0, i64 0
  %262 = call i32 @FF_ARRAY_ELEMS(float* %261)
  %263 = icmp sgt i32 %260, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %265, i32* %5, align 4
  br label %679

266:                                              ; preds = %259, %256
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 8
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %17, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load float**, float*** %22, align 8
  %275 = bitcast float** %274 to i8**
  %276 = load i32, i32* %23, align 4
  %277 = call i32 @av_audio_fifo_read(i32 %273, i8** %275, i32 %276)
  store i32 %277, i32* %18, align 4
  %278 = load i32, i32* %18, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %266
  %281 = load i32, i32* %18, align 4
  store i32 %281, i32* %5, align 4
  br label %679

282:                                              ; preds = %266
  %283 = load i32, i32* %25, align 4
  %284 = and i32 %283, 1
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = load float**, float*** %22, align 8
  %288 = getelementptr inbounds float*, float** %287, i64 0
  store float* null, float** %288, align 8
  br label %296

289:                                              ; preds = %282
  %290 = load i32, i32* %18, align 4
  %291 = load float**, float*** %22, align 8
  %292 = getelementptr inbounds float*, float** %291, i64 0
  %293 = load float*, float** %292, align 8
  %294 = sext i32 %290 to i64
  %295 = getelementptr inbounds float, float* %293, i64 %294
  store float* %295, float** %292, align 8
  br label %296

296:                                              ; preds = %289, %286
  %297 = load i32, i32* %25, align 4
  %298 = and i32 %297, 2
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = load float**, float*** %22, align 8
  %302 = getelementptr inbounds float*, float** %301, i64 1
  store float* null, float** %302, align 8
  br label %310

303:                                              ; preds = %296
  %304 = load i32, i32* %18, align 4
  %305 = load float**, float*** %22, align 8
  %306 = getelementptr inbounds float*, float** %305, i64 1
  %307 = load float*, float** %306, align 8
  %308 = sext i32 %304 to i64
  %309 = getelementptr inbounds float, float* %307, i64 %308
  store float* %309, float** %306, align 8
  br label %310

310:                                              ; preds = %303, %300
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 2
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = sext i32 %315 to i64
  %317 = load i32, i32* %18, align 4
  %318 = sext i32 %317 to i64
  %319 = mul i64 %318, 4
  %320 = sub i64 %316, %319
  %321 = trunc i64 %320 to i32
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 2
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %17, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  store i32 %321, i32* %327, align 4
  br label %328

328:                                              ; preds = %310
  %329 = load i32, i32* %17, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %17, align 4
  br label %203

331:                                              ; preds = %203
  store i32 0, i32* %17, align 4
  br label %332

332:                                              ; preds = %453, %331
  %333 = load i32, i32* %17, align 4
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp slt i32 %333, %336
  br i1 %337, label %338, label %456

338:                                              ; preds = %332
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 9
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %340, align 8
  %342 = load i32, i32* %17, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i64 %343
  store %struct.TYPE_17__* %344, %struct.TYPE_17__** %26, align 8
  %345 = load i32, i32* %17, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %396

347:                                              ; preds = %338
  %348 = load i32*, i32** %12, align 8
  %349 = icmp ne i32* %348, null
  br i1 %349, label %350, label %396

350:                                              ; preds = %347
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 0
  %353 = load i32*, i32** %12, align 8
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* %17, align 4
  %356 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %357 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = sub nsw i32 %358, 1
  %360 = icmp ne i32 %355, %359
  %361 = zext i1 %360 to i32
  %362 = call i32 @ff_opus_parse_packet(%struct.TYPE_18__* %352, i32* %353, i32 %354, i32 %361)
  store i32 %362, i32* %18, align 4
  %363 = load i32, i32* %18, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %350
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %367 = load i32, i32* @AV_LOG_ERROR, align 4
  %368 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %366, i32 %367, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %369 = load i32, i32* %18, align 4
  store i32 %369, i32* %5, align 4
  br label %679

370:                                              ; preds = %350
  %371 = load i32, i32* %14, align 4
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %377 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = mul nsw i32 %375, %379
  %381 = icmp ne i32 %371, %380
  br i1 %381, label %382, label %388

382:                                              ; preds = %370
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %384 = load i32, i32* @AV_LOG_ERROR, align 4
  %385 = load i32, i32* %17, align 4
  %386 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %383, i32 %384, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %385)
  %387 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %387, i32* %5, align 4
  br label %679

388:                                              ; preds = %370
  %389 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %390 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 4
  %392 = load i32, i32* %391, align 4
  %393 = call i8* @get_silk_samplerate(i32 %392)
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i32 0, i32 1
  store i8* %393, i8** %395, align 8
  br label %396

396:                                              ; preds = %388, %347, %338
  %397 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %398 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %397, i32 0, i32 9
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %398, align 8
  %400 = load i32, i32* %17, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i64 %401
  %403 = load i32*, i32** %12, align 8
  %404 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %409 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %408, i32 0, i32 1
  %410 = load float**, float*** %409, align 8
  %411 = load i32, i32* %17, align 4
  %412 = mul nsw i32 2, %411
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds float*, float** %410, i64 %413
  %415 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 2
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %17, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* %14, align 4
  %423 = call i32 @opus_decode_subpacket(%struct.TYPE_17__* %402, i32* %403, i32 %407, float** %414, i32 %421, i32 %422)
  store i32 %423, i32* %18, align 4
  %424 = load i32, i32* %18, align 4
  %425 = icmp slt i32 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %396
  %427 = load i32, i32* %18, align 4
  store i32 %427, i32* %5, align 4
  br label %679

428:                                              ; preds = %396
  %429 = load i32, i32* %18, align 4
  %430 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %430, i32 0, i32 3
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %17, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  store i32 %429, i32* %435, align 4
  %436 = load i32, i32* %15, align 4
  %437 = load i32, i32* %18, align 4
  %438 = call i32 @FFMIN(i32 %436, i32 %437)
  store i32 %438, i32* %15, align 4
  %439 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %440 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %440, i32 0, i32 2
  %442 = load i64, i64* %441, align 8
  %443 = load i32*, i32** %12, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 %442
  store i32* %444, i32** %12, align 8
  %445 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %446 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 2
  %448 = load i64, i64* %447, align 8
  %449 = load i32, i32* %13, align 4
  %450 = sext i32 %449 to i64
  %451 = sub nsw i64 %450, %448
  %452 = trunc i64 %451 to i32
  store i32 %452, i32* %13, align 4
  br label %453

453:                                              ; preds = %428
  %454 = load i32, i32* %17, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %17, align 4
  br label %332

456:                                              ; preds = %332
  store i32 0, i32* %17, align 4
  br label %457

457:                                              ; preds = %563, %456
  %458 = load i32, i32* %17, align 4
  %459 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %460 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = icmp slt i32 %458, %461
  br i1 %462, label %463, label %566

463:                                              ; preds = %457
  %464 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %465 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %464, i32 0, i32 3
  %466 = load i32*, i32** %465, align 8
  %467 = load i32, i32* %17, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* %15, align 4
  %472 = sub nsw i32 %470, %471
  store i32 %472, i32* %27, align 4
  %473 = load i32, i32* %27, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %562

475:                                              ; preds = %463
  %476 = getelementptr inbounds [2 x float*], [2 x float*]* %28, i64 0, i64 0
  %477 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %478 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %477, i32 0, i32 1
  %479 = load float**, float*** %478, align 8
  %480 = load i32, i32* %17, align 4
  %481 = mul nsw i32 2, %480
  %482 = add nsw i32 %481, 0
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds float*, float** %479, i64 %483
  %485 = load float*, float** %484, align 8
  %486 = icmp ne float* %485, null
  br i1 %486, label %487, label %497

487:                                              ; preds = %475
  %488 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %489 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %488, i32 0, i32 1
  %490 = load float**, float*** %489, align 8
  %491 = load i32, i32* %17, align 4
  %492 = mul nsw i32 2, %491
  %493 = add nsw i32 %492, 0
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds float*, float** %490, i64 %494
  %496 = load float*, float** %495, align 8
  br label %504

497:                                              ; preds = %475
  %498 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %499 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %498, i32 0, i32 1
  %500 = load float***, float**** %499, align 8
  %501 = getelementptr inbounds float**, float*** %500, i64 0
  %502 = load float**, float*** %501, align 8
  %503 = bitcast float** %502 to float*
  br label %504

504:                                              ; preds = %497, %487
  %505 = phi float* [ %496, %487 ], [ %503, %497 ]
  store float* %505, float** %476, align 8
  %506 = getelementptr inbounds float*, float** %476, i64 1
  %507 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %508 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %507, i32 0, i32 1
  %509 = load float**, float*** %508, align 8
  %510 = load i32, i32* %17, align 4
  %511 = mul nsw i32 2, %510
  %512 = add nsw i32 %511, 1
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds float*, float** %509, i64 %513
  %515 = load float*, float** %514, align 8
  %516 = icmp ne float* %515, null
  br i1 %516, label %517, label %527

517:                                              ; preds = %504
  %518 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %519 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %518, i32 0, i32 1
  %520 = load float**, float*** %519, align 8
  %521 = load i32, i32* %17, align 4
  %522 = mul nsw i32 2, %521
  %523 = add nsw i32 %522, 1
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds float*, float** %520, i64 %524
  %526 = load float*, float** %525, align 8
  br label %534

527:                                              ; preds = %504
  %528 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %529 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %528, i32 0, i32 1
  %530 = load float***, float**** %529, align 8
  %531 = getelementptr inbounds float**, float*** %530, i64 0
  %532 = load float**, float*** %531, align 8
  %533 = bitcast float** %532 to float*
  br label %534

534:                                              ; preds = %527, %517
  %535 = phi float* [ %526, %517 ], [ %533, %527 ]
  store float* %535, float** %506, align 8
  %536 = load i32, i32* %15, align 4
  %537 = getelementptr inbounds [2 x float*], [2 x float*]* %28, i64 0, i64 0
  %538 = load float*, float** %537, align 16
  %539 = sext i32 %536 to i64
  %540 = getelementptr inbounds float, float* %538, i64 %539
  store float* %540, float** %537, align 16
  %541 = load i32, i32* %15, align 4
  %542 = getelementptr inbounds [2 x float*], [2 x float*]* %28, i64 0, i64 1
  %543 = load float*, float** %542, align 8
  %544 = sext i32 %541 to i64
  %545 = getelementptr inbounds float, float* %543, i64 %544
  store float* %545, float** %542, align 8
  %546 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %547 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %546, i32 0, i32 8
  %548 = load i32*, i32** %547, align 8
  %549 = load i32, i32* %17, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = getelementptr inbounds [2 x float*], [2 x float*]* %28, i64 0, i64 0
  %554 = bitcast float** %553 to i8**
  %555 = load i32, i32* %27, align 4
  %556 = call i32 @av_audio_fifo_write(i32 %552, i8** %554, i32 %555)
  store i32 %556, i32* %18, align 4
  %557 = load i32, i32* %18, align 4
  %558 = icmp slt i32 %557, 0
  br i1 %558, label %559, label %561

559:                                              ; preds = %534
  %560 = load i32, i32* %18, align 4
  store i32 %560, i32* %5, align 4
  br label %679

561:                                              ; preds = %534
  br label %562

562:                                              ; preds = %561, %463
  br label %563

563:                                              ; preds = %562
  %564 = load i32, i32* %17, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %17, align 4
  br label %457

566:                                              ; preds = %457
  store i32 0, i32* %17, align 4
  br label %567

567:                                              ; preds = %663, %566
  %568 = load i32, i32* %17, align 4
  %569 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %570 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = icmp slt i32 %568, %571
  br i1 %572, label %573, label %666

573:                                              ; preds = %567
  %574 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %575 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %574, i32 0, i32 7
  %576 = load %struct.TYPE_20__*, %struct.TYPE_20__** %575, align 8
  %577 = load i32, i32* %17, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %576, i64 %578
  store %struct.TYPE_20__* %579, %struct.TYPE_20__** %29, align 8
  %580 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %581 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %580, i32 0, i32 4
  %582 = load i64, i64* %581, align 8
  %583 = icmp ne i64 %582, 0
  br i1 %583, label %584, label %606

584:                                              ; preds = %573
  %585 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %586 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %585, i32 0, i32 1
  %587 = load float***, float**** %586, align 8
  %588 = load i32, i32* %17, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds float**, float*** %587, i64 %589
  %591 = load float**, float*** %590, align 8
  %592 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %593 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %592, i32 0, i32 1
  %594 = load float***, float**** %593, align 8
  %595 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %596 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %595, i32 0, i32 2
  %597 = load i64, i64* %596, align 8
  %598 = getelementptr inbounds float**, float*** %594, i64 %597
  %599 = load float**, float*** %598, align 8
  %600 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %601 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %600, i32 0, i32 2
  %602 = load i32*, i32** %601, align 8
  %603 = getelementptr inbounds i32, i32* %602, i64 0
  %604 = load i32, i32* %603, align 4
  %605 = call i32 @memcpy(float** %591, float** %599, i32 %604)
  br label %626

606:                                              ; preds = %573
  %607 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %608 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %607, i32 0, i32 3
  %609 = load i64, i64* %608, align 8
  %610 = icmp ne i64 %609, 0
  br i1 %610, label %611, label %625

611:                                              ; preds = %606
  %612 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %613 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %612, i32 0, i32 1
  %614 = load float***, float**** %613, align 8
  %615 = load i32, i32* %17, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds float**, float*** %614, i64 %616
  %618 = load float**, float*** %617, align 8
  %619 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %620 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %619, i32 0, i32 2
  %621 = load i32*, i32** %620, align 8
  %622 = getelementptr inbounds i32, i32* %621, i64 0
  %623 = load i32, i32* %622, align 4
  %624 = call i32 @memset(float** %618, i32 0, i32 %623)
  br label %625

625:                                              ; preds = %611, %606
  br label %626

626:                                              ; preds = %625, %584
  %627 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %628 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %627, i32 0, i32 6
  %629 = load i64, i64* %628, align 8
  %630 = icmp ne i64 %629, 0
  br i1 %630, label %631, label %662

631:                                              ; preds = %626
  %632 = load i32, i32* %15, align 4
  %633 = icmp sgt i32 %632, 0
  br i1 %633, label %634, label %662

634:                                              ; preds = %631
  %635 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %636 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %635, i32 0, i32 5
  %637 = load %struct.TYPE_16__*, %struct.TYPE_16__** %636, align 8
  %638 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %637, i32 0, i32 0
  %639 = load i32 (float*, float*, i32, i32)*, i32 (float*, float*, i32, i32)** %638, align 8
  %640 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %641 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %640, i32 0, i32 1
  %642 = load float***, float**** %641, align 8
  %643 = load i32, i32* %17, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds float**, float*** %642, i64 %644
  %646 = load float**, float*** %645, align 8
  %647 = bitcast float** %646 to float*
  %648 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %649 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %648, i32 0, i32 1
  %650 = load float***, float**** %649, align 8
  %651 = load i32, i32* %17, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds float**, float*** %650, i64 %652
  %654 = load float**, float*** %653, align 8
  %655 = bitcast float** %654 to float*
  %656 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %657 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %656, i32 0, i32 4
  %658 = load i32, i32* %657, align 8
  %659 = load i32, i32* %15, align 4
  %660 = call i32 @FFALIGN(i32 %659, i32 8)
  %661 = call i32 %639(float* %647, float* %655, i32 %658, i32 %660)
  br label %662

662:                                              ; preds = %634, %631, %626
  br label %663

663:                                              ; preds = %662
  %664 = load i32, i32* %17, align 4
  %665 = add nsw i32 %664, 1
  store i32 %665, i32* %17, align 4
  br label %567

666:                                              ; preds = %567
  %667 = load i32, i32* %15, align 4
  %668 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %669 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %668, i32 0, i32 0
  store i32 %667, i32* %669, align 8
  %670 = load i32, i32* %15, align 4
  %671 = icmp ne i32 %670, 0
  %672 = xor i1 %671, true
  %673 = xor i1 %672, true
  %674 = zext i1 %673 to i32
  %675 = load i32*, i32** %8, align 8
  store i32 %674, i32* %675, align 4
  %676 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %677 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %676, i32 0, i32 0
  %678 = load i32, i32* %677, align 8
  store i32 %678, i32* %5, align 4
  br label %679

679:                                              ; preds = %666, %559, %426, %382, %365, %280, %264, %143, %135, %101
  %680 = load i32, i32* %5, align 4
  ret i32 %680
}

declare dso_local i32 @FFMAX(i32, i64) #1

declare dso_local i32 @av_audio_fifo_size(i32) #1

declare dso_local i32 @ff_opus_parse_packet(%struct.TYPE_18__*, i32*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*, ...) #1

declare dso_local i8* @get_silk_samplerate(i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @memset(float**, i32, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(float*) #1

declare dso_local i32 @av_audio_fifo_read(i32, i8**, i32) #1

declare dso_local i32 @opus_decode_subpacket(%struct.TYPE_17__*, i32*, i32, float**, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_audio_fifo_write(i32, i8**, i32) #1

declare dso_local i32 @memcpy(float**, float**, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
