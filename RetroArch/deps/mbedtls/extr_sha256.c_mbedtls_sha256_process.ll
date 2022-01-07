; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_sha256.c_mbedtls_sha256_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_sha256.c_mbedtls_sha256_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@SHA256_K = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_sha256_process(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [64 x i64], align 16
  %8 = alloca [8 x i64], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %9, align 4
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 %22
  store i64 %20, i64* %23, align 8
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %9, align 4
  br label %10

27:                                               ; preds = %10
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %9, align 4
  %30 = icmp ult i32 %29, 16
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = mul i32 4, %37
  %39 = call i32 @GET_UINT32_BE(i64 %35, i8* %36, i32 %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %28

43:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %272, %43
  %45 = load i32, i32* %9, align 4
  %46 = icmp ult i32 %45, 16
  br i1 %46, label %47, label %275

47:                                               ; preds = %44
  %48 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %49 = load i64, i64* %48, align 16
  %50 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %53 = load i64, i64* %52, align 16
  %54 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %57 = load i64, i64* %56, align 16
  %58 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %61 = load i64, i64* %60, align 16
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 0
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i32*, i32** @SHA256_K, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 0
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @P(i64 %49, i64 %51, i64 %53, i64 %55, i64 %57, i64 %59, i64 %61, i64 %63, i64 %68, i32 %74)
  %76 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %79 = load i64, i64* %78, align 16
  %80 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %83 = load i64, i64* %82, align 16
  %84 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %87 = load i64, i64* %86, align 16
  %88 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %91 = load i64, i64* %90, align 16
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %92, 1
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i32*, i32** @SHA256_K, align 8
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @P(i64 %77, i64 %79, i64 %81, i64 %83, i64 %85, i64 %87, i64 %89, i64 %91, i64 %96, i32 %102)
  %104 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %105 = load i64, i64* %104, align 16
  %106 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %109 = load i64, i64* %108, align 16
  %110 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %113 = load i64, i64* %112, align 16
  %114 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %117 = load i64, i64* %116, align 16
  %118 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add i32 %120, 2
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i32*, i32** @SHA256_K, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add i32 %126, 2
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @P(i64 %105, i64 %107, i64 %109, i64 %111, i64 %113, i64 %115, i64 %117, i64 %119, i64 %124, i32 %130)
  %132 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %135 = load i64, i64* %134, align 16
  %136 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %139 = load i64, i64* %138, align 16
  %140 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %143 = load i64, i64* %142, align 16
  %144 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %147 = load i64, i64* %146, align 16
  %148 = load i32, i32* %9, align 4
  %149 = add i32 %148, 3
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load i32*, i32** @SHA256_K, align 8
  %154 = load i32, i32* %9, align 4
  %155 = add i32 %154, 3
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @P(i64 %133, i64 %135, i64 %137, i64 %139, i64 %141, i64 %143, i64 %145, i64 %147, i64 %152, i32 %158)
  %160 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %161 = load i64, i64* %160, align 16
  %162 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %165 = load i64, i64* %164, align 16
  %166 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %169 = load i64, i64* %168, align 16
  %170 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %173 = load i64, i64* %172, align 16
  %174 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = add i32 %176, 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load i32*, i32** @SHA256_K, align 8
  %182 = load i32, i32* %9, align 4
  %183 = add i32 %182, 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @P(i64 %161, i64 %163, i64 %165, i64 %167, i64 %169, i64 %171, i64 %173, i64 %175, i64 %180, i32 %186)
  %188 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %191 = load i64, i64* %190, align 16
  %192 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %195 = load i64, i64* %194, align 16
  %196 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %199 = load i64, i64* %198, align 16
  %200 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %203 = load i64, i64* %202, align 16
  %204 = load i32, i32* %9, align 4
  %205 = add i32 %204, 5
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load i32*, i32** @SHA256_K, align 8
  %210 = load i32, i32* %9, align 4
  %211 = add i32 %210, 5
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @P(i64 %189, i64 %191, i64 %193, i64 %195, i64 %197, i64 %199, i64 %201, i64 %203, i64 %208, i32 %214)
  %216 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %217 = load i64, i64* %216, align 16
  %218 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %221 = load i64, i64* %220, align 16
  %222 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %225 = load i64, i64* %224, align 16
  %226 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %229 = load i64, i64* %228, align 16
  %230 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %231 = load i64, i64* %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = add i32 %232, 6
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = load i32*, i32** @SHA256_K, align 8
  %238 = load i32, i32* %9, align 4
  %239 = add i32 %238, 6
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @P(i64 %217, i64 %219, i64 %221, i64 %223, i64 %225, i64 %227, i64 %229, i64 %231, i64 %236, i32 %242)
  %244 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %247 = load i64, i64* %246, align 16
  %248 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %251 = load i64, i64* %250, align 16
  %252 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %255 = load i64, i64* %254, align 16
  %256 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %259 = load i64, i64* %258, align 16
  %260 = load i32, i32* %9, align 4
  %261 = add i32 %260, 7
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds [64 x i64], [64 x i64]* %7, i64 0, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = load i32*, i32** @SHA256_K, align 8
  %266 = load i32, i32* %9, align 4
  %267 = add i32 %266, 7
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @P(i64 %245, i64 %247, i64 %249, i64 %251, i64 %253, i64 %255, i64 %257, i64 %259, i64 %264, i32 %270)
  br label %272

272:                                              ; preds = %47
  %273 = load i32, i32* %9, align 4
  %274 = add i32 %273, 8
  store i32 %274, i32* %9, align 4
  br label %44

275:                                              ; preds = %44
  store i32 16, i32* %9, align 4
  br label %276

276:                                              ; preds = %488, %275
  %277 = load i32, i32* %9, align 4
  %278 = icmp ult i32 %277, 64
  br i1 %278, label %279, label %491

279:                                              ; preds = %276
  %280 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %281 = load i64, i64* %280, align 16
  %282 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %285 = load i64, i64* %284, align 16
  %286 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %289 = load i64, i64* %288, align 16
  %290 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %293 = load i64, i64* %292, align 16
  %294 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* %9, align 4
  %297 = add i32 %296, 0
  %298 = call i64 @R(i32 %297)
  %299 = load i32*, i32** @SHA256_K, align 8
  %300 = load i32, i32* %9, align 4
  %301 = add i32 %300, 0
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @P(i64 %281, i64 %283, i64 %285, i64 %287, i64 %289, i64 %291, i64 %293, i64 %295, i64 %298, i32 %304)
  %306 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %307 = load i64, i64* %306, align 8
  %308 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %309 = load i64, i64* %308, align 16
  %310 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %311 = load i64, i64* %310, align 8
  %312 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %313 = load i64, i64* %312, align 16
  %314 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %317 = load i64, i64* %316, align 16
  %318 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %319 = load i64, i64* %318, align 8
  %320 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %321 = load i64, i64* %320, align 16
  %322 = load i32, i32* %9, align 4
  %323 = add i32 %322, 1
  %324 = call i64 @R(i32 %323)
  %325 = load i32*, i32** @SHA256_K, align 8
  %326 = load i32, i32* %9, align 4
  %327 = add i32 %326, 1
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %325, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @P(i64 %307, i64 %309, i64 %311, i64 %313, i64 %315, i64 %317, i64 %319, i64 %321, i64 %324, i32 %330)
  %332 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %333 = load i64, i64* %332, align 16
  %334 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %337 = load i64, i64* %336, align 16
  %338 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %339 = load i64, i64* %338, align 8
  %340 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %341 = load i64, i64* %340, align 16
  %342 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %345 = load i64, i64* %344, align 16
  %346 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %347 = load i64, i64* %346, align 8
  %348 = load i32, i32* %9, align 4
  %349 = add i32 %348, 2
  %350 = call i64 @R(i32 %349)
  %351 = load i32*, i32** @SHA256_K, align 8
  %352 = load i32, i32* %9, align 4
  %353 = add i32 %352, 2
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @P(i64 %333, i64 %335, i64 %337, i64 %339, i64 %341, i64 %343, i64 %345, i64 %347, i64 %350, i32 %356)
  %358 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %361 = load i64, i64* %360, align 16
  %362 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %363 = load i64, i64* %362, align 8
  %364 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %365 = load i64, i64* %364, align 16
  %366 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %367 = load i64, i64* %366, align 8
  %368 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %369 = load i64, i64* %368, align 16
  %370 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %371 = load i64, i64* %370, align 8
  %372 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %373 = load i64, i64* %372, align 16
  %374 = load i32, i32* %9, align 4
  %375 = add i32 %374, 3
  %376 = call i64 @R(i32 %375)
  %377 = load i32*, i32** @SHA256_K, align 8
  %378 = load i32, i32* %9, align 4
  %379 = add i32 %378, 3
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %377, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = call i32 @P(i64 %359, i64 %361, i64 %363, i64 %365, i64 %367, i64 %369, i64 %371, i64 %373, i64 %376, i32 %382)
  %384 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %385 = load i64, i64* %384, align 16
  %386 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %387 = load i64, i64* %386, align 8
  %388 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %389 = load i64, i64* %388, align 16
  %390 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %391 = load i64, i64* %390, align 8
  %392 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %393 = load i64, i64* %392, align 16
  %394 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %395 = load i64, i64* %394, align 8
  %396 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %397 = load i64, i64* %396, align 16
  %398 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %399 = load i64, i64* %398, align 8
  %400 = load i32, i32* %9, align 4
  %401 = add i32 %400, 4
  %402 = call i64 @R(i32 %401)
  %403 = load i32*, i32** @SHA256_K, align 8
  %404 = load i32, i32* %9, align 4
  %405 = add i32 %404, 4
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %403, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = call i32 @P(i64 %385, i64 %387, i64 %389, i64 %391, i64 %393, i64 %395, i64 %397, i64 %399, i64 %402, i32 %408)
  %410 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %411 = load i64, i64* %410, align 8
  %412 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %413 = load i64, i64* %412, align 16
  %414 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %415 = load i64, i64* %414, align 8
  %416 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %417 = load i64, i64* %416, align 16
  %418 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %419 = load i64, i64* %418, align 8
  %420 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %421 = load i64, i64* %420, align 16
  %422 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %423 = load i64, i64* %422, align 8
  %424 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %425 = load i64, i64* %424, align 16
  %426 = load i32, i32* %9, align 4
  %427 = add i32 %426, 5
  %428 = call i64 @R(i32 %427)
  %429 = load i32*, i32** @SHA256_K, align 8
  %430 = load i32, i32* %9, align 4
  %431 = add i32 %430, 5
  %432 = zext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %429, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @P(i64 %411, i64 %413, i64 %415, i64 %417, i64 %419, i64 %421, i64 %423, i64 %425, i64 %428, i32 %434)
  %436 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %437 = load i64, i64* %436, align 16
  %438 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %439 = load i64, i64* %438, align 8
  %440 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %441 = load i64, i64* %440, align 16
  %442 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %443 = load i64, i64* %442, align 8
  %444 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %445 = load i64, i64* %444, align 16
  %446 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %447 = load i64, i64* %446, align 8
  %448 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %449 = load i64, i64* %448, align 16
  %450 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %451 = load i64, i64* %450, align 8
  %452 = load i32, i32* %9, align 4
  %453 = add i32 %452, 6
  %454 = call i64 @R(i32 %453)
  %455 = load i32*, i32** @SHA256_K, align 8
  %456 = load i32, i32* %9, align 4
  %457 = add i32 %456, 6
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %455, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @P(i64 %437, i64 %439, i64 %441, i64 %443, i64 %445, i64 %447, i64 %449, i64 %451, i64 %454, i32 %460)
  %462 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1
  %463 = load i64, i64* %462, align 8
  %464 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 2
  %465 = load i64, i64* %464, align 16
  %466 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 3
  %467 = load i64, i64* %466, align 8
  %468 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 4
  %469 = load i64, i64* %468, align 16
  %470 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 5
  %471 = load i64, i64* %470, align 8
  %472 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 6
  %473 = load i64, i64* %472, align 16
  %474 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 7
  %475 = load i64, i64* %474, align 8
  %476 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %477 = load i64, i64* %476, align 16
  %478 = load i32, i32* %9, align 4
  %479 = add i32 %478, 7
  %480 = call i64 @R(i32 %479)
  %481 = load i32*, i32** @SHA256_K, align 8
  %482 = load i32, i32* %9, align 4
  %483 = add i32 %482, 7
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %481, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = call i32 @P(i64 %463, i64 %465, i64 %467, i64 %469, i64 %471, i64 %473, i64 %475, i64 %477, i64 %480, i32 %486)
  br label %488

488:                                              ; preds = %279
  %489 = load i32, i32* %9, align 4
  %490 = add i32 %489, 8
  store i32 %490, i32* %9, align 4
  br label %276

491:                                              ; preds = %276
  store i32 0, i32* %9, align 4
  br label %492

492:                                              ; preds = %508, %491
  %493 = load i32, i32* %9, align 4
  %494 = icmp ult i32 %493, 8
  br i1 %494, label %495, label %511

495:                                              ; preds = %492
  %496 = load i32, i32* %9, align 4
  %497 = zext i32 %496 to i64
  %498 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 %497
  %499 = load i64, i64* %498, align 8
  %500 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %500, i32 0, i32 0
  %502 = load i64*, i64** %501, align 8
  %503 = load i32, i32* %9, align 4
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds i64, i64* %502, i64 %504
  %506 = load i64, i64* %505, align 8
  %507 = add nsw i64 %506, %499
  store i64 %507, i64* %505, align 8
  br label %508

508:                                              ; preds = %495
  %509 = load i32, i32* %9, align 4
  %510 = add i32 %509, 1
  store i32 %510, i32* %9, align 4
  br label %492

511:                                              ; preds = %492
  ret void
}

declare dso_local i32 @GET_UINT32_BE(i64, i8*, i32) #1

declare dso_local i32 @P(i64, i64, i64, i64, i64, i64, i64, i64, i64, i32) #1

declare dso_local i64 @R(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
