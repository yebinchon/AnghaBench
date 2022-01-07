; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_imc_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_imc_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, double*, i32*, i64*, i32*, i32*, i32*, double*, i32*, i32*, i8**, i8**, i64*, i8**, i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"frame header check failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"got %X.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@BANDS = common dso_local global i32 0, align 4
@COEFFS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"scalefactor out of range\0A\00", align 1
@band_tab = common dso_local global i32* null, align 8
@AV_CODEC_ID_IAC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Bit allocations failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Inverse quantization of coefficients failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_24__*, i32)* @imc_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imc_decode_block(%struct.TYPE_26__* %0, %struct.TYPE_24__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i64 %22
  store %struct.TYPE_25__* %23, %struct.TYPE_25__** %17, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = call i32 @get_bits(i32* %25, i32 9)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 24
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %3
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %32 = load i32, i32* @AV_LOG_ERROR, align 4
  %33 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %31, i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %34, i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %38, i32* %4, align 4
  br label %595

39:                                               ; preds = %3
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = call i32 @get_bits(i32* %41, i32 3)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %66, %54
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @BANDS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 1
  %62 = load double*, double** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %62, i64 %64
  store double 1.000000e+00, double* %65, align 8
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %55

69:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %81, %69
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @COEFFS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 14
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %70

84:                                               ; preds = %70
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %49
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = call i8* @get_bits1(i32* %89)
  %91 = ptrtoint i8* %90 to i32
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @imc_read_level_coeffs_raw(%struct.TYPE_24__* %96, i32 %97, i32* %100)
  br label %109

102:                                              ; preds = %87
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @imc_read_level_coeffs(%struct.TYPE_24__* %103, i32 %104, i32* %107)
  br label %109

109:                                              ; preds = %102, %95
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 3
  %120 = load i64*, i64** %119, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @imc_decode_level_coefficients_raw(%struct.TYPE_24__* %114, i32* %117, i64* %120, i32* %123)
  br label %157

125:                                              ; preds = %109
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %125
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 3
  %136 = load i64*, i64** %135, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @imc_decode_level_coefficients(%struct.TYPE_24__* %130, i32* %133, i64* %136, i32* %139)
  br label %156

141:                                              ; preds = %125
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 1
  %148 = load double*, double** %147, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 3
  %151 = load i64*, i64** %150, align 8
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @imc_decode_level_coefficients2(%struct.TYPE_24__* %142, i32* %145, double* %148, i64* %151, i32* %154)
  br label %156

156:                                              ; preds = %141, %129
  br label %157

157:                                              ; preds = %156, %113
  store i32 0, i32* %10, align 4
  br label %158

158:                                              ; preds = %178, %157
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @BANDS, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %181

162:                                              ; preds = %158
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 3
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @INT_MAX, align 8
  %171 = icmp sgt i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %162
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %174 = load i32, i32* @AV_LOG_ERROR, align 4
  %175 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %173, i32 %174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %176 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %176, i32* %4, align 4
  br label %595

177:                                              ; preds = %162
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  br label %158

181:                                              ; preds = %158
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 1
  %184 = load double*, double** %183, align 8
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 3
  %187 = load i64*, i64** %186, align 8
  %188 = call i32 @memcpy(double* %184, i64* %187, i32 128)
  store i32 0, i32* %15, align 4
  %189 = load i32, i32* %8, align 4
  %190 = and i32 %189, 1
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %246

192:                                              ; preds = %181
  store i32 0, i32* %10, align 4
  br label %193

193:                                              ; preds = %242, %192
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @BANDS, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %245

197:                                              ; preds = %193
  %198 = load i32*, i32** @band_tab, align 8
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** @band_tab, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %203, %208
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %209, i32* %215, align 4
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 13
  %218 = load i8**, i8*** %217, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  store i8* null, i8** %221, align 8
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 4
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %228, 2
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 6
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %229, i32* %235, align 4
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 7
  %238 = load double*, double** %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds double, double* %238, i64 %240
  store double 1.000000e+00, double* %241, align 8
  br label %242

242:                                              ; preds = %197
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %10, align 4
  br label %193

245:                                              ; preds = %193
  br label %347

246:                                              ; preds = %181
  store i32 0, i32* %10, align 4
  br label %247

247:                                              ; preds = %289, %246
  %248 = load i32, i32* %10, align 4
  %249 = load i32, i32* @BANDS, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %292

251:                                              ; preds = %247
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 16
  br i1 %259, label %260, label %269

260:                                              ; preds = %251
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 5
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %10, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  store i32 0, i32* %266, align 4
  %267 = load i32, i32* %15, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %15, align 4
  br label %288

269:                                              ; preds = %251
  %270 = load i32*, i32** @band_tab, align 8
  %271 = load i32, i32* %10, align 4
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load i32*, i32** @band_tab, align 8
  %277 = load i32, i32* %10, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 %275, %280
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 5
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  store i32 %281, i32* %287, align 4
  br label %288

288:                                              ; preds = %269, %260
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %10, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %10, align 4
  br label %247

292:                                              ; preds = %247
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 13
  %295 = load i8**, i8*** %294, align 8
  %296 = load i32, i32* @BANDS, align 4
  %297 = sext i32 %296 to i64
  %298 = mul i64 %297, 4
  %299 = trunc i64 %298 to i32
  %300 = call i32 @memset(i8** %295, i32 0, i32 %299)
  store i32 0, i32* %10, align 4
  br label %301

301:                                              ; preds = %326, %292
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* @BANDS, align 4
  %304 = sub nsw i32 %303, 1
  %305 = icmp slt i32 %302, %304
  br i1 %305, label %306, label %329

306:                                              ; preds = %301
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 5
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %10, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %325

315:                                              ; preds = %306
  %316 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %316, i32 0, i32 0
  %318 = call i8* @get_bits1(i32* %317)
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 13
  %321 = load i8**, i8*** %320, align 8
  %322 = load i32, i32* %10, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8*, i8** %321, i64 %323
  store i8* %318, i8** %324, align 8
  br label %325

325:                                              ; preds = %315, %306
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %10, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %10, align 4
  br label %301

329:                                              ; preds = %301
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 3
  %333 = load i64*, i64** %332, align 8
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 4
  %336 = load i32*, i32** %335, align 8
  %337 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %337, i32 0, i32 5
  %339 = load i32*, i32** %338, align 8
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i32 0, i32 6
  %342 = load i32*, i32** %341, align 8
  %343 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i32 0, i32 7
  %345 = load double*, double** %344, align 8
  %346 = call i32 @imc_calculate_coeffs(%struct.TYPE_24__* %330, i64* %333, i32* %336, i32* %339, i32* %342, double* %345)
  br label %347

347:                                              ; preds = %329, %245
  store i32 0, i32* %16, align 4
  %348 = load i32, i32* %8, align 4
  %349 = and i32 %348, 2
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %430

351:                                              ; preds = %347
  %352 = load i32, i32* %16, align 4
  %353 = add nsw i32 %352, 15
  store i32 %353, i32* %16, align 4
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %355 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %354, i32 0, i32 8
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  store i32 5, i32* %357, align 4
  %358 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %359 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %358, i32 0, i32 9
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  store i32 5, i32* %361, align 4
  %362 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %363 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %362, i32 0, i32 9
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 1
  store i32 5, i32* %365, align 4
  %366 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %367 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %366, i32 0, i32 9
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 2
  store i32 5, i32* %369, align 4
  store i32 1, i32* %10, align 4
  br label %370

370:                                              ; preds = %426, %351
  %371 = load i32, i32* %10, align 4
  %372 = icmp slt i32 %371, 4
  br i1 %372, label %373, label %429

373:                                              ; preds = %370
  %374 = load i32, i32* %8, align 4
  %375 = and i32 %374, 1
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %373
  store i32 5, i32* %14, align 4
  br label %389

378:                                              ; preds = %373
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %379, i32 0, i32 2
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %10, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = icmp eq i32 %385, 16
  %387 = zext i1 %386 to i64
  %388 = select i1 %386, i32 0, i32 5
  store i32 %388, i32* %14, align 4
  br label %389

389:                                              ; preds = %378, %377
  %390 = load i32, i32* %14, align 4
  %391 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %392 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %391, i32 0, i32 8
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %10, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  store i32 %390, i32* %396, align 4
  %397 = load i32*, i32** @band_tab, align 8
  %398 = load i32, i32* %10, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  store i32 %401, i32* %11, align 4
  br label %402

402:                                              ; preds = %422, %389
  %403 = load i32, i32* %11, align 4
  %404 = load i32*, i32** @band_tab, align 8
  %405 = load i32, i32* %10, align 4
  %406 = add nsw i32 %405, 1
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %404, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = icmp slt i32 %403, %409
  br i1 %410, label %411, label %425

411:                                              ; preds = %402
  %412 = load i32, i32* %14, align 4
  %413 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %414 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %413, i32 0, i32 9
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* %11, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  store i32 %412, i32* %418, align 4
  %419 = load i32, i32* %14, align 4
  %420 = load i32, i32* %16, align 4
  %421 = add nsw i32 %420, %419
  store i32 %421, i32* %16, align 4
  br label %422

422:                                              ; preds = %411
  %423 = load i32, i32* %11, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %11, align 4
  br label %402

425:                                              ; preds = %402
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %10, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %10, align 4
  br label %370

429:                                              ; preds = %370
  br label %430

430:                                              ; preds = %429, %347
  %431 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = load i64, i64* @AV_CODEC_ID_IAC, align 8
  %435 = icmp eq i64 %433, %434
  br i1 %435, label %436, label %458

436:                                              ; preds = %430
  %437 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %438 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %437, i32 0, i32 5
  %439 = load i32*, i32** %438, align 8
  %440 = load i32, i32* @BANDS, align 4
  %441 = sub nsw i32 %440, 1
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %439, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = icmp ne i32 %444, 0
  %446 = xor i1 %445, true
  %447 = xor i1 %446, true
  %448 = zext i1 %447 to i32
  %449 = load i32, i32* %16, align 4
  %450 = add nsw i32 %449, %448
  store i32 %450, i32* %16, align 4
  %451 = load i32, i32* %8, align 4
  %452 = and i32 %451, 2
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %457, label %454

454:                                              ; preds = %436
  %455 = load i32, i32* %16, align 4
  %456 = add nsw i32 %455, 16
  store i32 %456, i32* %16, align 4
  br label %457

457:                                              ; preds = %454, %436
  br label %458

458:                                              ; preds = %457, %430
  %459 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %460 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %461 = load i32, i32* %8, align 4
  %462 = load i32, i32* %16, align 4
  %463 = sub nsw i32 512, %462
  %464 = sext i32 %463 to i64
  %465 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %466 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %465, i32 0, i32 0
  %467 = call i64 @get_bits_count(i32* %466)
  %468 = sub nsw i64 %464, %467
  %469 = load i32, i32* %13, align 4
  %470 = call i32 @bit_allocation(%struct.TYPE_24__* %459, %struct.TYPE_25__* %460, i32 %461, i64 %468, i32 %469)
  store i32 %470, i32* %12, align 4
  %471 = icmp slt i32 %470, 0
  br i1 %471, label %472, label %479

472:                                              ; preds = %458
  %473 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %474 = load i32, i32* @AV_LOG_ERROR, align 4
  %475 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %473, i32 %474, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %476 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %477 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %476, i32 0, i32 0
  store i32 1, i32* %477, align 8
  %478 = load i32, i32* %12, align 4
  store i32 %478, i32* %4, align 4
  br label %595

479:                                              ; preds = %458
  %480 = load i32, i32* %8, align 4
  %481 = and i32 %480, 1
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %499

483:                                              ; preds = %479
  store i32 0, i32* %10, align 4
  br label %484

484:                                              ; preds = %495, %483
  %485 = load i32, i32* %10, align 4
  %486 = load i32, i32* @BANDS, align 4
  %487 = icmp slt i32 %485, %486
  br i1 %487, label %488, label %498

488:                                              ; preds = %484
  %489 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %490 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %489, i32 0, i32 10
  %491 = load i8**, i8*** %490, align 8
  %492 = load i32, i32* %10, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i8*, i8** %491, i64 %493
  store i8* null, i8** %494, align 8
  br label %495

495:                                              ; preds = %488
  %496 = load i32, i32* %10, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %10, align 4
  br label %484

498:                                              ; preds = %484
  br label %503

499:                                              ; preds = %479
  %500 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %501 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %502 = call i32 @imc_refine_bit_allocation(%struct.TYPE_24__* %500, %struct.TYPE_25__* %501)
  br label %503

503:                                              ; preds = %499, %498
  store i32 0, i32* %10, align 4
  br label %504

504:                                              ; preds = %560, %503
  %505 = load i32, i32* %10, align 4
  %506 = load i32, i32* @BANDS, align 4
  %507 = icmp slt i32 %505, %506
  br i1 %507, label %508, label %563

508:                                              ; preds = %504
  %509 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %510 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %509, i32 0, i32 12
  %511 = load i64*, i64** %510, align 8
  %512 = load i32, i32* %10, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i64, i64* %511, i64 %513
  store i64 0, i64* %514, align 8
  %515 = load i32*, i32** @band_tab, align 8
  %516 = load i32, i32* %10, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32, i32* %515, i64 %517
  %519 = load i32, i32* %518, align 4
  store i32 %519, i32* %11, align 4
  br label %520

520:                                              ; preds = %556, %508
  %521 = load i32, i32* %11, align 4
  %522 = load i32*, i32** @band_tab, align 8
  %523 = load i32, i32* %10, align 4
  %524 = add nsw i32 %523, 1
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %522, i64 %525
  %527 = load i32, i32* %526, align 4
  %528 = icmp slt i32 %521, %527
  br i1 %528, label %529, label %559

529:                                              ; preds = %520
  %530 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %531 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %530, i32 0, i32 10
  %532 = load i8**, i8*** %531, align 8
  %533 = load i32, i32* %11, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i8*, i8** %532, i64 %534
  %536 = load i8*, i8** %535, align 8
  %537 = icmp ne i8* %536, null
  br i1 %537, label %555, label %538

538:                                              ; preds = %529
  %539 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %540 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %539, i32 0, i32 9
  %541 = load i32*, i32** %540, align 8
  %542 = load i32, i32* %11, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i32, i32* %541, i64 %543
  %545 = load i32, i32* %544, align 4
  %546 = sext i32 %545 to i64
  %547 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %548 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %547, i32 0, i32 12
  %549 = load i64*, i64** %548, align 8
  %550 = load i32, i32* %10, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i64, i64* %549, i64 %551
  %553 = load i64, i64* %552, align 8
  %554 = add nsw i64 %553, %546
  store i64 %554, i64* %552, align 8
  br label %555

555:                                              ; preds = %538, %529
  br label %556

556:                                              ; preds = %555
  %557 = load i32, i32* %11, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %11, align 4
  br label %520

559:                                              ; preds = %520
  br label %560

560:                                              ; preds = %559
  %561 = load i32, i32* %10, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %10, align 4
  br label %504

563:                                              ; preds = %504
  %564 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %565 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %564, i32 0, i32 11
  %566 = load i8**, i8*** %565, align 8
  %567 = call i32 @memset(i8** %566, i32 0, i32 8)
  %568 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %569 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %570 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %571 = call i32 @imc_get_coeffs(%struct.TYPE_26__* %568, %struct.TYPE_24__* %569, %struct.TYPE_25__* %570)
  %572 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %573 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %574 = load i32, i32* %8, align 4
  %575 = call i64 @inverse_quant_coeff(%struct.TYPE_24__* %572, %struct.TYPE_25__* %573, i32 %574)
  %576 = icmp slt i64 %575, 0
  br i1 %576, label %577, label %584

577:                                              ; preds = %563
  %578 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %579 = load i32, i32* @AV_LOG_ERROR, align 4
  %580 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %578, i32 %579, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %581 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %582 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %581, i32 0, i32 0
  store i32 1, i32* %582, align 8
  %583 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %583, i32* %4, align 4
  br label %595

584:                                              ; preds = %563
  %585 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %586 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %585, i32 0, i32 10
  %587 = load i8**, i8*** %586, align 8
  %588 = call i32 @memset(i8** %587, i32 0, i32 8)
  %589 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %590 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %591 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %592 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %591, i32 0, i32 1
  %593 = load i32, i32* %592, align 8
  %594 = call i32 @imc_imdct256(%struct.TYPE_24__* %589, %struct.TYPE_25__* %590, i32 %593)
  store i32 0, i32* %4, align 4
  br label %595

595:                                              ; preds = %584, %577, %472, %172, %30
  %596 = load i32, i32* %4, align 4
  ret i32 %596
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*, ...) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @imc_read_level_coeffs_raw(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @imc_read_level_coeffs(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @imc_decode_level_coefficients_raw(%struct.TYPE_24__*, i32*, i64*, i32*) #1

declare dso_local i32 @imc_decode_level_coefficients(%struct.TYPE_24__*, i32*, i64*, i32*) #1

declare dso_local i32 @imc_decode_level_coefficients2(%struct.TYPE_24__*, i32*, double*, i64*, i32*) #1

declare dso_local i32 @memcpy(double*, i64*, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @imc_calculate_coeffs(%struct.TYPE_24__*, i64*, i32*, i32*, i32*, double*) #1

declare dso_local i32 @bit_allocation(%struct.TYPE_24__*, %struct.TYPE_25__*, i32, i64, i32) #1

declare dso_local i64 @get_bits_count(i32*) #1

declare dso_local i32 @imc_refine_bit_allocation(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @imc_get_coeffs(%struct.TYPE_26__*, %struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i64 @inverse_quant_coeff(%struct.TYPE_24__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @imc_imdct256(%struct.TYPE_24__*, %struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
