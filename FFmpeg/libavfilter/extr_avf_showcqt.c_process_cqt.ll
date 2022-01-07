; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_process_cqt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_process_cqt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, float*, float*, i32, i32, float*, float*, i64, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { float, float }
%struct.TYPE_7__ = type { float, float, float, float }

@AV_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @process_cqt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_cqt(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 14
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %157, label %13

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %53, %13
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load float*, float** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  %27 = load float, float* %26, align 4
  %28 = fmul float %27, 5.000000e-01
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 11
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 11
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load float, float* %43, align 4
  %45 = fadd float %36, %44
  %46 = fmul float %28, %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load float*, float** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  store float %46, float* %52, align 4
  br label %53

53:                                               ; preds = %20
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %113

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = sitofp i32 %64 to float
  %66 = fdiv float 1.000000e+00, %65
  store float %66, float* %5, align 4
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %109, %61
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %67
  store float 0.000000e+00, float* %6, align 4
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %96, %73
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load float*, float** %82, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %83, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load float, float* %6, align 4
  %95 = fadd float %94, %93
  store float %95, float* %6, align 4
  br label %96

96:                                               ; preds = %80
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %74

99:                                               ; preds = %74
  %100 = load float, float* %5, align 4
  %101 = load float, float* %6, align 4
  %102 = fmul float %100, %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load float*, float** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  store float %102, float* %108, align 4
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %67

112:                                              ; preds = %67
  br label %113

113:                                              ; preds = %112, %56
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %153, %113
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %156

120:                                              ; preds = %114
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load float*, float** %122, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %123, i64 %125
  %127 = load float, float* %126, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 13
  %130 = load i32, i32* %129, align 4
  %131 = call float @calculate_gamma(float %127, i32 %130)
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load float*, float** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %134, i64 %136
  store float %131, float* %137, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load float*, float** %139, align 8
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %140, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fadd float %144, 0x3F1A36E2E0000000
  %146 = fdiv float 1.000000e+00, %145
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 5
  %149 = load float*, float** %148, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %149, i64 %151
  store float %146, float* %152, align 4
  br label %153

153:                                              ; preds = %120
  %154 = load i32, i32* %3, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %3, align 4
  br label %114

156:                                              ; preds = %114
  br label %157

157:                                              ; preds = %156, %1
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %197, %157
  %159 = load i32, i32* %3, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %200

164:                                              ; preds = %158
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 6
  %167 = load float*, float** %166, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %167, i64 %169
  %171 = load float, float* %170, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 11
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load float, float* %178, align 4
  %180 = fmul float %179, %171
  store float %180, float* %178, align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 6
  %183 = load float*, float** %182, align 8
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %183, i64 %185
  %187 = load float, float* %186, align 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 11
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = load i32, i32* %3, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load float, float* %194, align 4
  %196 = fmul float %195, %187
  store float %196, float* %194, align 4
  br label %197

197:                                              ; preds = %164
  %198 = load i32, i32* %3, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %3, align 4
  br label %158

200:                                              ; preds = %158
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = icmp sgt i32 %203, 1
  br i1 %204, label %205, label %290

205:                                              ; preds = %200
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = sitofp i32 %208 to float
  %210 = fdiv float 1.000000e+00, %209
  store float %210, float* %7, align 4
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %286, %205
  %212 = load i32, i32* %3, align 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %289

217:                                              ; preds = %211
  %218 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %218, i8 0, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %260, %217
  %220 = load i32, i32* %4, align 4
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %263

225:                                              ; preds = %219
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 11
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %3, align 4
  %233 = mul nsw i32 %231, %232
  %234 = load i32, i32* %4, align 4
  %235 = add nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load float, float* %238, align 4
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %241 = load float, float* %240, align 4
  %242 = fadd float %241, %239
  store float %242, float* %240, align 4
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 11
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %244, align 8
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %3, align 4
  %250 = mul nsw i32 %248, %249
  %251 = load i32, i32* %4, align 4
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 1
  %256 = load float, float* %255, align 4
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %258 = load float, float* %257, align 4
  %259 = fadd float %258, %256
  store float %259, float* %257, align 4
  br label %260

260:                                              ; preds = %225
  %261 = load i32, i32* %4, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %4, align 4
  br label %219

263:                                              ; preds = %219
  %264 = load float, float* %7, align 4
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %266 = load float, float* %265, align 4
  %267 = fmul float %264, %266
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 11
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  %271 = load i32, i32* %3, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  store float %267, float* %274, align 4
  %275 = load float, float* %7, align 4
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %277 = load float, float* %276, align 4
  %278 = fmul float %275, %277
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 11
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %280, align 8
  %282 = load i32, i32* %3, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 1
  store float %278, float* %285, align 4
  br label %286

286:                                              ; preds = %263
  %287 = load i32, i32* %3, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %3, align 4
  br label %211

289:                                              ; preds = %211
  br label %290

290:                                              ; preds = %289, %200
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 7
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %313

296:                                              ; preds = %290
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 12
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 11
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %301, align 8
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 10
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 8
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @rgb_from_cqt(i32 %299, %struct.TYPE_8__* %302, i32 %305, i32 %308, i32 %311)
  br label %333

313:                                              ; preds = %290
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 12
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 11
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %318, align 8
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 10
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 9
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 8
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @yuv_from_cqt(i32 %316, %struct.TYPE_8__* %319, i32 %322, i32 %325, i32 %328, i32 %331)
  br label %333

333:                                              ; preds = %313, %296
  ret void
}

declare dso_local float @calculate_gamma(float, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rgb_from_cqt(i32, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @yuv_from_cqt(i32, %struct.TYPE_8__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
