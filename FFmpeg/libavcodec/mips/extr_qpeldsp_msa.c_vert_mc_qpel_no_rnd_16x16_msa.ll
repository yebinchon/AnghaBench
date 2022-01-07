; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_no_rnd_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_no_rnd_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @vert_mc_qpel_no_rnd_16x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vert_mc_qpel_no_rnd_16x16_msa(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
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
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %30 = call i32 @__msa_ldi_b(i32 20)
  store i32 %30, i32* %27, align 4
  %31 = call i32 @__msa_ldi_b(i32 6)
  store i32 %31, i32* %28, align 4
  %32 = call i32 @__msa_ldi_b(i32 3)
  store i32 %32, i32* %29, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @LD_UB5(i32* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 5, %41
  %43 = load i32*, i32** %5, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %27, align 4
  %55 = load i32, i32* %28, align 4
  %56 = load i32, i32* %29, align 4
  %57 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %26, align 4
  %58 = load i32, i32* %26, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @ST_UB(i32 %58, i32* %59)
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @LD_UB(i32* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %5, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %27, align 4
  %80 = load i32, i32* %28, align 4
  %81 = load i32, i32* %29, align 4
  %82 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %26, align 4
  %83 = load i32, i32* %26, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @ST_UB(i32 %83, i32* %84)
  %86 = load i32, i32* %8, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %7, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @LD_UB(i32* %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %5, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %27, align 4
  %105 = load i32, i32* %28, align 4
  %106 = load i32, i32* %29, align 4
  %107 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %26, align 4
  %108 = load i32, i32* %26, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @ST_UB(i32 %108, i32* %109)
  %111 = load i32, i32* %8, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %7, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @LD_UB(i32* %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %5, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %27, align 4
  %130 = load i32, i32* %28, align 4
  %131 = load i32, i32* %29, align 4
  %132 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %26, align 4
  %133 = load i32, i32* %26, align 4
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @ST_UB(i32 %133, i32* %134)
  %136 = load i32, i32* %8, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %7, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @LD_UB(i32* %140)
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32*, i32** %5, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %5, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %27, align 4
  %155 = load i32, i32* %28, align 4
  %156 = load i32, i32* %29, align 4
  %157 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %26, align 4
  %158 = load i32, i32* %26, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @ST_UB(i32 %158, i32* %159)
  %161 = load i32, i32* %8, align 4
  %162 = load i32*, i32** %7, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %7, align 8
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 @LD_UB(i32* %165)
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %6, align 4
  %168 = load i32*, i32** %5, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %5, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %27, align 4
  %180 = load i32, i32* %28, align 4
  %181 = load i32, i32* %29, align 4
  %182 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181)
  store i32 %182, i32* %26, align 4
  %183 = load i32, i32* %26, align 4
  %184 = load i32*, i32** %7, align 8
  %185 = call i32 @ST_UB(i32 %183, i32* %184)
  %186 = load i32, i32* %8, align 4
  %187 = load i32*, i32** %7, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %7, align 8
  %190 = load i32*, i32** %5, align 8
  %191 = call i32 @LD_UB(i32* %190)
  store i32 %191, i32* %19, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load i32*, i32** %5, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32* %195, i32** %5, align 8
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* %27, align 4
  %205 = load i32, i32* %28, align 4
  %206 = load i32, i32* %29, align 4
  %207 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206)
  store i32 %207, i32* %26, align 4
  %208 = load i32, i32* %26, align 4
  %209 = load i32*, i32** %7, align 8
  %210 = call i32 @ST_UB(i32 %208, i32* %209)
  %211 = load i32, i32* %8, align 4
  %212 = load i32*, i32** %7, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  store i32* %214, i32** %7, align 8
  %215 = load i32*, i32** %5, align 8
  %216 = call i32 @LD_UB(i32* %215)
  store i32 %216, i32* %20, align 4
  %217 = load i32, i32* %6, align 4
  %218 = load i32*, i32** %5, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32* %220, i32** %5, align 8
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* %18, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %20, align 4
  %229 = load i32, i32* %27, align 4
  %230 = load i32, i32* %28, align 4
  %231 = load i32, i32* %29, align 4
  %232 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231)
  store i32 %232, i32* %26, align 4
  %233 = load i32, i32* %26, align 4
  %234 = load i32*, i32** %7, align 8
  %235 = call i32 @ST_UB(i32 %233, i32* %234)
  %236 = load i32, i32* %8, align 4
  %237 = load i32*, i32** %7, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  store i32* %239, i32** %7, align 8
  %240 = load i32*, i32** %5, align 8
  %241 = call i32 @LD_UB(i32* %240)
  store i32 %241, i32* %21, align 4
  %242 = load i32, i32* %6, align 4
  %243 = load i32*, i32** %5, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %5, align 8
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %18, align 4
  %251 = load i32, i32* %19, align 4
  %252 = load i32, i32* %20, align 4
  %253 = load i32, i32* %21, align 4
  %254 = load i32, i32* %27, align 4
  %255 = load i32, i32* %28, align 4
  %256 = load i32, i32* %29, align 4
  %257 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256)
  store i32 %257, i32* %26, align 4
  %258 = load i32, i32* %26, align 4
  %259 = load i32*, i32** %7, align 8
  %260 = call i32 @ST_UB(i32 %258, i32* %259)
  %261 = load i32, i32* %8, align 4
  %262 = load i32*, i32** %7, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32* %264, i32** %7, align 8
  %265 = load i32*, i32** %5, align 8
  %266 = call i32 @LD_UB(i32* %265)
  store i32 %266, i32* %22, align 4
  %267 = load i32, i32* %6, align 4
  %268 = load i32*, i32** %5, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32* %270, i32** %5, align 8
  %271 = load i32, i32* %18, align 4
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* %15, align 4
  %275 = load i32, i32* %19, align 4
  %276 = load i32, i32* %20, align 4
  %277 = load i32, i32* %21, align 4
  %278 = load i32, i32* %22, align 4
  %279 = load i32, i32* %27, align 4
  %280 = load i32, i32* %28, align 4
  %281 = load i32, i32* %29, align 4
  %282 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281)
  store i32 %282, i32* %26, align 4
  %283 = load i32, i32* %26, align 4
  %284 = load i32*, i32** %7, align 8
  %285 = call i32 @ST_UB(i32 %283, i32* %284)
  %286 = load i32, i32* %8, align 4
  %287 = load i32*, i32** %7, align 8
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i32, i32* %287, i64 %288
  store i32* %289, i32** %7, align 8
  %290 = load i32*, i32** %5, align 8
  %291 = call i32 @LD_UB(i32* %290)
  store i32 %291, i32* %23, align 4
  %292 = load i32, i32* %6, align 4
  %293 = load i32*, i32** %5, align 8
  %294 = sext i32 %292 to i64
  %295 = getelementptr inbounds i32, i32* %293, i64 %294
  store i32* %295, i32** %5, align 8
  %296 = load i32, i32* %19, align 4
  %297 = load i32, i32* %18, align 4
  %298 = load i32, i32* %17, align 4
  %299 = load i32, i32* %16, align 4
  %300 = load i32, i32* %20, align 4
  %301 = load i32, i32* %21, align 4
  %302 = load i32, i32* %22, align 4
  %303 = load i32, i32* %23, align 4
  %304 = load i32, i32* %27, align 4
  %305 = load i32, i32* %28, align 4
  %306 = load i32, i32* %29, align 4
  %307 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304, i32 %305, i32 %306)
  store i32 %307, i32* %26, align 4
  %308 = load i32, i32* %26, align 4
  %309 = load i32*, i32** %7, align 8
  %310 = call i32 @ST_UB(i32 %308, i32* %309)
  %311 = load i32, i32* %8, align 4
  %312 = load i32*, i32** %7, align 8
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  store i32* %314, i32** %7, align 8
  %315 = load i32*, i32** %5, align 8
  %316 = call i32 @LD_UB(i32* %315)
  store i32 %316, i32* %24, align 4
  %317 = load i32, i32* %6, align 4
  %318 = load i32*, i32** %5, align 8
  %319 = sext i32 %317 to i64
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  store i32* %320, i32** %5, align 8
  %321 = load i32, i32* %20, align 4
  %322 = load i32, i32* %19, align 4
  %323 = load i32, i32* %18, align 4
  %324 = load i32, i32* %17, align 4
  %325 = load i32, i32* %21, align 4
  %326 = load i32, i32* %22, align 4
  %327 = load i32, i32* %23, align 4
  %328 = load i32, i32* %24, align 4
  %329 = load i32, i32* %27, align 4
  %330 = load i32, i32* %28, align 4
  %331 = load i32, i32* %29, align 4
  %332 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %321, i32 %322, i32 %323, i32 %324, i32 %325, i32 %326, i32 %327, i32 %328, i32 %329, i32 %330, i32 %331)
  store i32 %332, i32* %26, align 4
  %333 = load i32, i32* %26, align 4
  %334 = load i32*, i32** %7, align 8
  %335 = call i32 @ST_UB(i32 %333, i32* %334)
  %336 = load i32, i32* %8, align 4
  %337 = load i32*, i32** %7, align 8
  %338 = sext i32 %336 to i64
  %339 = getelementptr inbounds i32, i32* %337, i64 %338
  store i32* %339, i32** %7, align 8
  %340 = load i32*, i32** %5, align 8
  %341 = call i32 @LD_UB(i32* %340)
  store i32 %341, i32* %25, align 4
  %342 = load i32, i32* %21, align 4
  %343 = load i32, i32* %20, align 4
  %344 = load i32, i32* %19, align 4
  %345 = load i32, i32* %18, align 4
  %346 = load i32, i32* %22, align 4
  %347 = load i32, i32* %23, align 4
  %348 = load i32, i32* %24, align 4
  %349 = load i32, i32* %25, align 4
  %350 = load i32, i32* %27, align 4
  %351 = load i32, i32* %28, align 4
  %352 = load i32, i32* %29, align 4
  %353 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %342, i32 %343, i32 %344, i32 %345, i32 %346, i32 %347, i32 %348, i32 %349, i32 %350, i32 %351, i32 %352)
  store i32 %353, i32* %26, align 4
  %354 = load i32, i32* %26, align 4
  %355 = load i32*, i32** %7, align 8
  %356 = call i32 @ST_UB(i32 %354, i32* %355)
  %357 = load i32, i32* %8, align 4
  %358 = load i32*, i32** %7, align 8
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i32, i32* %358, i64 %359
  store i32* %360, i32** %7, align 8
  %361 = load i32, i32* %22, align 4
  %362 = load i32, i32* %21, align 4
  %363 = load i32, i32* %20, align 4
  %364 = load i32, i32* %19, align 4
  %365 = load i32, i32* %23, align 4
  %366 = load i32, i32* %24, align 4
  %367 = load i32, i32* %25, align 4
  %368 = load i32, i32* %25, align 4
  %369 = load i32, i32* %27, align 4
  %370 = load i32, i32* %28, align 4
  %371 = load i32, i32* %29, align 4
  %372 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %361, i32 %362, i32 %363, i32 %364, i32 %365, i32 %366, i32 %367, i32 %368, i32 %369, i32 %370, i32 %371)
  store i32 %372, i32* %26, align 4
  %373 = load i32, i32* %26, align 4
  %374 = load i32*, i32** %7, align 8
  %375 = call i32 @ST_UB(i32 %373, i32* %374)
  %376 = load i32, i32* %8, align 4
  %377 = load i32*, i32** %7, align 8
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds i32, i32* %377, i64 %378
  store i32* %379, i32** %7, align 8
  %380 = load i32, i32* %23, align 4
  %381 = load i32, i32* %22, align 4
  %382 = load i32, i32* %21, align 4
  %383 = load i32, i32* %20, align 4
  %384 = load i32, i32* %24, align 4
  %385 = load i32, i32* %25, align 4
  %386 = load i32, i32* %25, align 4
  %387 = load i32, i32* %24, align 4
  %388 = load i32, i32* %27, align 4
  %389 = load i32, i32* %28, align 4
  %390 = load i32, i32* %29, align 4
  %391 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %380, i32 %381, i32 %382, i32 %383, i32 %384, i32 %385, i32 %386, i32 %387, i32 %388, i32 %389, i32 %390)
  store i32 %391, i32* %26, align 4
  %392 = load i32, i32* %26, align 4
  %393 = load i32*, i32** %7, align 8
  %394 = call i32 @ST_UB(i32 %392, i32* %393)
  %395 = load i32, i32* %8, align 4
  %396 = load i32*, i32** %7, align 8
  %397 = sext i32 %395 to i64
  %398 = getelementptr inbounds i32, i32* %396, i64 %397
  store i32* %398, i32** %7, align 8
  %399 = load i32, i32* %24, align 4
  %400 = load i32, i32* %23, align 4
  %401 = load i32, i32* %22, align 4
  %402 = load i32, i32* %21, align 4
  %403 = load i32, i32* %25, align 4
  %404 = load i32, i32* %25, align 4
  %405 = load i32, i32* %24, align 4
  %406 = load i32, i32* %23, align 4
  %407 = load i32, i32* %27, align 4
  %408 = load i32, i32* %28, align 4
  %409 = load i32, i32* %29, align 4
  %410 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %399, i32 %400, i32 %401, i32 %402, i32 %403, i32 %404, i32 %405, i32 %406, i32 %407, i32 %408, i32 %409)
  store i32 %410, i32* %26, align 4
  %411 = load i32, i32* %26, align 4
  %412 = load i32*, i32** %7, align 8
  %413 = call i32 @ST_UB(i32 %411, i32* %412)
  ret void
}

declare dso_local i32 @__msa_ldi_b(i32) #1

declare dso_local i32 @LD_UB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB(i32, i32*) #1

declare dso_local i32 @LD_UB(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
