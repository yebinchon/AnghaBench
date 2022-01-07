; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_resample.c_ff_audio_resample.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_resample.c_ff_audio_resample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i64*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error reallocating resampling buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"error reallocating output\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"error during resampling\0A\00", align 1
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"resampled %d in + %d leftover to %d out + %d leftover\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_audio_resample(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br label %35

35:                                               ; preds = %30, %25, %3
  %36 = phi i1 [ false, %25 ], [ false, %3 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = icmp ne %struct.TYPE_14__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %43, %40 ], [ 0, %44 ]
  store i32 %46, i32* %9, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %10, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = icmp ne %struct.TYPE_14__* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %45
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ff_audio_data_combine(%struct.TYPE_14__* %57, i32 %58, %struct.TYPE_14__* %59, i32 0, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %4, align 4
  br label %454

66:                                               ; preds = %54
  br label %75

67:                                               ; preds = %45
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp sle i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %454

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %66
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %194, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 9
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @av_get_bytes_per_sample(i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %88 = icmp ne %struct.TYPE_14__* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %80
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 2, %97
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %454

101:                                              ; preds = %89, %80
  store i32 0, i32* %16, align 4
  br label %102

102:                                              ; preds = %188, %101
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %191

108:                                              ; preds = %102
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %184, %108
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %110, %115
  br i1 %116, label %117, label %187

117:                                              ; preds = %109
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 2, %125
  %127 = load i32, i32* %16, align 4
  %128 = sub nsw i32 %126, %127
  %129 = icmp sgt i32 %122, %128
  br i1 %129, label %130, label %166

130:                                              ; preds = %117
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 3
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %16, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %139, %143
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 3
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 2, %157
  %159 = load i32, i32* %16, align 4
  %160 = sub nsw i32 %158, %159
  %161 = mul nsw i32 %154, %160
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %153, %162
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @memcpy(i64 %144, i64 %163, i32 %164)
  br label %183

166:                                              ; preds = %117
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 3
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %16, align 4
  %178 = mul nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %175, %179
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @memset(i64 %180, i32 0, i32 %181)
  br label %183

183:                                              ; preds = %166, %130
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %109

187:                                              ; preds = %109
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %16, align 4
  br label %102

191:                                              ; preds = %102
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 4
  store i32 1, i32* %193, align 4
  br label %194

194:                                              ; preds = %191, %75
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %196 = icmp ne %struct.TYPE_14__* %195, null
  br i1 %196, label %330, label %197

197:                                              ; preds = %194
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %330, label %202

202:                                              ; preds = %197
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 9
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @av_get_bytes_per_sample(i32 %207)
  store i32 %208, i32* %17, align 4
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @FFMAX(i32 %212, i32 %213)
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %214, %217
  %219 = call i32 @ff_audio_data_realloc(%struct.TYPE_14__* %211, i32 %218)
  store i32 %219, i32* %13, align 4
  %220 = load i32, i32* %13, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %202
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 9
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = load i32, i32* @AV_LOG_ERROR, align 4
  %227 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %225, i32 %226, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = call i32 @AVERROR(i32 %228)
  store i32 %229, i32* %4, align 4
  br label %454

230:                                              ; preds = %202
  store i32 0, i32* %18, align 4
  br label %231

231:                                              ; preds = %310, %230
  %232 = load i32, i32* %18, align 4
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %313

237:                                              ; preds = %231
  store i32 0, i32* %8, align 4
  br label %238

238:                                              ; preds = %306, %237
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp slt i32 %239, %244
  br i1 %245, label %246, label %309

246:                                              ; preds = %238
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* %18, align 4
  %249 = icmp sgt i32 %247, %248
  br i1 %249, label %250, label %286

250:                                              ; preds = %246
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 3
  %255 = load i64*, i64** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %255, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = load i32, i32* %17, align 4
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* %18, align 4
  %263 = add nsw i32 %261, %262
  %264 = mul nsw i32 %260, %263
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %259, %265
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 3
  %271 = load i64*, i64** %270, align 8
  %272 = load i32, i32* %8, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* %17, align 4
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* %18, align 4
  %279 = sub nsw i32 %277, %278
  %280 = sub nsw i32 %279, 1
  %281 = mul nsw i32 %276, %280
  %282 = sext i32 %281 to i64
  %283 = add nsw i64 %275, %282
  %284 = load i32, i32* %17, align 4
  %285 = call i32 @memcpy(i64 %266, i64 %283, i32 %284)
  br label %305

286:                                              ; preds = %246
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 8
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 3
  %291 = load i64*, i64** %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i64, i64* %291, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* %17, align 4
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* %18, align 4
  %299 = add nsw i32 %297, %298
  %300 = mul nsw i32 %296, %299
  %301 = sext i32 %300 to i64
  %302 = add nsw i64 %295, %301
  %303 = load i32, i32* %17, align 4
  %304 = call i32 @memset(i64 %302, i32 0, i32 %303)
  br label %305

305:                                              ; preds = %286, %250
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %8, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %8, align 4
  br label %238

309:                                              ; preds = %238
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %18, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %18, align 4
  br label %231

313:                                              ; preds = %231
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 8
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, %316
  store i32 %322, i32* %320, align 8
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 3
  store i32 %325, i32* %327, align 8
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 6
  store i32 1, i32* %329, align 4
  br label %330

330:                                              ; preds = %313, %197, %194
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 8
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %363, label %335

335:                                              ; preds = %330
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 4
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %363

340:                                              ; preds = %335
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 8
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @INT_MAX, align 4
  %348 = load i32, i32* %14, align 4
  %349 = call i32 @resample(%struct.TYPE_13__* %341, i8* null, i8* null, i32* null, i32 %346, i32 %347, i32 0, i32 %348)
  store i32 %349, i32* %12, align 4
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %351 = load i32, i32* %12, align 4
  %352 = call i32 @ff_audio_data_realloc(%struct.TYPE_14__* %350, i32 %351)
  store i32 %352, i32* %13, align 4
  %353 = load i32, i32* %13, align 4
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %362

355:                                              ; preds = %340
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 9
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %357, align 8
  %359 = load i32, i32* @AV_LOG_ERROR, align 4
  %360 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %358, i32 %359, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %361 = load i32, i32* %13, align 4
  store i32 %361, i32* %4, align 4
  br label %454

362:                                              ; preds = %340
  br label %363

363:                                              ; preds = %362, %335, %330
  store i32 0, i32* %8, align 4
  br label %364

364:                                              ; preds = %411, %363
  %365 = load i32, i32* %8, align 4
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 8
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = icmp slt i32 %365, %370
  br i1 %371, label %372, label %414

372:                                              ; preds = %364
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 3
  %376 = load i64*, i64** %375, align 8
  %377 = load i32, i32* %8, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i64, i64* %376, i64 %378
  %380 = load i64, i64* %379, align 8
  %381 = inttoptr i64 %380 to i8*
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 8
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 3
  %386 = load i64*, i64** %385, align 8
  %387 = load i32, i32* %8, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i64, i64* %386, i64 %388
  %390 = load i64, i64* %389, align 8
  %391 = inttoptr i64 %390 to i8*
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 8
  %394 = load %struct.TYPE_14__*, %struct.TYPE_14__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* %8, align 4
  %401 = add nsw i32 %400, 1
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 8
  %404 = load %struct.TYPE_14__*, %struct.TYPE_14__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = icmp eq i32 %401, %406
  %408 = zext i1 %407 to i32
  %409 = load i32, i32* %14, align 4
  %410 = call i32 @resample(%struct.TYPE_13__* %373, i8* %381, i8* %391, i32* %11, i32 %396, i32 %399, i32 %408, i32 %409)
  store i32 %410, i32* %12, align 4
  br label %411

411:                                              ; preds = %372
  %412 = load i32, i32* %8, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %8, align 4
  br label %364

414:                                              ; preds = %364
  %415 = load i32, i32* %12, align 4
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %417, label %424

417:                                              ; preds = %414
  %418 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i32 0, i32 9
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %419, align 8
  %421 = load i32, i32* @AV_LOG_ERROR, align 4
  %422 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %420, i32 %421, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %423 = load i32, i32* %12, align 4
  store i32 %423, i32* %4, align 4
  br label %454

424:                                              ; preds = %414
  %425 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %425, i32 0, i32 8
  %427 = load %struct.TYPE_14__*, %struct.TYPE_14__** %426, align 8
  %428 = load i32, i32* %11, align 4
  %429 = call i32 @ff_audio_data_drain(%struct.TYPE_14__* %427, i32 %428)
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 7
  %432 = load i32, i32* %431, align 8
  %433 = load i32, i32* %11, align 4
  %434 = sub nsw i32 %432, %433
  %435 = call i32 @FFMAX(i32 %434, i32 0)
  %436 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %436, i32 0, i32 7
  store i32 %435, i32* %437, align 8
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %438, i32 0, i32 9
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** %439, align 8
  %441 = load i32, i32* @AV_LOG_TRACE, align 4
  %442 = load i32, i32* %9, align 4
  %443 = load i32, i32* %10, align 4
  %444 = load i32, i32* %12, align 4
  %445 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %445, i32 0, i32 8
  %447 = load %struct.TYPE_14__*, %struct.TYPE_14__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %440, i32 %441, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %442, i32 %443, i32 %444, i32 %449)
  %451 = load i32, i32* %12, align 4
  %452 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %452, i32 0, i32 0
  store i32 %451, i32* %453, align 8
  store i32 0, i32* %4, align 4
  br label %454

454:                                              ; preds = %424, %417, %355, %222, %100, %73, %64
  %455 = load i32, i32* %4, align 4
  ret i32 %455
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_audio_data_combine(%struct.TYPE_14__*, i32, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @ff_audio_data_realloc(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @resample(%struct.TYPE_13__*, i8*, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ff_audio_data_drain(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
