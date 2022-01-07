; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_idct_msa.c_vp9_idct8x32_column_butterfly_addblk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_idct_msa.c_vp9_idct8x32_column_butterfly_addblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @vp9_idct8x32_column_butterfly_addblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp9_idct8x32_column_butterfly_addblk(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
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
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @LD_SH(i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 72
  %37 = call i32 @LD_SH(i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 112
  %40 = call i32 @LD_SH(i32* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 48
  %43 = call i32 @LD_SH(i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @LD_SH(i32* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 64
  %48 = call i32 @LD_SH(i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 32
  %51 = call i32 @LD_SH(i32* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 96
  %54 = call i32 @LD_SH(i32* %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %23, align 4
  %67 = call i32 @ADD4(i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %23, align 4
  %72 = call i32 @SRARI_H4_SH(i32 %68, i32 %69, i32 %70, i32 %71, i32 6)
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 4, %74
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %23, align 4
  %80 = call i32 @VP9_ADDBLK_ST8x4_UB(i32* %73, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @SUB4(i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %23, align 4
  %98 = call i32 @SRARI_H4_SH(i32 %94, i32 %95, i32 %96, i32 %97, i32 6)
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 19, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %8, align 4
  %105 = mul nsw i32 4, %104
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %23, align 4
  %110 = call i32 @VP9_ADDBLK_ST8x4_UB(i32* %103, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 32
  %113 = call i32 @LD_SH(i32* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 104
  %116 = call i32 @LD_SH(i32* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 80
  %119 = call i32 @LD_SH(i32* %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 24
  %122 = call i32 @LD_SH(i32* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 16
  %125 = call i32 @LD_SH(i32* %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 80
  %128 = call i32 @LD_SH(i32* %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 48
  %131 = call i32 @LD_SH(i32* %130)
  store i32 %131, i32* %15, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 112
  %134 = call i32 @LD_SH(i32* %133)
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* %24, align 4
  %147 = call i32 @ADD4(i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %24, align 4
  %152 = call i32 @SRARI_H4_SH(i32 %148, i32 %149, i32 %150, i32 %151, i32 6)
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = mul nsw i32 2, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %8, align 4
  %159 = mul nsw i32 4, %158
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* %22, align 4
  %163 = load i32, i32* %24, align 4
  %164 = call i32 @VP9_ADDBLK_ST8x4_UB(i32* %157, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %24, align 4
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* %18, align 4
  %177 = call i32 @SUB4(i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176)
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %20, align 4
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* %24, align 4
  %182 = call i32 @SRARI_H4_SH(i32 %178, i32 %179, i32 %180, i32 %181, i32 6)
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = mul nsw i32 17, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %8, align 4
  %189 = mul nsw i32 4, %188
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* %22, align 4
  %193 = load i32, i32* %24, align 4
  %194 = call i32 @VP9_ADDBLK_ST8x4_UB(i32* %187, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32*, i32** %6, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 16
  %197 = call i32 @LD_SH(i32* %196)
  store i32 %197, i32* %9, align 4
  %198 = load i32*, i32** %6, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 88
  %200 = call i32 @LD_SH(i32* %199)
  store i32 %200, i32* %10, align 4
  %201 = load i32*, i32** %6, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 96
  %203 = call i32 @LD_SH(i32* %202)
  store i32 %203, i32* %11, align 4
  %204 = load i32*, i32** %6, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 56
  %206 = call i32 @LD_SH(i32* %205)
  store i32 %206, i32* %12, align 4
  %207 = load i32*, i32** %5, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 8
  %209 = call i32 @LD_SH(i32* %208)
  store i32 %209, i32* %13, align 4
  %210 = load i32*, i32** %5, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 72
  %212 = call i32 @LD_SH(i32* %211)
  store i32 %212, i32* %14, align 4
  %213 = load i32*, i32** %5, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 40
  %215 = call i32 @LD_SH(i32* %214)
  store i32 %215, i32* %15, align 4
  %216 = load i32*, i32** %5, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 104
  %218 = call i32 @LD_SH(i32* %217)
  store i32 %218, i32* %16, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* %15, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %16, align 4
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %25, align 4
  %228 = load i32, i32* %29, align 4
  %229 = load i32, i32* %27, align 4
  %230 = load i32, i32* %31, align 4
  %231 = call i32 @ADD4(i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230)
  %232 = load i32, i32* %25, align 4
  %233 = load i32, i32* %27, align 4
  %234 = load i32, i32* %29, align 4
  %235 = load i32, i32* %31, align 4
  %236 = call i32 @SRARI_H4_SH(i32 %232, i32 %233, i32 %234, i32 %235, i32 6)
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* %8, align 4
  %239 = mul nsw i32 1, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %8, align 4
  %243 = mul nsw i32 4, %242
  %244 = load i32, i32* %25, align 4
  %245 = load i32, i32* %27, align 4
  %246 = load i32, i32* %29, align 4
  %247 = load i32, i32* %31, align 4
  %248 = call i32 @VP9_ADDBLK_ST8x4_UB(i32* %241, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247)
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %31, align 4
  %258 = load i32, i32* %27, align 4
  %259 = load i32, i32* %29, align 4
  %260 = load i32, i32* %25, align 4
  %261 = call i32 @SUB4(i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260)
  %262 = load i32, i32* %25, align 4
  %263 = load i32, i32* %27, align 4
  %264 = load i32, i32* %29, align 4
  %265 = load i32, i32* %31, align 4
  %266 = call i32 @SRARI_H4_SH(i32 %262, i32 %263, i32 %264, i32 %265, i32 6)
  %267 = load i32*, i32** %7, align 8
  %268 = load i32, i32* %8, align 4
  %269 = mul nsw i32 18, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load i32, i32* %8, align 4
  %273 = mul nsw i32 4, %272
  %274 = load i32, i32* %25, align 4
  %275 = load i32, i32* %27, align 4
  %276 = load i32, i32* %29, align 4
  %277 = load i32, i32* %31, align 4
  %278 = call i32 @VP9_ADDBLK_ST8x4_UB(i32* %271, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277)
  %279 = load i32*, i32** %6, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 40
  %281 = call i32 @LD_SH(i32* %280)
  store i32 %281, i32* %9, align 4
  %282 = load i32*, i32** %6, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 120
  %284 = call i32 @LD_SH(i32* %283)
  store i32 %284, i32* %10, align 4
  %285 = load i32*, i32** %6, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 64
  %287 = call i32 @LD_SH(i32* %286)
  store i32 %287, i32* %11, align 4
  %288 = load i32*, i32** %6, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 8
  %290 = call i32 @LD_SH(i32* %289)
  store i32 %290, i32* %12, align 4
  %291 = load i32*, i32** %5, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 24
  %293 = call i32 @LD_SH(i32* %292)
  store i32 %293, i32* %13, align 4
  %294 = load i32*, i32** %5, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 88
  %296 = call i32 @LD_SH(i32* %295)
  store i32 %296, i32* %14, align 4
  %297 = load i32*, i32** %5, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 56
  %299 = call i32 @LD_SH(i32* %298)
  store i32 %299, i32* %15, align 4
  %300 = load i32*, i32** %5, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 120
  %302 = call i32 @LD_SH(i32* %301)
  store i32 %302, i32* %16, align 4
  %303 = load i32, i32* %13, align 4
  %304 = load i32, i32* %12, align 4
  %305 = load i32, i32* %14, align 4
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* %15, align 4
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* %16, align 4
  %310 = load i32, i32* %9, align 4
  %311 = load i32, i32* %26, align 4
  %312 = load i32, i32* %30, align 4
  %313 = load i32, i32* %28, align 4
  %314 = load i32, i32* %32, align 4
  %315 = call i32 @ADD4(i32 %303, i32 %304, i32 %305, i32 %306, i32 %307, i32 %308, i32 %309, i32 %310, i32 %311, i32 %312, i32 %313, i32 %314)
  %316 = load i32, i32* %26, align 4
  %317 = load i32, i32* %28, align 4
  %318 = load i32, i32* %30, align 4
  %319 = load i32, i32* %32, align 4
  %320 = call i32 @SRARI_H4_SH(i32 %316, i32 %317, i32 %318, i32 %319, i32 6)
  %321 = load i32*, i32** %7, align 8
  %322 = load i32, i32* %8, align 4
  %323 = mul nsw i32 3, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %321, i64 %324
  %326 = load i32, i32* %8, align 4
  %327 = mul nsw i32 4, %326
  %328 = load i32, i32* %26, align 4
  %329 = load i32, i32* %28, align 4
  %330 = load i32, i32* %30, align 4
  %331 = load i32, i32* %32, align 4
  %332 = call i32 @VP9_ADDBLK_ST8x4_UB(i32* %325, i32 %327, i32 %328, i32 %329, i32 %330, i32 %331)
  %333 = load i32, i32* %13, align 4
  %334 = load i32, i32* %12, align 4
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* %11, align 4
  %337 = load i32, i32* %15, align 4
  %338 = load i32, i32* %10, align 4
  %339 = load i32, i32* %16, align 4
  %340 = load i32, i32* %9, align 4
  %341 = load i32, i32* %32, align 4
  %342 = load i32, i32* %28, align 4
  %343 = load i32, i32* %30, align 4
  %344 = load i32, i32* %26, align 4
  %345 = call i32 @SUB4(i32 %333, i32 %334, i32 %335, i32 %336, i32 %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %343, i32 %344)
  %346 = load i32, i32* %26, align 4
  %347 = load i32, i32* %28, align 4
  %348 = load i32, i32* %30, align 4
  %349 = load i32, i32* %32, align 4
  %350 = call i32 @SRARI_H4_SH(i32 %346, i32 %347, i32 %348, i32 %349, i32 6)
  %351 = load i32*, i32** %7, align 8
  %352 = load i32, i32* %8, align 4
  %353 = mul nsw i32 16, %352
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  %356 = load i32, i32* %8, align 4
  %357 = mul nsw i32 4, %356
  %358 = load i32, i32* %26, align 4
  %359 = load i32, i32* %28, align 4
  %360 = load i32, i32* %30, align 4
  %361 = load i32, i32* %32, align 4
  %362 = call i32 @VP9_ADDBLK_ST8x4_UB(i32* %355, i32 %357, i32 %358, i32 %359, i32 %360, i32 %361)
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @ADD4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @VP9_ADDBLK_ST8x4_UB(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SUB4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
