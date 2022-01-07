; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_64w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_64w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_8t_64w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_8t_64w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
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
  %44 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %45 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %46 = call i64 @LD_SB(i32* %45)
  store i64 %46, i64* %44, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 -3
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @LD_SH(i32* %49)
  store i32 %50, i32* %42, align 4
  %51 = load i32, i32* %42, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %22, align 4
  %56 = call i32 @SPLATI_H4_SH(i32 %51, i32 0, i32 1, i32 2, i32 3, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i64, i64* %44, align 8
  %58 = add nsw i64 %57, 2
  store i64 %58, i64* %23, align 8
  %59 = load i64, i64* %44, align 8
  %60 = add nsw i64 %59, 4
  store i64 %60, i64* %24, align 8
  %61 = load i64, i64* %44, align 8
  %62 = add nsw i64 %61, 6
  store i64 %62, i64* %25, align 8
  %63 = load i64, i64* %44, align 8
  %64 = add nsw i64 %63, 8
  store i64 %64, i64* %26, align 8
  %65 = load i64, i64* %44, align 8
  %66 = add nsw i64 %65, 10
  store i64 %66, i64* %27, align 8
  %67 = load i64, i64* %44, align 8
  %68 = add nsw i64 %67, 12
  store i64 %68, i64* %28, align 8
  %69 = load i64, i64* %44, align 8
  %70 = add nsw i64 %69, 14
  store i64 %70, i64* %29, align 8
  %71 = call i32 @__msa_ldi_h(i32 128)
  store i32 %71, i32* %43, align 4
  %72 = load i32, i32* %43, align 4
  %73 = shl i32 %72, 6
  store i32 %73, i32* %43, align 4
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %79, %6
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %13, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %79, label %334

79:                                               ; preds = %75
  %80 = load i32*, i32** %7, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %17, align 8
  %85 = call i32 @LD_SB4(i32* %80, i32 16, i64 %81, i64 %82, i64 %83, i64 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 56
  %88 = call i64 @LD_SB(i32* %87)
  store i64 %88, i64* %18, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %7, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* %17, align 8
  %97 = load i64, i64* %18, align 8
  %98 = call i32 @XORI_B5_128_SB(i64 %93, i64 %94, i64 %95, i64 %96, i64 %97)
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* %44, align 8
  %102 = load i64, i64* %23, align 8
  %103 = load i64, i64* %24, align 8
  %104 = load i64, i64* %25, align 8
  %105 = load i64, i64* %30, align 8
  %106 = load i64, i64* %31, align 8
  %107 = load i64, i64* %32, align 8
  %108 = load i64, i64* %33, align 8
  %109 = call i32 @VSHF_B4_SB(i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i32, i32* %43, align 4
  store i32 %110, i32* %34, align 4
  %111 = load i64, i64* %30, align 8
  %112 = load i64, i64* %31, align 8
  %113 = load i64, i64* %32, align 8
  %114 = load i64, i64* %33, align 8
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* %34, align 4
  %120 = load i32, i32* %34, align 4
  %121 = load i32, i32* %34, align 4
  %122 = load i32, i32* %34, align 4
  %123 = call i32 @DPADD_SB4_SH(i64 %111, i64 %112, i64 %113, i64 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %34, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @ST_SH(i32 %124, i32* %125)
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* %15, align 8
  %129 = load i64, i64* %26, align 8
  %130 = load i64, i64* %27, align 8
  %131 = load i64, i64* %28, align 8
  %132 = load i64, i64* %29, align 8
  %133 = load i64, i64* %30, align 8
  %134 = load i64, i64* %31, align 8
  %135 = load i64, i64* %32, align 8
  %136 = load i64, i64* %33, align 8
  %137 = call i32 @VSHF_B4_SB(i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i32, i32* %43, align 4
  store i32 %138, i32* %35, align 4
  %139 = load i64, i64* %30, align 8
  %140 = load i64, i64* %31, align 8
  %141 = load i64, i64* %32, align 8
  %142 = load i64, i64* %33, align 8
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %21, align 4
  %146 = load i32, i32* %22, align 4
  %147 = load i32, i32* %35, align 4
  %148 = load i32, i32* %35, align 4
  %149 = load i32, i32* %35, align 4
  %150 = load i32, i32* %35, align 4
  %151 = call i32 @DPADD_SB4_SH(i64 %139, i64 %140, i64 %141, i64 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150)
  %152 = load i32, i32* %35, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 8
  %155 = call i32 @ST_SH(i32 %152, i32* %154)
  %156 = load i64, i64* %15, align 8
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* %44, align 8
  %159 = load i64, i64* %23, align 8
  %160 = load i64, i64* %24, align 8
  %161 = load i64, i64* %25, align 8
  %162 = load i64, i64* %30, align 8
  %163 = load i64, i64* %31, align 8
  %164 = load i64, i64* %32, align 8
  %165 = load i64, i64* %33, align 8
  %166 = call i32 @VSHF_B4_SB(i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165)
  %167 = load i32, i32* %43, align 4
  store i32 %167, i32* %36, align 4
  %168 = load i64, i64* %30, align 8
  %169 = load i64, i64* %31, align 8
  %170 = load i64, i64* %32, align 8
  %171 = load i64, i64* %33, align 8
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* %36, align 4
  %177 = load i32, i32* %36, align 4
  %178 = load i32, i32* %36, align 4
  %179 = load i32, i32* %36, align 4
  %180 = call i32 @DPADD_SB4_SH(i64 %168, i64 %169, i64 %170, i64 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* %36, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 16
  %184 = call i32 @ST_SH(i32 %181, i32* %183)
  %185 = load i64, i64* %15, align 8
  %186 = load i64, i64* %16, align 8
  %187 = load i64, i64* %26, align 8
  %188 = load i64, i64* %27, align 8
  %189 = load i64, i64* %28, align 8
  %190 = load i64, i64* %29, align 8
  %191 = load i64, i64* %30, align 8
  %192 = load i64, i64* %31, align 8
  %193 = load i64, i64* %32, align 8
  %194 = load i64, i64* %33, align 8
  %195 = call i32 @VSHF_B4_SB(i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194)
  %196 = load i32, i32* %43, align 4
  store i32 %196, i32* %37, align 4
  %197 = load i64, i64* %30, align 8
  %198 = load i64, i64* %31, align 8
  %199 = load i64, i64* %32, align 8
  %200 = load i64, i64* %33, align 8
  %201 = load i32, i32* %19, align 4
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %21, align 4
  %204 = load i32, i32* %22, align 4
  %205 = load i32, i32* %37, align 4
  %206 = load i32, i32* %37, align 4
  %207 = load i32, i32* %37, align 4
  %208 = load i32, i32* %37, align 4
  %209 = call i32 @DPADD_SB4_SH(i64 %197, i64 %198, i64 %199, i64 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208)
  %210 = load i32, i32* %37, align 4
  %211 = load i32*, i32** %9, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 24
  %213 = call i32 @ST_SH(i32 %210, i32* %212)
  %214 = load i64, i64* %16, align 8
  %215 = load i64, i64* %16, align 8
  %216 = load i64, i64* %44, align 8
  %217 = load i64, i64* %23, align 8
  %218 = load i64, i64* %24, align 8
  %219 = load i64, i64* %25, align 8
  %220 = load i64, i64* %30, align 8
  %221 = load i64, i64* %31, align 8
  %222 = load i64, i64* %32, align 8
  %223 = load i64, i64* %33, align 8
  %224 = call i32 @VSHF_B4_SB(i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223)
  %225 = load i32, i32* %43, align 4
  store i32 %225, i32* %38, align 4
  %226 = load i64, i64* %30, align 8
  %227 = load i64, i64* %31, align 8
  %228 = load i64, i64* %32, align 8
  %229 = load i64, i64* %33, align 8
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* %20, align 4
  %232 = load i32, i32* %21, align 4
  %233 = load i32, i32* %22, align 4
  %234 = load i32, i32* %38, align 4
  %235 = load i32, i32* %38, align 4
  %236 = load i32, i32* %38, align 4
  %237 = load i32, i32* %38, align 4
  %238 = call i32 @DPADD_SB4_SH(i64 %226, i64 %227, i64 %228, i64 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237)
  %239 = load i32, i32* %38, align 4
  %240 = load i32*, i32** %9, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 32
  %242 = call i32 @ST_SH(i32 %239, i32* %241)
  %243 = load i64, i64* %16, align 8
  %244 = load i64, i64* %17, align 8
  %245 = load i64, i64* %26, align 8
  %246 = load i64, i64* %27, align 8
  %247 = load i64, i64* %28, align 8
  %248 = load i64, i64* %29, align 8
  %249 = load i64, i64* %30, align 8
  %250 = load i64, i64* %31, align 8
  %251 = load i64, i64* %32, align 8
  %252 = load i64, i64* %33, align 8
  %253 = call i32 @VSHF_B4_SB(i64 %243, i64 %244, i64 %245, i64 %246, i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252)
  %254 = load i32, i32* %43, align 4
  store i32 %254, i32* %39, align 4
  %255 = load i64, i64* %30, align 8
  %256 = load i64, i64* %31, align 8
  %257 = load i64, i64* %32, align 8
  %258 = load i64, i64* %33, align 8
  %259 = load i32, i32* %19, align 4
  %260 = load i32, i32* %20, align 4
  %261 = load i32, i32* %21, align 4
  %262 = load i32, i32* %22, align 4
  %263 = load i32, i32* %39, align 4
  %264 = load i32, i32* %39, align 4
  %265 = load i32, i32* %39, align 4
  %266 = load i32, i32* %39, align 4
  %267 = call i32 @DPADD_SB4_SH(i64 %255, i64 %256, i64 %257, i64 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265, i32 %266)
  %268 = load i32, i32* %39, align 4
  %269 = load i32*, i32** %9, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 40
  %271 = call i32 @ST_SH(i32 %268, i32* %270)
  %272 = load i64, i64* %17, align 8
  %273 = load i64, i64* %17, align 8
  %274 = load i64, i64* %44, align 8
  %275 = load i64, i64* %23, align 8
  %276 = load i64, i64* %24, align 8
  %277 = load i64, i64* %25, align 8
  %278 = load i64, i64* %30, align 8
  %279 = load i64, i64* %31, align 8
  %280 = load i64, i64* %32, align 8
  %281 = load i64, i64* %33, align 8
  %282 = call i32 @VSHF_B4_SB(i64 %272, i64 %273, i64 %274, i64 %275, i64 %276, i64 %277, i64 %278, i64 %279, i64 %280, i64 %281)
  %283 = load i32, i32* %43, align 4
  store i32 %283, i32* %40, align 4
  %284 = load i64, i64* %30, align 8
  %285 = load i64, i64* %31, align 8
  %286 = load i64, i64* %32, align 8
  %287 = load i64, i64* %33, align 8
  %288 = load i32, i32* %19, align 4
  %289 = load i32, i32* %20, align 4
  %290 = load i32, i32* %21, align 4
  %291 = load i32, i32* %22, align 4
  %292 = load i32, i32* %40, align 4
  %293 = load i32, i32* %40, align 4
  %294 = load i32, i32* %40, align 4
  %295 = load i32, i32* %40, align 4
  %296 = call i32 @DPADD_SB4_SH(i64 %284, i64 %285, i64 %286, i64 %287, i32 %288, i32 %289, i32 %290, i32 %291, i32 %292, i32 %293, i32 %294, i32 %295)
  %297 = load i32, i32* %40, align 4
  %298 = load i32*, i32** %9, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 48
  %300 = call i32 @ST_SH(i32 %297, i32* %299)
  %301 = load i64, i64* %18, align 8
  %302 = load i64, i64* %18, align 8
  %303 = load i64, i64* %44, align 8
  %304 = load i64, i64* %23, align 8
  %305 = load i64, i64* %24, align 8
  %306 = load i64, i64* %25, align 8
  %307 = load i64, i64* %30, align 8
  %308 = load i64, i64* %31, align 8
  %309 = load i64, i64* %32, align 8
  %310 = load i64, i64* %33, align 8
  %311 = call i32 @VSHF_B4_SB(i64 %301, i64 %302, i64 %303, i64 %304, i64 %305, i64 %306, i64 %307, i64 %308, i64 %309, i64 %310)
  %312 = load i32, i32* %43, align 4
  store i32 %312, i32* %41, align 4
  %313 = load i64, i64* %30, align 8
  %314 = load i64, i64* %31, align 8
  %315 = load i64, i64* %32, align 8
  %316 = load i64, i64* %33, align 8
  %317 = load i32, i32* %19, align 4
  %318 = load i32, i32* %20, align 4
  %319 = load i32, i32* %21, align 4
  %320 = load i32, i32* %22, align 4
  %321 = load i32, i32* %41, align 4
  %322 = load i32, i32* %41, align 4
  %323 = load i32, i32* %41, align 4
  %324 = load i32, i32* %41, align 4
  %325 = call i32 @DPADD_SB4_SH(i64 %313, i64 %314, i64 %315, i64 %316, i32 %317, i32 %318, i32 %319, i32 %320, i32 %321, i32 %322, i32 %323, i32 %324)
  %326 = load i32, i32* %41, align 4
  %327 = load i32*, i32** %9, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 56
  %329 = call i32 @ST_SH(i32 %326, i32* %328)
  %330 = load i32, i32* %10, align 4
  %331 = load i32*, i32** %9, align 8
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  store i32* %333, i32** %9, align 8
  br label %75

334:                                              ; preds = %75
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
