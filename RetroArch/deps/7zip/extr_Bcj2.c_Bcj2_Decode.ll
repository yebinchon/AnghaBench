; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Bcj2.c_Bcj2_Decode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Bcj2.c_Bcj2_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kBitModelTotal = common dso_local global i32 0, align 4
@SZ_ERROR_DATA = common dso_local global i32 0, align 4
@RC_READ_BYTE = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@kNumBitModelTotalBits = common dso_local global i32 0, align 4
@kNumMoveBits = common dso_local global i32 0, align 4
@kTopValue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Bcj2_Decode(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i64 %7, i32* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca [258 x i32], align 16
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  store i32* %0, i32** %12, align 8
  store i64 %1, i64* %13, align 8
  store i32* %2, i32** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32* %4, i32** %16, align 8
  store i64 %5, i64* %17, align 8
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32* %8, i32** %20, align 8
  store i64 %9, i64* %21, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  br label %38

38:                                               ; preds = %48, %10
  %39 = load i32, i32* %30, align 4
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %40, 258
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32, i32* @kBitModelTotal, align 4
  %44 = ashr i32 %43, 1
  %45 = load i32, i32* %30, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [258 x i32], [258 x i32]* %22, i64 0, i64 %46
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %30, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %30, align 4
  br label %38

51:                                               ; preds = %38
  %52 = load i32*, i32** %18, align 8
  store i32* %52, i32** %25, align 8
  %53 = load i32*, i32** %25, align 8
  %54 = load i64, i64* %19, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %26, align 8
  store i32 -1, i32* %27, align 4
  store i32 0, i32* %30, align 4
  br label %56

56:                                               ; preds = %70, %51
  %57 = load i32, i32* %30, align 4
  %58 = icmp ult i32 %57, 5
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i32*, i32** %25, align 8
  %61 = load i32*, i32** %26, align 8
  %62 = icmp eq i32* %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %64, i32* %11, align 4
  br label %313

65:                                               ; preds = %59
  %66 = load i32, i32* %28, align 4
  %67 = shl i32 %66, 8
  %68 = load i32, i32* @RC_READ_BYTE, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %28, align 4
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %30, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %30, align 4
  br label %56

73:                                               ; preds = %56
  %74 = load i64, i64* %21, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @SZ_OK, align 4
  store i32 %77, i32* %11, align 4
  br label %313

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %302, %78
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %23, align 8
  %82 = sub i64 %80, %81
  store i64 %82, i64* %35, align 8
  %83 = load i64, i64* %21, align 8
  %84 = load i64, i64* %24, align 8
  %85 = sub i64 %83, %84
  %86 = load i64, i64* %35, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i64, i64* %21, align 8
  %90 = load i64, i64* %24, align 8
  %91 = sub i64 %89, %90
  store i64 %91, i64* %35, align 8
  br label %92

92:                                               ; preds = %88, %79
  br label %93

93:                                               ; preds = %111, %92
  %94 = load i64, i64* %35, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %93
  %97 = load i32*, i32** %12, align 8
  %98 = load i64, i64* %23, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %31, align 4
  %101 = load i32, i32* %31, align 4
  %102 = load i32*, i32** %20, align 8
  %103 = load i64, i64* %24, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %24, align 8
  %105 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* %29, align 4
  %107 = load i32, i32* %31, align 4
  %108 = call i64 @IsJ(i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %96
  br label %117

111:                                              ; preds = %96
  %112 = load i64, i64* %23, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %23, align 8
  %114 = load i32, i32* %31, align 4
  store i32 %114, i32* %29, align 4
  %115 = load i64, i64* %35, align 8
  %116 = add i64 %115, -1
  store i64 %116, i64* %35, align 8
  br label %93

117:                                              ; preds = %110, %93
  %118 = load i64, i64* %35, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %24, align 8
  %122 = load i64, i64* %21, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %117
  br label %303

125:                                              ; preds = %120
  %126 = load i32*, i32** %12, align 8
  %127 = load i64, i64* %23, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %23, align 8
  %129 = getelementptr inbounds i32, i32* %126, i64 %127
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %31, align 4
  %131 = load i32, i32* %31, align 4
  %132 = icmp eq i32 %131, 232
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = getelementptr inbounds [258 x i32], [258 x i32]* %22, i64 0, i64 0
  %135 = load i32, i32* %29, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32* %137, i32** %32, align 8
  br label %148

138:                                              ; preds = %125
  %139 = load i32, i32* %31, align 4
  %140 = icmp eq i32 %139, 233
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = getelementptr inbounds [258 x i32], [258 x i32]* %22, i64 0, i64 0
  %143 = getelementptr inbounds i32, i32* %142, i64 256
  store i32* %143, i32** %32, align 8
  br label %147

144:                                              ; preds = %138
  %145 = getelementptr inbounds [258 x i32], [258 x i32]* %22, i64 0, i64 0
  %146 = getelementptr inbounds i32, i32* %145, i64 257
  store i32* %146, i32** %32, align 8
  br label %147

147:                                              ; preds = %144, %141
  br label %148

148:                                              ; preds = %147, %133
  %149 = load i32*, i32** %32, align 8
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %34, align 4
  %151 = load i32, i32* %27, align 4
  %152 = load i32, i32* @kNumBitModelTotalBits, align 4
  %153 = ashr i32 %151, %152
  %154 = load i32, i32* %34, align 4
  %155 = mul nsw i32 %153, %154
  store i32 %155, i32* %33, align 4
  %156 = load i32, i32* %28, align 4
  %157 = load i32, i32* %33, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %187

159:                                              ; preds = %148
  %160 = load i32, i32* %33, align 4
  store i32 %160, i32* %27, align 4
  %161 = load i32, i32* %34, align 4
  %162 = load i32, i32* @kBitModelTotal, align 4
  %163 = load i32, i32* %34, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load i32, i32* @kNumMoveBits, align 4
  %166 = ashr i32 %164, %165
  %167 = add nsw i32 %161, %166
  %168 = load i32*, i32** %32, align 8
  store i32 %167, i32* %168, align 4
  %169 = load i32, i32* %27, align 4
  %170 = load i32, i32* @kTopValue, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %159
  %173 = load i32*, i32** %25, align 8
  %174 = load i32*, i32** %26, align 8
  %175 = icmp eq i32* %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %177, i32* %11, align 4
  br label %313

178:                                              ; preds = %172
  %179 = load i32, i32* %27, align 4
  %180 = shl i32 %179, 8
  store i32 %180, i32* %27, align 4
  %181 = load i32, i32* %28, align 4
  %182 = shl i32 %181, 8
  %183 = load i32, i32* @RC_READ_BYTE, align 4
  %184 = or i32 %182, %183
  store i32 %184, i32* %28, align 4
  br label %185

185:                                              ; preds = %178, %159
  %186 = load i32, i32* %31, align 4
  store i32 %186, i32* %29, align 4
  br label %302

187:                                              ; preds = %148
  %188 = load i32, i32* %33, align 4
  %189 = load i32, i32* %27, align 4
  %190 = sub nsw i32 %189, %188
  store i32 %190, i32* %27, align 4
  %191 = load i32, i32* %33, align 4
  %192 = load i32, i32* %28, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* %28, align 4
  %194 = load i32, i32* %34, align 4
  %195 = load i32, i32* %34, align 4
  %196 = load i32, i32* @kNumMoveBits, align 4
  %197 = ashr i32 %195, %196
  %198 = sub nsw i32 %194, %197
  %199 = load i32*, i32** %32, align 8
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* %27, align 4
  %201 = load i32, i32* @kTopValue, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %216

203:                                              ; preds = %187
  %204 = load i32*, i32** %25, align 8
  %205 = load i32*, i32** %26, align 8
  %206 = icmp eq i32* %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %208, i32* %11, align 4
  br label %313

209:                                              ; preds = %203
  %210 = load i32, i32* %27, align 4
  %211 = shl i32 %210, 8
  store i32 %211, i32* %27, align 4
  %212 = load i32, i32* %28, align 4
  %213 = shl i32 %212, 8
  %214 = load i32, i32* @RC_READ_BYTE, align 4
  %215 = or i32 %213, %214
  store i32 %215, i32* %28, align 4
  br label %216

216:                                              ; preds = %209, %187
  %217 = load i32, i32* %31, align 4
  %218 = icmp eq i32 %217, 232
  br i1 %218, label %219, label %230

219:                                              ; preds = %216
  %220 = load i32*, i32** %14, align 8
  store i32* %220, i32** %37, align 8
  %221 = load i64, i64* %15, align 8
  %222 = icmp ult i64 %221, 4
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %224, i32* %11, align 4
  br label %313

225:                                              ; preds = %219
  %226 = load i32*, i32** %14, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 4
  store i32* %227, i32** %14, align 8
  %228 = load i64, i64* %15, align 8
  %229 = sub i64 %228, 4
  store i64 %229, i64* %15, align 8
  br label %241

230:                                              ; preds = %216
  %231 = load i32*, i32** %16, align 8
  store i32* %231, i32** %37, align 8
  %232 = load i64, i64* %17, align 8
  %233 = icmp ult i64 %232, 4
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %235, i32* %11, align 4
  br label %313

236:                                              ; preds = %230
  %237 = load i32*, i32** %16, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 4
  store i32* %238, i32** %16, align 8
  %239 = load i64, i64* %17, align 8
  %240 = sub i64 %239, 4
  store i64 %240, i64* %17, align 8
  br label %241

241:                                              ; preds = %236, %225
  %242 = load i32*, i32** %37, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = shl i32 %244, 24
  %246 = load i32*, i32** %37, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = shl i32 %248, 16
  %250 = or i32 %245, %249
  %251 = load i32*, i32** %37, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 2
  %253 = load i32, i32* %252, align 4
  %254 = shl i32 %253, 8
  %255 = or i32 %250, %254
  %256 = load i32*, i32** %37, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 3
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %255, %258
  %260 = load i64, i64* %24, align 8
  %261 = trunc i64 %260 to i32
  %262 = add nsw i32 %261, 4
  %263 = sub nsw i32 %259, %262
  store i32 %263, i32* %36, align 4
  %264 = load i32, i32* %36, align 4
  %265 = load i32*, i32** %20, align 8
  %266 = load i64, i64* %24, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %24, align 8
  %268 = getelementptr inbounds i32, i32* %265, i64 %266
  store i32 %264, i32* %268, align 4
  %269 = load i64, i64* %24, align 8
  %270 = load i64, i64* %21, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %241
  br label %303

273:                                              ; preds = %241
  %274 = load i32, i32* %36, align 4
  %275 = ashr i32 %274, 8
  %276 = load i32*, i32** %20, align 8
  %277 = load i64, i64* %24, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %24, align 8
  %279 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32 %275, i32* %279, align 4
  %280 = load i64, i64* %24, align 8
  %281 = load i64, i64* %21, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %273
  br label %303

284:                                              ; preds = %273
  %285 = load i32, i32* %36, align 4
  %286 = ashr i32 %285, 16
  %287 = load i32*, i32** %20, align 8
  %288 = load i64, i64* %24, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %24, align 8
  %290 = getelementptr inbounds i32, i32* %287, i64 %288
  store i32 %286, i32* %290, align 4
  %291 = load i64, i64* %24, align 8
  %292 = load i64, i64* %21, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %284
  br label %303

295:                                              ; preds = %284
  %296 = load i32, i32* %36, align 4
  %297 = ashr i32 %296, 24
  store i32 %297, i32* %29, align 4
  %298 = load i32*, i32** %20, align 8
  %299 = load i64, i64* %24, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* %24, align 8
  %301 = getelementptr inbounds i32, i32* %298, i64 %299
  store i32 %297, i32* %301, align 4
  br label %302

302:                                              ; preds = %295, %185
  br label %79

303:                                              ; preds = %294, %283, %272, %124
  %304 = load i64, i64* %24, align 8
  %305 = load i64, i64* %21, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %303
  %308 = load i32, i32* @SZ_OK, align 4
  br label %311

309:                                              ; preds = %303
  %310 = load i32, i32* @SZ_ERROR_DATA, align 4
  br label %311

311:                                              ; preds = %309, %307
  %312 = phi i32 [ %308, %307 ], [ %310, %309 ]
  store i32 %312, i32* %11, align 4
  br label %313

313:                                              ; preds = %311, %234, %223, %207, %176, %76, %63
  %314 = load i32, i32* %11, align 4
  ret i32 %314
}

declare dso_local i64 @IsJ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
