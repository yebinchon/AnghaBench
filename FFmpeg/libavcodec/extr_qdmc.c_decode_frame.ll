; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, float*, float*, i64, i64, i32, float**, %struct.TYPE_14__**, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { float, float }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@INT16_MIN = common dso_local global i32 0, align 4
@INT16_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_12__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @skip_label(%struct.TYPE_12__* %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %18, i32* %4, align 4
  br label %493

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load float*, float** %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 %34, %37
  %39 = getelementptr inbounds float, float* %31, i64 %38
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  store float* %39, float** %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @read_noise_data(%struct.TYPE_12__* %42, i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %19
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %493

49:                                               ; preds = %19
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @read_wave_data(%struct.TYPE_12__* %50, i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %493

57:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %443, %57
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 32
  br i1 %60, label %61, label %446

61:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %74, %61
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @add_noise(%struct.TYPE_12__* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %62

77:                                               ; preds = %62
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @add_waves(%struct.TYPE_12__* %78, i32 %79)
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %196, %77
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ult i64 %83, %86
  br i1 %87, label %88, label %199

88:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %192, %88
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %195

95:                                               ; preds = %89
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 7
  %98 = load float**, float*** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float*, float** %98, i64 %101
  %103 = load float*, float** %102, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %107, %110
  %112 = add nsw i32 %106, %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %103, i64 %115
  %117 = load float, float* %116, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 8
  %120 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %120, i64 %122
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  store float %117, float* %128, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 7
  %131 = load float**, float*** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 0
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float*, float** %131, i64 %134
  %136 = load float*, float** %135, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = mul nsw i32 %140, %143
  %145 = add nsw i32 %139, %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %136, i64 %148
  %150 = load float, float* %149, align 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 8
  %153 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %153, i64 %155
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  store float %150, float* %161, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 8
  %164 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %164, i64 %166
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  store float 0.000000e+00, float* %176, align 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 8
  %179 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %179, i64 %181
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 1
  store float 0.000000e+00, float* %191, align 4
  br label %192

192:                                              ; preds = %95
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %89

195:                                              ; preds = %89
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  br label %81

199:                                              ; preds = %81
  store i32 0, i32* %9, align 4
  br label %200

200:                                              ; preds = %236, %199
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = icmp ult i64 %202, %205
  br i1 %206, label %207, label %239

207:                                              ; preds = %200
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 9
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)** %210, align 8
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 9
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 8
  %216 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %215, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %216, i64 %218
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %219, align 8
  %221 = call i32 %211(%struct.TYPE_13__* %213, %struct.TYPE_14__* %220)
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 9
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)** %224, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 9
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 8
  %230 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %230, i64 %232
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %233, align 8
  %235 = call i32 %225(%struct.TYPE_13__* %227, %struct.TYPE_14__* %234)
  br label %236

236:                                              ; preds = %207
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %9, align 4
  br label %200

239:                                              ; preds = %200
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 2
  %242 = load float*, float** %241, align 8
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = mul i64 %245, %247
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = mul i64 %248, %252
  %254 = getelementptr inbounds float, float* %242, i64 %253
  store float* %254, float** %12, align 8
  store i32 0, i32* %10, align 4
  br label %255

255:                                              ; preds = %291, %239
  %256 = load i32, i32* %10, align 4
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 8
  %260 = mul nsw i32 2, %259
  %261 = icmp slt i32 %256, %260
  br i1 %261, label %262, label %294

262:                                              ; preds = %255
  store i32 0, i32* %9, align 4
  br label %263

263:                                              ; preds = %287, %262
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = icmp ult i64 %265, %268
  br i1 %269, label %270, label %290

270:                                              ; preds = %263
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 8
  %273 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %272, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %273, i64 %275
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %276, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = load float, float* %281, align 4
  %283 = load float*, float** %12, align 8
  %284 = getelementptr inbounds float, float* %283, i32 1
  store float* %284, float** %12, align 8
  %285 = load float, float* %283, align 4
  %286 = fadd float %285, %282
  store float %286, float* %283, align 4
  br label %287

287:                                              ; preds = %270
  %288 = load i32, i32* %9, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %9, align 4
  br label %263

290:                                              ; preds = %263
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %10, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %10, align 4
  br label %255

294:                                              ; preds = %255
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 2
  %297 = load float*, float** %296, align 8
  %298 = load i32, i32* %11, align 4
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 6
  %301 = load i32, i32* %300, align 8
  %302 = mul nsw i32 %298, %301
  %303 = sext i32 %302 to i64
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 4
  %306 = load i64, i64* %305, align 8
  %307 = mul i64 %303, %306
  %308 = getelementptr inbounds float, float* %297, i64 %307
  store float* %308, float** %12, align 8
  store i32 0, i32* %10, align 4
  br label %309

309:                                              ; preds = %334, %294
  %310 = load i32, i32* %10, align 4
  %311 = sext i32 %310 to i64
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 4
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 6
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = mul i64 %314, %318
  %320 = icmp ult i64 %311, %319
  br i1 %320, label %321, label %337

321:                                              ; preds = %309
  %322 = load float*, float** %12, align 8
  %323 = load i32, i32* %10, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds float, float* %322, i64 %324
  %326 = load float, float* %325, align 4
  %327 = load i32, i32* @INT16_MIN, align 4
  %328 = load i32, i32* @INT16_MAX, align 4
  %329 = call i32 @av_clipf(float %326, i32 %327, i32 %328)
  %330 = load i32*, i32** %7, align 8
  %331 = load i32, i32* %10, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  store i32 %329, i32* %333, align 4
  br label %334

334:                                              ; preds = %321
  %335 = load i32, i32* %10, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %10, align 4
  br label %309

337:                                              ; preds = %309
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 6
  %340 = load i32, i32* %339, align 8
  %341 = sext i32 %340 to i64
  %342 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 4
  %344 = load i64, i64* %343, align 8
  %345 = mul i64 %341, %344
  %346 = load i32*, i32** %7, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 %345
  store i32* %347, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %348

348:                                              ; preds = %406, %337
  %349 = load i32, i32* %9, align 4
  %350 = sext i32 %349 to i64
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 4
  %353 = load i64, i64* %352, align 8
  %354 = icmp ult i64 %350, %353
  br i1 %354, label %355, label %409

355:                                              ; preds = %348
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 7
  %358 = load float**, float*** %357, align 8
  %359 = load i32, i32* %9, align 4
  %360 = add nsw i32 %359, 0
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds float*, float** %358, i64 %361
  %363 = load float*, float** %362, align 8
  %364 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds float, float* %363, i64 %367
  %369 = load i32, i32* %11, align 4
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 6
  %372 = load i32, i32* %371, align 8
  %373 = mul nsw i32 %369, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds float, float* %368, i64 %374
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 6
  %378 = load i32, i32* %377, align 8
  %379 = mul nsw i32 4, %378
  %380 = call i32 @memset(float* %375, i32 0, i32 %379)
  %381 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i32 0, i32 7
  %383 = load float**, float*** %382, align 8
  %384 = load i32, i32* %9, align 4
  %385 = add nsw i32 %384, 2
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds float*, float** %383, i64 %386
  %388 = load float*, float** %387, align 8
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds float, float* %388, i64 %392
  %394 = load i32, i32* %11, align 4
  %395 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 6
  %397 = load i32, i32* %396, align 8
  %398 = mul nsw i32 %394, %397
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds float, float* %393, i64 %399
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 6
  %403 = load i32, i32* %402, align 8
  %404 = mul nsw i32 4, %403
  %405 = call i32 @memset(float* %400, i32 0, i32 %404)
  br label %406

406:                                              ; preds = %355
  %407 = load i32, i32* %9, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %9, align 4
  br label %348

409:                                              ; preds = %348
  %410 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 3
  %412 = load float*, float** %411, align 8
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 4
  %415 = load i64, i64* %414, align 8
  %416 = load i32, i32* %11, align 4
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 6
  %419 = load i32, i32* %418, align 8
  %420 = mul nsw i32 %416, %419
  %421 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = add nsw i32 %420, %423
  %425 = sext i32 %424 to i64
  %426 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %426, i32 0, i32 5
  %428 = load i64, i64* %427, align 8
  %429 = add i64 %425, %428
  %430 = mul i64 %415, %429
  %431 = getelementptr inbounds float, float* %412, i64 %430
  %432 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %432, i32 0, i32 6
  %434 = load i32, i32* %433, align 8
  %435 = mul nsw i32 4, %434
  %436 = sext i32 %435 to i64
  %437 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %437, i32 0, i32 4
  %439 = load i64, i64* %438, align 8
  %440 = mul i64 %436, %439
  %441 = trunc i64 %440 to i32
  %442 = call i32 @memset(float* %431, i32 0, i32 %441)
  br label %443

443:                                              ; preds = %409
  %444 = load i32, i32* %11, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %11, align 4
  br label %58

446:                                              ; preds = %58
  %447 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  %451 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 5
  %453 = load i64, i64* %452, align 8
  %454 = add i64 %453, %450
  store i64 %454, i64* %452, align 8
  %455 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 5
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %459 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = sub nsw i32 32768, %460
  %462 = sext i32 %461 to i64
  %463 = icmp uge i64 %457, %462
  br i1 %463, label %464, label %492

464:                                              ; preds = %446
  %465 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %465, i32 0, i32 3
  %467 = load float*, float** %466, align 8
  %468 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %468, i32 0, i32 3
  %470 = load float*, float** %469, align 8
  %471 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %471, i32 0, i32 4
  %473 = load i64, i64* %472, align 8
  %474 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %474, i32 0, i32 5
  %476 = load i64, i64* %475, align 8
  %477 = mul i64 %473, %476
  %478 = getelementptr inbounds float, float* %470, i64 %477
  %479 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = mul nsw i32 4, %481
  %483 = sext i32 %482 to i64
  %484 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 4
  %486 = load i64, i64* %485, align 8
  %487 = mul i64 %483, %486
  %488 = trunc i64 %487 to i32
  %489 = call i32 @memcpy(float* %467, float* %478, i32 %488)
  %490 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %490, i32 0, i32 5
  store i64 0, i64* %491, align 8
  br label %492

492:                                              ; preds = %464, %446
  store i32 0, i32* %4, align 4
  br label %493

493:                                              ; preds = %492, %55, %47, %17
  %494 = load i32, i32* %4, align 4
  ret i32 %494
}

declare dso_local i64 @skip_label(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @read_noise_data(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @read_wave_data(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @add_noise(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @add_waves(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_clipf(float, i32, i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
