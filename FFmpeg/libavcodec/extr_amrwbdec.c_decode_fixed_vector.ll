; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_fixed_vector.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_fixed_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMRWB_SFR_SIZE = common dso_local global i32 0, align 4
@pulses_nb_per_mode_tr = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i64*, i64*, i32)* @decode_fixed_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_fixed_vector(float* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x [6 x i32]], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 129
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 2, i32 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %243 [
    i32 129, label %19
    i32 128, label %38
    i32 136, label %57
    i32 135, label %76
    i32 134, label %113
    i32 133, label %132
    i32 132, label %160
    i32 131, label %215
    i32 130, label %215
  ]

19:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %9, i64 0, i64 %25
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 0
  %28 = load i64*, i64** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @decode_1p_track(i32* %27, i64 %32, i32 5, i32 1)
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %20

37:                                               ; preds = %20
  br label %243

38:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %53, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %9, i64 0, i64 %44
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %45, i64 0, i64 0
  %47 = load i64*, i64** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @decode_1p_track(i32* %46, i64 %51, i32 4, i32 1)
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %39

56:                                               ; preds = %39
  br label %243

57:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %72, %57
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %9, i64 0, i64 %63
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %64, i64 0, i64 0
  %66 = load i64*, i64** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @decode_2p_track(i32* %65, i64 %70, i32 4, i32 1)
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %58

75:                                               ; preds = %58
  br label %243

76:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %91, %76
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %9, i64 0, i64 %82
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %83, i64 0, i64 0
  %85 = load i64*, i64** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @decode_3p_track(i32* %84, i64 %89, i32 4, i32 1)
  br label %91

91:                                               ; preds = %80
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %77

94:                                               ; preds = %77
  store i32 2, i32* %11, align 4
  br label %95

95:                                               ; preds = %109, %94
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %9, i64 0, i64 %100
  %102 = getelementptr inbounds [6 x i32], [6 x i32]* %101, i64 0, i64 0
  %103 = load i64*, i64** %7, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @decode_2p_track(i32* %102, i64 %107, i32 4, i32 1)
  br label %109

109:                                              ; preds = %98
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %95

112:                                              ; preds = %95
  br label %243

113:                                              ; preds = %4
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %128, %113
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %115, 4
  br i1 %116, label %117, label %131

117:                                              ; preds = %114
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %9, i64 0, i64 %119
  %121 = getelementptr inbounds [6 x i32], [6 x i32]* %120, i64 0, i64 0
  %122 = load i64*, i64** %7, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @decode_3p_track(i32* %121, i64 %126, i32 4, i32 1)
  br label %128

128:                                              ; preds = %117
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %114

131:                                              ; preds = %114
  br label %243

132:                                              ; preds = %4
  store i32 0, i32* %11, align 4
  br label %133

133:                                              ; preds = %156, %132
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %134, 4
  br i1 %135, label %136, label %159

136:                                              ; preds = %133
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %9, i64 0, i64 %138
  %140 = getelementptr inbounds [6 x i32], [6 x i32]* %139, i64 0, i64 0
  %141 = load i64*, i64** %7, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i64*, i64** %6, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = shl i32 %152, 14
  %154 = add nsw i32 %146, %153
  %155 = call i32 @decode_4p_track(i32* %140, i32 %154, i32 4, i32 1)
  br label %156

156:                                              ; preds = %136
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %133

159:                                              ; preds = %133
  br label %243

160:                                              ; preds = %4
  store i32 0, i32* %11, align 4
  br label %161

161:                                              ; preds = %184, %160
  %162 = load i32, i32* %11, align 4
  %163 = icmp slt i32 %162, 2
  br i1 %163, label %164, label %187

164:                                              ; preds = %161
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %9, i64 0, i64 %166
  %168 = getelementptr inbounds [6 x i32], [6 x i32]* %167, i64 0, i64 0
  %169 = load i64*, i64** %7, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = load i64*, i64** %6, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = shl i32 %180, 10
  %182 = add nsw i32 %174, %181
  %183 = call i32 @decode_5p_track(i32* %168, i32 %182, i32 4, i32 1)
  br label %184

184:                                              ; preds = %164
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %11, align 4
  br label %161

187:                                              ; preds = %161
  store i32 2, i32* %11, align 4
  br label %188

188:                                              ; preds = %211, %187
  %189 = load i32, i32* %11, align 4
  %190 = icmp slt i32 %189, 4
  br i1 %190, label %191, label %214

191:                                              ; preds = %188
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %9, i64 0, i64 %193
  %195 = getelementptr inbounds [6 x i32], [6 x i32]* %194, i64 0, i64 0
  %196 = load i64*, i64** %7, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = load i64*, i64** %6, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = trunc i64 %206 to i32
  %208 = shl i32 %207, 14
  %209 = add nsw i32 %201, %208
  %210 = call i32 @decode_4p_track(i32* %195, i32 %209, i32 4, i32 1)
  br label %211

211:                                              ; preds = %191
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  br label %188

214:                                              ; preds = %188
  br label %243

215:                                              ; preds = %4, %4
  store i32 0, i32* %11, align 4
  br label %216

216:                                              ; preds = %239, %215
  %217 = load i32, i32* %11, align 4
  %218 = icmp slt i32 %217, 4
  br i1 %218, label %219, label %242

219:                                              ; preds = %216
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %9, i64 0, i64 %221
  %223 = getelementptr inbounds [6 x i32], [6 x i32]* %222, i64 0, i64 0
  %224 = load i64*, i64** %7, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = trunc i64 %228 to i32
  %230 = load i64*, i64** %6, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = shl i32 %235, 11
  %237 = add nsw i32 %229, %236
  %238 = call i32 @decode_6p_track(i32* %223, i32 %237, i32 4, i32 1)
  br label %239

239:                                              ; preds = %219
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %11, align 4
  br label %216

242:                                              ; preds = %216
  br label %243

243:                                              ; preds = %4, %242, %214, %159, %131, %112, %75, %56, %37
  %244 = load float*, float** %5, align 8
  %245 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %246 = sext i32 %245 to i64
  %247 = mul i64 4, %246
  %248 = trunc i64 %247 to i32
  %249 = call i32 @memset(float* %244, i32 0, i32 %248)
  store i32 0, i32* %11, align 4
  br label %250

250:                                              ; preds = %302, %243
  %251 = load i32, i32* %11, align 4
  %252 = icmp slt i32 %251, 4
  br i1 %252, label %253, label %305

253:                                              ; preds = %250
  store i32 0, i32* %12, align 4
  br label %254

254:                                              ; preds = %298, %253
  %255 = load i32, i32* %12, align 4
  %256 = load i32**, i32*** @pulses_nb_per_mode_tr, align 8
  %257 = load i32, i32* %8, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i32*, i32** %256, i64 %258
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp slt i32 %255, %264
  br i1 %265, label %266, label %301

266:                                              ; preds = %254
  %267 = load i32, i32* %11, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %9, i64 0, i64 %268
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [6 x i32], [6 x i32]* %269, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @FFABS(i32 %273)
  %275 = sub nsw i32 %274, 1
  %276 = load i32, i32* %10, align 4
  %277 = mul nsw i32 %275, %276
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %277, %278
  store i32 %279, i32* %13, align 4
  %280 = load i32, i32* %11, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %9, i64 0, i64 %281
  %283 = load i32, i32* %12, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [6 x i32], [6 x i32]* %282, i64 0, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = icmp slt i32 %286, 0
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, double -1.000000e+00, double 1.000000e+00
  %290 = load float*, float** %5, align 8
  %291 = load i32, i32* %13, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %290, i64 %292
  %294 = load float, float* %293, align 4
  %295 = fpext float %294 to double
  %296 = fadd double %295, %289
  %297 = fptrunc double %296 to float
  store float %297, float* %293, align 4
  br label %298

298:                                              ; preds = %266
  %299 = load i32, i32* %12, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %12, align 4
  br label %254

301:                                              ; preds = %254
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %11, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %11, align 4
  br label %250

305:                                              ; preds = %250
  ret void
}

declare dso_local i32 @decode_1p_track(i32*, i64, i32, i32) #1

declare dso_local i32 @decode_2p_track(i32*, i64, i32, i32) #1

declare dso_local i32 @decode_3p_track(i32*, i64, i32, i32) #1

declare dso_local i32 @decode_4p_track(i32*, i32, i32, i32) #1

declare dso_local i32 @decode_5p_track(i32*, i32, i32, i32) #1

declare dso_local i32 @decode_6p_track(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
