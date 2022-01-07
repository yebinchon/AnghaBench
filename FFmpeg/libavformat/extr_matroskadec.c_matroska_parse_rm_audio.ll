; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_parse_rm_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_parse_rm_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32* }

@AV_CODEC_ID_RA_288 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Corrupt int4 RM-style audio packet size\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_SIPR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Corrupt sipr RM-style audio packet size\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Corrupt generic RM-style audio packet size\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_17__*, i32*, i32, i32, i32)* @matroska_parse_rm_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroska_parse_rm_audio(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_18__, align 8
  %25 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %16, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %17, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %18, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %19, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %20, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %21, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %257, label %56

56:                                               ; preds = %7
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 6
  store i32 %63, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %56
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AV_CODEC_ID_RA_288, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %123

75:                                               ; preds = %67
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %19, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sdiv i32 %79, 2
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = call i32 @av_log(i32 %85, i32 %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %88, i32* %8, align 4
  br label %330

89:                                               ; preds = %75
  store i32 0, i32* %22, align 4
  br label %90

90:                                               ; preds = %119, %89
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %19, align 4
  %93 = sdiv i32 %92, 2
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %90
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %22, align 4
  %101 = mul nsw i32 %100, 2
  %102 = load i32, i32* %21, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %99, i64 %104
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %18, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %18, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @memcpy(i32* %110, i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %95
  %120 = load i32, i32* %22, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %22, align 4
  br label %90

122:                                              ; preds = %90
  br label %220

123:                                              ; preds = %67
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @AV_CODEC_ID_SIPR, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %155

131:                                              ; preds = %123
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %21, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @AV_LOG_ERROR, align 4
  %140 = call i32 @av_log(i32 %138, i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %141, i32* %8, align 4
  br label %330

142:                                              ; preds = %131
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 7
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %21, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* %21, align 4
  %154 = call i32 @memcpy(i32* %151, i32* %152, i32 %153)
  br label %219

155:                                              ; preds = %123
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %21, align 4
  %159 = mul nsw i32 %157, %158
  %160 = load i32, i32* %17, align 4
  %161 = sdiv i32 %159, %160
  %162 = icmp slt i32 %156, %161
  br i1 %162, label %171, label %163

163:                                              ; preds = %155
  %164 = load i32, i32* %19, align 4
  %165 = icmp sle i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %21, align 4
  %168 = load i32, i32* %17, align 4
  %169 = srem i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166, %163, %155
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @AV_LOG_ERROR, align 4
  %176 = call i32 @av_log(i32 %174, i32 %175, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %177 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %177, i32* %8, align 4
  br label %330

178:                                              ; preds = %166
  store i32 0, i32* %22, align 4
  br label %179

179:                                              ; preds = %215, %178
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %17, align 4
  %183 = sdiv i32 %181, %182
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %218

185:                                              ; preds = %179
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 7
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* %22, align 4
  %193 = mul nsw i32 %191, %192
  %194 = load i32, i32* %19, align 4
  %195 = add nsw i32 %194, 1
  %196 = sdiv i32 %195, 2
  %197 = load i32, i32* %20, align 4
  %198 = and i32 %197, 1
  %199 = mul nsw i32 %196, %198
  %200 = add nsw i32 %193, %199
  %201 = load i32, i32* %20, align 4
  %202 = ashr i32 %201, 1
  %203 = add nsw i32 %200, %202
  %204 = mul nsw i32 %190, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %189, i64 %205
  %207 = load i32*, i32** %12, align 8
  %208 = load i32, i32* %22, align 4
  %209 = load i32, i32* %17, align 4
  %210 = mul nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %207, i64 %211
  %213 = load i32, i32* %17, align 4
  %214 = call i32 @memcpy(i32* %206, i32* %212, i32 %213)
  br label %215

215:                                              ; preds = %185
  %216 = load i32, i32* %22, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %22, align 4
  br label %179

218:                                              ; preds = %179
  br label %219

219:                                              ; preds = %218, %142
  br label %220

220:                                              ; preds = %219, %122
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  %226 = load i32, i32* %19, align 4
  %227 = icmp sge i32 %225, %226
  br i1 %227, label %228, label %256

228:                                              ; preds = %220
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @AV_CODEC_ID_SIPR, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %244

236:                                              ; preds = %228
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 7
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %19, align 4
  %242 = load i32, i32* %21, align 4
  %243 = call i32 @ff_rm_reorder_sipr_data(i32* %240, i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %236, %228
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 3
  store i32 0, i32* %247, align 4
  %248 = load i32, i32* %19, align 4
  %249 = load i32, i32* %21, align 4
  %250 = mul nsw i32 %248, %249
  %251 = load i32, i32* %16, align 4
  %252 = sdiv i32 %250, %251
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 5
  store i32 %252, i32* %255, align 4
  br label %256

256:                                              ; preds = %244, %220
  br label %257

257:                                              ; preds = %256, %7
  br label %258

258:                                              ; preds = %328, %257
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %329

264:                                              ; preds = %258
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %25, align 8
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %266 = load i32, i32* %16, align 4
  %267 = call i32 @av_new_packet(%struct.TYPE_18__* %265, i32 %266)
  store i32 %267, i32* %23, align 4
  %268 = load i32, i32* %23, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %264
  %271 = load i32, i32* %23, align 4
  store i32 %271, i32* %8, align 4
  br label %330

272:                                              ; preds = %264
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 7
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %16, align 4
  %281 = load i32, i32* %19, align 4
  %282 = load i32, i32* %21, align 4
  %283 = mul nsw i32 %281, %282
  %284 = load i32, i32* %16, align 4
  %285 = sdiv i32 %283, %284
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %288, align 4
  %291 = sub nsw i32 %285, %289
  %292 = mul nsw i32 %280, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %279, i64 %293
  %295 = load i32, i32* %16, align 4
  %296 = call i32 @memcpy(i32* %275, i32* %294, i32 %295)
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 8
  %303 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 6
  store i32 %303, i32* %306, align 8
  %307 = load i32, i32* %15, align 4
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 1
  store i32 %307, i32* %309, align 4
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 0
  store i32 %312, i32* %314, align 8
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %320 = call i32 @ff_packet_list_put(i32* %316, i32* %318, %struct.TYPE_18__* %319, i32 0)
  store i32 %320, i32* %23, align 4
  %321 = load i32, i32* %23, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %272
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %325 = call i32 @av_packet_unref(%struct.TYPE_18__* %324)
  %326 = load i32, i32* @ENOMEM, align 4
  %327 = call i32 @AVERROR(i32 %326)
  store i32 %327, i32* %8, align 4
  br label %330

328:                                              ; preds = %272
  br label %258

329:                                              ; preds = %258
  store i32 0, i32* %8, align 4
  br label %330

330:                                              ; preds = %329, %323, %270, %171, %135, %82
  %331 = load i32, i32* %8, align 4
  ret i32 %331
}

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ff_rm_reorder_sipr_data(i32*, i32, i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ff_packet_list_put(i32*, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_18__*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
