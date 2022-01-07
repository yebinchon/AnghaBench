; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_camellia.c_mbedtls_camellia_setkey_enc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_camellia.c_mbedtls_camellia_setkey_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@MBEDTLS_ERR_CAMELLIA_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@SIGMA_CHARS = common dso_local global i8** null, align 8
@transposes = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_camellia_setkey_enc(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [64 x i8], align 16
  %12 = alloca [6 x [2 x i8]], align 1
  %13 = alloca [16 x i8], align 16
  %14 = alloca [20 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %19 = call i32 @memset(i8* %18, i32 0, i32 64)
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @memset(i8* %20, i32 0, i32 8)
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %29 [
    i32 128, label %23
    i32 192, label %26
    i32 256, label %26
  ]

23:                                               ; preds = %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 3, i32* %25, align 8
  store i32 0, i32* %8, align 4
  br label %31

26:                                               ; preds = %3, %3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 4, i32* %28, align 8
  store i32 1, i32* %8, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @MBEDTLS_ERR_CAMELLIA_INVALID_KEY_LENGTH, align 4
  store i32 %30, i32* %4, align 4
  br label %279

31:                                               ; preds = %26, %23
  store i64 0, i64* %9, align 8
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = udiv i32 %34, 8
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %43
  store i8 %42, i8* %44, align 1
  br label %45

45:                                               ; preds = %38
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %32

48:                                               ; preds = %32
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 192
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  store i64 0, i64* %9, align 8
  br label %52

52:                                               ; preds = %66, %51
  %53 = load i64, i64* %9, align 8
  %54 = icmp ult i64 %53, 8
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = add i64 16, %56
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = xor i32 %60, -1
  %62 = trunc i32 %61 to i8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 24, %63
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %64
  store i8 %62, i8* %65, align 1
  br label %66

66:                                               ; preds = %55
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %9, align 8
  br label %52

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %48
  store i64 0, i64* %9, align 8
  br label %71

71:                                               ; preds = %93, %70
  %72 = load i64, i64* %9, align 8
  %73 = icmp ult i64 %72, 6
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds [6 x [2 x i8]], [6 x [2 x i8]]* %12, i64 0, i64 %75
  %77 = getelementptr inbounds [2 x i8], [2 x i8]* %76, i64 0, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = load i8**, i8*** @SIGMA_CHARS, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i8*, i8** %79, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @GET_UINT32_BE(i8 zeroext %78, i8* %82, i64 0)
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds [6 x [2 x i8]], [6 x [2 x i8]]* %12, i64 0, i64 %84
  %86 = getelementptr inbounds [2 x i8], [2 x i8]* %85, i64 0, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = load i8**, i8*** @SIGMA_CHARS, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds i8*, i8** %88, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @GET_UINT32_BE(i8 zeroext %87, i8* %91, i64 4)
  br label %93

93:                                               ; preds = %74
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %9, align 8
  br label %71

96:                                               ; preds = %71
  %97 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %98 = call i32 @memset(i8* %97, i32 0, i32 16)
  store i64 0, i64* %9, align 8
  br label %99

99:                                               ; preds = %110, %96
  %100 = load i64, i64* %9, align 8
  %101 = icmp ult i64 %100, 8
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %107 = load i64, i64* %9, align 8
  %108 = mul i64 %107, 4
  %109 = call i32 @GET_UINT32_BE(i8 zeroext %105, i8* %106, i64 %108)
  br label %110

110:                                              ; preds = %102
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %9, align 8
  br label %99

113:                                              ; preds = %99
  store i64 0, i64* %9, align 8
  br label %114

114:                                              ; preds = %132, %113
  %115 = load i64, i64* %9, align 8
  %116 = icmp ult i64 %115, 4
  br i1 %116, label %117, label %135

117:                                              ; preds = %114
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i64, i64* %9, align 8
  %123 = add i64 4, %122
  %124 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = xor i32 %121, %126
  %128 = trunc i32 %127 to i8
  %129 = load i64, i64* %9, align 8
  %130 = add i64 8, %129
  %131 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 %130
  store i8 %128, i8* %131, align 1
  br label %132

132:                                              ; preds = %117
  %133 = load i64, i64* %9, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %9, align 8
  br label %114

135:                                              ; preds = %114
  %136 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %137 = getelementptr inbounds i8, i8* %136, i64 8
  %138 = getelementptr inbounds [6 x [2 x i8]], [6 x [2 x i8]]* %12, i64 0, i64 0
  %139 = getelementptr inbounds [2 x i8], [2 x i8]* %138, i64 0, i64 0
  %140 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %141 = getelementptr inbounds i8, i8* %140, i64 10
  %142 = call i32 @camellia_feistel(i8* %137, i8* %139, i8* %141)
  %143 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %144 = getelementptr inbounds i8, i8* %143, i64 10
  %145 = getelementptr inbounds [6 x [2 x i8]], [6 x [2 x i8]]* %12, i64 0, i64 1
  %146 = getelementptr inbounds [2 x i8], [2 x i8]* %145, i64 0, i64 0
  %147 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %148 = getelementptr inbounds i8, i8* %147, i64 8
  %149 = call i32 @camellia_feistel(i8* %144, i8* %146, i8* %148)
  store i64 0, i64* %9, align 8
  br label %150

150:                                              ; preds = %165, %135
  %151 = load i64, i64* %9, align 8
  %152 = icmp ult i64 %151, 4
  br i1 %152, label %153, label %168

153:                                              ; preds = %150
  %154 = load i64, i64* %9, align 8
  %155 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = load i64, i64* %9, align 8
  %159 = add i64 8, %158
  %160 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = xor i32 %162, %157
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %160, align 1
  br label %165

165:                                              ; preds = %153
  %166 = load i64, i64* %9, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %9, align 8
  br label %150

168:                                              ; preds = %150
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %170 = getelementptr inbounds i8, i8* %169, i64 8
  %171 = getelementptr inbounds [6 x [2 x i8]], [6 x [2 x i8]]* %12, i64 0, i64 2
  %172 = getelementptr inbounds [2 x i8], [2 x i8]* %171, i64 0, i64 0
  %173 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %174 = getelementptr inbounds i8, i8* %173, i64 10
  %175 = call i32 @camellia_feistel(i8* %170, i8* %172, i8* %174)
  %176 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %177 = getelementptr inbounds i8, i8* %176, i64 10
  %178 = getelementptr inbounds [6 x [2 x i8]], [6 x [2 x i8]]* %12, i64 0, i64 3
  %179 = getelementptr inbounds [2 x i8], [2 x i8]* %178, i64 0, i64 0
  %180 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %181 = getelementptr inbounds i8, i8* %180, i64 8
  %182 = call i32 @camellia_feistel(i8* %177, i8* %179, i8* %181)
  %183 = load i32, i32* %7, align 4
  %184 = icmp ugt i32 %183, 128
  br i1 %184, label %185, label %223

185:                                              ; preds = %168
  store i64 0, i64* %9, align 8
  br label %186

186:                                              ; preds = %205, %185
  %187 = load i64, i64* %9, align 8
  %188 = icmp ult i64 %187, 4
  br i1 %188, label %189, label %208

189:                                              ; preds = %186
  %190 = load i64, i64* %9, align 8
  %191 = add i64 4, %190
  %192 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = load i64, i64* %9, align 8
  %196 = add i64 8, %195
  %197 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = xor i32 %194, %199
  %201 = trunc i32 %200 to i8
  %202 = load i64, i64* %9, align 8
  %203 = add i64 12, %202
  %204 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 %203
  store i8 %201, i8* %204, align 1
  br label %205

205:                                              ; preds = %189
  %206 = load i64, i64* %9, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %9, align 8
  br label %186

208:                                              ; preds = %186
  %209 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %210 = getelementptr inbounds i8, i8* %209, i64 12
  %211 = getelementptr inbounds [6 x [2 x i8]], [6 x [2 x i8]]* %12, i64 0, i64 4
  %212 = getelementptr inbounds [2 x i8], [2 x i8]* %211, i64 0, i64 0
  %213 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %214 = getelementptr inbounds i8, i8* %213, i64 14
  %215 = call i32 @camellia_feistel(i8* %210, i8* %212, i8* %214)
  %216 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %217 = getelementptr inbounds i8, i8* %216, i64 14
  %218 = getelementptr inbounds [6 x [2 x i8]], [6 x [2 x i8]]* %12, i64 0, i64 5
  %219 = getelementptr inbounds [2 x i8], [2 x i8]* %218, i64 0, i64 0
  %220 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %221 = getelementptr inbounds i8, i8* %220, i64 12
  %222 = call i32 @camellia_feistel(i8* %217, i8* %219, i8* %221)
  br label %223

223:                                              ; preds = %208, %168
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @SHIFT_AND_PLACE(i32 %224, i32 0)
  %226 = load i32, i32* %7, align 4
  %227 = icmp ugt i32 %226, 128
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load i32, i32* %8, align 4
  %230 = call i32 @SHIFT_AND_PLACE(i32 %229, i32 1)
  br label %231

231:                                              ; preds = %228, %223
  %232 = load i32, i32* %8, align 4
  %233 = call i32 @SHIFT_AND_PLACE(i32 %232, i32 2)
  %234 = load i32, i32* %7, align 4
  %235 = icmp ugt i32 %234, 128
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @SHIFT_AND_PLACE(i32 %237, i32 3)
  br label %239

239:                                              ; preds = %236, %231
  store i64 0, i64* %9, align 8
  br label %240

240:                                              ; preds = %275, %239
  %241 = load i64, i64* %9, align 8
  %242 = icmp ult i64 %241, 20
  br i1 %242, label %243, label %278

243:                                              ; preds = %240
  %244 = load i32**, i32*** @transposes, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32*, i32** %244, i64 %246
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* %9, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, -1
  br i1 %252, label %253, label %274

253:                                              ; preds = %243
  %254 = load i8*, i8** %10, align 8
  %255 = load i32**, i32*** @transposes, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32*, i32** %255, i64 %257
  %259 = load i32*, i32** %258, align 8
  %260 = load i64, i64* %9, align 8
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %254, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = load i8*, i8** %10, align 8
  %267 = load i32, i32* %8, align 4
  %268 = mul nsw i32 12, %267
  %269 = add nsw i32 32, %268
  %270 = sext i32 %269 to i64
  %271 = load i64, i64* %9, align 8
  %272 = add i64 %270, %271
  %273 = getelementptr inbounds i8, i8* %266, i64 %272
  store i8 %265, i8* %273, align 1
  br label %274

274:                                              ; preds = %253, %243
  br label %275

275:                                              ; preds = %274
  %276 = load i64, i64* %9, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %9, align 8
  br label %240

278:                                              ; preds = %240
  store i32 0, i32* %4, align 4
  br label %279

279:                                              ; preds = %278, %29
  %280 = load i32, i32* %4, align 4
  ret i32 %280
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @GET_UINT32_BE(i8 zeroext, i8*, i64) #1

declare dso_local i32 @camellia_feistel(i8*, i8*, i8*) #1

declare dso_local i32 @SHIFT_AND_PLACE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
