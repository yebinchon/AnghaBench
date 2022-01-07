; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_s_mp_exptmod.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_s_mp_exptmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32, i32* }

@TAB_SIZE = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32)* @s_mp_exptmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_mp_exptmod(%struct.TYPE_35__* %0, %struct.TYPE_35__* %1, %struct.TYPE_35__* %2, %struct.TYPE_35__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_35__, align 8
  %15 = alloca %struct.TYPE_35__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %7, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %8, align 8
  store %struct.TYPE_35__* %2, %struct.TYPE_35__** %9, align 8
  store %struct.TYPE_35__* %3, %struct.TYPE_35__** %10, align 8
  store i32 %4, i32* %11, align 4
  %28 = load i32, i32* @TAB_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %12, align 8
  %31 = alloca %struct.TYPE_35__, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  %32 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %33 = call i32 @mp_count_bits(%struct.TYPE_35__* %32)
  store i32 %33, i32* %23, align 4
  %34 = load i32, i32* %23, align 4
  %35 = icmp sle i32 %34, 7
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store i32 2, i32* %25, align 4
  br label %63

37:                                               ; preds = %5
  %38 = load i32, i32* %23, align 4
  %39 = icmp sle i32 %38, 36
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 3, i32* %25, align 4
  br label %62

41:                                               ; preds = %37
  %42 = load i32, i32* %23, align 4
  %43 = icmp sle i32 %42, 140
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 4, i32* %25, align 4
  br label %61

45:                                               ; preds = %41
  %46 = load i32, i32* %23, align 4
  %47 = icmp sle i32 %46, 450
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 5, i32* %25, align 4
  br label %60

49:                                               ; preds = %45
  %50 = load i32, i32* %23, align 4
  %51 = icmp sle i32 %50, 1303
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 6, i32* %25, align 4
  br label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %23, align 4
  %55 = icmp sle i32 %54, 3529
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 7, i32* %25, align 4
  br label %58

57:                                               ; preds = %53
  store i32 8, i32* %25, align 4
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %52
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %61, %40
  br label %63

63:                                               ; preds = %62, %36
  %64 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 1
  %65 = call i32 @mp_init(%struct.TYPE_35__* %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* @MP_OKAY, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %416

70:                                               ; preds = %63
  %71 = load i32, i32* %25, align 4
  %72 = sub nsw i32 %71, 1
  %73 = shl i32 1, %72
  store i32 %73, i32* %23, align 4
  br label %74

74:                                               ; preds = %107, %70
  %75 = load i32, i32* %23, align 4
  %76 = load i32, i32* %25, align 4
  %77 = shl i32 1, %76
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %74
  %80 = load i32, i32* %23, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 %81
  %83 = call i32 @mp_init(%struct.TYPE_35__* %82)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* @MP_OKAY, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %79
  %87 = load i32, i32* %25, align 4
  %88 = sub nsw i32 %87, 1
  %89 = shl i32 1, %88
  store i32 %89, i32* %24, align 4
  br label %90

90:                                               ; preds = %99, %86
  %91 = load i32, i32* %24, align 4
  %92 = load i32, i32* %23, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i32, i32* %24, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 %96
  %98 = call i32 @mp_clear(%struct.TYPE_35__* %97)
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %24, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %24, align 4
  br label %90

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 1
  %104 = call i32 @mp_clear(%struct.TYPE_35__* %103)
  %105 = load i32, i32* %17, align 4
  store i32 %105, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %416

106:                                              ; preds = %79
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %23, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %23, align 4
  br label %74

110:                                              ; preds = %74
  %111 = call i32 @mp_init(%struct.TYPE_35__* %15)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* @MP_OKAY, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %395

115:                                              ; preds = %110
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %120 = call i32 @mp_reduce_setup(%struct.TYPE_35__* %15, %struct.TYPE_35__* %119)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* @MP_OKAY, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %393

124:                                              ; preds = %118
  store i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)* @mp_reduce, i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)** %26, align 8
  br label %132

125:                                              ; preds = %115
  %126 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %127 = call i32 @mp_reduce_2k_setup_l(%struct.TYPE_35__* %126, %struct.TYPE_35__* %15)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* @MP_OKAY, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %393

131:                                              ; preds = %125
  store i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)* @mp_reduce_2k_l, i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)** %26, align 8
  br label %132

132:                                              ; preds = %131, %124
  %133 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %134 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 1
  %136 = call i32 @mp_mod(%struct.TYPE_35__* %133, %struct.TYPE_35__* %134, %struct.TYPE_35__* %135)
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* @MP_OKAY, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %393

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 1
  %142 = load i32, i32* %25, align 4
  %143 = sub nsw i32 %142, 1
  %144 = shl i32 1, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 %145
  %147 = call i32 @mp_copy(%struct.TYPE_35__* %141, %struct.TYPE_35__* %146)
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* @MP_OKAY, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %393

151:                                              ; preds = %140
  store i32 0, i32* %23, align 4
  br label %152

152:                                              ; preds = %185, %151
  %153 = load i32, i32* %23, align 4
  %154 = load i32, i32* %25, align 4
  %155 = sub nsw i32 %154, 1
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %188

157:                                              ; preds = %152
  %158 = load i32, i32* %25, align 4
  %159 = sub nsw i32 %158, 1
  %160 = shl i32 1, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 %161
  %163 = load i32, i32* %25, align 4
  %164 = sub nsw i32 %163, 1
  %165 = shl i32 1, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 %166
  %168 = call i32 @mp_sqr(%struct.TYPE_35__* %162, %struct.TYPE_35__* %167)
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* @MP_OKAY, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %157
  br label %393

172:                                              ; preds = %157
  %173 = load i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)*, i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)** %26, align 8
  %174 = load i32, i32* %25, align 4
  %175 = sub nsw i32 %174, 1
  %176 = shl i32 1, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 %177
  %179 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %180 = call i32 %173(%struct.TYPE_35__* %178, %struct.TYPE_35__* %179, %struct.TYPE_35__* %15)
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* @MP_OKAY, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  br label %393

184:                                              ; preds = %172
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %23, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %23, align 4
  br label %152

188:                                              ; preds = %152
  %189 = load i32, i32* %25, align 4
  %190 = sub nsw i32 %189, 1
  %191 = shl i32 1, %190
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %23, align 4
  br label %193

193:                                              ; preds = %222, %188
  %194 = load i32, i32* %23, align 4
  %195 = load i32, i32* %25, align 4
  %196 = shl i32 1, %195
  %197 = icmp slt i32 %194, %196
  br i1 %197, label %198, label %225

198:                                              ; preds = %193
  %199 = load i32, i32* %23, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 1
  %204 = load i32, i32* %23, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 %205
  %207 = call i32 @mp_mul(%struct.TYPE_35__* %202, %struct.TYPE_35__* %203, %struct.TYPE_35__* %206)
  store i32 %207, i32* %17, align 4
  %208 = load i32, i32* @MP_OKAY, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %198
  br label %393

211:                                              ; preds = %198
  %212 = load i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)*, i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)** %26, align 8
  %213 = load i32, i32* %23, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 %214
  %216 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %217 = call i32 %212(%struct.TYPE_35__* %215, %struct.TYPE_35__* %216, %struct.TYPE_35__* %15)
  store i32 %217, i32* %17, align 4
  %218 = load i32, i32* @MP_OKAY, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %211
  br label %393

221:                                              ; preds = %211
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %23, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %23, align 4
  br label %193

225:                                              ; preds = %193
  %226 = call i32 @mp_init(%struct.TYPE_35__* %14)
  store i32 %226, i32* %17, align 4
  %227 = load i32, i32* @MP_OKAY, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  br label %393

230:                                              ; preds = %225
  %231 = call i32 @mp_set(%struct.TYPE_35__* %14, i32 1)
  store i32 0, i32* %21, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %16, align 4
  %232 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sub nsw i32 %234, 1
  store i32 %235, i32* %22, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %236

236:                                              ; preds = %336, %286, %267, %230
  %237 = load i32, i32* %20, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %20, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %236
  %241 = load i32, i32* %22, align 4
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  br label %337

244:                                              ; preds = %240
  %245 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %22, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %22, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %16, align 4
  %253 = load i32, i32* @DIGIT_BIT, align 4
  store i32 %253, i32* %20, align 4
  br label %254

254:                                              ; preds = %244, %236
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* @DIGIT_BIT, align 4
  %257 = sub nsw i32 %256, 1
  %258 = ashr i32 %255, %257
  %259 = and i32 %258, 1
  store i32 %259, i32* %24, align 4
  %260 = load i32, i32* %16, align 4
  %261 = shl i32 %260, 1
  store i32 %261, i32* %16, align 4
  %262 = load i32, i32* %21, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %254
  %265 = load i32, i32* %24, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  br label %236

268:                                              ; preds = %264, %254
  %269 = load i32, i32* %21, align 4
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %271, label %287

271:                                              ; preds = %268
  %272 = load i32, i32* %24, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %287

274:                                              ; preds = %271
  %275 = call i32 @mp_sqr(%struct.TYPE_35__* %14, %struct.TYPE_35__* %14)
  store i32 %275, i32* %17, align 4
  %276 = load i32, i32* @MP_OKAY, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %274
  br label %391

279:                                              ; preds = %274
  %280 = load i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)*, i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)** %26, align 8
  %281 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %282 = call i32 %280(%struct.TYPE_35__* %14, %struct.TYPE_35__* %281, %struct.TYPE_35__* %15)
  store i32 %282, i32* %17, align 4
  %283 = load i32, i32* @MP_OKAY, align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %279
  br label %391

286:                                              ; preds = %279
  br label %236

287:                                              ; preds = %271, %268
  %288 = load i32, i32* %24, align 4
  %289 = load i32, i32* %25, align 4
  %290 = load i32, i32* %19, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %19, align 4
  %292 = sub nsw i32 %289, %291
  %293 = shl i32 %288, %292
  %294 = load i32, i32* %18, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %18, align 4
  store i32 2, i32* %21, align 4
  %296 = load i32, i32* %19, align 4
  %297 = load i32, i32* %25, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %336

299:                                              ; preds = %287
  store i32 0, i32* %23, align 4
  br label %300

300:                                              ; preds = %317, %299
  %301 = load i32, i32* %23, align 4
  %302 = load i32, i32* %25, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %320

304:                                              ; preds = %300
  %305 = call i32 @mp_sqr(%struct.TYPE_35__* %14, %struct.TYPE_35__* %14)
  store i32 %305, i32* %17, align 4
  %306 = load i32, i32* @MP_OKAY, align 4
  %307 = icmp ne i32 %305, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %304
  br label %391

309:                                              ; preds = %304
  %310 = load i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)*, i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)** %26, align 8
  %311 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %312 = call i32 %310(%struct.TYPE_35__* %14, %struct.TYPE_35__* %311, %struct.TYPE_35__* %15)
  store i32 %312, i32* %17, align 4
  %313 = load i32, i32* @MP_OKAY, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %309
  br label %391

316:                                              ; preds = %309
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %23, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %23, align 4
  br label %300

320:                                              ; preds = %300
  %321 = load i32, i32* %18, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 %322
  %324 = call i32 @mp_mul(%struct.TYPE_35__* %14, %struct.TYPE_35__* %323, %struct.TYPE_35__* %14)
  store i32 %324, i32* %17, align 4
  %325 = load i32, i32* @MP_OKAY, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %320
  br label %391

328:                                              ; preds = %320
  %329 = load i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)*, i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)** %26, align 8
  %330 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %331 = call i32 %329(%struct.TYPE_35__* %14, %struct.TYPE_35__* %330, %struct.TYPE_35__* %15)
  store i32 %331, i32* %17, align 4
  %332 = load i32, i32* @MP_OKAY, align 4
  %333 = icmp ne i32 %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %328
  br label %391

335:                                              ; preds = %328
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %21, align 4
  br label %336

336:                                              ; preds = %335, %287
  br label %236

337:                                              ; preds = %243
  %338 = load i32, i32* %21, align 4
  %339 = icmp eq i32 %338, 2
  br i1 %339, label %340, label %387

340:                                              ; preds = %337
  %341 = load i32, i32* %19, align 4
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %387

343:                                              ; preds = %340
  store i32 0, i32* %23, align 4
  br label %344

344:                                              ; preds = %383, %343
  %345 = load i32, i32* %23, align 4
  %346 = load i32, i32* %19, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %386

348:                                              ; preds = %344
  %349 = call i32 @mp_sqr(%struct.TYPE_35__* %14, %struct.TYPE_35__* %14)
  store i32 %349, i32* %17, align 4
  %350 = load i32, i32* @MP_OKAY, align 4
  %351 = icmp ne i32 %349, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %348
  br label %391

353:                                              ; preds = %348
  %354 = load i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)*, i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)** %26, align 8
  %355 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %356 = call i32 %354(%struct.TYPE_35__* %14, %struct.TYPE_35__* %355, %struct.TYPE_35__* %15)
  store i32 %356, i32* %17, align 4
  %357 = load i32, i32* @MP_OKAY, align 4
  %358 = icmp ne i32 %356, %357
  br i1 %358, label %359, label %360

359:                                              ; preds = %353
  br label %391

360:                                              ; preds = %353
  %361 = load i32, i32* %18, align 4
  %362 = shl i32 %361, 1
  store i32 %362, i32* %18, align 4
  %363 = load i32, i32* %18, align 4
  %364 = load i32, i32* %25, align 4
  %365 = shl i32 1, %364
  %366 = and i32 %363, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %382

368:                                              ; preds = %360
  %369 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 1
  %370 = call i32 @mp_mul(%struct.TYPE_35__* %14, %struct.TYPE_35__* %369, %struct.TYPE_35__* %14)
  store i32 %370, i32* %17, align 4
  %371 = load i32, i32* @MP_OKAY, align 4
  %372 = icmp ne i32 %370, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %368
  br label %391

374:                                              ; preds = %368
  %375 = load i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)*, i32 (%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*)** %26, align 8
  %376 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %377 = call i32 %375(%struct.TYPE_35__* %14, %struct.TYPE_35__* %376, %struct.TYPE_35__* %15)
  store i32 %377, i32* %17, align 4
  %378 = load i32, i32* @MP_OKAY, align 4
  %379 = icmp ne i32 %377, %378
  br i1 %379, label %380, label %381

380:                                              ; preds = %374
  br label %391

381:                                              ; preds = %374
  br label %382

382:                                              ; preds = %381, %360
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %23, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %23, align 4
  br label %344

386:                                              ; preds = %344
  br label %387

387:                                              ; preds = %386, %340, %337
  %388 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %389 = call i32 @mp_exch(%struct.TYPE_35__* %14, %struct.TYPE_35__* %388)
  %390 = load i32, i32* @MP_OKAY, align 4
  store i32 %390, i32* %17, align 4
  br label %391

391:                                              ; preds = %387, %380, %373, %359, %352, %334, %327, %315, %308, %285, %278
  %392 = call i32 @mp_clear(%struct.TYPE_35__* %14)
  br label %393

393:                                              ; preds = %391, %229, %220, %210, %183, %171, %150, %139, %130, %123
  %394 = call i32 @mp_clear(%struct.TYPE_35__* %15)
  br label %395

395:                                              ; preds = %393, %114
  %396 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 1
  %397 = call i32 @mp_clear(%struct.TYPE_35__* %396)
  %398 = load i32, i32* %25, align 4
  %399 = sub nsw i32 %398, 1
  %400 = shl i32 1, %399
  store i32 %400, i32* %23, align 4
  br label %401

401:                                              ; preds = %411, %395
  %402 = load i32, i32* %23, align 4
  %403 = load i32, i32* %25, align 4
  %404 = shl i32 1, %403
  %405 = icmp slt i32 %402, %404
  br i1 %405, label %406, label %414

406:                                              ; preds = %401
  %407 = load i32, i32* %23, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i64 %408
  %410 = call i32 @mp_clear(%struct.TYPE_35__* %409)
  br label %411

411:                                              ; preds = %406
  %412 = load i32, i32* %23, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %23, align 4
  br label %401

414:                                              ; preds = %401
  %415 = load i32, i32* %17, align 4
  store i32 %415, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %416

416:                                              ; preds = %414, %102, %68
  %417 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %417)
  %418 = load i32, i32* %6, align 4
  ret i32 %418
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mp_count_bits(%struct.TYPE_35__*) #2

declare dso_local i32 @mp_init(%struct.TYPE_35__*) #2

declare dso_local i32 @mp_clear(%struct.TYPE_35__*) #2

declare dso_local i32 @mp_reduce_setup(%struct.TYPE_35__*, %struct.TYPE_35__*) #2

declare dso_local i32 @mp_reduce(%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*) #2

declare dso_local i32 @mp_reduce_2k_setup_l(%struct.TYPE_35__*, %struct.TYPE_35__*) #2

declare dso_local i32 @mp_reduce_2k_l(%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*) #2

declare dso_local i32 @mp_mod(%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*) #2

declare dso_local i32 @mp_copy(%struct.TYPE_35__*, %struct.TYPE_35__*) #2

declare dso_local i32 @mp_sqr(%struct.TYPE_35__*, %struct.TYPE_35__*) #2

declare dso_local i32 @mp_mul(%struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_35__*) #2

declare dso_local i32 @mp_set(%struct.TYPE_35__*, i32) #2

declare dso_local i32 @mp_exch(%struct.TYPE_35__*, %struct.TYPE_35__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
