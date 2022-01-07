; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_ch.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { float***, i32*, i32 }

@DCA_LBR_TIME_SAMPLES = common dso_local global i32 0, align 4
@ff_dca_rsd_level_2a = common dso_local global float* null, align 8
@ff_dca_rsd_level_2b = common dso_local global float* null, align 8
@ff_dca_rsd_pack_5_in_8 = common dso_local global i32* null, align 8
@ff_dca_rsd_level_3 = common dso_local global float* null, align 8
@ff_dca_rsd_level_5 = common dso_local global float* null, align 8
@ff_dca_rsd_pack_3_in_7 = common dso_local global i64** null, align 8
@ff_dca_rsd_level_8 = common dso_local global float* null, align 8
@ff_dca_vlc_rsd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ff_dca_rsd_level_16 = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32, i32)* @parse_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_ch(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load float***, float**** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float**, float*** %19, i64 %21
  %23 = load float**, float*** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float*, float** %23, i64 %25
  %27 = load float*, float** %26, align 8
  store float* %27, float** %11, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = call i64 @ensure_bits(i32* %29, i32 20)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  br label %327

33:                                               ; preds = %5
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = call i64 @get_bits1(i32* %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %279 [
    i32 1, label %39
    i32 2, label %84
    i32 3, label %175
    i32 4, label %225
    i32 5, label %253
  ]

39:                                               ; preds = %33
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = call i32 @get_bits_left(i32* %41)
  %43 = sdiv i32 %42, 8
  %44 = load i32, i32* @DCA_LBR_TIME_SAMPLES, align 4
  %45 = sdiv i32 %44, 8
  %46 = call i32 @FFMIN(i32 %43, i32 %45)
  store i32 %46, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %76, %39
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %47
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = call i64 @get_bits(i32* %53, i32 8)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %72, %51
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load float*, float** @ff_dca_rsd_level_2a, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = ashr i32 %61, %62
  %64 = and i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %60, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %11, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  store float %67, float* %71, align 4
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %56

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  %79 = load float*, float** %11, align 8
  %80 = getelementptr inbounds float, float* %79, i64 8
  store float* %80, float** %11, align 8
  br label %47

81:                                               ; preds = %47
  %82 = load i32, i32* %15, align 4
  %83 = mul nsw i32 %82, 8
  store i32 %83, i32* %12, align 4
  br label %281

84:                                               ; preds = %33
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %125

87:                                               ; preds = %84
  store i32 0, i32* %12, align 4
  br label %88

88:                                               ; preds = %121, %87
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @DCA_LBR_TIME_SAMPLES, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = call i32 @get_bits_left(i32* %94)
  %96 = icmp sge i32 %95, 2
  br label %97

97:                                               ; preds = %92, %88
  %98 = phi i1 [ false, %88 ], [ %96, %92 ]
  br i1 %98, label %99, label %124

99:                                               ; preds = %97
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = call i64 @get_bits1(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load float*, float** @ff_dca_rsd_level_2b, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = call i64 @get_bits1(i32* %107)
  %109 = getelementptr inbounds float, float* %105, i64 %108
  %110 = load float, float* %109, align 4
  %111 = load float*, float** %11, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %111, i64 %113
  store float %110, float* %114, align 4
  br label %120

115:                                              ; preds = %99
  %116 = load float*, float** %11, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %116, i64 %118
  store float 0.000000e+00, float* %119, align 4
  br label %120

120:                                              ; preds = %115, %104
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %88

124:                                              ; preds = %97
  br label %174

125:                                              ; preds = %84
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = call i32 @get_bits_left(i32* %127)
  %129 = sdiv i32 %128, 8
  %130 = load i32, i32* @DCA_LBR_TIME_SAMPLES, align 4
  %131 = add nsw i32 %130, 4
  %132 = sdiv i32 %131, 5
  %133 = call i32 @FFMIN(i32 %129, i32 %132)
  store i32 %133, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %166, %125
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %171

138:                                              ; preds = %134
  %139 = load i32*, i32** @ff_dca_rsd_pack_5_in_8, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = call i64 @get_bits(i32* %141, i32 8)
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %145

145:                                              ; preds = %162, %138
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %146, 5
  br i1 %147, label %148, label %165

148:                                              ; preds = %145
  %149 = load float*, float** @ff_dca_rsd_level_3, align 8
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %13, align 4
  %152 = mul nsw i32 %151, 2
  %153 = ashr i32 %150, %152
  %154 = and i32 %153, 3
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %149, i64 %155
  %157 = load float, float* %156, align 4
  %158 = load float*, float** %11, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %158, i64 %160
  store float %157, float* %161, align 4
  br label %162

162:                                              ; preds = %148
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  br label %145

165:                                              ; preds = %145
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  %169 = load float*, float** %11, align 8
  %170 = getelementptr inbounds float, float* %169, i64 5
  store float* %170, float** %11, align 8
  br label %134

171:                                              ; preds = %134
  %172 = load i32, i32* %15, align 4
  %173 = mul nsw i32 %172, 5
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %171, %124
  br label %281

175:                                              ; preds = %33
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = call i32 @get_bits_left(i32* %177)
  %179 = sdiv i32 %178, 7
  %180 = load i32, i32* @DCA_LBR_TIME_SAMPLES, align 4
  %181 = add nsw i32 %180, 2
  %182 = sdiv i32 %181, 3
  %183 = call i32 @FFMIN(i32 %179, i32 %182)
  store i32 %183, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %184

184:                                              ; preds = %217, %175
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %15, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %222

188:                                              ; preds = %184
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = call i64 @get_bits(i32* %190, i32 7)
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %193

193:                                              ; preds = %213, %188
  %194 = load i32, i32* %13, align 4
  %195 = icmp slt i32 %194, 3
  br i1 %195, label %196, label %216

196:                                              ; preds = %193
  %197 = load float*, float** @ff_dca_rsd_level_5, align 8
  %198 = load i64**, i64*** @ff_dca_rsd_pack_3_in_7, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64*, i64** %198, i64 %200
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds float, float* %197, i64 %206
  %208 = load float, float* %207, align 4
  %209 = load float*, float** %11, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %209, i64 %211
  store float %208, float* %212, align 4
  br label %213

213:                                              ; preds = %196
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %13, align 4
  br label %193

216:                                              ; preds = %193
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %12, align 4
  %220 = load float*, float** %11, align 8
  %221 = getelementptr inbounds float, float* %220, i64 3
  store float* %221, float** %11, align 8
  br label %184

222:                                              ; preds = %184
  %223 = load i32, i32* %15, align 4
  %224 = mul nsw i32 %223, 3
  store i32 %224, i32* %12, align 4
  br label %281

225:                                              ; preds = %33
  store i32 0, i32* %12, align 4
  br label %226

226:                                              ; preds = %249, %225
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* @DCA_LBR_TIME_SAMPLES, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %226
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 2
  %233 = call i32 @get_bits_left(i32* %232)
  %234 = icmp sge i32 %233, 6
  br label %235

235:                                              ; preds = %230, %226
  %236 = phi i1 [ false, %226 ], [ %234, %230 ]
  br i1 %236, label %237, label %252

237:                                              ; preds = %235
  %238 = load float*, float** @ff_dca_rsd_level_8, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 2
  %241 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ff_dca_vlc_rsd, i32 0, i32 0), align 4
  %242 = call i64 @get_vlc2(i32* %240, i32 %241, i32 6, i32 1)
  %243 = getelementptr inbounds float, float* %238, i64 %242
  %244 = load float, float* %243, align 4
  %245 = load float*, float** %11, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %245, i64 %247
  store float %244, float* %248, align 4
  br label %249

249:                                              ; preds = %237
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %12, align 4
  br label %226

252:                                              ; preds = %235
  br label %281

253:                                              ; preds = %33
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 2
  %256 = call i32 @get_bits_left(i32* %255)
  %257 = sdiv i32 %256, 4
  %258 = load i32, i32* @DCA_LBR_TIME_SAMPLES, align 4
  %259 = call i32 @FFMIN(i32 %257, i32 %258)
  store i32 %259, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %260

260:                                              ; preds = %275, %253
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* %15, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %278

264:                                              ; preds = %260
  %265 = load float*, float** @ff_dca_rsd_level_16, align 8
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 2
  %268 = call i64 @get_bits(i32* %267, i32 4)
  %269 = getelementptr inbounds float, float* %265, i64 %268
  %270 = load float, float* %269, align 4
  %271 = load float*, float** %11, align 8
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %271, i64 %273
  store float %270, float* %274, align 4
  br label %275

275:                                              ; preds = %264
  %276 = load i32, i32* %12, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %12, align 4
  br label %260

278:                                              ; preds = %260
  br label %281

279:                                              ; preds = %33
  %280 = call i32 @av_assert0(i32 0)
  br label %281

281:                                              ; preds = %279, %278, %252, %222, %174, %81
  %282 = load i32, i32* %10, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %281
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 2
  %287 = call i32 @get_bits_left(i32* %286)
  %288 = icmp slt i32 %287, 20
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  br label %327

290:                                              ; preds = %284, %281
  br label %291

291:                                              ; preds = %313, %290
  %292 = load i32, i32* %12, align 4
  %293 = load i32, i32* @DCA_LBR_TIME_SAMPLES, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %316

295:                                              ; preds = %291
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %297 = load i32, i32* %8, align 4
  %298 = call float @lbr_rand(%struct.TYPE_5__* %296, i32 %297)
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 0
  %301 = load float***, float**** %300, align 8
  %302 = load i32, i32* %7, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float**, float*** %301, i64 %303
  %305 = load float**, float*** %304, align 8
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float*, float** %305, i64 %307
  %309 = load float*, float** %308, align 8
  %310 = load i32, i32* %12, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float, float* %309, i64 %311
  store float %298, float* %312, align 4
  br label %313

313:                                              ; preds = %295
  %314 = load i32, i32* %12, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %12, align 4
  br label %291

316:                                              ; preds = %291
  %317 = load i32, i32* %8, align 4
  %318 = shl i32 1, %317
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = or i32 %325, %318
  store i32 %326, i32* %324, align 4
  br label %327

327:                                              ; preds = %316, %289, %32
  ret void
}

declare dso_local i64 @ensure_bits(i32*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i64 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local float @lbr_rand(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
