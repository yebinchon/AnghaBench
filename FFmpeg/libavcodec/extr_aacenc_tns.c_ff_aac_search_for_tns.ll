; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_tns.c_ff_aac_search_for_tns.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_tns.c_ff_aac_search_for_tns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32, i32*, i32**, i32**, i32**, i32**, i32** }
%struct.TYPE_10__ = type { i64*, i32, i32*, i32, i32, i32 }

@MAX_LPC_ORDER = common dso_local global i32 0, align 4
@EIGHT_SHORT_SEQUENCE = common dso_local global i64 0, align 8
@TNS_Q_BITS_IS8 = common dso_local global i32 0, align 4
@TNS_Q_BITS = common dso_local global i32 0, align 4
@tns_min_sfb = common dso_local global i32** null, align 8
@FF_PROFILE_AAC_LOW = common dso_local global i64 0, align 8
@TNS_MAX_ORDER = common dso_local global i32 0, align 4
@LONG_STOP_SEQUENCE = common dso_local global i64 0, align 8
@LONG_START_SEQUENCE = common dso_local global i64 0, align 8
@TNS_GAIN_THRESHOLD_LOW = common dso_local global double 0.000000e+00, align 8
@TNS_GAIN_THRESHOLD_HIGH = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_aac_search_for_tns(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [2 x float], align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %5, align 8
  store i32 0, i32* %8, align 4
  %29 = load i32, i32* @MAX_LPC_ORDER, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %10, align 8
  %32 = alloca double, i64 %30, align 16
  store i64 %30, i64* %11, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @FFMIN(i32 %36, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EIGHT_SHORT_SEQUENCE, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %2
  %54 = load i32, i32* @TNS_Q_BITS_IS8, align 4
  %55 = icmp eq i32 %54, 4
  %56 = zext i1 %55 to i32
  br label %61

57:                                               ; preds = %2
  %58 = load i32, i32* @TNS_Q_BITS, align 4
  %59 = icmp eq i32 %58, 4
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i32 [ %56, %53 ], [ %60, %57 ]
  store i32 %62, i32* %14, align 4
  %63 = load i32**, i32*** @tns_min_sfb, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @av_clip(i32 %72, i32 0, i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @av_clip(i32 %78, i32 0, i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %61
  br label %95

84:                                               ; preds = %61
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @FF_PROFILE_AAC_LOW, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @TNS_MAX_ORDER, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = phi i32 [ 12, %90 ], [ %92, %91 ]
  br label %95

95:                                               ; preds = %93, %83
  %96 = phi i32 [ 7, %83 ], [ %94, %93 ]
  store i32 %96, i32* %17, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @LONG_STOP_SEQUENCE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %117

106:                                              ; preds = %95
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @LONG_START_SEQUENCE, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 0, i32 2
  br label %117

117:                                              ; preds = %106, %105
  %118 = phi i32 [ 1, %105 ], [ %116, %106 ]
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %15, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %19, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %129, %137
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %20, align 4
  %140 = icmp sle i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %117
  %142 = load i32, i32* %19, align 4
  %143 = icmp sle i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141, %117
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  store i32 1, i32* %21, align 4
  br label %464

148:                                              ; preds = %141
  store i32 0, i32* %6, align 4
  br label %149

149:                                              ; preds = %452, %148
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %150, %154
  br i1 %155, label %156, label %455

156:                                              ; preds = %149
  %157 = bitcast [2 x float]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %157, i8 0, i64 8, i1 false)
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %25, align 4
  %166 = load i32, i32* %15, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %220, %156
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %168, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %16, align 4
  %177 = icmp sle i32 %175, %176
  br label %178

178:                                              ; preds = %174, %167
  %179 = phi i1 [ false, %167 ], [ %177, %174 ]
  br i1 %179, label %180, label %223

180:                                              ; preds = %178
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = mul nsw i32 %191, 16
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i64 %195
  store %struct.TYPE_15__* %196, %struct.TYPE_15__** %26, align 8
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %19, align 4
  %200 = sdiv i32 %199, 2
  %201 = add nsw i32 %198, %200
  %202 = icmp sgt i32 %197, %201
  br i1 %202, label %203, label %211

203:                                              ; preds = %180
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = sitofp i64 %206 to float
  %208 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 1
  %209 = load float, float* %208, align 4
  %210 = fadd float %209, %207
  store float %210, float* %208, align 4
  br label %219

211:                                              ; preds = %180
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = sitofp i64 %214 to float
  %216 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 0
  %217 = load float, float* %216, align 4
  %218 = fadd float %217, %215
  store float %218, float* %216, align 4
  br label %219

219:                                              ; preds = %211, %203
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  br label %167

223:                                              ; preds = %178
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 3
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = mul nsw i32 %229, 128
  %231 = load i32, i32* %25, align 4
  %232 = add nsw i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %228, i64 %233
  %235 = load i32, i32* %20, align 4
  %236 = load i32, i32* %17, align 4
  %237 = call double @ff_lpc_calc_ref_coefs_f(i32* %225, i32* %234, i32 %235, i32 %236, double* %32)
  store double %237, double* %9, align 8
  %238 = load i32, i32* %17, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %223
  %241 = load double, double* %9, align 8
  %242 = call i32 @isfinite(double %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %240
  %245 = load double, double* %9, align 8
  %246 = load double, double* @TNS_GAIN_THRESHOLD_LOW, align 8
  %247 = fcmp olt double %245, %246
  br i1 %247, label %252, label %248

248:                                              ; preds = %244
  %249 = load double, double* %9, align 8
  %250 = load double, double* @TNS_GAIN_THRESHOLD_HIGH, align 8
  %251 = fcmp ogt double %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %248, %244, %240, %223
  br label %452

253:                                              ; preds = %248
  %254 = load i32, i32* %13, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  br label %263

257:                                              ; preds = %253
  %258 = load i32, i32* %17, align 4
  %259 = load i32, i32* @TNS_MAX_ORDER, align 4
  %260 = icmp ne i32 %258, %259
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i32 2, i32 3
  br label %263

263:                                              ; preds = %257, %256
  %264 = phi i32 [ 1, %256 ], [ %262, %257 ]
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %6, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  store i32 %264, i32* %270, align 4
  store i32 0, i32* %7, align 4
  br label %271

271:                                              ; preds = %446, %263
  %272 = load i32, i32* %7, align 4
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = icmp slt i32 %272, %279
  br i1 %280, label %281, label %449

281:                                              ; preds = %271
  %282 = load i32, i32* %18, align 4
  %283 = icmp ne i32 %282, 2
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = load i32, i32* %18, align 4
  br label %300

286:                                              ; preds = %281
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 %288
  %290 = load float, float* %289, align 4
  %291 = load i32, i32* %7, align 4
  %292 = icmp ne i32 %291, 0
  %293 = xor i1 %292, true
  %294 = zext i1 %293 to i32
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 %295
  %297 = load float, float* %296, align 4
  %298 = fcmp olt float %290, %297
  %299 = zext i1 %298 to i32
  br label %300

300:                                              ; preds = %286, %284
  %301 = phi i32 [ %285, %284 ], [ %299, %286 ]
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 2
  %304 = load i32**, i32*** %303, align 8
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32*, i32** %304, i64 %306
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %7, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 %301, i32* %311, align 4
  %312 = load i32, i32* %7, align 4
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %6, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = icmp slt i32 %312, %319
  br i1 %320, label %321, label %331

321:                                              ; preds = %300
  %322 = load i32, i32* %17, align 4
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 1
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %6, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = sdiv i32 %322, %329
  br label %335

331:                                              ; preds = %300
  %332 = load i32, i32* %17, align 4
  %333 = load i32, i32* %23, align 4
  %334 = sub nsw i32 %332, %333
  br label %335

335:                                              ; preds = %331, %321
  %336 = phi i32 [ %330, %321 ], [ %334, %331 ]
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 3
  %339 = load i32**, i32*** %338, align 8
  %340 = load i32, i32* %6, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32*, i32** %339, i64 %341
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %7, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store i32 %336, i32* %346, align 4
  %347 = load i32, i32* %7, align 4
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 1
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %6, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = icmp slt i32 %347, %354
  br i1 %355, label %356, label %366

356:                                              ; preds = %335
  %357 = load i32, i32* %19, align 4
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 1
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* %6, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = sdiv i32 %357, %364
  br label %370

366:                                              ; preds = %335
  %367 = load i32, i32* %19, align 4
  %368 = load i32, i32* %24, align 4
  %369 = sub nsw i32 %367, %368
  br label %370

370:                                              ; preds = %366, %356
  %371 = phi i32 [ %365, %356 ], [ %369, %366 ]
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 4
  %374 = load i32**, i32*** %373, align 8
  %375 = load i32, i32* %6, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32*, i32** %374, i64 %376
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %7, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  store i32 %371, i32* %381, align 4
  %382 = load i32, i32* %23, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds double, double* %32, i64 %383
  %385 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 6
  %387 = load i32**, i32*** %386, align 8
  %388 = load i32, i32* %6, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32*, i32** %387, i64 %389
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %7, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 5
  %398 = load i32**, i32*** %397, align 8
  %399 = load i32, i32* %6, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32*, i32** %398, i64 %400
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %7, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 3
  %409 = load i32**, i32*** %408, align 8
  %410 = load i32, i32* %6, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32*, i32** %409, i64 %411
  %413 = load i32*, i32** %412, align 8
  %414 = load i32, i32* %7, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* %14, align 4
  %419 = call i32 @quantize_coefs(double* %384, i32 %395, i32 %406, i32 %417, i32 %418)
  %420 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 3
  %422 = load i32**, i32*** %421, align 8
  %423 = load i32, i32* %6, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32*, i32** %422, i64 %424
  %426 = load i32*, i32** %425, align 8
  %427 = load i32, i32* %7, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* %23, align 4
  %432 = add nsw i32 %431, %430
  store i32 %432, i32* %23, align 4
  %433 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 4
  %435 = load i32**, i32*** %434, align 8
  %436 = load i32, i32* %6, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32*, i32** %435, i64 %437
  %439 = load i32*, i32** %438, align 8
  %440 = load i32, i32* %7, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* %24, align 4
  %445 = add nsw i32 %444, %443
  store i32 %445, i32* %24, align 4
  br label %446

446:                                              ; preds = %370
  %447 = load i32, i32* %7, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %7, align 4
  br label %271

449:                                              ; preds = %271
  %450 = load i32, i32* %8, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %8, align 4
  br label %452

452:                                              ; preds = %449, %252
  %453 = load i32, i32* %6, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %6, align 4
  br label %149

455:                                              ; preds = %149
  %456 = load i32, i32* %8, align 4
  %457 = icmp ne i32 %456, 0
  %458 = xor i1 %457, true
  %459 = xor i1 %458, true
  %460 = zext i1 %459 to i32
  %461 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %462 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %462, i32 0, i32 0
  store i32 %460, i32* %463, align 8
  store i32 0, i32* %21, align 4
  br label %464

464:                                              ; preds = %455, %144
  %465 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %465)
  %466 = load i32, i32* %21, align 4
  switch i32 %466, label %468 [
    i32 0, label %467
    i32 1, label %467
  ]

467:                                              ; preds = %464, %464
  ret void

468:                                              ; preds = %464
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @av_clip(i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local double @ff_lpc_calc_ref_coefs_f(i32*, i32*, i32, i32, double*) #2

declare dso_local i32 @isfinite(double) #2

declare dso_local i32 @quantize_coefs(double*, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
