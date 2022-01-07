; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__idct_simd.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__idct_simd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i16*)* @stbi__idct_simd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbi__idct_simd(i32* %0, i32 %1, i16* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca i32, align 4
  %87 = alloca i32, align 4
  %88 = alloca i32, align 4
  %89 = alloca i32, align 4
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca i32, align 4
  %93 = alloca i32, align 4
  %94 = alloca i32, align 4
  %95 = alloca i32, align 4
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca i32, align 4
  %99 = alloca i32, align 4
  %100 = alloca i32, align 4
  %101 = alloca i32, align 4
  %102 = alloca i32, align 4
  %103 = alloca i32, align 4
  %104 = alloca i32, align 4
  %105 = alloca i32, align 4
  %106 = alloca i32, align 4
  %107 = alloca i32, align 4
  %108 = alloca i32, align 4
  %109 = alloca i32, align 4
  %110 = alloca i32, align 4
  %111 = alloca i32, align 4
  %112 = alloca i32, align 4
  %113 = alloca i32, align 4
  %114 = alloca i32, align 4
  %115 = alloca i32, align 4
  %116 = alloca i32, align 4
  %117 = alloca i32, align 4
  %118 = alloca i32, align 4
  %119 = alloca i32, align 4
  %120 = alloca i32, align 4
  %121 = alloca i32, align 4
  %122 = alloca i32, align 4
  %123 = alloca i32, align 4
  %124 = alloca i32, align 4
  %125 = alloca i32, align 4
  %126 = alloca i32, align 4
  %127 = alloca i32, align 4
  %128 = alloca i32, align 4
  %129 = alloca i32, align 4
  %130 = alloca i32, align 4
  %131 = alloca i32, align 4
  %132 = alloca i32, align 4
  %133 = alloca i32, align 4
  %134 = alloca i32, align 4
  %135 = alloca i32, align 4
  %136 = alloca i32, align 4
  %137 = alloca i32, align 4
  %138 = alloca i32, align 4
  %139 = alloca i32, align 4
  %140 = alloca i32, align 4
  %141 = alloca i32, align 4
  %142 = alloca i32, align 4
  %143 = alloca i32, align 4
  %144 = alloca i32, align 4
  %145 = alloca i32, align 4
  %146 = alloca i32, align 4
  %147 = alloca i32, align 4
  %148 = alloca i32, align 4
  %149 = alloca i32, align 4
  %150 = alloca i32, align 4
  %151 = alloca i32, align 4
  %152 = alloca i32, align 4
  %153 = alloca i32, align 4
  %154 = alloca i32, align 4
  %155 = alloca i32, align 4
  %156 = alloca i32, align 4
  %157 = alloca i32, align 4
  %158 = alloca i32, align 4
  %159 = alloca i32, align 4
  %160 = alloca i32, align 4
  %161 = alloca i32, align 4
  %162 = alloca i32, align 4
  %163 = alloca i32, align 4
  %164 = alloca i32, align 4
  %165 = alloca i32, align 4
  %166 = alloca i32, align 4
  %167 = alloca i32, align 4
  %168 = alloca i32, align 4
  %169 = alloca i32, align 4
  %170 = alloca i32, align 4
  %171 = alloca i32, align 4
  %172 = alloca i32, align 4
  %173 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16* %2, i16** %6, align 8
  %174 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %175 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %176 = call i64 @stbi__f2f(float 0xBFFD906BC0000000)
  %177 = add nsw i64 %175, %176
  %178 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %179 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %180 = call i64 @stbi__f2f(float 0xBFFD906BC0000000)
  %181 = add nsw i64 %179, %180
  %182 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %183 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %184 = call i64 @stbi__f2f(float 0xBFFD906BC0000000)
  %185 = add nsw i64 %183, %184
  %186 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %187 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %188 = call i64 @stbi__f2f(float 0xBFFD906BC0000000)
  %189 = add nsw i64 %187, %188
  %190 = call i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...) bitcast (i32 (...)* @_mm_setr_epi16 to i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...)*)(i64 %174, i64 %177, i64 %178, i64 %181, i64 %182, i64 %185, i64 %186, i64 %189)
  store i32 %190, i32* %16, align 4
  %191 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %192 = call i64 @stbi__f2f(float 0x3FE87DE2A0000000)
  %193 = add nsw i64 %191, %192
  %194 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %195 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %196 = call i64 @stbi__f2f(float 0x3FE87DE2A0000000)
  %197 = add nsw i64 %195, %196
  %198 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %199 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %200 = call i64 @stbi__f2f(float 0x3FE87DE2A0000000)
  %201 = add nsw i64 %199, %200
  %202 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %203 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %204 = call i64 @stbi__f2f(float 0x3FE87DE2A0000000)
  %205 = add nsw i64 %203, %204
  %206 = call i64 @stbi__f2f(float 0x3FE1517A80000000)
  %207 = call i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...) bitcast (i32 (...)* @_mm_setr_epi16 to i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...)*)(i64 %193, i64 %194, i64 %197, i64 %198, i64 %201, i64 %202, i64 %205, i64 %206)
  store i32 %207, i32* %17, align 4
  %208 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %209 = call i64 @stbi__f2f(float 0xBFECCC9AE0000000)
  %210 = add nsw i64 %208, %209
  %211 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %212 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %213 = call i64 @stbi__f2f(float 0xBFECCC9AE0000000)
  %214 = add nsw i64 %212, %213
  %215 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %216 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %217 = call i64 @stbi__f2f(float 0xBFECCC9AE0000000)
  %218 = add nsw i64 %216, %217
  %219 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %220 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %221 = call i64 @stbi__f2f(float 0xBFECCC9AE0000000)
  %222 = add nsw i64 %220, %221
  %223 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %224 = call i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...) bitcast (i32 (...)* @_mm_setr_epi16 to i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...)*)(i64 %210, i64 %211, i64 %214, i64 %215, i64 %218, i64 %219, i64 %222, i64 %223)
  store i32 %224, i32* %18, align 4
  %225 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %226 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %227 = call i64 @stbi__f2f(float 0xC00480D9E0000000)
  %228 = add nsw i64 %226, %227
  %229 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %230 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %231 = call i64 @stbi__f2f(float 0xC00480D9E0000000)
  %232 = add nsw i64 %230, %231
  %233 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %234 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %235 = call i64 @stbi__f2f(float 0xC00480D9E0000000)
  %236 = add nsw i64 %234, %235
  %237 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %238 = call i64 @stbi__f2f(float 0x3FF2D062E0000000)
  %239 = call i64 @stbi__f2f(float 0xC00480D9E0000000)
  %240 = add nsw i64 %238, %239
  %241 = call i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...) bitcast (i32 (...)* @_mm_setr_epi16 to i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...)*)(i64 %225, i64 %228, i64 %229, i64 %232, i64 %233, i64 %236, i64 %237, i64 %240)
  store i32 %241, i32* %19, align 4
  %242 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %243 = call i64 @stbi__f2f(float 0x3FD31CC6A0000000)
  %244 = add nsw i64 %242, %243
  %245 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %246 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %247 = call i64 @stbi__f2f(float 0x3FD31CC6A0000000)
  %248 = add nsw i64 %246, %247
  %249 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %250 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %251 = call i64 @stbi__f2f(float 0x3FD31CC6A0000000)
  %252 = add nsw i64 %250, %251
  %253 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %254 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %255 = call i64 @stbi__f2f(float 0x3FD31CC6A0000000)
  %256 = add nsw i64 %254, %255
  %257 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %258 = call i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...) bitcast (i32 (...)* @_mm_setr_epi16 to i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...)*)(i64 %244, i64 %245, i64 %248, i64 %249, i64 %252, i64 %253, i64 %256, i64 %257)
  store i32 %258, i32* %20, align 4
  %259 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %260 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %261 = call i64 @stbi__f2f(float 0x400894E980000000)
  %262 = add nsw i64 %260, %261
  %263 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %264 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %265 = call i64 @stbi__f2f(float 0x400894E980000000)
  %266 = add nsw i64 %264, %265
  %267 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %268 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %269 = call i64 @stbi__f2f(float 0x400894E980000000)
  %270 = add nsw i64 %268, %269
  %271 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %272 = call i64 @stbi__f2f(float 0xBFFF6297C0000000)
  %273 = call i64 @stbi__f2f(float 0x400894E980000000)
  %274 = add nsw i64 %272, %273
  %275 = call i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...) bitcast (i32 (...)* @_mm_setr_epi16 to i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...)*)(i64 %259, i64 %262, i64 %263, i64 %266, i64 %267, i64 %270, i64 %271, i64 %274)
  store i32 %275, i32* %21, align 4
  %276 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %277 = call i64 @stbi__f2f(float 0x40006CCA20000000)
  %278 = add nsw i64 %276, %277
  %279 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %280 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %281 = call i64 @stbi__f2f(float 0x40006CCA20000000)
  %282 = add nsw i64 %280, %281
  %283 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %284 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %285 = call i64 @stbi__f2f(float 0x40006CCA20000000)
  %286 = add nsw i64 %284, %285
  %287 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %288 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %289 = call i64 @stbi__f2f(float 0x40006CCA20000000)
  %290 = add nsw i64 %288, %289
  %291 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %292 = call i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...) bitcast (i32 (...)* @_mm_setr_epi16 to i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...)*)(i64 %278, i64 %279, i64 %282, i64 %283, i64 %286, i64 %287, i64 %290, i64 %291)
  store i32 %292, i32* %22, align 4
  %293 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %294 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %295 = call i64 @stbi__f2f(float 0x3FF8056940000000)
  %296 = add nsw i64 %294, %295
  %297 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %298 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %299 = call i64 @stbi__f2f(float 0x3FF8056940000000)
  %300 = add nsw i64 %298, %299
  %301 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %302 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %303 = call i64 @stbi__f2f(float 0x3FF8056940000000)
  %304 = add nsw i64 %302, %303
  %305 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %306 = call i64 @stbi__f2f(float 0xBFD8F8B840000000)
  %307 = call i64 @stbi__f2f(float 0x3FF8056940000000)
  %308 = add nsw i64 %306, %307
  %309 = call i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...) bitcast (i32 (...)* @_mm_setr_epi16 to i32 (i64, i64, i64, i64, i64, i64, i64, i64, ...)*)(i64 %293, i64 %296, i64 %297, i64 %300, i64 %301, i64 %304, i64 %305, i64 %308)
  store i32 %309, i32* %23, align 4
  %310 = call i32 @_mm_set1_epi32(i32 512)
  store i32 %310, i32* %24, align 4
  %311 = call i32 @_mm_set1_epi32(i32 16842752)
  store i32 %311, i32* %25, align 4
  %312 = load i16*, i16** %6, align 8
  %313 = getelementptr inbounds i16, i16* %312, i64 0
  %314 = bitcast i16* %313 to i32*
  %315 = call i32 @_mm_load_si128(i32* %314)
  store i32 %315, i32* %7, align 4
  %316 = load i16*, i16** %6, align 8
  %317 = getelementptr inbounds i16, i16* %316, i64 8
  %318 = bitcast i16* %317 to i32*
  %319 = call i32 @_mm_load_si128(i32* %318)
  store i32 %319, i32* %8, align 4
  %320 = load i16*, i16** %6, align 8
  %321 = getelementptr inbounds i16, i16* %320, i64 16
  %322 = bitcast i16* %321 to i32*
  %323 = call i32 @_mm_load_si128(i32* %322)
  store i32 %323, i32* %9, align 4
  %324 = load i16*, i16** %6, align 8
  %325 = getelementptr inbounds i16, i16* %324, i64 24
  %326 = bitcast i16* %325 to i32*
  %327 = call i32 @_mm_load_si128(i32* %326)
  store i32 %327, i32* %10, align 4
  %328 = load i16*, i16** %6, align 8
  %329 = getelementptr inbounds i16, i16* %328, i64 32
  %330 = bitcast i16* %329 to i32*
  %331 = call i32 @_mm_load_si128(i32* %330)
  store i32 %331, i32* %11, align 4
  %332 = load i16*, i16** %6, align 8
  %333 = getelementptr inbounds i16, i16* %332, i64 40
  %334 = bitcast i16* %333 to i32*
  %335 = call i32 @_mm_load_si128(i32* %334)
  store i32 %335, i32* %12, align 4
  %336 = load i16*, i16** %6, align 8
  %337 = getelementptr inbounds i16, i16* %336, i64 48
  %338 = bitcast i16* %337 to i32*
  %339 = call i32 @_mm_load_si128(i32* %338)
  store i32 %339, i32* %13, align 4
  %340 = load i16*, i16** %6, align 8
  %341 = getelementptr inbounds i16, i16* %340, i64 56
  %342 = bitcast i16* %341 to i32*
  %343 = call i32 @_mm_load_si128(i32* %342)
  store i32 %343, i32* %14, align 4
  %344 = load i32, i32* %9, align 4
  %345 = load i32, i32* %13, align 4
  %346 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %344, i32 %345)
  store i32 %346, i32* %26, align 4
  %347 = load i32, i32* %9, align 4
  %348 = load i32, i32* %13, align 4
  %349 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %347, i32 %348)
  store i32 %349, i32* %27, align 4
  %350 = load i32, i32* %26, align 4
  %351 = load i32, i32* %16, align 4
  %352 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %350, i32 %351)
  store i32 %352, i32* %28, align 4
  %353 = load i32, i32* %27, align 4
  %354 = load i32, i32* %16, align 4
  %355 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %353, i32 %354)
  store i32 %355, i32* %29, align 4
  %356 = load i32, i32* %26, align 4
  %357 = load i32, i32* %17, align 4
  %358 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %356, i32 %357)
  store i32 %358, i32* %30, align 4
  %359 = load i32, i32* %27, align 4
  %360 = load i32, i32* %17, align 4
  %361 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %359, i32 %360)
  store i32 %361, i32* %31, align 4
  %362 = load i32, i32* %7, align 4
  %363 = load i32, i32* %11, align 4
  %364 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi16 to i32 (i32, i32, ...)*)(i32 %362, i32 %363)
  store i32 %364, i32* %32, align 4
  %365 = load i32, i32* %7, align 4
  %366 = load i32, i32* %11, align 4
  %367 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi16 to i32 (i32, i32, ...)*)(i32 %365, i32 %366)
  store i32 %367, i32* %33, align 4
  %368 = call i32 (...) @_mm_setzero_si128()
  %369 = load i32, i32* %32, align 4
  %370 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %368, i32 %369)
  %371 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %370, i32 4)
  store i32 %371, i32* %34, align 4
  %372 = call i32 (...) @_mm_setzero_si128()
  %373 = load i32, i32* %32, align 4
  %374 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %372, i32 %373)
  %375 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %374, i32 4)
  store i32 %375, i32* %35, align 4
  %376 = call i32 (...) @_mm_setzero_si128()
  %377 = load i32, i32* %33, align 4
  %378 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %376, i32 %377)
  %379 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %378, i32 4)
  store i32 %379, i32* %36, align 4
  %380 = call i32 (...) @_mm_setzero_si128()
  %381 = load i32, i32* %33, align 4
  %382 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %380, i32 %381)
  %383 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %382, i32 4)
  store i32 %383, i32* %37, align 4
  %384 = load i32, i32* %34, align 4
  %385 = load i32, i32* %30, align 4
  %386 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %384, i32 %385)
  store i32 %386, i32* %38, align 4
  %387 = load i32, i32* %35, align 4
  %388 = load i32, i32* %31, align 4
  %389 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %387, i32 %388)
  store i32 %389, i32* %39, align 4
  %390 = load i32, i32* %34, align 4
  %391 = load i32, i32* %30, align 4
  %392 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %390, i32 %391)
  store i32 %392, i32* %40, align 4
  %393 = load i32, i32* %35, align 4
  %394 = load i32, i32* %31, align 4
  %395 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %393, i32 %394)
  store i32 %395, i32* %41, align 4
  %396 = load i32, i32* %36, align 4
  %397 = load i32, i32* %28, align 4
  %398 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %396, i32 %397)
  store i32 %398, i32* %42, align 4
  %399 = load i32, i32* %37, align 4
  %400 = load i32, i32* %29, align 4
  %401 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %399, i32 %400)
  store i32 %401, i32* %43, align 4
  %402 = load i32, i32* %36, align 4
  %403 = load i32, i32* %28, align 4
  %404 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %402, i32 %403)
  store i32 %404, i32* %44, align 4
  %405 = load i32, i32* %37, align 4
  %406 = load i32, i32* %29, align 4
  %407 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %405, i32 %406)
  store i32 %407, i32* %45, align 4
  %408 = load i32, i32* %14, align 4
  %409 = load i32, i32* %10, align 4
  %410 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %408, i32 %409)
  store i32 %410, i32* %46, align 4
  %411 = load i32, i32* %14, align 4
  %412 = load i32, i32* %10, align 4
  %413 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %411, i32 %412)
  store i32 %413, i32* %47, align 4
  %414 = load i32, i32* %46, align 4
  %415 = load i32, i32* %20, align 4
  %416 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %414, i32 %415)
  store i32 %416, i32* %48, align 4
  %417 = load i32, i32* %47, align 4
  %418 = load i32, i32* %20, align 4
  %419 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %417, i32 %418)
  store i32 %419, i32* %49, align 4
  %420 = load i32, i32* %46, align 4
  %421 = load i32, i32* %21, align 4
  %422 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %420, i32 %421)
  store i32 %422, i32* %50, align 4
  %423 = load i32, i32* %47, align 4
  %424 = load i32, i32* %21, align 4
  %425 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %423, i32 %424)
  store i32 %425, i32* %51, align 4
  %426 = load i32, i32* %12, align 4
  %427 = load i32, i32* %8, align 4
  %428 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %426, i32 %427)
  store i32 %428, i32* %52, align 4
  %429 = load i32, i32* %12, align 4
  %430 = load i32, i32* %8, align 4
  %431 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %429, i32 %430)
  store i32 %431, i32* %53, align 4
  %432 = load i32, i32* %52, align 4
  %433 = load i32, i32* %22, align 4
  %434 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %432, i32 %433)
  store i32 %434, i32* %54, align 4
  %435 = load i32, i32* %53, align 4
  %436 = load i32, i32* %22, align 4
  %437 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %435, i32 %436)
  store i32 %437, i32* %55, align 4
  %438 = load i32, i32* %52, align 4
  %439 = load i32, i32* %23, align 4
  %440 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %438, i32 %439)
  store i32 %440, i32* %56, align 4
  %441 = load i32, i32* %53, align 4
  %442 = load i32, i32* %23, align 4
  %443 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %441, i32 %442)
  store i32 %443, i32* %57, align 4
  %444 = load i32, i32* %8, align 4
  %445 = load i32, i32* %14, align 4
  %446 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi16 to i32 (i32, i32, ...)*)(i32 %444, i32 %445)
  store i32 %446, i32* %58, align 4
  %447 = load i32, i32* %10, align 4
  %448 = load i32, i32* %12, align 4
  %449 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi16 to i32 (i32, i32, ...)*)(i32 %447, i32 %448)
  store i32 %449, i32* %59, align 4
  %450 = load i32, i32* %58, align 4
  %451 = load i32, i32* %59, align 4
  %452 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %450, i32 %451)
  store i32 %452, i32* %60, align 4
  %453 = load i32, i32* %58, align 4
  %454 = load i32, i32* %59, align 4
  %455 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %453, i32 %454)
  store i32 %455, i32* %61, align 4
  %456 = load i32, i32* %60, align 4
  %457 = load i32, i32* %18, align 4
  %458 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %456, i32 %457)
  store i32 %458, i32* %62, align 4
  %459 = load i32, i32* %61, align 4
  %460 = load i32, i32* %18, align 4
  %461 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %459, i32 %460)
  store i32 %461, i32* %63, align 4
  %462 = load i32, i32* %60, align 4
  %463 = load i32, i32* %19, align 4
  %464 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %462, i32 %463)
  store i32 %464, i32* %64, align 4
  %465 = load i32, i32* %61, align 4
  %466 = load i32, i32* %19, align 4
  %467 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %465, i32 %466)
  store i32 %467, i32* %65, align 4
  %468 = load i32, i32* %48, align 4
  %469 = load i32, i32* %62, align 4
  %470 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %468, i32 %469)
  store i32 %470, i32* %66, align 4
  %471 = load i32, i32* %49, align 4
  %472 = load i32, i32* %63, align 4
  %473 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %471, i32 %472)
  store i32 %473, i32* %67, align 4
  %474 = load i32, i32* %54, align 4
  %475 = load i32, i32* %64, align 4
  %476 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %474, i32 %475)
  store i32 %476, i32* %68, align 4
  %477 = load i32, i32* %55, align 4
  %478 = load i32, i32* %65, align 4
  %479 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %477, i32 %478)
  store i32 %479, i32* %69, align 4
  %480 = load i32, i32* %50, align 4
  %481 = load i32, i32* %64, align 4
  %482 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %480, i32 %481)
  store i32 %482, i32* %70, align 4
  %483 = load i32, i32* %51, align 4
  %484 = load i32, i32* %65, align 4
  %485 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %483, i32 %484)
  store i32 %485, i32* %71, align 4
  %486 = load i32, i32* %56, align 4
  %487 = load i32, i32* %62, align 4
  %488 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %486, i32 %487)
  store i32 %488, i32* %72, align 4
  %489 = load i32, i32* %57, align 4
  %490 = load i32, i32* %63, align 4
  %491 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %489, i32 %490)
  store i32 %491, i32* %73, align 4
  %492 = load i32, i32* %38, align 4
  %493 = load i32, i32* %24, align 4
  %494 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %492, i32 %493)
  store i32 %494, i32* %74, align 4
  %495 = load i32, i32* %39, align 4
  %496 = load i32, i32* %24, align 4
  %497 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %495, i32 %496)
  store i32 %497, i32* %75, align 4
  %498 = load i32, i32* %74, align 4
  %499 = load i32, i32* %72, align 4
  %500 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %498, i32 %499)
  store i32 %500, i32* %76, align 4
  %501 = load i32, i32* %75, align 4
  %502 = load i32, i32* %73, align 4
  %503 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %501, i32 %502)
  store i32 %503, i32* %77, align 4
  %504 = load i32, i32* %74, align 4
  %505 = load i32, i32* %72, align 4
  %506 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %504, i32 %505)
  store i32 %506, i32* %78, align 4
  %507 = load i32, i32* %75, align 4
  %508 = load i32, i32* %73, align 4
  %509 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %507, i32 %508)
  store i32 %509, i32* %79, align 4
  %510 = load i32, i32* %76, align 4
  %511 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %510, i32 10)
  %512 = load i32, i32* %77, align 4
  %513 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %512, i32 10)
  %514 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %511, i32 %513)
  store i32 %514, i32* %7, align 4
  %515 = load i32, i32* %78, align 4
  %516 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %515, i32 10)
  %517 = load i32, i32* %79, align 4
  %518 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %517, i32 10)
  %519 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %516, i32 %518)
  store i32 %519, i32* %14, align 4
  %520 = load i32, i32* %42, align 4
  %521 = load i32, i32* %24, align 4
  %522 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %520, i32 %521)
  store i32 %522, i32* %80, align 4
  %523 = load i32, i32* %43, align 4
  %524 = load i32, i32* %24, align 4
  %525 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %523, i32 %524)
  store i32 %525, i32* %81, align 4
  %526 = load i32, i32* %80, align 4
  %527 = load i32, i32* %70, align 4
  %528 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %526, i32 %527)
  store i32 %528, i32* %82, align 4
  %529 = load i32, i32* %81, align 4
  %530 = load i32, i32* %71, align 4
  %531 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %529, i32 %530)
  store i32 %531, i32* %83, align 4
  %532 = load i32, i32* %80, align 4
  %533 = load i32, i32* %70, align 4
  %534 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %532, i32 %533)
  store i32 %534, i32* %84, align 4
  %535 = load i32, i32* %81, align 4
  %536 = load i32, i32* %71, align 4
  %537 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %535, i32 %536)
  store i32 %537, i32* %85, align 4
  %538 = load i32, i32* %82, align 4
  %539 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %538, i32 10)
  %540 = load i32, i32* %83, align 4
  %541 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %540, i32 10)
  %542 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %539, i32 %541)
  store i32 %542, i32* %8, align 4
  %543 = load i32, i32* %84, align 4
  %544 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %543, i32 10)
  %545 = load i32, i32* %85, align 4
  %546 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %545, i32 10)
  %547 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %544, i32 %546)
  store i32 %547, i32* %13, align 4
  %548 = load i32, i32* %44, align 4
  %549 = load i32, i32* %24, align 4
  %550 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %548, i32 %549)
  store i32 %550, i32* %86, align 4
  %551 = load i32, i32* %45, align 4
  %552 = load i32, i32* %24, align 4
  %553 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %551, i32 %552)
  store i32 %553, i32* %87, align 4
  %554 = load i32, i32* %86, align 4
  %555 = load i32, i32* %68, align 4
  %556 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %554, i32 %555)
  store i32 %556, i32* %88, align 4
  %557 = load i32, i32* %87, align 4
  %558 = load i32, i32* %69, align 4
  %559 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %557, i32 %558)
  store i32 %559, i32* %89, align 4
  %560 = load i32, i32* %86, align 4
  %561 = load i32, i32* %68, align 4
  %562 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %560, i32 %561)
  store i32 %562, i32* %90, align 4
  %563 = load i32, i32* %87, align 4
  %564 = load i32, i32* %69, align 4
  %565 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %563, i32 %564)
  store i32 %565, i32* %91, align 4
  %566 = load i32, i32* %88, align 4
  %567 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %566, i32 10)
  %568 = load i32, i32* %89, align 4
  %569 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %568, i32 10)
  %570 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %567, i32 %569)
  store i32 %570, i32* %9, align 4
  %571 = load i32, i32* %90, align 4
  %572 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %571, i32 10)
  %573 = load i32, i32* %91, align 4
  %574 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %573, i32 10)
  %575 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %572, i32 %574)
  store i32 %575, i32* %12, align 4
  %576 = load i32, i32* %40, align 4
  %577 = load i32, i32* %24, align 4
  %578 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %576, i32 %577)
  store i32 %578, i32* %92, align 4
  %579 = load i32, i32* %41, align 4
  %580 = load i32, i32* %24, align 4
  %581 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %579, i32 %580)
  store i32 %581, i32* %93, align 4
  %582 = load i32, i32* %92, align 4
  %583 = load i32, i32* %66, align 4
  %584 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %582, i32 %583)
  store i32 %584, i32* %94, align 4
  %585 = load i32, i32* %93, align 4
  %586 = load i32, i32* %67, align 4
  %587 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %585, i32 %586)
  store i32 %587, i32* %95, align 4
  %588 = load i32, i32* %92, align 4
  %589 = load i32, i32* %66, align 4
  %590 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %588, i32 %589)
  store i32 %590, i32* %96, align 4
  %591 = load i32, i32* %93, align 4
  %592 = load i32, i32* %67, align 4
  %593 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %591, i32 %592)
  store i32 %593, i32* %97, align 4
  %594 = load i32, i32* %94, align 4
  %595 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %594, i32 10)
  %596 = load i32, i32* %95, align 4
  %597 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %596, i32 10)
  %598 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %595, i32 %597)
  store i32 %598, i32* %10, align 4
  %599 = load i32, i32* %96, align 4
  %600 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %599, i32 10)
  %601 = load i32, i32* %97, align 4
  %602 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %601, i32 10)
  %603 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %600, i32 %602)
  store i32 %603, i32* %11, align 4
  %604 = load i32, i32* %7, align 4
  store i32 %604, i32* %15, align 4
  %605 = load i32, i32* %7, align 4
  %606 = load i32, i32* %11, align 4
  %607 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %605, i32 %606)
  store i32 %607, i32* %7, align 4
  %608 = load i32, i32* %15, align 4
  %609 = load i32, i32* %11, align 4
  %610 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %608, i32 %609)
  store i32 %610, i32* %11, align 4
  %611 = load i32, i32* %8, align 4
  store i32 %611, i32* %15, align 4
  %612 = load i32, i32* %8, align 4
  %613 = load i32, i32* %12, align 4
  %614 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %612, i32 %613)
  store i32 %614, i32* %8, align 4
  %615 = load i32, i32* %15, align 4
  %616 = load i32, i32* %12, align 4
  %617 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %615, i32 %616)
  store i32 %617, i32* %12, align 4
  %618 = load i32, i32* %9, align 4
  store i32 %618, i32* %15, align 4
  %619 = load i32, i32* %9, align 4
  %620 = load i32, i32* %13, align 4
  %621 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %619, i32 %620)
  store i32 %621, i32* %9, align 4
  %622 = load i32, i32* %15, align 4
  %623 = load i32, i32* %13, align 4
  %624 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %622, i32 %623)
  store i32 %624, i32* %13, align 4
  %625 = load i32, i32* %10, align 4
  store i32 %625, i32* %15, align 4
  %626 = load i32, i32* %10, align 4
  %627 = load i32, i32* %14, align 4
  %628 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %626, i32 %627)
  store i32 %628, i32* %10, align 4
  %629 = load i32, i32* %15, align 4
  %630 = load i32, i32* %14, align 4
  %631 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %629, i32 %630)
  store i32 %631, i32* %14, align 4
  %632 = load i32, i32* %7, align 4
  store i32 %632, i32* %15, align 4
  %633 = load i32, i32* %7, align 4
  %634 = load i32, i32* %9, align 4
  %635 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %633, i32 %634)
  store i32 %635, i32* %7, align 4
  %636 = load i32, i32* %15, align 4
  %637 = load i32, i32* %9, align 4
  %638 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %636, i32 %637)
  store i32 %638, i32* %9, align 4
  %639 = load i32, i32* %8, align 4
  store i32 %639, i32* %15, align 4
  %640 = load i32, i32* %8, align 4
  %641 = load i32, i32* %10, align 4
  %642 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %640, i32 %641)
  store i32 %642, i32* %8, align 4
  %643 = load i32, i32* %15, align 4
  %644 = load i32, i32* %10, align 4
  %645 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %643, i32 %644)
  store i32 %645, i32* %10, align 4
  %646 = load i32, i32* %11, align 4
  store i32 %646, i32* %15, align 4
  %647 = load i32, i32* %11, align 4
  %648 = load i32, i32* %13, align 4
  %649 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %647, i32 %648)
  store i32 %649, i32* %11, align 4
  %650 = load i32, i32* %15, align 4
  %651 = load i32, i32* %13, align 4
  %652 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %650, i32 %651)
  store i32 %652, i32* %13, align 4
  %653 = load i32, i32* %12, align 4
  store i32 %653, i32* %15, align 4
  %654 = load i32, i32* %12, align 4
  %655 = load i32, i32* %14, align 4
  %656 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %654, i32 %655)
  store i32 %656, i32* %12, align 4
  %657 = load i32, i32* %15, align 4
  %658 = load i32, i32* %14, align 4
  %659 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %657, i32 %658)
  store i32 %659, i32* %14, align 4
  %660 = load i32, i32* %7, align 4
  store i32 %660, i32* %15, align 4
  %661 = load i32, i32* %7, align 4
  %662 = load i32, i32* %8, align 4
  %663 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %661, i32 %662)
  store i32 %663, i32* %7, align 4
  %664 = load i32, i32* %15, align 4
  %665 = load i32, i32* %8, align 4
  %666 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %664, i32 %665)
  store i32 %666, i32* %8, align 4
  %667 = load i32, i32* %9, align 4
  store i32 %667, i32* %15, align 4
  %668 = load i32, i32* %9, align 4
  %669 = load i32, i32* %10, align 4
  %670 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %668, i32 %669)
  store i32 %670, i32* %9, align 4
  %671 = load i32, i32* %15, align 4
  %672 = load i32, i32* %10, align 4
  %673 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %671, i32 %672)
  store i32 %673, i32* %10, align 4
  %674 = load i32, i32* %11, align 4
  store i32 %674, i32* %15, align 4
  %675 = load i32, i32* %11, align 4
  %676 = load i32, i32* %12, align 4
  %677 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %675, i32 %676)
  store i32 %677, i32* %11, align 4
  %678 = load i32, i32* %15, align 4
  %679 = load i32, i32* %12, align 4
  %680 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %678, i32 %679)
  store i32 %680, i32* %12, align 4
  %681 = load i32, i32* %13, align 4
  store i32 %681, i32* %15, align 4
  %682 = load i32, i32* %13, align 4
  %683 = load i32, i32* %14, align 4
  %684 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %682, i32 %683)
  store i32 %684, i32* %13, align 4
  %685 = load i32, i32* %15, align 4
  %686 = load i32, i32* %14, align 4
  %687 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %685, i32 %686)
  store i32 %687, i32* %14, align 4
  %688 = load i32, i32* %9, align 4
  %689 = load i32, i32* %13, align 4
  %690 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %688, i32 %689)
  store i32 %690, i32* %98, align 4
  %691 = load i32, i32* %9, align 4
  %692 = load i32, i32* %13, align 4
  %693 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %691, i32 %692)
  store i32 %693, i32* %99, align 4
  %694 = load i32, i32* %98, align 4
  %695 = load i32, i32* %16, align 4
  %696 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %694, i32 %695)
  store i32 %696, i32* %100, align 4
  %697 = load i32, i32* %99, align 4
  %698 = load i32, i32* %16, align 4
  %699 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %697, i32 %698)
  store i32 %699, i32* %101, align 4
  %700 = load i32, i32* %98, align 4
  %701 = load i32, i32* %17, align 4
  %702 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %700, i32 %701)
  store i32 %702, i32* %102, align 4
  %703 = load i32, i32* %99, align 4
  %704 = load i32, i32* %17, align 4
  %705 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %703, i32 %704)
  store i32 %705, i32* %103, align 4
  %706 = load i32, i32* %7, align 4
  %707 = load i32, i32* %11, align 4
  %708 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi16 to i32 (i32, i32, ...)*)(i32 %706, i32 %707)
  store i32 %708, i32* %104, align 4
  %709 = load i32, i32* %7, align 4
  %710 = load i32, i32* %11, align 4
  %711 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi16 to i32 (i32, i32, ...)*)(i32 %709, i32 %710)
  store i32 %711, i32* %105, align 4
  %712 = call i32 (...) @_mm_setzero_si128()
  %713 = load i32, i32* %104, align 4
  %714 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %712, i32 %713)
  %715 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %714, i32 4)
  store i32 %715, i32* %106, align 4
  %716 = call i32 (...) @_mm_setzero_si128()
  %717 = load i32, i32* %104, align 4
  %718 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %716, i32 %717)
  %719 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %718, i32 4)
  store i32 %719, i32* %107, align 4
  %720 = call i32 (...) @_mm_setzero_si128()
  %721 = load i32, i32* %105, align 4
  %722 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %720, i32 %721)
  %723 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %722, i32 4)
  store i32 %723, i32* %108, align 4
  %724 = call i32 (...) @_mm_setzero_si128()
  %725 = load i32, i32* %105, align 4
  %726 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %724, i32 %725)
  %727 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %726, i32 4)
  store i32 %727, i32* %109, align 4
  %728 = load i32, i32* %106, align 4
  %729 = load i32, i32* %102, align 4
  %730 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %728, i32 %729)
  store i32 %730, i32* %110, align 4
  %731 = load i32, i32* %107, align 4
  %732 = load i32, i32* %103, align 4
  %733 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %731, i32 %732)
  store i32 %733, i32* %111, align 4
  %734 = load i32, i32* %106, align 4
  %735 = load i32, i32* %102, align 4
  %736 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %734, i32 %735)
  store i32 %736, i32* %112, align 4
  %737 = load i32, i32* %107, align 4
  %738 = load i32, i32* %103, align 4
  %739 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %737, i32 %738)
  store i32 %739, i32* %113, align 4
  %740 = load i32, i32* %108, align 4
  %741 = load i32, i32* %100, align 4
  %742 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %740, i32 %741)
  store i32 %742, i32* %114, align 4
  %743 = load i32, i32* %109, align 4
  %744 = load i32, i32* %101, align 4
  %745 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %743, i32 %744)
  store i32 %745, i32* %115, align 4
  %746 = load i32, i32* %108, align 4
  %747 = load i32, i32* %100, align 4
  %748 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %746, i32 %747)
  store i32 %748, i32* %116, align 4
  %749 = load i32, i32* %109, align 4
  %750 = load i32, i32* %101, align 4
  %751 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %749, i32 %750)
  store i32 %751, i32* %117, align 4
  %752 = load i32, i32* %14, align 4
  %753 = load i32, i32* %10, align 4
  %754 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %752, i32 %753)
  store i32 %754, i32* %118, align 4
  %755 = load i32, i32* %14, align 4
  %756 = load i32, i32* %10, align 4
  %757 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %755, i32 %756)
  store i32 %757, i32* %119, align 4
  %758 = load i32, i32* %118, align 4
  %759 = load i32, i32* %20, align 4
  %760 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %758, i32 %759)
  store i32 %760, i32* %120, align 4
  %761 = load i32, i32* %119, align 4
  %762 = load i32, i32* %20, align 4
  %763 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %761, i32 %762)
  store i32 %763, i32* %121, align 4
  %764 = load i32, i32* %118, align 4
  %765 = load i32, i32* %21, align 4
  %766 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %764, i32 %765)
  store i32 %766, i32* %122, align 4
  %767 = load i32, i32* %119, align 4
  %768 = load i32, i32* %21, align 4
  %769 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %767, i32 %768)
  store i32 %769, i32* %123, align 4
  %770 = load i32, i32* %12, align 4
  %771 = load i32, i32* %8, align 4
  %772 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %770, i32 %771)
  store i32 %772, i32* %124, align 4
  %773 = load i32, i32* %12, align 4
  %774 = load i32, i32* %8, align 4
  %775 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %773, i32 %774)
  store i32 %775, i32* %125, align 4
  %776 = load i32, i32* %124, align 4
  %777 = load i32, i32* %22, align 4
  %778 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %776, i32 %777)
  store i32 %778, i32* %126, align 4
  %779 = load i32, i32* %125, align 4
  %780 = load i32, i32* %22, align 4
  %781 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %779, i32 %780)
  store i32 %781, i32* %127, align 4
  %782 = load i32, i32* %124, align 4
  %783 = load i32, i32* %23, align 4
  %784 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %782, i32 %783)
  store i32 %784, i32* %128, align 4
  %785 = load i32, i32* %125, align 4
  %786 = load i32, i32* %23, align 4
  %787 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %785, i32 %786)
  store i32 %787, i32* %129, align 4
  %788 = load i32, i32* %8, align 4
  %789 = load i32, i32* %14, align 4
  %790 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi16 to i32 (i32, i32, ...)*)(i32 %788, i32 %789)
  store i32 %790, i32* %130, align 4
  %791 = load i32, i32* %10, align 4
  %792 = load i32, i32* %12, align 4
  %793 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi16 to i32 (i32, i32, ...)*)(i32 %791, i32 %792)
  store i32 %793, i32* %131, align 4
  %794 = load i32, i32* %130, align 4
  %795 = load i32, i32* %131, align 4
  %796 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi16 to i32 (i32, i32, ...)*)(i32 %794, i32 %795)
  store i32 %796, i32* %132, align 4
  %797 = load i32, i32* %130, align 4
  %798 = load i32, i32* %131, align 4
  %799 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi16 to i32 (i32, i32, ...)*)(i32 %797, i32 %798)
  store i32 %799, i32* %133, align 4
  %800 = load i32, i32* %132, align 4
  %801 = load i32, i32* %18, align 4
  %802 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %800, i32 %801)
  store i32 %802, i32* %134, align 4
  %803 = load i32, i32* %133, align 4
  %804 = load i32, i32* %18, align 4
  %805 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %803, i32 %804)
  store i32 %805, i32* %135, align 4
  %806 = load i32, i32* %132, align 4
  %807 = load i32, i32* %19, align 4
  %808 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %806, i32 %807)
  store i32 %808, i32* %136, align 4
  %809 = load i32, i32* %133, align 4
  %810 = load i32, i32* %19, align 4
  %811 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_madd_epi16 to i32 (i32, i32, ...)*)(i32 %809, i32 %810)
  store i32 %811, i32* %137, align 4
  %812 = load i32, i32* %120, align 4
  %813 = load i32, i32* %134, align 4
  %814 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %812, i32 %813)
  store i32 %814, i32* %138, align 4
  %815 = load i32, i32* %121, align 4
  %816 = load i32, i32* %135, align 4
  %817 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %815, i32 %816)
  store i32 %817, i32* %139, align 4
  %818 = load i32, i32* %126, align 4
  %819 = load i32, i32* %136, align 4
  %820 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %818, i32 %819)
  store i32 %820, i32* %140, align 4
  %821 = load i32, i32* %127, align 4
  %822 = load i32, i32* %137, align 4
  %823 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %821, i32 %822)
  store i32 %823, i32* %141, align 4
  %824 = load i32, i32* %122, align 4
  %825 = load i32, i32* %136, align 4
  %826 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %824, i32 %825)
  store i32 %826, i32* %142, align 4
  %827 = load i32, i32* %123, align 4
  %828 = load i32, i32* %137, align 4
  %829 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %827, i32 %828)
  store i32 %829, i32* %143, align 4
  %830 = load i32, i32* %128, align 4
  %831 = load i32, i32* %134, align 4
  %832 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %830, i32 %831)
  store i32 %832, i32* %144, align 4
  %833 = load i32, i32* %129, align 4
  %834 = load i32, i32* %135, align 4
  %835 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %833, i32 %834)
  store i32 %835, i32* %145, align 4
  %836 = load i32, i32* %110, align 4
  %837 = load i32, i32* %25, align 4
  %838 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %836, i32 %837)
  store i32 %838, i32* %146, align 4
  %839 = load i32, i32* %111, align 4
  %840 = load i32, i32* %25, align 4
  %841 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %839, i32 %840)
  store i32 %841, i32* %147, align 4
  %842 = load i32, i32* %146, align 4
  %843 = load i32, i32* %144, align 4
  %844 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %842, i32 %843)
  store i32 %844, i32* %148, align 4
  %845 = load i32, i32* %147, align 4
  %846 = load i32, i32* %145, align 4
  %847 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %845, i32 %846)
  store i32 %847, i32* %149, align 4
  %848 = load i32, i32* %146, align 4
  %849 = load i32, i32* %144, align 4
  %850 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %848, i32 %849)
  store i32 %850, i32* %150, align 4
  %851 = load i32, i32* %147, align 4
  %852 = load i32, i32* %145, align 4
  %853 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %851, i32 %852)
  store i32 %853, i32* %151, align 4
  %854 = load i32, i32* %148, align 4
  %855 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %854, i32 17)
  %856 = load i32, i32* %149, align 4
  %857 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %856, i32 17)
  %858 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %855, i32 %857)
  store i32 %858, i32* %7, align 4
  %859 = load i32, i32* %150, align 4
  %860 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %859, i32 17)
  %861 = load i32, i32* %151, align 4
  %862 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %861, i32 17)
  %863 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %860, i32 %862)
  store i32 %863, i32* %14, align 4
  %864 = load i32, i32* %114, align 4
  %865 = load i32, i32* %25, align 4
  %866 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %864, i32 %865)
  store i32 %866, i32* %152, align 4
  %867 = load i32, i32* %115, align 4
  %868 = load i32, i32* %25, align 4
  %869 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %867, i32 %868)
  store i32 %869, i32* %153, align 4
  %870 = load i32, i32* %152, align 4
  %871 = load i32, i32* %142, align 4
  %872 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %870, i32 %871)
  store i32 %872, i32* %154, align 4
  %873 = load i32, i32* %153, align 4
  %874 = load i32, i32* %143, align 4
  %875 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %873, i32 %874)
  store i32 %875, i32* %155, align 4
  %876 = load i32, i32* %152, align 4
  %877 = load i32, i32* %142, align 4
  %878 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %876, i32 %877)
  store i32 %878, i32* %156, align 4
  %879 = load i32, i32* %153, align 4
  %880 = load i32, i32* %143, align 4
  %881 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %879, i32 %880)
  store i32 %881, i32* %157, align 4
  %882 = load i32, i32* %154, align 4
  %883 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %882, i32 17)
  %884 = load i32, i32* %155, align 4
  %885 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %884, i32 17)
  %886 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %883, i32 %885)
  store i32 %886, i32* %8, align 4
  %887 = load i32, i32* %156, align 4
  %888 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %887, i32 17)
  %889 = load i32, i32* %157, align 4
  %890 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %889, i32 17)
  %891 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %888, i32 %890)
  store i32 %891, i32* %13, align 4
  %892 = load i32, i32* %116, align 4
  %893 = load i32, i32* %25, align 4
  %894 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %892, i32 %893)
  store i32 %894, i32* %158, align 4
  %895 = load i32, i32* %117, align 4
  %896 = load i32, i32* %25, align 4
  %897 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %895, i32 %896)
  store i32 %897, i32* %159, align 4
  %898 = load i32, i32* %158, align 4
  %899 = load i32, i32* %140, align 4
  %900 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %898, i32 %899)
  store i32 %900, i32* %160, align 4
  %901 = load i32, i32* %159, align 4
  %902 = load i32, i32* %141, align 4
  %903 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %901, i32 %902)
  store i32 %903, i32* %161, align 4
  %904 = load i32, i32* %158, align 4
  %905 = load i32, i32* %140, align 4
  %906 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %904, i32 %905)
  store i32 %906, i32* %162, align 4
  %907 = load i32, i32* %159, align 4
  %908 = load i32, i32* %141, align 4
  %909 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %907, i32 %908)
  store i32 %909, i32* %163, align 4
  %910 = load i32, i32* %160, align 4
  %911 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %910, i32 17)
  %912 = load i32, i32* %161, align 4
  %913 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %912, i32 17)
  %914 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %911, i32 %913)
  store i32 %914, i32* %9, align 4
  %915 = load i32, i32* %162, align 4
  %916 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %915, i32 17)
  %917 = load i32, i32* %163, align 4
  %918 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %917, i32 17)
  %919 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %916, i32 %918)
  store i32 %919, i32* %12, align 4
  %920 = load i32, i32* %112, align 4
  %921 = load i32, i32* %25, align 4
  %922 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %920, i32 %921)
  store i32 %922, i32* %164, align 4
  %923 = load i32, i32* %113, align 4
  %924 = load i32, i32* %25, align 4
  %925 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %923, i32 %924)
  store i32 %925, i32* %165, align 4
  %926 = load i32, i32* %164, align 4
  %927 = load i32, i32* %138, align 4
  %928 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %926, i32 %927)
  store i32 %928, i32* %166, align 4
  %929 = load i32, i32* %165, align 4
  %930 = load i32, i32* %139, align 4
  %931 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_add_epi32 to i32 (i32, i32, ...)*)(i32 %929, i32 %930)
  store i32 %931, i32* %167, align 4
  %932 = load i32, i32* %164, align 4
  %933 = load i32, i32* %138, align 4
  %934 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %932, i32 %933)
  store i32 %934, i32* %168, align 4
  %935 = load i32, i32* %165, align 4
  %936 = load i32, i32* %139, align 4
  %937 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_sub_epi32 to i32 (i32, i32, ...)*)(i32 %935, i32 %936)
  store i32 %937, i32* %169, align 4
  %938 = load i32, i32* %166, align 4
  %939 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %938, i32 17)
  %940 = load i32, i32* %167, align 4
  %941 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %940, i32 17)
  %942 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %939, i32 %941)
  store i32 %942, i32* %10, align 4
  %943 = load i32, i32* %168, align 4
  %944 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %943, i32 17)
  %945 = load i32, i32* %169, align 4
  %946 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srai_epi32 to i32 (i32, i32, ...)*)(i32 %945, i32 17)
  %947 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_packs_epi32 to i32 (i32, i32, ...)*)(i32 %944, i32 %946)
  store i32 %947, i32* %11, align 4
  %948 = load i32, i32* %7, align 4
  %949 = load i32, i32* %8, align 4
  %950 = call i32 @_mm_packus_epi16(i32 %948, i32 %949)
  store i32 %950, i32* %170, align 4
  %951 = load i32, i32* %9, align 4
  %952 = load i32, i32* %10, align 4
  %953 = call i32 @_mm_packus_epi16(i32 %951, i32 %952)
  store i32 %953, i32* %171, align 4
  %954 = load i32, i32* %11, align 4
  %955 = load i32, i32* %12, align 4
  %956 = call i32 @_mm_packus_epi16(i32 %954, i32 %955)
  store i32 %956, i32* %172, align 4
  %957 = load i32, i32* %13, align 4
  %958 = load i32, i32* %14, align 4
  %959 = call i32 @_mm_packus_epi16(i32 %957, i32 %958)
  store i32 %959, i32* %173, align 4
  %960 = load i32, i32* %170, align 4
  store i32 %960, i32* %15, align 4
  %961 = load i32, i32* %170, align 4
  %962 = load i32, i32* %172, align 4
  %963 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi8 to i32 (i32, i32, ...)*)(i32 %961, i32 %962)
  store i32 %963, i32* %170, align 4
  %964 = load i32, i32* %15, align 4
  %965 = load i32, i32* %172, align 4
  %966 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi8 to i32 (i32, i32, ...)*)(i32 %964, i32 %965)
  store i32 %966, i32* %172, align 4
  %967 = load i32, i32* %171, align 4
  store i32 %967, i32* %15, align 4
  %968 = load i32, i32* %171, align 4
  %969 = load i32, i32* %173, align 4
  %970 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi8 to i32 (i32, i32, ...)*)(i32 %968, i32 %969)
  store i32 %970, i32* %171, align 4
  %971 = load i32, i32* %15, align 4
  %972 = load i32, i32* %173, align 4
  %973 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi8 to i32 (i32, i32, ...)*)(i32 %971, i32 %972)
  store i32 %973, i32* %173, align 4
  %974 = load i32, i32* %170, align 4
  store i32 %974, i32* %15, align 4
  %975 = load i32, i32* %170, align 4
  %976 = load i32, i32* %171, align 4
  %977 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi8 to i32 (i32, i32, ...)*)(i32 %975, i32 %976)
  store i32 %977, i32* %170, align 4
  %978 = load i32, i32* %15, align 4
  %979 = load i32, i32* %171, align 4
  %980 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi8 to i32 (i32, i32, ...)*)(i32 %978, i32 %979)
  store i32 %980, i32* %171, align 4
  %981 = load i32, i32* %172, align 4
  store i32 %981, i32* %15, align 4
  %982 = load i32, i32* %172, align 4
  %983 = load i32, i32* %173, align 4
  %984 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi8 to i32 (i32, i32, ...)*)(i32 %982, i32 %983)
  store i32 %984, i32* %172, align 4
  %985 = load i32, i32* %15, align 4
  %986 = load i32, i32* %173, align 4
  %987 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi8 to i32 (i32, i32, ...)*)(i32 %985, i32 %986)
  store i32 %987, i32* %173, align 4
  %988 = load i32, i32* %170, align 4
  store i32 %988, i32* %15, align 4
  %989 = load i32, i32* %170, align 4
  %990 = load i32, i32* %172, align 4
  %991 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi8 to i32 (i32, i32, ...)*)(i32 %989, i32 %990)
  store i32 %991, i32* %170, align 4
  %992 = load i32, i32* %15, align 4
  %993 = load i32, i32* %172, align 4
  %994 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi8 to i32 (i32, i32, ...)*)(i32 %992, i32 %993)
  store i32 %994, i32* %172, align 4
  %995 = load i32, i32* %171, align 4
  store i32 %995, i32* %15, align 4
  %996 = load i32, i32* %171, align 4
  %997 = load i32, i32* %173, align 4
  %998 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpacklo_epi8 to i32 (i32, i32, ...)*)(i32 %996, i32 %997)
  store i32 %998, i32* %171, align 4
  %999 = load i32, i32* %15, align 4
  %1000 = load i32, i32* %173, align 4
  %1001 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_unpackhi_epi8 to i32 (i32, i32, ...)*)(i32 %999, i32 %1000)
  store i32 %1001, i32* %173, align 4
  %1002 = load i32*, i32** %4, align 8
  %1003 = load i32, i32* %170, align 4
  %1004 = call i32 @_mm_storel_epi64(i32* %1002, i32 %1003)
  %1005 = load i32, i32* %5, align 4
  %1006 = load i32*, i32** %4, align 8
  %1007 = sext i32 %1005 to i64
  %1008 = getelementptr inbounds i32, i32* %1006, i64 %1007
  store i32* %1008, i32** %4, align 8
  %1009 = load i32*, i32** %4, align 8
  %1010 = load i32, i32* %170, align 4
  %1011 = call i32 @_mm_shuffle_epi32(i32 %1010, i32 78)
  %1012 = call i32 @_mm_storel_epi64(i32* %1009, i32 %1011)
  %1013 = load i32, i32* %5, align 4
  %1014 = load i32*, i32** %4, align 8
  %1015 = sext i32 %1013 to i64
  %1016 = getelementptr inbounds i32, i32* %1014, i64 %1015
  store i32* %1016, i32** %4, align 8
  %1017 = load i32*, i32** %4, align 8
  %1018 = load i32, i32* %172, align 4
  %1019 = call i32 @_mm_storel_epi64(i32* %1017, i32 %1018)
  %1020 = load i32, i32* %5, align 4
  %1021 = load i32*, i32** %4, align 8
  %1022 = sext i32 %1020 to i64
  %1023 = getelementptr inbounds i32, i32* %1021, i64 %1022
  store i32* %1023, i32** %4, align 8
  %1024 = load i32*, i32** %4, align 8
  %1025 = load i32, i32* %172, align 4
  %1026 = call i32 @_mm_shuffle_epi32(i32 %1025, i32 78)
  %1027 = call i32 @_mm_storel_epi64(i32* %1024, i32 %1026)
  %1028 = load i32, i32* %5, align 4
  %1029 = load i32*, i32** %4, align 8
  %1030 = sext i32 %1028 to i64
  %1031 = getelementptr inbounds i32, i32* %1029, i64 %1030
  store i32* %1031, i32** %4, align 8
  %1032 = load i32*, i32** %4, align 8
  %1033 = load i32, i32* %171, align 4
  %1034 = call i32 @_mm_storel_epi64(i32* %1032, i32 %1033)
  %1035 = load i32, i32* %5, align 4
  %1036 = load i32*, i32** %4, align 8
  %1037 = sext i32 %1035 to i64
  %1038 = getelementptr inbounds i32, i32* %1036, i64 %1037
  store i32* %1038, i32** %4, align 8
  %1039 = load i32*, i32** %4, align 8
  %1040 = load i32, i32* %171, align 4
  %1041 = call i32 @_mm_shuffle_epi32(i32 %1040, i32 78)
  %1042 = call i32 @_mm_storel_epi64(i32* %1039, i32 %1041)
  %1043 = load i32, i32* %5, align 4
  %1044 = load i32*, i32** %4, align 8
  %1045 = sext i32 %1043 to i64
  %1046 = getelementptr inbounds i32, i32* %1044, i64 %1045
  store i32* %1046, i32** %4, align 8
  %1047 = load i32*, i32** %4, align 8
  %1048 = load i32, i32* %173, align 4
  %1049 = call i32 @_mm_storel_epi64(i32* %1047, i32 %1048)
  %1050 = load i32, i32* %5, align 4
  %1051 = load i32*, i32** %4, align 8
  %1052 = sext i32 %1050 to i64
  %1053 = getelementptr inbounds i32, i32* %1051, i64 %1052
  store i32* %1053, i32** %4, align 8
  %1054 = load i32*, i32** %4, align 8
  %1055 = load i32, i32* %173, align 4
  %1056 = call i32 @_mm_shuffle_epi32(i32 %1055, i32 78)
  %1057 = call i32 @_mm_storel_epi64(i32* %1054, i32 %1056)
  ret void
}

declare dso_local i32 @_mm_setr_epi16(...) #1

declare dso_local i64 @stbi__f2f(float) #1

declare dso_local i32 @_mm_set1_epi32(i32) #1

declare dso_local i32 @_mm_load_si128(i32*) #1

declare dso_local i32 @_mm_unpacklo_epi16(...) #1

declare dso_local i32 @_mm_unpackhi_epi16(...) #1

declare dso_local i32 @_mm_madd_epi16(...) #1

declare dso_local i32 @_mm_add_epi16(...) #1

declare dso_local i32 @_mm_sub_epi16(...) #1

declare dso_local i32 @_mm_srai_epi32(...) #1

declare dso_local i32 @_mm_setzero_si128(...) #1

declare dso_local i32 @_mm_add_epi32(...) #1

declare dso_local i32 @_mm_sub_epi32(...) #1

declare dso_local i32 @_mm_packs_epi32(...) #1

declare dso_local i32 @_mm_packus_epi16(i32, i32) #1

declare dso_local i32 @_mm_unpacklo_epi8(...) #1

declare dso_local i32 @_mm_unpackhi_epi8(...) #1

declare dso_local i32 @_mm_storel_epi64(i32*, i32) #1

declare dso_local i32 @_mm_shuffle_epi32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
