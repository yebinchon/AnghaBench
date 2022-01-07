; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_ltp.c_ff_aac_search_for_ltp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_ltp.c_ff_aac_search_for_ltp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { float*, float, i64, i32 (float*, float*, i32)*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { float*, float*, %struct.TYPE_13__, i32*, i32*, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { i64*, i32, i32*, i32, i32*, i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32*, i32, i64 }

@MAX_LTP_LONG_SFB = common dso_local global i32 0, align 4
@EIGHT_SHORT_SEQUENCE = common dso_local global i64 0, align 8
@INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_aac_search_for_ltp(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MAX_LTP_LONG_SFB, align 4
  %30 = call i32 @FFMIN(i32 %28, i32 %29)
  %31 = add nsw i32 15, %30
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  store float* %36, float** %14, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load float*, float** %38, align 8
  %40 = getelementptr inbounds float, float* %39, i64 128
  store float* %40, float** %15, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load float*, float** %42, align 8
  %44 = getelementptr inbounds float, float* %43, i64 256
  store float* %44, float** %16, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MAX_LTP_LONG_SFB, align 4
  %50 = call i32 @FFMIN(i32 %48, i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @EIGHT_SHORT_SEQUENCE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %3
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i64 0
  %71 = call i32 @memset(%struct.TYPE_17__* %70, i32 0, i32 73728)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 6
  %75 = call i32 @memset(%struct.TYPE_17__* %74, i32 0, i32 4)
  br label %76

76:                                               ; preds = %66, %59
  br label %626

77:                                               ; preds = %3
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load float, float* %86, align 8
  %88 = fcmp ogt float %87, 1.200000e+02
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %77
  br label %626

90:                                               ; preds = %84
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %462, %90
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %473

98:                                               ; preds = %91
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %458, %98
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %461

106:                                              ; preds = %99
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %107, 16
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %17, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %106
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %11, align 4
  br label %458

124:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %356, %124
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %126, %134
  br i1 %135, label %136, label %359

136:                                              ; preds = %125
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %147, %148
  %150 = mul nsw i32 %149, 16
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i64 %153
  store %struct.TYPE_15__* %154, %struct.TYPE_15__** %24, align 8
  store i32 0, i32* %10, align 4
  br label %155

155:                                              ; preds = %200, %136
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %156, %164
  br i1 %165, label %166, label %203

166:                                              ; preds = %155
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load float*, float** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %171, %172
  %174 = mul nsw i32 %173, 128
  %175 = add nsw i32 %170, %174
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, float* %169, i64 %178
  %180 = load float, float* %179, align 4
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load float*, float** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %185, %186
  %188 = mul nsw i32 %187, 128
  %189 = add nsw i32 %184, %188
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %183, i64 %192
  %194 = load float, float* %193, align 4
  %195 = fsub float %180, %194
  %196 = load float*, float** %15, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  store float %195, float* %199, align 4
  br label %200

200:                                              ; preds = %166
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %10, align 4
  br label %155

203:                                              ; preds = %155
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 3
  %206 = load i32 (float*, float*, i32)*, i32 (float*, float*, i32)** %205, align 8
  %207 = load float*, float** %14, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load float*, float** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %212, %213
  %215 = mul nsw i32 %214, 128
  %216 = add nsw i32 %211, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %210, i64 %217
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 4
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 %206(float* %207, float* %218, i32 %226)
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 3
  %230 = load i32 (float*, float*, i32)*, i32 (float*, float*, i32)** %229, align 8
  %231 = load float*, float** %16, align 8
  %232 = load float*, float** %15, align 8
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i32 %230(float* %231, float* %232, i32 %240)
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load float*, float** %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %247, %248
  %250 = mul nsw i32 %249, 128
  %251 = add nsw i32 %246, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %245, i64 %252
  %254 = load float*, float** %14, align 8
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 4
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 4
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %9, align 4
  %268 = add nsw i32 %266, %267
  %269 = mul nsw i32 %268, 16
  %270 = load i32, i32* %8, align 4
  %271 = add nsw i32 %269, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %265, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* %9, align 4
  %280 = add nsw i32 %278, %279
  %281 = mul nsw i32 %280, 16
  %282 = load i32, i32* %8, align 4
  %283 = add nsw i32 %281, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %277, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 1
  %289 = load float, float* %288, align 8
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = sitofp i32 %292 to float
  %294 = fdiv float %289, %293
  %295 = fptosi float %294 to i32
  %296 = load i32, i32* @INFINITY, align 4
  %297 = call i64 @quantize_band_cost(%struct.TYPE_16__* %242, float* %253, float* %254, i32 %262, i32 %274, i32 %286, i32 %295, i32 %296, i32* %22, i32* null, i32 0)
  %298 = sitofp i64 %297 to float
  %299 = load float, float* %20, align 4
  %300 = fadd float %299, %298
  store float %300, float* %20, align 4
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %302 = load float*, float** %15, align 8
  %303 = load float*, float** %16, align 8
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 4
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 4
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %7, align 4
  %316 = load i32, i32* %9, align 4
  %317 = add nsw i32 %315, %316
  %318 = mul nsw i32 %317, 16
  %319 = load i32, i32* %8, align 4
  %320 = add nsw i32 %318, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %314, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 3
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %7, align 4
  %328 = load i32, i32* %9, align 4
  %329 = add nsw i32 %327, %328
  %330 = mul nsw i32 %329, 16
  %331 = load i32, i32* %8, align 4
  %332 = add nsw i32 %330, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %326, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 1
  %338 = load float, float* %337, align 8
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = sitofp i32 %341 to float
  %343 = fdiv float %338, %342
  %344 = fptosi float %343 to i32
  %345 = load i32, i32* @INFINITY, align 4
  %346 = call i64 @quantize_band_cost(%struct.TYPE_16__* %301, float* %302, float* %303, i32 %311, i32 %323, i32 %335, i32 %344, i32 %345, i32* %23, i32* null, i32 0)
  %347 = sitofp i64 %346 to float
  %348 = load float, float* %21, align 4
  %349 = fadd float %348, %347
  store float %349, float* %21, align 4
  %350 = load i32, i32* %22, align 4
  %351 = load i32, i32* %18, align 4
  %352 = add nsw i32 %351, %350
  store i32 %352, i32* %18, align 4
  %353 = load i32, i32* %23, align 4
  %354 = load i32, i32* %19, align 4
  %355 = add nsw i32 %354, %353
  store i32 %355, i32* %19, align 4
  br label %356

356:                                              ; preds = %203
  %357 = load i32, i32* %9, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %9, align 4
  br label %125

359:                                              ; preds = %125
  %360 = load float, float* %21, align 4
  %361 = load float, float* %20, align 4
  %362 = fcmp olt float %360, %361
  br i1 %362, label %363, label %447

363:                                              ; preds = %359
  %364 = load i32, i32* %19, align 4
  %365 = load i32, i32* %18, align 4
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %367, label %447

367:                                              ; preds = %363
  store i32 0, i32* %9, align 4
  br label %368

368:                                              ; preds = %425, %367
  %369 = load i32, i32* %9, align 4
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 2
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %7, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = icmp slt i32 %369, %377
  br i1 %378, label %379, label %428

379:                                              ; preds = %368
  store i32 0, i32* %10, align 4
  br label %380

380:                                              ; preds = %421, %379
  %381 = load i32, i32* %10, align 4
  %382 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 4
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %8, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = icmp slt i32 %381, %389
  br i1 %390, label %391, label %424

391:                                              ; preds = %380
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 1
  %394 = load float*, float** %393, align 8
  %395 = load i32, i32* %11, align 4
  %396 = load i32, i32* %7, align 4
  %397 = load i32, i32* %9, align 4
  %398 = add nsw i32 %396, %397
  %399 = mul nsw i32 %398, 128
  %400 = add nsw i32 %395, %399
  %401 = load i32, i32* %10, align 4
  %402 = add nsw i32 %400, %401
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds float, float* %394, i64 %403
  %405 = load float, float* %404, align 4
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 0
  %408 = load float*, float** %407, align 8
  %409 = load i32, i32* %11, align 4
  %410 = load i32, i32* %7, align 4
  %411 = load i32, i32* %9, align 4
  %412 = add nsw i32 %410, %411
  %413 = mul nsw i32 %412, 128
  %414 = add nsw i32 %409, %413
  %415 = load i32, i32* %10, align 4
  %416 = add nsw i32 %414, %415
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds float, float* %408, i64 %417
  %419 = load float, float* %418, align 4
  %420 = fsub float %419, %405
  store float %420, float* %418, align 4
  br label %421

421:                                              ; preds = %391
  %422 = load i32, i32* %10, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %10, align 4
  br label %380

424:                                              ; preds = %380
  br label %425

425:                                              ; preds = %424
  %426 = load i32, i32* %9, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %9, align 4
  br label %368

428:                                              ; preds = %368
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i32 0, i32 2
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 6
  %432 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %431, i32 0, i32 0
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %7, align 4
  %435 = mul nsw i32 %434, 16
  %436 = load i32, i32* %8, align 4
  %437 = add nsw i32 %435, %436
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %433, i64 %438
  store i32 1, i32* %439, align 4
  %440 = load i32, i32* %18, align 4
  %441 = load i32, i32* %19, align 4
  %442 = sub nsw i32 %440, %441
  %443 = load i32, i32* %13, align 4
  %444 = add nsw i32 %443, %442
  store i32 %444, i32* %13, align 4
  %445 = load i32, i32* %12, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %12, align 4
  br label %447

447:                                              ; preds = %428, %363, %359
  %448 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %448, i32 0, i32 2
  %450 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %449, i32 0, i32 4
  %451 = load i32*, i32** %450, align 8
  %452 = load i32, i32* %8, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* %11, align 4
  %457 = add nsw i32 %456, %455
  store i32 %457, i32* %11, align 4
  br label %458

458:                                              ; preds = %447, %113
  %459 = load i32, i32* %8, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %8, align 4
  br label %99

461:                                              ; preds = %99
  br label %462

462:                                              ; preds = %461
  %463 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %463, i32 0, i32 2
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 2
  %466 = load i32*, i32** %465, align 8
  %467 = load i32, i32* %7, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* %7, align 4
  %472 = add nsw i32 %471, %470
  store i32 %472, i32* %7, align 4
  br label %91

473:                                              ; preds = %91
  %474 = load i32, i32* %12, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %479

476:                                              ; preds = %473
  %477 = load i32, i32* %13, align 4
  %478 = icmp sge i32 %477, 0
  br label %479

479:                                              ; preds = %476, %473
  %480 = phi i1 [ false, %473 ], [ %478, %476 ]
  %481 = zext i1 %480 to i32
  %482 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 6
  %485 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %484, i32 0, i32 1
  store i32 %481, i32* %485, align 8
  %486 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %486, i32 0, i32 2
  %488 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %487, i32 0, i32 6
  %489 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 8
  %491 = icmp ne i32 %490, 0
  %492 = xor i1 %491, true
  %493 = xor i1 %492, true
  %494 = zext i1 %493 to i32
  %495 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %496 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %495, i32 0, i32 2
  %497 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %496, i32 0, i32 5
  store i32 %494, i32* %497, align 8
  %498 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %498, i32 0, i32 2
  %500 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %499, i32 0, i32 6
  %501 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 8
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %626, label %504

504:                                              ; preds = %479
  %505 = load i32, i32* %12, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %626

507:                                              ; preds = %504
  store i32 0, i32* %7, align 4
  br label %508

508:                                              ; preds = %614, %507
  %509 = load i32, i32* %7, align 4
  %510 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %511 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 8
  %514 = icmp slt i32 %509, %513
  br i1 %514, label %515, label %625

515:                                              ; preds = %508
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %516

516:                                              ; preds = %610, %515
  %517 = load i32, i32* %8, align 4
  %518 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %519 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %518, i32 0, i32 2
  %520 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %519, i32 0, i32 3
  %521 = load i32, i32* %520, align 8
  %522 = icmp slt i32 %517, %521
  br i1 %522, label %523, label %613

523:                                              ; preds = %516
  %524 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %525 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %524, i32 0, i32 2
  %526 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %525, i32 0, i32 6
  %527 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %526, i32 0, i32 0
  %528 = load i32*, i32** %527, align 8
  %529 = load i32, i32* %7, align 4
  %530 = mul nsw i32 %529, 16
  %531 = load i32, i32* %8, align 4
  %532 = add nsw i32 %530, %531
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32, i32* %528, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %599

537:                                              ; preds = %523
  store i32 0, i32* %9, align 4
  br label %538

538:                                              ; preds = %595, %537
  %539 = load i32, i32* %9, align 4
  %540 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %541 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %540, i32 0, i32 2
  %542 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %541, i32 0, i32 2
  %543 = load i32*, i32** %542, align 8
  %544 = load i32, i32* %7, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %543, i64 %545
  %547 = load i32, i32* %546, align 4
  %548 = icmp slt i32 %539, %547
  br i1 %548, label %549, label %598

549:                                              ; preds = %538
  store i32 0, i32* %10, align 4
  br label %550

550:                                              ; preds = %591, %549
  %551 = load i32, i32* %10, align 4
  %552 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %553 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %552, i32 0, i32 2
  %554 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %553, i32 0, i32 4
  %555 = load i32*, i32** %554, align 8
  %556 = load i32, i32* %8, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i32, i32* %555, i64 %557
  %559 = load i32, i32* %558, align 4
  %560 = icmp slt i32 %551, %559
  br i1 %560, label %561, label %594

561:                                              ; preds = %550
  %562 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %563 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %562, i32 0, i32 1
  %564 = load float*, float** %563, align 8
  %565 = load i32, i32* %11, align 4
  %566 = load i32, i32* %7, align 4
  %567 = load i32, i32* %9, align 4
  %568 = add nsw i32 %566, %567
  %569 = mul nsw i32 %568, 128
  %570 = add nsw i32 %565, %569
  %571 = load i32, i32* %10, align 4
  %572 = add nsw i32 %570, %571
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds float, float* %564, i64 %573
  %575 = load float, float* %574, align 4
  %576 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %577 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %576, i32 0, i32 0
  %578 = load float*, float** %577, align 8
  %579 = load i32, i32* %11, align 4
  %580 = load i32, i32* %7, align 4
  %581 = load i32, i32* %9, align 4
  %582 = add nsw i32 %580, %581
  %583 = mul nsw i32 %582, 128
  %584 = add nsw i32 %579, %583
  %585 = load i32, i32* %10, align 4
  %586 = add nsw i32 %584, %585
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds float, float* %578, i64 %587
  %589 = load float, float* %588, align 4
  %590 = fadd float %589, %575
  store float %590, float* %588, align 4
  br label %591

591:                                              ; preds = %561
  %592 = load i32, i32* %10, align 4
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %10, align 4
  br label %550

594:                                              ; preds = %550
  br label %595

595:                                              ; preds = %594
  %596 = load i32, i32* %9, align 4
  %597 = add nsw i32 %596, 1
  store i32 %597, i32* %9, align 4
  br label %538

598:                                              ; preds = %538
  br label %599

599:                                              ; preds = %598, %523
  %600 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %601 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %600, i32 0, i32 2
  %602 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %601, i32 0, i32 4
  %603 = load i32*, i32** %602, align 8
  %604 = load i32, i32* %8, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i32, i32* %603, i64 %605
  %607 = load i32, i32* %606, align 4
  %608 = load i32, i32* %11, align 4
  %609 = add nsw i32 %608, %607
  store i32 %609, i32* %11, align 4
  br label %610

610:                                              ; preds = %599
  %611 = load i32, i32* %8, align 4
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* %8, align 4
  br label %516

613:                                              ; preds = %516
  br label %614

614:                                              ; preds = %613
  %615 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %616 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %615, i32 0, i32 2
  %617 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %616, i32 0, i32 2
  %618 = load i32*, i32** %617, align 8
  %619 = load i32, i32* %7, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i32, i32* %618, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = load i32, i32* %7, align 4
  %624 = add nsw i32 %623, %622
  store i32 %624, i32* %7, align 4
  br label %508

625:                                              ; preds = %508
  br label %626

626:                                              ; preds = %76, %89, %625, %504, %479
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @quantize_band_cost(%struct.TYPE_16__*, float*, float*, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
