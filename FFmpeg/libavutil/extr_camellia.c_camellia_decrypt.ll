; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_camellia.c_camellia_decrypt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_camellia.c_camellia_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i32*)* @camellia_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camellia_decrypt(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @AV_RB64(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 8
  %15 = call i32 @AV_RB64(i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = xor i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = xor i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 128
  br i1 %33, label %34, label %103

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 23
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @F(i32 %35, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = xor i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 22
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @F(i32 %44, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = xor i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 21
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @F(i32 %53, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = xor i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 20
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @F(i32 %62, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = xor i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 19
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @F(i32 %71, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = xor i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 18
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @F(i32 %80, i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = xor i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @FL(i32 %89, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @FLINV(i32 %96, i32 %101)
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %34, %4
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 17
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @F(i32 %104, i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = xor i32 %111, %110
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 16
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @F(i32 %113, i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = xor i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 15
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @F(i32 %122, i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = xor i32 %129, %128
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 14
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @F(i32 %131, i32 %136)
  %138 = load i32, i32* %9, align 4
  %139 = xor i32 %138, %137
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 13
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @F(i32 %140, i32 %145)
  %147 = load i32, i32* %10, align 4
  %148 = xor i32 %147, %146
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 12
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @F(i32 %149, i32 %154)
  %156 = load i32, i32* %9, align 4
  %157 = xor i32 %156, %155
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @FL(i32 %158, i32 %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @FLINV(i32 %165, i32 %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 11
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @F(i32 %172, i32 %177)
  %179 = load i32, i32* %10, align 4
  %180 = xor i32 %179, %178
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 10
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @F(i32 %181, i32 %186)
  %188 = load i32, i32* %9, align 4
  %189 = xor i32 %188, %187
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 9
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @F(i32 %190, i32 %195)
  %197 = load i32, i32* %10, align 4
  %198 = xor i32 %197, %196
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 8
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @F(i32 %199, i32 %204)
  %206 = load i32, i32* %9, align 4
  %207 = xor i32 %206, %205
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 7
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @F(i32 %208, i32 %213)
  %215 = load i32, i32* %10, align 4
  %216 = xor i32 %215, %214
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 6
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @F(i32 %217, i32 %222)
  %224 = load i32, i32* %9, align 4
  %225 = xor i32 %224, %223
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %9, align 4
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @FL(i32 %226, i32 %231)
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* %10, align 4
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 3
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @FLINV(i32 %233, i32 %238)
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 5
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @F(i32 %240, i32 %245)
  %247 = load i32, i32* %10, align 4
  %248 = xor i32 %247, %246
  store i32 %248, i32* %10, align 4
  %249 = load i32, i32* %10, align 4
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 4
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @F(i32 %249, i32 %254)
  %256 = load i32, i32* %9, align 4
  %257 = xor i32 %256, %255
  store i32 %257, i32* %9, align 4
  %258 = load i32, i32* %9, align 4
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 3
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @F(i32 %258, i32 %263)
  %265 = load i32, i32* %10, align 4
  %266 = xor i32 %265, %264
  store i32 %266, i32* %10, align 4
  %267 = load i32, i32* %10, align 4
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 2
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @F(i32 %267, i32 %272)
  %274 = load i32, i32* %9, align 4
  %275 = xor i32 %274, %273
  store i32 %275, i32* %9, align 4
  %276 = load i32, i32* %9, align 4
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 2
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @F(i32 %276, i32 %281)
  %283 = load i32, i32* %10, align 4
  %284 = xor i32 %283, %282
  store i32 %284, i32* %10, align 4
  %285 = load i32, i32* %10, align 4
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @F(i32 %285, i32 %290)
  %292 = load i32, i32* %9, align 4
  %293 = xor i32 %292, %291
  store i32 %293, i32* %9, align 4
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %10, align 4
  %300 = xor i32 %299, %298
  store i32 %300, i32* %10, align 4
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %9, align 4
  %307 = xor i32 %306, %305
  store i32 %307, i32* %9, align 4
  %308 = load i32*, i32** %8, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %323

310:                                              ; preds = %103
  %311 = load i32*, i32** %8, align 8
  %312 = call i32 @AV_RB64(i32* %311)
  %313 = load i32, i32* %10, align 4
  %314 = xor i32 %313, %312
  store i32 %314, i32* %10, align 4
  %315 = load i32*, i32** %8, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 8
  %317 = call i32 @AV_RB64(i32* %316)
  %318 = load i32, i32* %9, align 4
  %319 = xor i32 %318, %317
  store i32 %319, i32* %9, align 4
  %320 = load i32*, i32** %8, align 8
  %321 = load i32*, i32** %7, align 8
  %322 = call i32 @memcpy(i32* %320, i32* %321, i32 16)
  br label %323

323:                                              ; preds = %310, %103
  %324 = load i32*, i32** %6, align 8
  %325 = load i32, i32* %10, align 4
  %326 = call i32 @AV_WB64(i32* %324, i32 %325)
  %327 = load i32*, i32** %6, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 8
  %329 = load i32, i32* %9, align 4
  %330 = call i32 @AV_WB64(i32* %328, i32 %329)
  ret void
}

declare dso_local i32 @AV_RB64(i32*) #1

declare dso_local i32 @F(i32, i32) #1

declare dso_local i32 @FL(i32, i32) #1

declare dso_local i32 @FLINV(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @AV_WB64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
