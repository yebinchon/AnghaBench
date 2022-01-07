; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix_matrix.c_avresample_build_matrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix_matrix.c_avresample_build_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_CH_LAYOUT_STEREO_DOWNMIX = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_STEREO = common dso_local global i64 0, align 8
@AVRESAMPLE_MAX_CHANNELS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_CH_FRONT_CENTER = common dso_local global i32 0, align 4
@FRONT_LEFT = common dso_local global i64 0, align 8
@FRONT_CENTER = common dso_local global i64 0, align 8
@FRONT_RIGHT = common dso_local global i64 0, align 8
@M_SQRT1_2 = common dso_local global double 0.000000e+00, align 8
@M_SQRT2 = common dso_local global double 0.000000e+00, align 8
@AV_CH_BACK_CENTER = common dso_local global i32 0, align 4
@AV_CH_BACK_LEFT = common dso_local global i64 0, align 8
@BACK_LEFT = common dso_local global i64 0, align 8
@BACK_CENTER = common dso_local global i64 0, align 8
@BACK_RIGHT = common dso_local global i64 0, align 8
@AV_CH_SIDE_LEFT = common dso_local global i64 0, align 8
@SIDE_LEFT = common dso_local global i64 0, align 8
@SIDE_RIGHT = common dso_local global i64 0, align 8
@AV_CH_FRONT_LEFT = common dso_local global i64 0, align 8
@AV_MATRIX_ENCODING_DOLBY = common dso_local global i32 0, align 4
@AV_MATRIX_ENCODING_DPLII = common dso_local global i32 0, align 4
@SQRT3_2 = common dso_local global double 0.000000e+00, align 8
@AV_CH_FRONT_LEFT_OF_CENTER = common dso_local global i32 0, align 4
@FRONT_LEFT_OF_CENTER = common dso_local global i64 0, align 8
@FRONT_RIGHT_OF_CENTER = common dso_local global i64 0, align 8
@AV_CH_LOW_FREQUENCY = common dso_local global i32 0, align 4
@LOW_FREQUENCY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avresample_build_matrix(i64 %0, i64 %1, double %2, double %3, double %4, i32 %5, double* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [64 x [64 x double]], align 16
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store double %2, double* %13, align 8
  store double %3, double* %14, align 8
  store double %4, double* %15, align 8
  store i32 %5, i32* %16, align 4
  store double* %6, double** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %30 = bitcast [64 x [64 x double]]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 32768, i1 false)
  store double 0.000000e+00, double* %26, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @AV_CH_LAYOUT_STEREO_DOWNMIX, align 8
  %33 = and i64 %31, %32
  %34 = load i64, i64* @AV_CH_LAYOUT_STEREO_DOWNMIX, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %9
  %37 = load i64, i64* @AV_CH_LAYOUT_STEREO, align 8
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %36, %9
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = xor i64 %40, -1
  %42 = and i64 %39, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %25, align 4
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @av_get_channel_layout_nb_channels(i64 %44)
  store i32 %45, i32* %27, align 4
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @av_get_channel_layout_nb_channels(i64 %46)
  store i32 %47, i32* %28, align 4
  %48 = load double*, double** %17, align 8
  %49 = load i32, i32* %28, align 4
  %50 = load i32, i32* %18, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memset(double* %48, i32 0, i32 %54)
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %38
  %59 = load i32, i32* %27, align 4
  %60 = load i32, i32* @AVRESAMPLE_MAX_CHANNELS, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %38
  %63 = load i32, i32* @EINVAL, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %10, align 4
  br label %958

65:                                               ; preds = %58
  %66 = load i64, i64* %12, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %28, align 4
  %70 = load i32, i32* @AVRESAMPLE_MAX_CHANNELS, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %65
  %73 = load i32, i32* @EINVAL, align 4
  %74 = call i32 @AVERROR(i32 %73)
  store i32 %74, i32* %10, align 4
  br label %958

75:                                               ; preds = %68
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @sane_layout(i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @sane_layout(i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %84, i32* %10, align 4
  br label %958

85:                                               ; preds = %79
  store i32 0, i32* %20, align 4
  br label %86

86:                                               ; preds = %106, %85
  %87 = load i32, i32* %20, align 4
  %88 = icmp slt i32 %87, 64
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %12, align 8
  %92 = and i64 %90, %91
  %93 = load i32, i32* %20, align 4
  %94 = zext i32 %93 to i64
  %95 = shl i64 1, %94
  %96 = and i64 %92, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %89
  %99 = load i32, i32* %20, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %100
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [64 x double], [64 x double]* %101, i64 0, i64 %103
  store double 1.000000e+00, double* %104, align 8
  br label %105

105:                                              ; preds = %98, %89
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %20, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %20, align 4
  br label %86

109:                                              ; preds = %86
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %160

114:                                              ; preds = %109
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* @AV_CH_LAYOUT_STEREO, align 8
  %117 = and i64 %115, %116
  %118 = load i64, i64* @AV_CH_LAYOUT_STEREO, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %157

120:                                              ; preds = %114
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* @AV_CH_LAYOUT_STEREO, align 8
  %123 = and i64 %121, %122
  %124 = load i64, i64* @AV_CH_LAYOUT_STEREO, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %141

126:                                              ; preds = %120
  %127 = load double, double* %13, align 8
  %128 = load i64, i64* @FRONT_LEFT, align 8
  %129 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %128
  %130 = load i64, i64* @FRONT_CENTER, align 8
  %131 = getelementptr inbounds [64 x double], [64 x double]* %129, i64 0, i64 %130
  %132 = load double, double* %131, align 8
  %133 = fadd double %132, %127
  store double %133, double* %131, align 8
  %134 = load double, double* %13, align 8
  %135 = load i64, i64* @FRONT_RIGHT, align 8
  %136 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %135
  %137 = load i64, i64* @FRONT_CENTER, align 8
  %138 = getelementptr inbounds [64 x double], [64 x double]* %136, i64 0, i64 %137
  %139 = load double, double* %138, align 8
  %140 = fadd double %139, %134
  store double %140, double* %138, align 8
  br label %156

141:                                              ; preds = %120
  %142 = load double, double* @M_SQRT1_2, align 8
  %143 = load i64, i64* @FRONT_LEFT, align 8
  %144 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %143
  %145 = load i64, i64* @FRONT_CENTER, align 8
  %146 = getelementptr inbounds [64 x double], [64 x double]* %144, i64 0, i64 %145
  %147 = load double, double* %146, align 8
  %148 = fadd double %147, %142
  store double %148, double* %146, align 8
  %149 = load double, double* @M_SQRT1_2, align 8
  %150 = load i64, i64* @FRONT_RIGHT, align 8
  %151 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %150
  %152 = load i64, i64* @FRONT_CENTER, align 8
  %153 = getelementptr inbounds [64 x double], [64 x double]* %151, i64 0, i64 %152
  %154 = load double, double* %153, align 8
  %155 = fadd double %154, %149
  store double %155, double* %153, align 8
  br label %156

156:                                              ; preds = %141, %126
  br label %159

157:                                              ; preds = %114
  %158 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %158, i32* %10, align 4
  br label %958

159:                                              ; preds = %156
  br label %160

160:                                              ; preds = %159, %109
  %161 = load i32, i32* %25, align 4
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* @AV_CH_LAYOUT_STEREO, align 8
  %164 = and i64 %162, %163
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %204

166:                                              ; preds = %160
  %167 = load i64, i64* %12, align 8
  %168 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %169 = sext i32 %168 to i64
  %170 = and i64 %167, %169
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %201

172:                                              ; preds = %166
  %173 = load double, double* @M_SQRT1_2, align 8
  %174 = load i64, i64* @FRONT_CENTER, align 8
  %175 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %174
  %176 = load i64, i64* @FRONT_LEFT, align 8
  %177 = getelementptr inbounds [64 x double], [64 x double]* %175, i64 0, i64 %176
  %178 = load double, double* %177, align 8
  %179 = fadd double %178, %173
  store double %179, double* %177, align 8
  %180 = load double, double* @M_SQRT1_2, align 8
  %181 = load i64, i64* @FRONT_CENTER, align 8
  %182 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %181
  %183 = load i64, i64* @FRONT_RIGHT, align 8
  %184 = getelementptr inbounds [64 x double], [64 x double]* %182, i64 0, i64 %183
  %185 = load double, double* %184, align 8
  %186 = fadd double %185, %180
  store double %186, double* %184, align 8
  %187 = load i64, i64* %11, align 8
  %188 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %189 = sext i32 %188 to i64
  %190 = and i64 %187, %189
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %172
  %193 = load double, double* %13, align 8
  %194 = load double, double* @M_SQRT2, align 8
  %195 = fmul double %193, %194
  %196 = load i64, i64* @FRONT_CENTER, align 8
  %197 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %196
  %198 = load i64, i64* @FRONT_CENTER, align 8
  %199 = getelementptr inbounds [64 x double], [64 x double]* %197, i64 0, i64 %198
  store double %195, double* %199, align 8
  br label %200

200:                                              ; preds = %192, %172
  br label %203

201:                                              ; preds = %166
  %202 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %202, i32* %10, align 4
  br label %958

203:                                              ; preds = %200
  br label %204

204:                                              ; preds = %203, %160
  %205 = load i32, i32* %25, align 4
  %206 = load i32, i32* @AV_CH_BACK_CENTER, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %347

209:                                              ; preds = %204
  %210 = load i64, i64* %12, align 8
  %211 = load i64, i64* @AV_CH_BACK_LEFT, align 8
  %212 = and i64 %210, %211
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %229

214:                                              ; preds = %209
  %215 = load double, double* @M_SQRT1_2, align 8
  %216 = load i64, i64* @BACK_LEFT, align 8
  %217 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %216
  %218 = load i64, i64* @BACK_CENTER, align 8
  %219 = getelementptr inbounds [64 x double], [64 x double]* %217, i64 0, i64 %218
  %220 = load double, double* %219, align 8
  %221 = fadd double %220, %215
  store double %221, double* %219, align 8
  %222 = load double, double* @M_SQRT1_2, align 8
  %223 = load i64, i64* @BACK_RIGHT, align 8
  %224 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %223
  %225 = load i64, i64* @BACK_CENTER, align 8
  %226 = getelementptr inbounds [64 x double], [64 x double]* %224, i64 0, i64 %225
  %227 = load double, double* %226, align 8
  %228 = fadd double %227, %222
  store double %228, double* %226, align 8
  br label %346

229:                                              ; preds = %209
  %230 = load i64, i64* %12, align 8
  %231 = load i64, i64* @AV_CH_SIDE_LEFT, align 8
  %232 = and i64 %230, %231
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %249

234:                                              ; preds = %229
  %235 = load double, double* @M_SQRT1_2, align 8
  %236 = load i64, i64* @SIDE_LEFT, align 8
  %237 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %236
  %238 = load i64, i64* @BACK_CENTER, align 8
  %239 = getelementptr inbounds [64 x double], [64 x double]* %237, i64 0, i64 %238
  %240 = load double, double* %239, align 8
  %241 = fadd double %240, %235
  store double %241, double* %239, align 8
  %242 = load double, double* @M_SQRT1_2, align 8
  %243 = load i64, i64* @SIDE_RIGHT, align 8
  %244 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %243
  %245 = load i64, i64* @BACK_CENTER, align 8
  %246 = getelementptr inbounds [64 x double], [64 x double]* %244, i64 0, i64 %245
  %247 = load double, double* %246, align 8
  %248 = fadd double %247, %242
  store double %248, double* %246, align 8
  br label %345

249:                                              ; preds = %229
  %250 = load i64, i64* %12, align 8
  %251 = load i64, i64* @AV_CH_FRONT_LEFT, align 8
  %252 = and i64 %250, %251
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %325

254:                                              ; preds = %249
  %255 = load i32, i32* %19, align 4
  %256 = load i32, i32* @AV_MATRIX_ENCODING_DOLBY, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = load i32, i32* %19, align 4
  %260 = load i32, i32* @AV_MATRIX_ENCODING_DPLII, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %305

262:                                              ; preds = %258, %254
  %263 = load i32, i32* %25, align 4
  %264 = sext i32 %263 to i64
  %265 = load i64, i64* @AV_CH_BACK_LEFT, align 8
  %266 = load i64, i64* @AV_CH_SIDE_LEFT, align 8
  %267 = or i64 %265, %266
  %268 = and i64 %264, %267
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %289

270:                                              ; preds = %262
  %271 = load double, double* %14, align 8
  %272 = load double, double* @M_SQRT1_2, align 8
  %273 = fmul double %271, %272
  %274 = load i64, i64* @FRONT_LEFT, align 8
  %275 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %274
  %276 = load i64, i64* @BACK_CENTER, align 8
  %277 = getelementptr inbounds [64 x double], [64 x double]* %275, i64 0, i64 %276
  %278 = load double, double* %277, align 8
  %279 = fsub double %278, %273
  store double %279, double* %277, align 8
  %280 = load double, double* %14, align 8
  %281 = load double, double* @M_SQRT1_2, align 8
  %282 = fmul double %280, %281
  %283 = load i64, i64* @FRONT_RIGHT, align 8
  %284 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %283
  %285 = load i64, i64* @BACK_CENTER, align 8
  %286 = getelementptr inbounds [64 x double], [64 x double]* %284, i64 0, i64 %285
  %287 = load double, double* %286, align 8
  %288 = fadd double %287, %282
  store double %288, double* %286, align 8
  br label %304

289:                                              ; preds = %262
  %290 = load double, double* %14, align 8
  %291 = load i64, i64* @FRONT_LEFT, align 8
  %292 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %291
  %293 = load i64, i64* @BACK_CENTER, align 8
  %294 = getelementptr inbounds [64 x double], [64 x double]* %292, i64 0, i64 %293
  %295 = load double, double* %294, align 8
  %296 = fsub double %295, %290
  store double %296, double* %294, align 8
  %297 = load double, double* %14, align 8
  %298 = load i64, i64* @FRONT_RIGHT, align 8
  %299 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %298
  %300 = load i64, i64* @BACK_CENTER, align 8
  %301 = getelementptr inbounds [64 x double], [64 x double]* %299, i64 0, i64 %300
  %302 = load double, double* %301, align 8
  %303 = fadd double %302, %297
  store double %303, double* %301, align 8
  br label %304

304:                                              ; preds = %289, %270
  br label %324

305:                                              ; preds = %258
  %306 = load double, double* %14, align 8
  %307 = load double, double* @M_SQRT1_2, align 8
  %308 = fmul double %306, %307
  %309 = load i64, i64* @FRONT_LEFT, align 8
  %310 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %309
  %311 = load i64, i64* @BACK_CENTER, align 8
  %312 = getelementptr inbounds [64 x double], [64 x double]* %310, i64 0, i64 %311
  %313 = load double, double* %312, align 8
  %314 = fadd double %313, %308
  store double %314, double* %312, align 8
  %315 = load double, double* %14, align 8
  %316 = load double, double* @M_SQRT1_2, align 8
  %317 = fmul double %315, %316
  %318 = load i64, i64* @FRONT_RIGHT, align 8
  %319 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %318
  %320 = load i64, i64* @BACK_CENTER, align 8
  %321 = getelementptr inbounds [64 x double], [64 x double]* %319, i64 0, i64 %320
  %322 = load double, double* %321, align 8
  %323 = fadd double %322, %317
  store double %323, double* %321, align 8
  br label %324

324:                                              ; preds = %305, %304
  br label %344

325:                                              ; preds = %249
  %326 = load i64, i64* %12, align 8
  %327 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %328 = sext i32 %327 to i64
  %329 = and i64 %326, %328
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %341

331:                                              ; preds = %325
  %332 = load double, double* %14, align 8
  %333 = load double, double* @M_SQRT1_2, align 8
  %334 = fmul double %332, %333
  %335 = load i64, i64* @FRONT_CENTER, align 8
  %336 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %335
  %337 = load i64, i64* @BACK_CENTER, align 8
  %338 = getelementptr inbounds [64 x double], [64 x double]* %336, i64 0, i64 %337
  %339 = load double, double* %338, align 8
  %340 = fadd double %339, %334
  store double %340, double* %338, align 8
  br label %343

341:                                              ; preds = %325
  %342 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %342, i32* %10, align 4
  br label %958

343:                                              ; preds = %331
  br label %344

344:                                              ; preds = %343, %324
  br label %345

345:                                              ; preds = %344, %234
  br label %346

346:                                              ; preds = %345, %214
  br label %347

347:                                              ; preds = %346, %204
  %348 = load i32, i32* %25, align 4
  %349 = sext i32 %348 to i64
  %350 = load i64, i64* @AV_CH_BACK_LEFT, align 8
  %351 = and i64 %349, %350
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %548

353:                                              ; preds = %347
  %354 = load i64, i64* %12, align 8
  %355 = load i32, i32* @AV_CH_BACK_CENTER, align 4
  %356 = sext i32 %355 to i64
  %357 = and i64 %354, %356
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %374

359:                                              ; preds = %353
  %360 = load double, double* @M_SQRT1_2, align 8
  %361 = load i64, i64* @BACK_CENTER, align 8
  %362 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %361
  %363 = load i64, i64* @BACK_LEFT, align 8
  %364 = getelementptr inbounds [64 x double], [64 x double]* %362, i64 0, i64 %363
  %365 = load double, double* %364, align 8
  %366 = fadd double %365, %360
  store double %366, double* %364, align 8
  %367 = load double, double* @M_SQRT1_2, align 8
  %368 = load i64, i64* @BACK_CENTER, align 8
  %369 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %368
  %370 = load i64, i64* @BACK_RIGHT, align 8
  %371 = getelementptr inbounds [64 x double], [64 x double]* %369, i64 0, i64 %370
  %372 = load double, double* %371, align 8
  %373 = fadd double %372, %367
  store double %373, double* %371, align 8
  br label %547

374:                                              ; preds = %353
  %375 = load i64, i64* %12, align 8
  %376 = load i64, i64* @AV_CH_SIDE_LEFT, align 8
  %377 = and i64 %375, %376
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %413

379:                                              ; preds = %374
  %380 = load i64, i64* %11, align 8
  %381 = load i64, i64* @AV_CH_SIDE_LEFT, align 8
  %382 = and i64 %380, %381
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %399

384:                                              ; preds = %379
  %385 = load double, double* @M_SQRT1_2, align 8
  %386 = load i64, i64* @SIDE_LEFT, align 8
  %387 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %386
  %388 = load i64, i64* @BACK_LEFT, align 8
  %389 = getelementptr inbounds [64 x double], [64 x double]* %387, i64 0, i64 %388
  %390 = load double, double* %389, align 8
  %391 = fadd double %390, %385
  store double %391, double* %389, align 8
  %392 = load double, double* @M_SQRT1_2, align 8
  %393 = load i64, i64* @SIDE_RIGHT, align 8
  %394 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %393
  %395 = load i64, i64* @BACK_RIGHT, align 8
  %396 = getelementptr inbounds [64 x double], [64 x double]* %394, i64 0, i64 %395
  %397 = load double, double* %396, align 8
  %398 = fadd double %397, %392
  store double %398, double* %396, align 8
  br label %412

399:                                              ; preds = %379
  %400 = load i64, i64* @SIDE_LEFT, align 8
  %401 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %400
  %402 = load i64, i64* @BACK_LEFT, align 8
  %403 = getelementptr inbounds [64 x double], [64 x double]* %401, i64 0, i64 %402
  %404 = load double, double* %403, align 8
  %405 = fadd double %404, 1.000000e+00
  store double %405, double* %403, align 8
  %406 = load i64, i64* @SIDE_RIGHT, align 8
  %407 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %406
  %408 = load i64, i64* @BACK_RIGHT, align 8
  %409 = getelementptr inbounds [64 x double], [64 x double]* %407, i64 0, i64 %408
  %410 = load double, double* %409, align 8
  %411 = fadd double %410, 1.000000e+00
  store double %411, double* %409, align 8
  br label %412

412:                                              ; preds = %399, %384
  br label %546

413:                                              ; preds = %374
  %414 = load i64, i64* %12, align 8
  %415 = load i64, i64* @AV_CH_FRONT_LEFT, align 8
  %416 = and i64 %414, %415
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %517

418:                                              ; preds = %413
  %419 = load i32, i32* %19, align 4
  %420 = load i32, i32* @AV_MATRIX_ENCODING_DOLBY, align 4
  %421 = icmp eq i32 %419, %420
  br i1 %421, label %422, label %459

422:                                              ; preds = %418
  %423 = load double, double* %14, align 8
  %424 = load double, double* @M_SQRT1_2, align 8
  %425 = fmul double %423, %424
  %426 = load i64, i64* @FRONT_LEFT, align 8
  %427 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %426
  %428 = load i64, i64* @BACK_LEFT, align 8
  %429 = getelementptr inbounds [64 x double], [64 x double]* %427, i64 0, i64 %428
  %430 = load double, double* %429, align 8
  %431 = fsub double %430, %425
  store double %431, double* %429, align 8
  %432 = load double, double* %14, align 8
  %433 = load double, double* @M_SQRT1_2, align 8
  %434 = fmul double %432, %433
  %435 = load i64, i64* @FRONT_LEFT, align 8
  %436 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %435
  %437 = load i64, i64* @BACK_RIGHT, align 8
  %438 = getelementptr inbounds [64 x double], [64 x double]* %436, i64 0, i64 %437
  %439 = load double, double* %438, align 8
  %440 = fsub double %439, %434
  store double %440, double* %438, align 8
  %441 = load double, double* %14, align 8
  %442 = load double, double* @M_SQRT1_2, align 8
  %443 = fmul double %441, %442
  %444 = load i64, i64* @FRONT_RIGHT, align 8
  %445 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %444
  %446 = load i64, i64* @BACK_LEFT, align 8
  %447 = getelementptr inbounds [64 x double], [64 x double]* %445, i64 0, i64 %446
  %448 = load double, double* %447, align 8
  %449 = fadd double %448, %443
  store double %449, double* %447, align 8
  %450 = load double, double* %14, align 8
  %451 = load double, double* @M_SQRT1_2, align 8
  %452 = fmul double %450, %451
  %453 = load i64, i64* @FRONT_RIGHT, align 8
  %454 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %453
  %455 = load i64, i64* @BACK_RIGHT, align 8
  %456 = getelementptr inbounds [64 x double], [64 x double]* %454, i64 0, i64 %455
  %457 = load double, double* %456, align 8
  %458 = fadd double %457, %452
  store double %458, double* %456, align 8
  br label %516

459:                                              ; preds = %418
  %460 = load i32, i32* %19, align 4
  %461 = load i32, i32* @AV_MATRIX_ENCODING_DPLII, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %500

463:                                              ; preds = %459
  %464 = load double, double* %14, align 8
  %465 = load double, double* @SQRT3_2, align 8
  %466 = fmul double %464, %465
  %467 = load i64, i64* @FRONT_LEFT, align 8
  %468 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %467
  %469 = load i64, i64* @BACK_LEFT, align 8
  %470 = getelementptr inbounds [64 x double], [64 x double]* %468, i64 0, i64 %469
  %471 = load double, double* %470, align 8
  %472 = fsub double %471, %466
  store double %472, double* %470, align 8
  %473 = load double, double* %14, align 8
  %474 = load double, double* @M_SQRT1_2, align 8
  %475 = fmul double %473, %474
  %476 = load i64, i64* @FRONT_LEFT, align 8
  %477 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %476
  %478 = load i64, i64* @BACK_RIGHT, align 8
  %479 = getelementptr inbounds [64 x double], [64 x double]* %477, i64 0, i64 %478
  %480 = load double, double* %479, align 8
  %481 = fsub double %480, %475
  store double %481, double* %479, align 8
  %482 = load double, double* %14, align 8
  %483 = load double, double* @M_SQRT1_2, align 8
  %484 = fmul double %482, %483
  %485 = load i64, i64* @FRONT_RIGHT, align 8
  %486 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %485
  %487 = load i64, i64* @BACK_LEFT, align 8
  %488 = getelementptr inbounds [64 x double], [64 x double]* %486, i64 0, i64 %487
  %489 = load double, double* %488, align 8
  %490 = fadd double %489, %484
  store double %490, double* %488, align 8
  %491 = load double, double* %14, align 8
  %492 = load double, double* @SQRT3_2, align 8
  %493 = fmul double %491, %492
  %494 = load i64, i64* @FRONT_RIGHT, align 8
  %495 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %494
  %496 = load i64, i64* @BACK_RIGHT, align 8
  %497 = getelementptr inbounds [64 x double], [64 x double]* %495, i64 0, i64 %496
  %498 = load double, double* %497, align 8
  %499 = fadd double %498, %493
  store double %499, double* %497, align 8
  br label %515

500:                                              ; preds = %459
  %501 = load double, double* %14, align 8
  %502 = load i64, i64* @FRONT_LEFT, align 8
  %503 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %502
  %504 = load i64, i64* @BACK_LEFT, align 8
  %505 = getelementptr inbounds [64 x double], [64 x double]* %503, i64 0, i64 %504
  %506 = load double, double* %505, align 8
  %507 = fadd double %506, %501
  store double %507, double* %505, align 8
  %508 = load double, double* %14, align 8
  %509 = load i64, i64* @FRONT_RIGHT, align 8
  %510 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %509
  %511 = load i64, i64* @BACK_RIGHT, align 8
  %512 = getelementptr inbounds [64 x double], [64 x double]* %510, i64 0, i64 %511
  %513 = load double, double* %512, align 8
  %514 = fadd double %513, %508
  store double %514, double* %512, align 8
  br label %515

515:                                              ; preds = %500, %463
  br label %516

516:                                              ; preds = %515, %422
  br label %545

517:                                              ; preds = %413
  %518 = load i64, i64* %12, align 8
  %519 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %520 = sext i32 %519 to i64
  %521 = and i64 %518, %520
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %523, label %542

523:                                              ; preds = %517
  %524 = load double, double* %14, align 8
  %525 = load double, double* @M_SQRT1_2, align 8
  %526 = fmul double %524, %525
  %527 = load i64, i64* @FRONT_CENTER, align 8
  %528 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %527
  %529 = load i64, i64* @BACK_LEFT, align 8
  %530 = getelementptr inbounds [64 x double], [64 x double]* %528, i64 0, i64 %529
  %531 = load double, double* %530, align 8
  %532 = fadd double %531, %526
  store double %532, double* %530, align 8
  %533 = load double, double* %14, align 8
  %534 = load double, double* @M_SQRT1_2, align 8
  %535 = fmul double %533, %534
  %536 = load i64, i64* @FRONT_CENTER, align 8
  %537 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %536
  %538 = load i64, i64* @BACK_RIGHT, align 8
  %539 = getelementptr inbounds [64 x double], [64 x double]* %537, i64 0, i64 %538
  %540 = load double, double* %539, align 8
  %541 = fadd double %540, %535
  store double %541, double* %539, align 8
  br label %544

542:                                              ; preds = %517
  %543 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %543, i32* %10, align 4
  br label %958

544:                                              ; preds = %523
  br label %545

545:                                              ; preds = %544, %516
  br label %546

546:                                              ; preds = %545, %412
  br label %547

547:                                              ; preds = %546, %359
  br label %548

548:                                              ; preds = %547, %347
  %549 = load i32, i32* %25, align 4
  %550 = sext i32 %549 to i64
  %551 = load i64, i64* @AV_CH_SIDE_LEFT, align 8
  %552 = and i64 %550, %551
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %749

554:                                              ; preds = %548
  %555 = load i64, i64* %12, align 8
  %556 = load i64, i64* @AV_CH_BACK_LEFT, align 8
  %557 = and i64 %555, %556
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %559, label %593

559:                                              ; preds = %554
  %560 = load i64, i64* %11, align 8
  %561 = load i64, i64* @AV_CH_BACK_LEFT, align 8
  %562 = and i64 %560, %561
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %579

564:                                              ; preds = %559
  %565 = load double, double* @M_SQRT1_2, align 8
  %566 = load i64, i64* @BACK_LEFT, align 8
  %567 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %566
  %568 = load i64, i64* @SIDE_LEFT, align 8
  %569 = getelementptr inbounds [64 x double], [64 x double]* %567, i64 0, i64 %568
  %570 = load double, double* %569, align 8
  %571 = fadd double %570, %565
  store double %571, double* %569, align 8
  %572 = load double, double* @M_SQRT1_2, align 8
  %573 = load i64, i64* @BACK_RIGHT, align 8
  %574 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %573
  %575 = load i64, i64* @SIDE_RIGHT, align 8
  %576 = getelementptr inbounds [64 x double], [64 x double]* %574, i64 0, i64 %575
  %577 = load double, double* %576, align 8
  %578 = fadd double %577, %572
  store double %578, double* %576, align 8
  br label %592

579:                                              ; preds = %559
  %580 = load i64, i64* @BACK_LEFT, align 8
  %581 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %580
  %582 = load i64, i64* @SIDE_LEFT, align 8
  %583 = getelementptr inbounds [64 x double], [64 x double]* %581, i64 0, i64 %582
  %584 = load double, double* %583, align 8
  %585 = fadd double %584, 1.000000e+00
  store double %585, double* %583, align 8
  %586 = load i64, i64* @BACK_RIGHT, align 8
  %587 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %586
  %588 = load i64, i64* @SIDE_RIGHT, align 8
  %589 = getelementptr inbounds [64 x double], [64 x double]* %587, i64 0, i64 %588
  %590 = load double, double* %589, align 8
  %591 = fadd double %590, 1.000000e+00
  store double %591, double* %589, align 8
  br label %592

592:                                              ; preds = %579, %564
  br label %748

593:                                              ; preds = %554
  %594 = load i64, i64* %12, align 8
  %595 = load i32, i32* @AV_CH_BACK_CENTER, align 4
  %596 = sext i32 %595 to i64
  %597 = and i64 %594, %596
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %599, label %614

599:                                              ; preds = %593
  %600 = load double, double* @M_SQRT1_2, align 8
  %601 = load i64, i64* @BACK_CENTER, align 8
  %602 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %601
  %603 = load i64, i64* @SIDE_LEFT, align 8
  %604 = getelementptr inbounds [64 x double], [64 x double]* %602, i64 0, i64 %603
  %605 = load double, double* %604, align 8
  %606 = fadd double %605, %600
  store double %606, double* %604, align 8
  %607 = load double, double* @M_SQRT1_2, align 8
  %608 = load i64, i64* @BACK_CENTER, align 8
  %609 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %608
  %610 = load i64, i64* @SIDE_RIGHT, align 8
  %611 = getelementptr inbounds [64 x double], [64 x double]* %609, i64 0, i64 %610
  %612 = load double, double* %611, align 8
  %613 = fadd double %612, %607
  store double %613, double* %611, align 8
  br label %747

614:                                              ; preds = %593
  %615 = load i64, i64* %12, align 8
  %616 = load i64, i64* @AV_CH_FRONT_LEFT, align 8
  %617 = and i64 %615, %616
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %619, label %718

619:                                              ; preds = %614
  %620 = load i32, i32* %19, align 4
  %621 = load i32, i32* @AV_MATRIX_ENCODING_DOLBY, align 4
  %622 = icmp eq i32 %620, %621
  br i1 %622, label %623, label %660

623:                                              ; preds = %619
  %624 = load double, double* %14, align 8
  %625 = load double, double* @M_SQRT1_2, align 8
  %626 = fmul double %624, %625
  %627 = load i64, i64* @FRONT_LEFT, align 8
  %628 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %627
  %629 = load i64, i64* @SIDE_LEFT, align 8
  %630 = getelementptr inbounds [64 x double], [64 x double]* %628, i64 0, i64 %629
  %631 = load double, double* %630, align 8
  %632 = fsub double %631, %626
  store double %632, double* %630, align 8
  %633 = load double, double* %14, align 8
  %634 = load double, double* @M_SQRT1_2, align 8
  %635 = fmul double %633, %634
  %636 = load i64, i64* @FRONT_LEFT, align 8
  %637 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %636
  %638 = load i64, i64* @SIDE_RIGHT, align 8
  %639 = getelementptr inbounds [64 x double], [64 x double]* %637, i64 0, i64 %638
  %640 = load double, double* %639, align 8
  %641 = fsub double %640, %635
  store double %641, double* %639, align 8
  %642 = load double, double* %14, align 8
  %643 = load double, double* @M_SQRT1_2, align 8
  %644 = fmul double %642, %643
  %645 = load i64, i64* @FRONT_RIGHT, align 8
  %646 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %645
  %647 = load i64, i64* @SIDE_LEFT, align 8
  %648 = getelementptr inbounds [64 x double], [64 x double]* %646, i64 0, i64 %647
  %649 = load double, double* %648, align 8
  %650 = fadd double %649, %644
  store double %650, double* %648, align 8
  %651 = load double, double* %14, align 8
  %652 = load double, double* @M_SQRT1_2, align 8
  %653 = fmul double %651, %652
  %654 = load i64, i64* @FRONT_RIGHT, align 8
  %655 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %654
  %656 = load i64, i64* @SIDE_RIGHT, align 8
  %657 = getelementptr inbounds [64 x double], [64 x double]* %655, i64 0, i64 %656
  %658 = load double, double* %657, align 8
  %659 = fadd double %658, %653
  store double %659, double* %657, align 8
  br label %717

660:                                              ; preds = %619
  %661 = load i32, i32* %19, align 4
  %662 = load i32, i32* @AV_MATRIX_ENCODING_DPLII, align 4
  %663 = icmp eq i32 %661, %662
  br i1 %663, label %664, label %701

664:                                              ; preds = %660
  %665 = load double, double* %14, align 8
  %666 = load double, double* @SQRT3_2, align 8
  %667 = fmul double %665, %666
  %668 = load i64, i64* @FRONT_LEFT, align 8
  %669 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %668
  %670 = load i64, i64* @SIDE_LEFT, align 8
  %671 = getelementptr inbounds [64 x double], [64 x double]* %669, i64 0, i64 %670
  %672 = load double, double* %671, align 8
  %673 = fsub double %672, %667
  store double %673, double* %671, align 8
  %674 = load double, double* %14, align 8
  %675 = load double, double* @M_SQRT1_2, align 8
  %676 = fmul double %674, %675
  %677 = load i64, i64* @FRONT_LEFT, align 8
  %678 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %677
  %679 = load i64, i64* @SIDE_RIGHT, align 8
  %680 = getelementptr inbounds [64 x double], [64 x double]* %678, i64 0, i64 %679
  %681 = load double, double* %680, align 8
  %682 = fsub double %681, %676
  store double %682, double* %680, align 8
  %683 = load double, double* %14, align 8
  %684 = load double, double* @M_SQRT1_2, align 8
  %685 = fmul double %683, %684
  %686 = load i64, i64* @FRONT_RIGHT, align 8
  %687 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %686
  %688 = load i64, i64* @SIDE_LEFT, align 8
  %689 = getelementptr inbounds [64 x double], [64 x double]* %687, i64 0, i64 %688
  %690 = load double, double* %689, align 8
  %691 = fadd double %690, %685
  store double %691, double* %689, align 8
  %692 = load double, double* %14, align 8
  %693 = load double, double* @SQRT3_2, align 8
  %694 = fmul double %692, %693
  %695 = load i64, i64* @FRONT_RIGHT, align 8
  %696 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %695
  %697 = load i64, i64* @SIDE_RIGHT, align 8
  %698 = getelementptr inbounds [64 x double], [64 x double]* %696, i64 0, i64 %697
  %699 = load double, double* %698, align 8
  %700 = fadd double %699, %694
  store double %700, double* %698, align 8
  br label %716

701:                                              ; preds = %660
  %702 = load double, double* %14, align 8
  %703 = load i64, i64* @FRONT_LEFT, align 8
  %704 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %703
  %705 = load i64, i64* @SIDE_LEFT, align 8
  %706 = getelementptr inbounds [64 x double], [64 x double]* %704, i64 0, i64 %705
  %707 = load double, double* %706, align 8
  %708 = fadd double %707, %702
  store double %708, double* %706, align 8
  %709 = load double, double* %14, align 8
  %710 = load i64, i64* @FRONT_RIGHT, align 8
  %711 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %710
  %712 = load i64, i64* @SIDE_RIGHT, align 8
  %713 = getelementptr inbounds [64 x double], [64 x double]* %711, i64 0, i64 %712
  %714 = load double, double* %713, align 8
  %715 = fadd double %714, %709
  store double %715, double* %713, align 8
  br label %716

716:                                              ; preds = %701, %664
  br label %717

717:                                              ; preds = %716, %623
  br label %746

718:                                              ; preds = %614
  %719 = load i64, i64* %12, align 8
  %720 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %721 = sext i32 %720 to i64
  %722 = and i64 %719, %721
  %723 = icmp ne i64 %722, 0
  br i1 %723, label %724, label %743

724:                                              ; preds = %718
  %725 = load double, double* %14, align 8
  %726 = load double, double* @M_SQRT1_2, align 8
  %727 = fmul double %725, %726
  %728 = load i64, i64* @FRONT_CENTER, align 8
  %729 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %728
  %730 = load i64, i64* @SIDE_LEFT, align 8
  %731 = getelementptr inbounds [64 x double], [64 x double]* %729, i64 0, i64 %730
  %732 = load double, double* %731, align 8
  %733 = fadd double %732, %727
  store double %733, double* %731, align 8
  %734 = load double, double* %14, align 8
  %735 = load double, double* @M_SQRT1_2, align 8
  %736 = fmul double %734, %735
  %737 = load i64, i64* @FRONT_CENTER, align 8
  %738 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %737
  %739 = load i64, i64* @SIDE_RIGHT, align 8
  %740 = getelementptr inbounds [64 x double], [64 x double]* %738, i64 0, i64 %739
  %741 = load double, double* %740, align 8
  %742 = fadd double %741, %736
  store double %742, double* %740, align 8
  br label %745

743:                                              ; preds = %718
  %744 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %744, i32* %10, align 4
  br label %958

745:                                              ; preds = %724
  br label %746

746:                                              ; preds = %745, %717
  br label %747

747:                                              ; preds = %746, %599
  br label %748

748:                                              ; preds = %747, %592
  br label %749

749:                                              ; preds = %748, %548
  %750 = load i32, i32* %25, align 4
  %751 = load i32, i32* @AV_CH_FRONT_LEFT_OF_CENTER, align 4
  %752 = and i32 %750, %751
  %753 = icmp ne i32 %752, 0
  br i1 %753, label %754, label %797

754:                                              ; preds = %749
  %755 = load i64, i64* %12, align 8
  %756 = load i64, i64* @AV_CH_FRONT_LEFT, align 8
  %757 = and i64 %755, %756
  %758 = icmp ne i64 %757, 0
  br i1 %758, label %759, label %772

759:                                              ; preds = %754
  %760 = load i64, i64* @FRONT_LEFT, align 8
  %761 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %760
  %762 = load i64, i64* @FRONT_LEFT_OF_CENTER, align 8
  %763 = getelementptr inbounds [64 x double], [64 x double]* %761, i64 0, i64 %762
  %764 = load double, double* %763, align 8
  %765 = fadd double %764, 1.000000e+00
  store double %765, double* %763, align 8
  %766 = load i64, i64* @FRONT_RIGHT, align 8
  %767 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %766
  %768 = load i64, i64* @FRONT_RIGHT_OF_CENTER, align 8
  %769 = getelementptr inbounds [64 x double], [64 x double]* %767, i64 0, i64 %768
  %770 = load double, double* %769, align 8
  %771 = fadd double %770, 1.000000e+00
  store double %771, double* %769, align 8
  br label %796

772:                                              ; preds = %754
  %773 = load i64, i64* %12, align 8
  %774 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %775 = sext i32 %774 to i64
  %776 = and i64 %773, %775
  %777 = icmp ne i64 %776, 0
  br i1 %777, label %778, label %793

778:                                              ; preds = %772
  %779 = load double, double* @M_SQRT1_2, align 8
  %780 = load i64, i64* @FRONT_CENTER, align 8
  %781 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %780
  %782 = load i64, i64* @FRONT_LEFT_OF_CENTER, align 8
  %783 = getelementptr inbounds [64 x double], [64 x double]* %781, i64 0, i64 %782
  %784 = load double, double* %783, align 8
  %785 = fadd double %784, %779
  store double %785, double* %783, align 8
  %786 = load double, double* @M_SQRT1_2, align 8
  %787 = load i64, i64* @FRONT_CENTER, align 8
  %788 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %787
  %789 = load i64, i64* @FRONT_RIGHT_OF_CENTER, align 8
  %790 = getelementptr inbounds [64 x double], [64 x double]* %788, i64 0, i64 %789
  %791 = load double, double* %790, align 8
  %792 = fadd double %791, %786
  store double %792, double* %790, align 8
  br label %795

793:                                              ; preds = %772
  %794 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %794, i32* %10, align 4
  br label %958

795:                                              ; preds = %778
  br label %796

796:                                              ; preds = %795, %759
  br label %797

797:                                              ; preds = %796, %749
  %798 = load i32, i32* %25, align 4
  %799 = load i32, i32* @AV_CH_LOW_FREQUENCY, align 4
  %800 = and i32 %798, %799
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %802, label %844

802:                                              ; preds = %797
  %803 = load i64, i64* %12, align 8
  %804 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %805 = sext i32 %804 to i64
  %806 = and i64 %803, %805
  %807 = icmp ne i64 %806, 0
  br i1 %807, label %808, label %816

808:                                              ; preds = %802
  %809 = load double, double* %15, align 8
  %810 = load i64, i64* @FRONT_CENTER, align 8
  %811 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %810
  %812 = load i64, i64* @LOW_FREQUENCY, align 8
  %813 = getelementptr inbounds [64 x double], [64 x double]* %811, i64 0, i64 %812
  %814 = load double, double* %813, align 8
  %815 = fadd double %814, %809
  store double %815, double* %813, align 8
  br label %843

816:                                              ; preds = %802
  %817 = load i64, i64* %12, align 8
  %818 = load i64, i64* @AV_CH_FRONT_LEFT, align 8
  %819 = and i64 %817, %818
  %820 = icmp ne i64 %819, 0
  br i1 %820, label %821, label %840

821:                                              ; preds = %816
  %822 = load double, double* %15, align 8
  %823 = load double, double* @M_SQRT1_2, align 8
  %824 = fmul double %822, %823
  %825 = load i64, i64* @FRONT_LEFT, align 8
  %826 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %825
  %827 = load i64, i64* @LOW_FREQUENCY, align 8
  %828 = getelementptr inbounds [64 x double], [64 x double]* %826, i64 0, i64 %827
  %829 = load double, double* %828, align 8
  %830 = fadd double %829, %824
  store double %830, double* %828, align 8
  %831 = load double, double* %15, align 8
  %832 = load double, double* @M_SQRT1_2, align 8
  %833 = fmul double %831, %832
  %834 = load i64, i64* @FRONT_RIGHT, align 8
  %835 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %834
  %836 = load i64, i64* @LOW_FREQUENCY, align 8
  %837 = getelementptr inbounds [64 x double], [64 x double]* %835, i64 0, i64 %836
  %838 = load double, double* %837, align 8
  %839 = fadd double %838, %833
  store double %839, double* %837, align 8
  br label %842

840:                                              ; preds = %816
  %841 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %841, i32* %10, align 4
  br label %958

842:                                              ; preds = %821
  br label %843

843:                                              ; preds = %842, %808
  br label %844

844:                                              ; preds = %843, %797
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %845

845:                                              ; preds = %918, %844
  %846 = load i32, i32* %22, align 4
  %847 = load i32, i32* %28, align 4
  %848 = icmp slt i32 %846, %847
  br i1 %848, label %849, label %852

849:                                              ; preds = %845
  %850 = load i32, i32* %20, align 4
  %851 = icmp slt i32 %850, 64
  br label %852

852:                                              ; preds = %849, %845
  %853 = phi i1 [ false, %845 ], [ %851, %849 ]
  br i1 %853, label %854, label %921

854:                                              ; preds = %852
  store double 0.000000e+00, double* %29, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  br label %855

855:                                              ; preds = %901, %854
  %856 = load i32, i32* %23, align 4
  %857 = load i32, i32* %27, align 4
  %858 = icmp slt i32 %856, %857
  br i1 %858, label %859, label %862

859:                                              ; preds = %855
  %860 = load i32, i32* %21, align 4
  %861 = icmp slt i32 %860, 64
  br label %862

862:                                              ; preds = %859, %855
  %863 = phi i1 [ false, %855 ], [ %861, %859 ]
  br i1 %863, label %864, label %904

864:                                              ; preds = %862
  %865 = load i32, i32* %20, align 4
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %866
  %868 = load i32, i32* %21, align 4
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds [64 x double], [64 x double]* %867, i64 0, i64 %869
  %871 = load double, double* %870, align 8
  %872 = load double*, double** %17, align 8
  %873 = load i32, i32* %22, align 4
  %874 = load i32, i32* %18, align 4
  %875 = mul nsw i32 %873, %874
  %876 = load i32, i32* %23, align 4
  %877 = add nsw i32 %875, %876
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds double, double* %872, i64 %878
  store double %871, double* %879, align 8
  %880 = load i32, i32* %20, align 4
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds [64 x [64 x double]], [64 x [64 x double]]* %24, i64 0, i64 %881
  %883 = load i32, i32* %21, align 4
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds [64 x double], [64 x double]* %882, i64 0, i64 %884
  %886 = load double, double* %885, align 8
  %887 = call i64 @fabs(double %886)
  %888 = sitofp i64 %887 to double
  %889 = load double, double* %29, align 8
  %890 = fadd double %889, %888
  store double %890, double* %29, align 8
  %891 = load i64, i64* %11, align 8
  %892 = load i32, i32* %21, align 4
  %893 = zext i32 %892 to i64
  %894 = shl i64 1, %893
  %895 = and i64 %891, %894
  %896 = icmp ne i64 %895, 0
  br i1 %896, label %897, label %900

897:                                              ; preds = %864
  %898 = load i32, i32* %23, align 4
  %899 = add nsw i32 %898, 1
  store i32 %899, i32* %23, align 4
  br label %900

900:                                              ; preds = %897, %864
  br label %901

901:                                              ; preds = %900
  %902 = load i32, i32* %21, align 4
  %903 = add nsw i32 %902, 1
  store i32 %903, i32* %21, align 4
  br label %855

904:                                              ; preds = %862
  %905 = load double, double* %26, align 8
  %906 = load double, double* %29, align 8
  %907 = call double @FFMAX(double %905, double %906)
  store double %907, double* %26, align 8
  %908 = load i64, i64* %12, align 8
  %909 = load i32, i32* %20, align 4
  %910 = zext i32 %909 to i64
  %911 = shl i64 1, %910
  %912 = and i64 %908, %911
  %913 = icmp ne i64 %912, 0
  br i1 %913, label %914, label %917

914:                                              ; preds = %904
  %915 = load i32, i32* %22, align 4
  %916 = add nsw i32 %915, 1
  store i32 %916, i32* %22, align 4
  br label %917

917:                                              ; preds = %914, %904
  br label %918

918:                                              ; preds = %917
  %919 = load i32, i32* %20, align 4
  %920 = add nsw i32 %919, 1
  store i32 %920, i32* %20, align 4
  br label %845

921:                                              ; preds = %852
  %922 = load i32, i32* %16, align 4
  %923 = icmp ne i32 %922, 0
  br i1 %923, label %924, label %957

924:                                              ; preds = %921
  %925 = load double, double* %26, align 8
  %926 = fcmp ogt double %925, 1.000000e+00
  br i1 %926, label %927, label %957

927:                                              ; preds = %924
  store i32 0, i32* %20, align 4
  br label %928

928:                                              ; preds = %953, %927
  %929 = load i32, i32* %20, align 4
  %930 = load i32, i32* %28, align 4
  %931 = icmp slt i32 %929, %930
  br i1 %931, label %932, label %956

932:                                              ; preds = %928
  store i32 0, i32* %21, align 4
  br label %933

933:                                              ; preds = %949, %932
  %934 = load i32, i32* %21, align 4
  %935 = load i32, i32* %27, align 4
  %936 = icmp slt i32 %934, %935
  br i1 %936, label %937, label %952

937:                                              ; preds = %933
  %938 = load double, double* %26, align 8
  %939 = load double*, double** %17, align 8
  %940 = load i32, i32* %20, align 4
  %941 = load i32, i32* %18, align 4
  %942 = mul nsw i32 %940, %941
  %943 = load i32, i32* %21, align 4
  %944 = add nsw i32 %942, %943
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds double, double* %939, i64 %945
  %947 = load double, double* %946, align 8
  %948 = fdiv double %947, %938
  store double %948, double* %946, align 8
  br label %949

949:                                              ; preds = %937
  %950 = load i32, i32* %21, align 4
  %951 = add nsw i32 %950, 1
  store i32 %951, i32* %21, align 4
  br label %933

952:                                              ; preds = %933
  br label %953

953:                                              ; preds = %952
  %954 = load i32, i32* %20, align 4
  %955 = add nsw i32 %954, 1
  store i32 %955, i32* %20, align 4
  br label %928

956:                                              ; preds = %928
  br label %957

957:                                              ; preds = %956, %924, %921
  store i32 0, i32* %10, align 4
  br label %958

958:                                              ; preds = %957, %840, %793, %743, %542, %341, %201, %157, %83, %72, %62
  %959 = load i32, i32* %10, align 4
  ret i32 %959
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_get_channel_layout_nb_channels(i64) #2

declare dso_local i32 @memset(double*, i32, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @sane_layout(i64) #2

declare dso_local i64 @fabs(double) #2

declare dso_local double @FFMAX(double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
