; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ccm.c_ccm_auth_crypt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ccm.c_ccm_auth_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_CCM_BAD_INPUT = common dso_local global i32 0, align 4
@UPDATE_CBC_MAC = common dso_local global i32 0, align 4
@CCM_ENCRYPT = common dso_local global i32 0, align 4
@CCM_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i8*, i64, i8*, i64, i8*, i8*, i8*, i64)* @ccm_auth_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_auth_crypt(i32* %0, i32 %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i8* %8, i8* %9, i64 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca [16 x i8], align 16
  %30 = alloca [16 x i8], align 16
  %31 = alloca [16 x i8], align 16
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i64 %2, i64* %15, align 8
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store i8* %5, i8** %18, align 8
  store i64 %6, i64* %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i64 %10, i64* %23, align 8
  %36 = load i64, i64* %23, align 8
  %37 = icmp ult i64 %36, 4
  br i1 %37, label %45, label %38

38:                                               ; preds = %11
  %39 = load i64, i64* %23, align 8
  %40 = icmp ugt i64 %39, 16
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %23, align 8
  %43 = urem i64 %42, 2
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %38, %11
  %46 = load i32, i32* @MBEDTLS_ERR_CCM_BAD_INPUT, align 4
  store i32 %46, i32* %12, align 4
  br label %305

47:                                               ; preds = %41
  %48 = load i64, i64* %17, align 8
  %49 = icmp ult i64 %48, 7
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %17, align 8
  %52 = icmp ugt i64 %51, 13
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %47
  %54 = load i32, i32* @MBEDTLS_ERR_CCM_BAD_INPUT, align 4
  store i32 %54, i32* %12, align 4
  br label %305

55:                                               ; preds = %50
  %56 = load i64, i64* %19, align 8
  %57 = icmp ugt i64 %56, 65280
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @MBEDTLS_ERR_CCM_BAD_INPUT, align 4
  store i32 %59, i32* %12, align 4
  br label %305

60:                                               ; preds = %55
  %61 = load i64, i64* %17, align 8
  %62 = trunc i64 %61 to i8
  %63 = zext i8 %62 to i32
  %64 = sub nsw i32 15, %63
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %26, align 1
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  store i8 0, i8* %66, align 16
  %67 = load i64, i64* %19, align 8
  %68 = icmp ugt i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = shl i32 %69, 6
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %72 = load i8, i8* %71, align 16
  %73 = zext i8 %72 to i32
  %74 = or i32 %73, %70
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %71, align 16
  %76 = load i64, i64* %23, align 8
  %77 = sub i64 %76, 2
  %78 = udiv i64 %77, 2
  %79 = shl i64 %78, 3
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %81 = load i8, i8* %80, align 16
  %82 = zext i8 %81 to i64
  %83 = or i64 %82, %79
  %84 = trunc i64 %83 to i8
  store i8 %84, i8* %80, align 16
  %85 = load i8, i8* %26, align 1
  %86 = zext i8 %85 to i32
  %87 = sub nsw i32 %86, 1
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %89 = load i8, i8* %88, align 16
  %90 = zext i8 %89 to i32
  %91 = or i32 %90, %87
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %88, align 16
  %93 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8*, i8** %16, align 8
  %96 = load i64, i64* %17, align 8
  %97 = call i32 @memcpy(i8* %94, i8* %95, i64 %96)
  store i8 0, i8* %25, align 1
  %98 = load i64, i64* %15, align 8
  store i64 %98, i64* %27, align 8
  br label %99

99:                                               ; preds = %114, %60
  %100 = load i8, i8* %25, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* %26, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load i64, i64* %27, align 8
  %107 = and i64 %106, 255
  %108 = trunc i64 %107 to i8
  %109 = load i8, i8* %25, align 1
  %110 = zext i8 %109 to i32
  %111 = sub nsw i32 15, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 %112
  store i8 %108, i8* %113, align 1
  br label %114

114:                                              ; preds = %105
  %115 = load i8, i8* %25, align 1
  %116 = add i8 %115, 1
  store i8 %116, i8* %25, align 1
  %117 = load i64, i64* %27, align 8
  %118 = lshr i64 %117, 8
  store i64 %118, i64* %27, align 8
  br label %99

119:                                              ; preds = %99
  %120 = load i64, i64* %27, align 8
  %121 = icmp ugt i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @MBEDTLS_ERR_CCM_BAD_INPUT, align 4
  store i32 %123, i32* %12, align 4
  br label %305

124:                                              ; preds = %119
  %125 = getelementptr inbounds [16 x i8], [16 x i8]* %30, i64 0, i64 0
  %126 = call i32 @memset(i8* %125, i32 0, i32 16)
  %127 = load i32, i32* @UPDATE_CBC_MAC, align 4
  %128 = load i64, i64* %19, align 8
  %129 = icmp ugt i64 %128, 0
  br i1 %129, label %130, label %188

130:                                              ; preds = %124
  %131 = load i64, i64* %19, align 8
  store i64 %131, i64* %27, align 8
  %132 = load i8*, i8** %18, align 8
  store i8* %132, i8** %32, align 8
  %133 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %134 = call i32 @memset(i8* %133, i32 0, i32 16)
  %135 = load i64, i64* %19, align 8
  %136 = lshr i64 %135, 8
  %137 = and i64 %136, 255
  %138 = trunc i64 %137 to i8
  %139 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  store i8 %138, i8* %139, align 16
  %140 = load i64, i64* %19, align 8
  %141 = and i64 %140, 255
  %142 = trunc i64 %141 to i8
  %143 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 1
  store i8 %142, i8* %143, align 1
  %144 = load i64, i64* %27, align 8
  %145 = icmp ult i64 %144, 14
  br i1 %145, label %146, label %148

146:                                              ; preds = %130
  %147 = load i64, i64* %27, align 8
  br label %149

148:                                              ; preds = %130
  br label %149

149:                                              ; preds = %148, %146
  %150 = phi i64 [ %147, %146 ], [ 14, %148 ]
  store i64 %150, i64* %34, align 8
  %151 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %152 = getelementptr inbounds i8, i8* %151, i64 2
  %153 = load i8*, i8** %32, align 8
  %154 = load i64, i64* %34, align 8
  %155 = call i32 @memcpy(i8* %152, i8* %153, i64 %154)
  %156 = load i64, i64* %34, align 8
  %157 = load i64, i64* %27, align 8
  %158 = sub i64 %157, %156
  store i64 %158, i64* %27, align 8
  %159 = load i64, i64* %34, align 8
  %160 = load i8*, i8** %32, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 %159
  store i8* %161, i8** %32, align 8
  %162 = load i32, i32* @UPDATE_CBC_MAC, align 4
  br label %163

163:                                              ; preds = %172, %149
  %164 = load i64, i64* %27, align 8
  %165 = icmp ugt i64 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %163
  %167 = load i64, i64* %27, align 8
  %168 = icmp ugt i64 %167, 16
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %172

170:                                              ; preds = %166
  %171 = load i64, i64* %27, align 8
  br label %172

172:                                              ; preds = %170, %169
  %173 = phi i64 [ 16, %169 ], [ %171, %170 ]
  store i64 %173, i64* %34, align 8
  %174 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %175 = call i32 @memset(i8* %174, i32 0, i32 16)
  %176 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %177 = load i8*, i8** %32, align 8
  %178 = load i64, i64* %34, align 8
  %179 = call i32 @memcpy(i8* %176, i8* %177, i64 %178)
  %180 = load i32, i32* @UPDATE_CBC_MAC, align 4
  %181 = load i64, i64* %34, align 8
  %182 = load i64, i64* %27, align 8
  %183 = sub i64 %182, %181
  store i64 %183, i64* %27, align 8
  %184 = load i64, i64* %34, align 8
  %185 = load i8*, i8** %32, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 %184
  store i8* %186, i8** %32, align 8
  br label %163

187:                                              ; preds = %163
  br label %188

188:                                              ; preds = %187, %124
  %189 = load i8, i8* %26, align 1
  %190 = zext i8 %189 to i32
  %191 = sub nsw i32 %190, 1
  %192 = trunc i32 %191 to i8
  %193 = getelementptr inbounds [16 x i8], [16 x i8]* %31, i64 0, i64 0
  store i8 %192, i8* %193, align 16
  %194 = getelementptr inbounds [16 x i8], [16 x i8]* %31, i64 0, i64 0
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = load i8*, i8** %16, align 8
  %197 = load i64, i64* %17, align 8
  %198 = call i32 @memcpy(i8* %195, i8* %196, i64 %197)
  %199 = getelementptr inbounds [16 x i8], [16 x i8]* %31, i64 0, i64 0
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load i64, i64* %17, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  %203 = load i8, i8* %26, align 1
  %204 = zext i8 %203 to i32
  %205 = call i32 @memset(i8* %202, i32 0, i32 %204)
  %206 = getelementptr inbounds [16 x i8], [16 x i8]* %31, i64 0, i64 15
  store i8 1, i8* %206, align 1
  %207 = load i64, i64* %15, align 8
  store i64 %207, i64* %27, align 8
  %208 = load i8*, i8** %20, align 8
  store i8* %208, i8** %32, align 8
  %209 = load i8*, i8** %21, align 8
  store i8* %209, i8** %33, align 8
  br label %210

210:                                              ; preds = %280, %188
  %211 = load i64, i64* %27, align 8
  %212 = icmp ugt i64 %211, 0
  br i1 %212, label %213, label %281

213:                                              ; preds = %210
  %214 = load i64, i64* %27, align 8
  %215 = icmp ugt i64 %214, 16
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  br label %219

217:                                              ; preds = %213
  %218 = load i64, i64* %27, align 8
  br label %219

219:                                              ; preds = %217, %216
  %220 = phi i64 [ 16, %216 ], [ %218, %217 ]
  store i64 %220, i64* %35, align 8
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* @CCM_ENCRYPT, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %219
  %225 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %226 = call i32 @memset(i8* %225, i32 0, i32 16)
  %227 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %228 = load i8*, i8** %32, align 8
  %229 = load i64, i64* %35, align 8
  %230 = call i32 @memcpy(i8* %227, i8* %228, i64 %229)
  %231 = load i32, i32* @UPDATE_CBC_MAC, align 4
  br label %232

232:                                              ; preds = %224, %219
  %233 = load i8*, i8** %33, align 8
  %234 = load i8*, i8** %32, align 8
  %235 = load i64, i64* %35, align 8
  %236 = trunc i64 %235 to i32
  %237 = call i32 @CTR_CRYPT(i8* %233, i8* %234, i32 %236)
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* @CCM_DECRYPT, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %232
  %242 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %243 = call i32 @memset(i8* %242, i32 0, i32 16)
  %244 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %245 = load i8*, i8** %33, align 8
  %246 = load i64, i64* %35, align 8
  %247 = call i32 @memcpy(i8* %244, i8* %245, i64 %246)
  %248 = load i32, i32* @UPDATE_CBC_MAC, align 4
  br label %249

249:                                              ; preds = %241, %232
  %250 = load i64, i64* %35, align 8
  %251 = load i8*, i8** %33, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 %250
  store i8* %252, i8** %33, align 8
  %253 = load i64, i64* %35, align 8
  %254 = load i8*, i8** %32, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 %253
  store i8* %255, i8** %32, align 8
  %256 = load i64, i64* %35, align 8
  %257 = load i64, i64* %27, align 8
  %258 = sub i64 %257, %256
  store i64 %258, i64* %27, align 8
  store i8 0, i8* %25, align 1
  br label %259

259:                                              ; preds = %277, %249
  %260 = load i8, i8* %25, align 1
  %261 = zext i8 %260 to i32
  %262 = load i8, i8* %26, align 1
  %263 = zext i8 %262 to i32
  %264 = icmp slt i32 %261, %263
  br i1 %264, label %265, label %280

265:                                              ; preds = %259
  %266 = load i8, i8* %25, align 1
  %267 = zext i8 %266 to i32
  %268 = sub nsw i32 15, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [16 x i8], [16 x i8]* %31, i64 0, i64 %269
  %271 = load i8, i8* %270, align 1
  %272 = add i8 %271, 1
  store i8 %272, i8* %270, align 1
  %273 = zext i8 %272 to i32
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %265
  br label %280

276:                                              ; preds = %265
  br label %277

277:                                              ; preds = %276
  %278 = load i8, i8* %25, align 1
  %279 = add i8 %278, 1
  store i8 %279, i8* %25, align 1
  br label %259

280:                                              ; preds = %275, %259
  br label %210

281:                                              ; preds = %210
  store i8 0, i8* %25, align 1
  br label %282

282:                                              ; preds = %294, %281
  %283 = load i8, i8* %25, align 1
  %284 = zext i8 %283 to i32
  %285 = load i8, i8* %26, align 1
  %286 = zext i8 %285 to i32
  %287 = icmp slt i32 %284, %286
  br i1 %287, label %288, label %297

288:                                              ; preds = %282
  %289 = load i8, i8* %25, align 1
  %290 = zext i8 %289 to i32
  %291 = sub nsw i32 15, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [16 x i8], [16 x i8]* %31, i64 0, i64 %292
  store i8 0, i8* %293, align 1
  br label %294

294:                                              ; preds = %288
  %295 = load i8, i8* %25, align 1
  %296 = add i8 %295, 1
  store i8 %296, i8* %25, align 1
  br label %282

297:                                              ; preds = %282
  %298 = getelementptr inbounds [16 x i8], [16 x i8]* %30, i64 0, i64 0
  %299 = getelementptr inbounds [16 x i8], [16 x i8]* %30, i64 0, i64 0
  %300 = call i32 @CTR_CRYPT(i8* %298, i8* %299, i32 16)
  %301 = load i8*, i8** %22, align 8
  %302 = getelementptr inbounds [16 x i8], [16 x i8]* %30, i64 0, i64 0
  %303 = load i64, i64* %23, align 8
  %304 = call i32 @memcpy(i8* %301, i8* %302, i64 %303)
  store i32 0, i32* %12, align 4
  br label %305

305:                                              ; preds = %297, %122, %58, %53, %45
  %306 = load i32, i32* %12, align 4
  ret i32 %306
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @CTR_CRYPT(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
