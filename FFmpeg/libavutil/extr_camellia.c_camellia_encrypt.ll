; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_camellia.c_camellia_encrypt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_camellia.c_camellia_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*)* @camellia_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camellia_encrypt(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @AV_RB64(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 8
  %13 = call i32 @AV_RB64(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @F(i32 %28, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = xor i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @F(i32 %37, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = xor i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @F(i32 %46, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = xor i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @F(i32 %55, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = xor i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @F(i32 %64, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = xor i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @F(i32 %73, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = xor i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @FL(i32 %82, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @FLINV(i32 %89, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 6
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @F(i32 %96, i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = xor i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 7
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @F(i32 %105, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = xor i32 %112, %111
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @F(i32 %114, i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = xor i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 9
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @F(i32 %123, i32 %128)
  %130 = load i32, i32* %7, align 4
  %131 = xor i32 %130, %129
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 10
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @F(i32 %132, i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = xor i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 11
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @F(i32 %141, i32 %146)
  %148 = load i32, i32* %7, align 4
  %149 = xor i32 %148, %147
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @FL(i32 %150, i32 %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @FLINV(i32 %157, i32 %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 12
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @F(i32 %164, i32 %169)
  %171 = load i32, i32* %8, align 4
  %172 = xor i32 %171, %170
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 13
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @F(i32 %173, i32 %178)
  %180 = load i32, i32* %7, align 4
  %181 = xor i32 %180, %179
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 14
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @F(i32 %182, i32 %187)
  %189 = load i32, i32* %8, align 4
  %190 = xor i32 %189, %188
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 15
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @F(i32 %191, i32 %196)
  %198 = load i32, i32* %7, align 4
  %199 = xor i32 %198, %197
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 16
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @F(i32 %200, i32 %205)
  %207 = load i32, i32* %8, align 4
  %208 = xor i32 %207, %206
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 17
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @F(i32 %209, i32 %214)
  %216 = load i32, i32* %7, align 4
  %217 = xor i32 %216, %215
  store i32 %217, i32* %7, align 4
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 128
  br i1 %221, label %222, label %291

222:                                              ; preds = %3
  %223 = load i32, i32* %7, align 4
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 4
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @FL(i32 %223, i32 %228)
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %8, align 4
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 5
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @FLINV(i32 %230, i32 %235)
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %7, align 4
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 18
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @F(i32 %237, i32 %242)
  %244 = load i32, i32* %8, align 4
  %245 = xor i32 %244, %243
  store i32 %245, i32* %8, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 19
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @F(i32 %246, i32 %251)
  %253 = load i32, i32* %7, align 4
  %254 = xor i32 %253, %252
  store i32 %254, i32* %7, align 4
  %255 = load i32, i32* %7, align 4
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 20
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @F(i32 %255, i32 %260)
  %262 = load i32, i32* %8, align 4
  %263 = xor i32 %262, %261
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* %8, align 4
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 2
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 21
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @F(i32 %264, i32 %269)
  %271 = load i32, i32* %7, align 4
  %272 = xor i32 %271, %270
  store i32 %272, i32* %7, align 4
  %273 = load i32, i32* %7, align 4
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 2
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 22
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @F(i32 %273, i32 %278)
  %280 = load i32, i32* %8, align 4
  %281 = xor i32 %280, %279
  store i32 %281, i32* %8, align 4
  %282 = load i32, i32* %8, align 4
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 23
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @F(i32 %282, i32 %287)
  %289 = load i32, i32* %7, align 4
  %290 = xor i32 %289, %288
  store i32 %290, i32* %7, align 4
  br label %291

291:                                              ; preds = %222, %3
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 2
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %8, align 4
  %298 = xor i32 %297, %296
  store i32 %298, i32* %8, align 4
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 3
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %7, align 4
  %305 = xor i32 %304, %303
  store i32 %305, i32* %7, align 4
  %306 = load i32*, i32** %5, align 8
  %307 = load i32, i32* %8, align 4
  %308 = call i32 @AV_WB64(i32* %306, i32 %307)
  %309 = load i32*, i32** %5, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 8
  %311 = load i32, i32* %7, align 4
  %312 = call i32 @AV_WB64(i32* %310, i32 %311)
  ret void
}

declare dso_local i32 @AV_RB64(i32*) #1

declare dso_local i32 @F(i32, i32) #1

declare dso_local i32 @FL(i32, i32) #1

declare dso_local i32 @FLINV(i32, i32) #1

declare dso_local i32 @AV_WB64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
