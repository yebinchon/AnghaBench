; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_scan_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_scan_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@WV_MONO_DATA = common dso_local global i32 0, align 4
@FLOAT_SHIFT_SENT = common dso_local global i32 0, align 4
@FLOAT_SHIFT_ONES = common dso_local global i32 0, align 4
@FLOAT_SHIFT_SAME = common dso_local global i32 0, align 4
@MAG_MASK = common dso_local global i32 0, align 4
@MAG_LSB = common dso_local global i32 0, align 4
@FLOAT_ZEROS_SENT = common dso_local global i32 0, align 4
@FLOAT_NEG_ZEROS = common dso_local global i32 0, align 4
@FLOAT_EXCEPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32)* @scan_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_float(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  store i32 0, i32* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 10
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 11
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @WV_MONO_DATA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %77, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 %48, 27
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @get_mantissa(i32 %50)
  %52 = mul nsw i32 %51, 9
  %53 = add nsw i32 %49, %52
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @get_exponent(i32 %54)
  %56 = mul nsw i32 %55, 3
  %57 = add nsw i32 %53, %56
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @get_sign(i32 %58)
  %60 = add nsw i32 %57, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @get_exponent(i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %42
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @get_exponent(i32 %68)
  %70 = icmp slt i32 %69, 255
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @get_exponent(i32 %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %71, %67, %42
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %38

80:                                               ; preds = %38
  br label %159

81:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %155, %81
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %158

86:                                               ; preds = %82
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %9, align 4
  %93 = mul nsw i32 %92, 27
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @get_mantissa(i32 %94)
  %96 = mul nsw i32 %95, 9
  %97 = add nsw i32 %93, %96
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @get_exponent(i32 %98)
  %100 = mul nsw i32 %99, 3
  %101 = add nsw i32 %97, %100
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @get_sign(i32 %102)
  %104 = add nsw i32 %101, %103
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @get_exponent(i32 %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %106, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %86
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @get_exponent(i32 %112)
  %114 = icmp slt i32 %113, 255
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @get_exponent(i32 %116)
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %115, %111, %86
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %126, 27
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @get_mantissa(i32 %128)
  %130 = mul nsw i32 %129, 9
  %131 = add nsw i32 %127, %130
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @get_exponent(i32 %132)
  %134 = mul nsw i32 %133, 3
  %135 = add nsw i32 %131, %134
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @get_sign(i32 %136)
  %138 = add nsw i32 %135, %137
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @get_exponent(i32 %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = icmp sgt i32 %140, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %120
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @get_exponent(i32 %146)
  %148 = icmp slt i32 %147, 255
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @get_exponent(i32 %150)
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 6
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %149, %145, %120
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %82

158:                                              ; preds = %82
  br label %159

159:                                              ; preds = %158, %80
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 8
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @WV_MONO_DATA, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %185

169:                                              ; preds = %159
  store i32 0, i32* %10, align 4
  br label %170

170:                                              ; preds = %181, %169
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %170
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = call i32 @process_float(%struct.TYPE_4__* %175, i32* %179)
  br label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %170

184:                                              ; preds = %170
  br label %207

185:                                              ; preds = %159
  store i32 0, i32* %10, align 4
  br label %186

186:                                              ; preds = %203, %185
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %206

190:                                              ; preds = %186
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %192 = load i32*, i32** %6, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = call i32 @process_float(%struct.TYPE_4__* %191, i32* %195)
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %198 = load i32*, i32** %7, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = call i32 @process_float(%struct.TYPE_4__* %197, i32* %201)
  br label %203

203:                                              ; preds = %190
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %10, align 4
  br label %186

206:                                              ; preds = %186
  br label %207

207:                                              ; preds = %206, %184
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 9
  store i32 %210, i32* %212, align 4
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %207
  %218 = load i32, i32* @FLOAT_SHIFT_SENT, align 4
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 4
  br label %309

223:                                              ; preds = %207
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %223
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %228
  %234 = load i32, i32* @FLOAT_SHIFT_ONES, align 4
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 4
  br label %308

239:                                              ; preds = %228, %223
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %239
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = load i32, i32* @FLOAT_SHIFT_SAME, align 4
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 4
  br label %307

255:                                              ; preds = %244, %239
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %306

260:                                              ; preds = %255
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, 1
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %306, label %266

266:                                              ; preds = %260
  br label %267

267:                                              ; preds = %276, %266
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 8
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = ashr i32 %274, 1
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %267
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, 1
  %281 = icmp ne i32 %280, 0
  %282 = xor i1 %281, true
  br i1 %282, label %267, label %283

283:                                              ; preds = %276
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 7
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @WV_MONO_DATA, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %283
  %291 = load i32*, i32** %6, align 8
  %292 = load i32, i32* %8, align 4
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @shift_mono(i32* %291, i32 %292, i32 %295)
  br label %305

297:                                              ; preds = %283
  %298 = load i32*, i32** %6, align 8
  %299 = load i32*, i32** %7, align 8
  %300 = load i32, i32* %8, align 4
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @shift_stereo(i32* %298, i32* %299, i32 %300, i32 %303)
  br label %305

305:                                              ; preds = %297, %290
  br label %306

306:                                              ; preds = %305, %260, %255
  br label %307

307:                                              ; preds = %306, %249
  br label %308

308:                                              ; preds = %307, %233
  br label %309

309:                                              ; preds = %308, %217
  %310 = load i32, i32* @MAG_MASK, align 4
  %311 = xor i32 %310, -1
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 7
  %314 = load i32, i32* %313, align 4
  %315 = and i32 %314, %311
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %321, %309
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %332

321:                                              ; preds = %316
  %322 = load i32, i32* @MAG_LSB, align 4
  %323 = shl i32 1, %322
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %326, %323
  store i32 %327, i32* %325, align 4
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = ashr i32 %330, 1
  store i32 %331, i32* %329, align 4
  br label %316

332:                                              ; preds = %316
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 11
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %342, label %337

337:                                              ; preds = %332
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 10
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %337, %332
  %343 = load i32, i32* @FLOAT_ZEROS_SENT, align 4
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 5
  %346 = load i32, i32* %345, align 4
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 4
  br label %348

348:                                              ; preds = %342, %337
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 10
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %348
  %354 = load i32, i32* @FLOAT_NEG_ZEROS, align 4
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = or i32 %357, %354
  store i32 %358, i32* %356, align 4
  br label %359

359:                                              ; preds = %353, %348
  %360 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 5
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @FLOAT_EXCEPTIONS, align 4
  %364 = load i32, i32* @FLOAT_ZEROS_SENT, align 4
  %365 = or i32 %363, %364
  %366 = load i32, i32* @FLOAT_SHIFT_SENT, align 4
  %367 = or i32 %365, %366
  %368 = load i32, i32* @FLOAT_SHIFT_SAME, align 4
  %369 = or i32 %367, %368
  %370 = and i32 %362, %369
  ret i32 %370
}

declare dso_local i32 @get_mantissa(i32) #1

declare dso_local i32 @get_exponent(i32) #1

declare dso_local i32 @get_sign(i32) #1

declare dso_local i32 @process_float(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @shift_mono(i32*, i32, i32) #1

declare dso_local i32 @shift_stereo(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
