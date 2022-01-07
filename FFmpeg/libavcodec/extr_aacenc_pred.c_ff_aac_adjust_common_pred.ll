; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_pred.c_ff_aac_adjust_common_pred.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_pred.c_ff_aac_adjust_common_pred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { float*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64*, i32, i32*, i32, i32*, i32*, i32 }
%struct.AACISError = type { i64, i64 }

@ff_aac_pred_sfb_max = common dso_local global i32* null, align 8
@EIGHT_SHORT_SEQUENCE = common dso_local global i64 0, align 8
@PRED_SFB_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_aac_adjust_common_pred(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.AACISError, align 8
  %22 = alloca %struct.AACISError, align 8
  %23 = alloca %struct.AACISError*, align 8
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca %struct.AACISError, align 8
  %27 = alloca %struct.AACISError, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i32 0, i32* %10, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 0
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %11, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 1
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %12, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** @ff_aac_pred_sfb_max, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @FFMIN(i32 %39, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** @ff_aac_pred_sfb_max, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @FFMIN(i32 %50, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @FFMIN(i32 %58, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %2
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @EIGHT_SHORT_SEQUENCE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %65
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @EIGHT_SHORT_SEQUENCE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74, %65, %2
  br label %336

84:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %313, %84
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %324

92:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %309, %92
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %312

100:                                              ; preds = %93
  %101 = load i32, i32* %6, align 4
  %102 = mul nsw i32 %101, 16
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %16, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %112, %120
  store i32 %121, i32* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @PRED_SFB_START, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %132, label %125

125:                                              ; preds = %100
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 2
  br i1 %131, label %132, label %149

132:                                              ; preds = %129, %125, %100
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @RESTORE_PRED(%struct.TYPE_11__* %133, i32 %134)
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @RESTORE_PRED(%struct.TYPE_11__* %136, i32 %137)
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 6
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %5, align 4
  br label %309

149:                                              ; preds = %129
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %225, %149
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %151, %159
  br i1 %160, label %161, label %228

161:                                              ; preds = %150
  store i32 0, i32* %9, align 4
  br label %162

162:                                              ; preds = %221, %161
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 6
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %163, %171
  br i1 %172, label %173, label %224

173:                                              ; preds = %162
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load float*, float** %175, align 8
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %178, %179
  %181 = mul nsw i32 %180, 128
  %182 = add nsw i32 %177, %181
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %176, i64 %185
  %187 = load float, float* %186, align 4
  store float %187, float* %24, align 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load float*, float** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %192, %193
  %195 = mul nsw i32 %194, 128
  %196 = add nsw i32 %191, %195
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %190, i64 %199
  %201 = load float, float* %200, align 4
  store float %201, float* %25, align 4
  %202 = load float, float* %24, align 4
  %203 = load float, float* %24, align 4
  %204 = fmul float %202, %203
  %205 = load float, float* %18, align 4
  %206 = fadd float %205, %204
  store float %206, float* %18, align 4
  %207 = load float, float* %25, align 4
  %208 = load float, float* %25, align 4
  %209 = fmul float %207, %208
  %210 = load float, float* %19, align 4
  %211 = fadd float %210, %209
  store float %211, float* %19, align 4
  %212 = load float, float* %24, align 4
  %213 = load float, float* %25, align 4
  %214 = fadd float %212, %213
  %215 = load float, float* %24, align 4
  %216 = load float, float* %25, align 4
  %217 = fadd float %215, %216
  %218 = fmul float %214, %217
  %219 = load float, float* %20, align 4
  %220 = fadd float %219, %218
  store float %220, float* %20, align 4
  br label %221

221:                                              ; preds = %173
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %162

224:                                              ; preds = %162
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %7, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %7, align 4
  br label %150

228:                                              ; preds = %150
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %8, align 4
  %234 = load float, float* %18, align 4
  %235 = load float, float* %19, align 4
  %236 = load float, float* %20, align 4
  %237 = call { i64, i64 } @ff_aac_is_encoding_err(%struct.TYPE_13__* %229, %struct.TYPE_12__* %230, i32 %231, i32 %232, i32 %233, float %234, float %235, float %236, i32 1, i32 -1)
  %238 = bitcast %struct.AACISError* %26 to { i64, i64 }*
  %239 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %238, i32 0, i32 0
  %240 = extractvalue { i64, i64 } %237, 0
  store i64 %240, i64* %239, align 8
  %241 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %238, i32 0, i32 1
  %242 = extractvalue { i64, i64 } %237, 1
  store i64 %242, i64* %241, align 8
  %243 = bitcast %struct.AACISError* %21 to i8*
  %244 = bitcast %struct.AACISError* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %243, i8* align 8 %244, i64 16, i1 false)
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %247 = load i32, i32* %5, align 4
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load float, float* %18, align 4
  %251 = load float, float* %19, align 4
  %252 = load float, float* %20, align 4
  %253 = call { i64, i64 } @ff_aac_is_encoding_err(%struct.TYPE_13__* %245, %struct.TYPE_12__* %246, i32 %247, i32 %248, i32 %249, float %250, float %251, float %252, i32 1, i32 1)
  %254 = bitcast %struct.AACISError* %27 to { i64, i64 }*
  %255 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %254, i32 0, i32 0
  %256 = extractvalue { i64, i64 } %253, 0
  store i64 %256, i64* %255, align 8
  %257 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %254, i32 0, i32 1
  %258 = extractvalue { i64, i64 } %253, 1
  store i64 %258, i64* %257, align 8
  %259 = bitcast %struct.AACISError* %22 to i8*
  %260 = bitcast %struct.AACISError* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %259, i8* align 8 %260, i64 16, i1 false)
  %261 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %21, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %22, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp slt i64 %262, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %228
  br label %268

267:                                              ; preds = %228
  br label %268

268:                                              ; preds = %267, %266
  %269 = phi %struct.AACISError* [ %21, %266 ], [ %22, %267 ]
  store %struct.AACISError* %269, %struct.AACISError** %23, align 8
  %270 = load %struct.AACISError*, %struct.AACISError** %23, align 8
  %271 = getelementptr inbounds %struct.AACISError, %struct.AACISError* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %291

274:                                              ; preds = %268
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 5
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %16, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  store i32 1, i32* %281, align 4
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 5
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %16, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 1, i32* %288, align 4
  %289 = load i32, i32* %10, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %10, align 4
  br label %298

291:                                              ; preds = %268
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %293 = load i32, i32* %16, align 4
  %294 = call i32 @RESTORE_PRED(%struct.TYPE_11__* %292, i32 %293)
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %296 = load i32, i32* %16, align 4
  %297 = call i32 @RESTORE_PRED(%struct.TYPE_11__* %295, i32 %296)
  br label %298

298:                                              ; preds = %291, %274
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 6
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %5, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %5, align 4
  br label %309

309:                                              ; preds = %298, %132
  %310 = load i32, i32* %8, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %8, align 4
  br label %93

312:                                              ; preds = %93
  br label %313

313:                                              ; preds = %312
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 3
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %6, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %6, align 4
  %323 = add nsw i32 %322, %321
  store i32 %323, i32* %6, align 4
  br label %85

324:                                              ; preds = %85
  %325 = load i32, i32* %10, align 4
  %326 = icmp ne i32 %325, 0
  %327 = xor i1 %326, true
  %328 = xor i1 %327, true
  %329 = zext i1 %328 to i32
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 7
  store i32 %329, i32* %332, align 8
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 7
  store i32 %329, i32* %335, align 8
  br label %336

336:                                              ; preds = %324, %83
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @RESTORE_PRED(%struct.TYPE_11__*, i32) #1

declare dso_local { i64, i64 } @ff_aac_is_encoding_err(%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32, i32, float, float, float, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
