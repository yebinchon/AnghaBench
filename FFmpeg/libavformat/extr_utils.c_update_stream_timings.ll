; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_update_stream_timings.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_update_stream_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i64, double, i64, %struct.TYPE_14__**, i64, %struct.TYPE_13__** }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_16__, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@INT64_MAX = common dso_local global i64 0, align 8
@INT64_MIN = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_DATA = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AV_ROUND_NEAR_INF = common dso_local global i32 0, align 4
@AV_ROUND_PASS_MINMAX = common dso_local global i32 0, align 4
@AV_TIME_BASE = common dso_local global i64 0, align 8
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Ignoring outlier non primary stream starttime %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Ignoring outlier non primary stream endtime %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Ignoring outlier non primary stream duration %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @update_stream_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_stream_timings(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %18 = load i64, i64* @INT64_MAX, align 8
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* @INT64_MAX, align 8
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* @INT64_MIN, align 8
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* @INT64_MIN, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* @INT64_MIN, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* @INT64_MIN, align 8
  store i64 %23, i64* %11, align 8
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %196, %1
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %199

30:                                               ; preds = %24
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 7
  %33 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %33, i64 %35
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %15, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %30
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AVMEDIA_TYPE_DATA, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %45, %30
  %54 = phi i1 [ true, %30 ], [ %52, %45 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %16, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %168

61:                                               ; preds = %53
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %168

67:                                               ; preds = %61
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @av_rescale_q(i64 %70, i64 %75, i32 %73)
  store i64 %76, i64* %4, align 8
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i64 @FFMIN(i64 %80, i64 %81)
  store i64 %82, i64* %5, align 8
  br label %87

83:                                               ; preds = %67
  %84 = load i64, i64* %3, align 8
  %85 = load i64, i64* %4, align 8
  %86 = call i64 @FFMIN(i64 %84, i64 %85)
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %94 = load i32, i32* @AV_ROUND_NEAR_INF, align 4
  %95 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %96 = or i32 %94, %95
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @av_rescale_q_rnd(i64 %90, i64 %98, i32 %93, i32 %96)
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %133

103:                                              ; preds = %87
  %104 = load i64, i64* %7, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @INT64_MAX, align 8
  %109 = load i64, i64* %7, align 8
  %110 = sub nsw i64 %108, %109
  %111 = icmp sle i64 %107, %110
  br i1 %111, label %118, label %133

112:                                              ; preds = %103
  %113 = load i64, i64* %4, align 8
  %114 = load i64, i64* @INT64_MIN, align 8
  %115 = load i64, i64* %7, align 8
  %116 = sub nsw i64 %114, %115
  %117 = icmp sge i64 %113, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %112, %106
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* %7, align 8
  %121 = add nsw i64 %120, %119
  store i64 %121, i64* %7, align 8
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call i64 @FFMAX(i64 %125, i64 %126)
  store i64 %127, i64* %8, align 8
  br label %132

128:                                              ; preds = %118
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i64 @FFMAX(i64 %129, i64 %130)
  store i64 %131, i64* %6, align 8
  br label %132

132:                                              ; preds = %128, %124
  br label %133

133:                                              ; preds = %132, %112, %106, %87
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  br label %134

134:                                              ; preds = %166, %133
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call %struct.TYPE_14__* @av_find_program_from_stream(%struct.TYPE_15__* %135, %struct.TYPE_14__* %136, i32 %137)
  store %struct.TYPE_14__* %138, %struct.TYPE_14__** %14, align 8
  %139 = icmp ne %struct.TYPE_14__* %138, null
  br i1 %139, label %140, label %167

140:                                              ; preds = %134
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %4, align 8
  %151 = icmp sgt i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146, %140
  %153 = load i64, i64* %4, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %152, %146
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %7, align 8
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load i64, i64* %7, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %162, %156
  br label %134

167:                                              ; preds = %134
  br label %168

168:                                              ; preds = %167, %61, %53
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %195

174:                                              ; preds = %168
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @av_rescale_q(i64 %177, i64 %182, i32 %180)
  store i64 %183, i64* %10, align 8
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %174
  %187 = load i64, i64* %11, align 8
  %188 = load i64, i64* %10, align 8
  %189 = call i64 @FFMAX(i64 %187, i64 %188)
  store i64 %189, i64* %11, align 8
  br label %194

190:                                              ; preds = %174
  %191 = load i64, i64* %9, align 8
  %192 = load i64, i64* %10, align 8
  %193 = call i64 @FFMAX(i64 %191, i64 %192)
  store i64 %193, i64* %9, align 8
  br label %194

194:                                              ; preds = %190, %186
  br label %195

195:                                              ; preds = %194, %168
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %13, align 4
  br label %24

199:                                              ; preds = %24
  %200 = load i64, i64* %3, align 8
  %201 = load i64, i64* @INT64_MAX, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %213, label %203

203:                                              ; preds = %199
  %204 = load i64, i64* %3, align 8
  %205 = load i64, i64* %5, align 8
  %206 = icmp sgt i64 %204, %205
  br i1 %206, label %207, label %215

207:                                              ; preds = %203
  %208 = load i64, i64* %3, align 8
  %209 = load i64, i64* %5, align 8
  %210 = sub nsw i64 %208, %209
  %211 = load i64, i64* @AV_TIME_BASE, align 8
  %212 = icmp slt i64 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %207, %199
  %214 = load i64, i64* %5, align 8
  store i64 %214, i64* %3, align 8
  br label %230

215:                                              ; preds = %207, %203
  %216 = load i64, i64* %3, align 8
  %217 = load i64, i64* %5, align 8
  %218 = icmp sgt i64 %216, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %215
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %221 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %222 = load i64, i64* %5, align 8
  %223 = sitofp i64 %222 to float
  %224 = load i64, i64* @AV_TIME_BASE, align 8
  %225 = sitofp i64 %224 to float
  %226 = fdiv float %223, %225
  %227 = fptosi float %226 to i64
  %228 = call i32 @av_log(%struct.TYPE_15__* %220, i32 %221, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %227)
  br label %229

229:                                              ; preds = %219, %215
  br label %230

230:                                              ; preds = %229, %213
  %231 = load i64, i64* %6, align 8
  %232 = load i64, i64* @INT64_MIN, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %244, label %234

234:                                              ; preds = %230
  %235 = load i64, i64* %6, align 8
  %236 = load i64, i64* %8, align 8
  %237 = icmp slt i64 %235, %236
  br i1 %237, label %238, label %246

238:                                              ; preds = %234
  %239 = load i64, i64* %8, align 8
  %240 = load i64, i64* %6, align 8
  %241 = sub nsw i64 %239, %240
  %242 = load i64, i64* @AV_TIME_BASE, align 8
  %243 = icmp slt i64 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %238, %230
  %245 = load i64, i64* %8, align 8
  store i64 %245, i64* %6, align 8
  br label %261

246:                                              ; preds = %238, %234
  %247 = load i64, i64* %6, align 8
  %248 = load i64, i64* %8, align 8
  %249 = icmp slt i64 %247, %248
  br i1 %249, label %250, label %260

250:                                              ; preds = %246
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %252 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %253 = load i64, i64* %8, align 8
  %254 = sitofp i64 %253 to float
  %255 = load i64, i64* @AV_TIME_BASE, align 8
  %256 = sitofp i64 %255 to float
  %257 = fdiv float %254, %256
  %258 = fptosi float %257 to i64
  %259 = call i32 @av_log(%struct.TYPE_15__* %251, i32 %252, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %258)
  br label %260

260:                                              ; preds = %250, %246
  br label %261

261:                                              ; preds = %260, %244
  %262 = load i64, i64* %9, align 8
  %263 = load i64, i64* @INT64_MIN, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %275, label %265

265:                                              ; preds = %261
  %266 = load i64, i64* %9, align 8
  %267 = load i64, i64* %11, align 8
  %268 = icmp slt i64 %266, %267
  br i1 %268, label %269, label %277

269:                                              ; preds = %265
  %270 = load i64, i64* %11, align 8
  %271 = load i64, i64* %9, align 8
  %272 = sub nsw i64 %270, %271
  %273 = load i64, i64* @AV_TIME_BASE, align 8
  %274 = icmp slt i64 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %269, %261
  %276 = load i64, i64* %11, align 8
  store i64 %276, i64* %9, align 8
  br label %292

277:                                              ; preds = %269, %265
  %278 = load i64, i64* %9, align 8
  %279 = load i64, i64* %11, align 8
  %280 = icmp slt i64 %278, %279
  br i1 %280, label %281, label %291

281:                                              ; preds = %277
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %283 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %284 = load i64, i64* %11, align 8
  %285 = sitofp i64 %284 to float
  %286 = load i64, i64* @AV_TIME_BASE, align 8
  %287 = sitofp i64 %286 to float
  %288 = fdiv float %285, %287
  %289 = fptosi float %288 to i64
  %290 = call i32 @av_log(%struct.TYPE_15__* %282, i32 %283, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %289)
  br label %291

291:                                              ; preds = %281, %277
  br label %292

292:                                              ; preds = %291, %275
  %293 = load i64, i64* %3, align 8
  %294 = load i64, i64* @INT64_MAX, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %380

296:                                              ; preds = %292
  %297 = load i64, i64* %3, align 8
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 6
  store i64 %297, i64* %299, align 8
  %300 = load i64, i64* %6, align 8
  %301 = load i64, i64* @INT64_MIN, align 8
  %302 = icmp ne i64 %300, %301
  br i1 %302, label %303, label %379

303:                                              ; preds = %296
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = icmp sgt i32 %306, 1
  br i1 %307, label %308, label %361

308:                                              ; preds = %303
  store i32 0, i32* %13, align 4
  br label %309

309:                                              ; preds = %357, %308
  %310 = load i32, i32* %13, align 4
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = icmp slt i32 %310, %313
  br i1 %314, label %315, label %360

315:                                              ; preds = %309
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 5
  %318 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %317, align 8
  %319 = load i32, i32* %13, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %318, i64 %320
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %321, align 8
  store %struct.TYPE_14__* %322, %struct.TYPE_14__** %14, align 8
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %356

328:                                              ; preds = %315
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = icmp sgt i64 %331, %334
  br i1 %335, label %336, label %356

336:                                              ; preds = %328
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = sub nsw i64 %339, %342
  %344 = load i64, i64* @INT64_MAX, align 8
  %345 = icmp sle i64 %343, %344
  br i1 %345, label %346, label %356

346:                                              ; preds = %336
  %347 = load i64, i64* %9, align 8
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = sub nsw i64 %350, %353
  %355 = call i64 @FFMAX(i64 %347, i64 %354)
  store i64 %355, i64* %9, align 8
  br label %356

356:                                              ; preds = %346, %336, %328, %315
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %13, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %13, align 4
  br label %309

360:                                              ; preds = %309
  br label %378

361:                                              ; preds = %303
  %362 = load i64, i64* %6, align 8
  %363 = load i64, i64* %3, align 8
  %364 = icmp sge i64 %362, %363
  br i1 %364, label %365, label %377

365:                                              ; preds = %361
  %366 = load i64, i64* %6, align 8
  %367 = load i64, i64* %3, align 8
  %368 = sub nsw i64 %366, %367
  %369 = load i64, i64* @INT64_MAX, align 8
  %370 = icmp sle i64 %368, %369
  br i1 %370, label %371, label %377

371:                                              ; preds = %365
  %372 = load i64, i64* %9, align 8
  %373 = load i64, i64* %6, align 8
  %374 = load i64, i64* %3, align 8
  %375 = sub nsw i64 %373, %374
  %376 = call i64 @FFMAX(i64 %372, i64 %375)
  store i64 %376, i64* %9, align 8
  br label %377

377:                                              ; preds = %371, %365, %361
  br label %378

378:                                              ; preds = %377, %360
  br label %379

379:                                              ; preds = %378, %296
  br label %380

380:                                              ; preds = %379, %292
  %381 = load i64, i64* %9, align 8
  %382 = load i64, i64* @INT64_MIN, align 8
  %383 = icmp ne i64 %381, %382
  br i1 %383, label %384, label %397

384:                                              ; preds = %380
  %385 = load i64, i64* %9, align 8
  %386 = icmp sgt i64 %385, 0
  br i1 %386, label %387, label %397

387:                                              ; preds = %384
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %397

393:                                              ; preds = %387
  %394 = load i64, i64* %9, align 8
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 2
  store i64 %394, i64* %396, align 8
  br label %397

397:                                              ; preds = %393, %387, %384, %380
  %398 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %399 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %398, i32 0, i32 4
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %437

402:                                              ; preds = %397
  %403 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i32 0, i32 4
  %405 = load i64, i64* %404, align 8
  %406 = call i64 @avio_size(i64 %405)
  store i64 %406, i64* %12, align 8
  %407 = icmp sgt i64 %406, 0
  br i1 %407, label %408, label %437

408:                                              ; preds = %402
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 2
  %411 = load i64, i64* %410, align 8
  %412 = icmp sgt i64 %411, 0
  br i1 %412, label %413, label %437

413:                                              ; preds = %408
  %414 = load i64, i64* %12, align 8
  %415 = sitofp i64 %414 to double
  %416 = fmul double %415, 8.000000e+00
  %417 = load i64, i64* @AV_TIME_BASE, align 8
  %418 = sitofp i64 %417 to double
  %419 = fmul double %416, %418
  %420 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %421 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %420, i32 0, i32 2
  %422 = load i64, i64* %421, align 8
  %423 = sitofp i64 %422 to double
  %424 = fdiv double %419, %423
  store double %424, double* %17, align 8
  %425 = load double, double* %17, align 8
  %426 = fcmp oge double %425, 0.000000e+00
  br i1 %426, label %427, label %436

427:                                              ; preds = %413
  %428 = load double, double* %17, align 8
  %429 = load i64, i64* @INT64_MAX, align 8
  %430 = sitofp i64 %429 to double
  %431 = fcmp ole double %428, %430
  br i1 %431, label %432, label %436

432:                                              ; preds = %427
  %433 = load double, double* %17, align 8
  %434 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %434, i32 0, i32 3
  store double %433, double* %435, align 8
  br label %436

436:                                              ; preds = %432, %427, %413
  br label %437

437:                                              ; preds = %436, %408, %402, %397
  ret void
}

declare dso_local i64 @av_rescale_q(i64, i64, i32) #1

declare dso_local i64 @FFMIN(i64, i64) #1

declare dso_local i64 @av_rescale_q_rnd(i64, i64, i32, i32) #1

declare dso_local i64 @FFMAX(i64, i64) #1

declare dso_local %struct.TYPE_14__* @av_find_program_from_stream(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i64) #1

declare dso_local i64 @avio_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
