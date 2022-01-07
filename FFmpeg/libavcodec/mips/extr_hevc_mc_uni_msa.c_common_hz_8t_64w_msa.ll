; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_64w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_64w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_8t_64w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_64w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %44 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = call i64 @LD_UB(i32* %45)
  store i64 %46, i64* %14, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 -3
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @LD_SH(i32* %49)
  store i32 %50, i32* %43, align 4
  %51 = load i32, i32* %43, align 4
  %52 = load i32, i32* %35, align 4
  %53 = load i32, i32* %36, align 4
  %54 = load i32, i32* %37, align 4
  %55 = load i32, i32* %38, align 4
  %56 = call i32 @SPLATI_H4_SB(i32 %51, i32 0, i32 1, i32 2, i32 3, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i64, i64* %14, align 8
  %58 = add nsw i64 %57, 2
  store i64 %58, i64* %15, align 8
  %59 = load i64, i64* %14, align 8
  %60 = add nsw i64 %59, 4
  store i64 %60, i64* %16, align 8
  %61 = load i64, i64* %14, align 8
  %62 = add nsw i64 %61, 6
  store i64 %62, i64* %17, align 8
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %68, %6
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %13, align 4
  %67 = icmp ne i32 %65, 0
  br i1 %67, label %68, label %391

68:                                               ; preds = %64
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %23, align 4
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* %26, align 4
  %78 = call i32 @LD_SB8(i32* %69, i32 8, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %7, align 8
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %24, align 4
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* %26, align 4
  %91 = call i32 @XORI_B8_128_SB(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i32, i32* %27, align 4
  %99 = load i32, i32* %28, align 4
  %100 = call i32 @VSHF_B2_SB(i32 %92, i32 %93, i32 %94, i32 %95, i64 %96, i64 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* %22, align 4
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load i32, i32* %29, align 4
  %108 = load i32, i32* %30, align 4
  %109 = call i32 @VSHF_B2_SB(i32 %101, i32 %102, i32 %103, i32 %104, i64 %105, i64 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %27, align 4
  %111 = load i32, i32* %28, align 4
  %112 = load i32, i32* %29, align 4
  %113 = load i32, i32* %30, align 4
  %114 = load i32, i32* %35, align 4
  %115 = load i32, i32* %35, align 4
  %116 = load i32, i32* %35, align 4
  %117 = load i32, i32* %35, align 4
  %118 = load i32, i32* %39, align 4
  %119 = load i32, i32* %40, align 4
  %120 = load i32, i32* %41, align 4
  %121 = load i32, i32* %42, align 4
  %122 = call i32 @DOTP_SB4_SH(i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %20, align 4
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* %16, align 8
  %129 = load i32, i32* %27, align 4
  %130 = load i32, i32* %28, align 4
  %131 = call i32 @VSHF_B2_SB(i32 %123, i32 %124, i32 %125, i32 %126, i64 %127, i64 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* %22, align 4
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %16, align 8
  %138 = load i32, i32* %29, align 4
  %139 = load i32, i32* %30, align 4
  %140 = call i32 @VSHF_B2_SB(i32 %132, i32 %133, i32 %134, i32 %135, i64 %136, i64 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %28, align 4
  %143 = load i32, i32* %29, align 4
  %144 = load i32, i32* %30, align 4
  %145 = load i32, i32* %37, align 4
  %146 = load i32, i32* %37, align 4
  %147 = load i32, i32* %37, align 4
  %148 = load i32, i32* %37, align 4
  %149 = load i32, i32* %39, align 4
  %150 = load i32, i32* %40, align 4
  %151 = load i32, i32* %41, align 4
  %152 = load i32, i32* %42, align 4
  %153 = call i32 @DPADD_SB4_SH(i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %20, align 4
  %157 = load i32, i32* %20, align 4
  %158 = load i64, i64* %15, align 8
  %159 = load i64, i64* %15, align 8
  %160 = load i32, i32* %31, align 4
  %161 = load i32, i32* %32, align 4
  %162 = call i32 @VSHF_B2_SB(i32 %154, i32 %155, i32 %156, i32 %157, i64 %158, i64 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %21, align 4
  %164 = load i32, i32* %21, align 4
  %165 = load i32, i32* %22, align 4
  %166 = load i32, i32* %22, align 4
  %167 = load i64, i64* %15, align 8
  %168 = load i64, i64* %15, align 8
  %169 = load i32, i32* %33, align 4
  %170 = load i32, i32* %34, align 4
  %171 = call i32 @VSHF_B2_SB(i32 %163, i32 %164, i32 %165, i32 %166, i64 %167, i64 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %31, align 4
  %173 = load i32, i32* %32, align 4
  %174 = load i32, i32* %33, align 4
  %175 = load i32, i32* %34, align 4
  %176 = load i32, i32* %36, align 4
  %177 = load i32, i32* %36, align 4
  %178 = load i32, i32* %36, align 4
  %179 = load i32, i32* %36, align 4
  %180 = load i32, i32* %39, align 4
  %181 = load i32, i32* %40, align 4
  %182 = load i32, i32* %41, align 4
  %183 = load i32, i32* %42, align 4
  %184 = call i32 @DPADD_SB4_SH(i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* %20, align 4
  %189 = load i64, i64* %17, align 8
  %190 = load i64, i64* %17, align 8
  %191 = load i32, i32* %31, align 4
  %192 = load i32, i32* %32, align 4
  %193 = call i32 @VSHF_B2_SB(i32 %185, i32 %186, i32 %187, i32 %188, i64 %189, i64 %190, i32 %191, i32 %192)
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* %21, align 4
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* %22, align 4
  %198 = load i64, i64* %17, align 8
  %199 = load i64, i64* %17, align 8
  %200 = load i32, i32* %33, align 4
  %201 = load i32, i32* %34, align 4
  %202 = call i32 @VSHF_B2_SB(i32 %194, i32 %195, i32 %196, i32 %197, i64 %198, i64 %199, i32 %200, i32 %201)
  %203 = load i32, i32* %31, align 4
  %204 = load i32, i32* %32, align 4
  %205 = load i32, i32* %33, align 4
  %206 = load i32, i32* %34, align 4
  %207 = load i32, i32* %38, align 4
  %208 = load i32, i32* %38, align 4
  %209 = load i32, i32* %38, align 4
  %210 = load i32, i32* %38, align 4
  %211 = load i32, i32* %39, align 4
  %212 = load i32, i32* %40, align 4
  %213 = load i32, i32* %41, align 4
  %214 = load i32, i32* %42, align 4
  %215 = call i32 @DPADD_SB4_SH(i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214)
  %216 = load i32, i32* %39, align 4
  %217 = load i32, i32* %40, align 4
  %218 = load i32, i32* %41, align 4
  %219 = load i32, i32* %42, align 4
  %220 = call i32 @SRARI_H4_SH(i32 %216, i32 %217, i32 %218, i32 %219, i32 6)
  %221 = load i32, i32* %39, align 4
  %222 = load i32, i32* %40, align 4
  %223 = load i32, i32* %41, align 4
  %224 = load i32, i32* %42, align 4
  %225 = call i32 @SAT_SH4_SH(i32 %221, i32 %222, i32 %223, i32 %224, i32 7)
  %226 = load i32, i32* %39, align 4
  %227 = load i32, i32* %40, align 4
  %228 = call i64 @PCKEV_XORI128_UB(i32 %226, i32 %227)
  store i64 %228, i64* %18, align 8
  %229 = load i64, i64* %18, align 8
  %230 = load i32*, i32** %9, align 8
  %231 = call i32 @ST_UB(i64 %229, i32* %230)
  %232 = load i32, i32* %41, align 4
  %233 = load i32, i32* %42, align 4
  %234 = call i64 @PCKEV_XORI128_UB(i32 %232, i32 %233)
  store i64 %234, i64* %18, align 8
  %235 = load i64, i64* %18, align 8
  %236 = load i32*, i32** %9, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 16
  %238 = call i32 @ST_UB(i64 %235, i32* %237)
  %239 = load i32, i32* %23, align 4
  %240 = load i32, i32* %23, align 4
  %241 = load i32, i32* %24, align 4
  %242 = load i32, i32* %24, align 4
  %243 = load i64, i64* %14, align 8
  %244 = load i64, i64* %14, align 8
  %245 = load i32, i32* %27, align 4
  %246 = load i32, i32* %28, align 4
  %247 = call i32 @VSHF_B2_SB(i32 %239, i32 %240, i32 %241, i32 %242, i64 %243, i64 %244, i32 %245, i32 %246)
  %248 = load i32, i32* %25, align 4
  %249 = load i32, i32* %25, align 4
  %250 = load i32, i32* %26, align 4
  %251 = load i32, i32* %26, align 4
  %252 = load i64, i64* %14, align 8
  %253 = load i64, i64* %14, align 8
  %254 = load i32, i32* %29, align 4
  %255 = load i32, i32* %30, align 4
  %256 = call i32 @VSHF_B2_SB(i32 %248, i32 %249, i32 %250, i32 %251, i64 %252, i64 %253, i32 %254, i32 %255)
  %257 = load i32, i32* %27, align 4
  %258 = load i32, i32* %28, align 4
  %259 = load i32, i32* %29, align 4
  %260 = load i32, i32* %30, align 4
  %261 = load i32, i32* %35, align 4
  %262 = load i32, i32* %35, align 4
  %263 = load i32, i32* %35, align 4
  %264 = load i32, i32* %35, align 4
  %265 = load i32, i32* %39, align 4
  %266 = load i32, i32* %40, align 4
  %267 = load i32, i32* %41, align 4
  %268 = load i32, i32* %42, align 4
  %269 = call i32 @DOTP_SB4_SH(i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265, i32 %266, i32 %267, i32 %268)
  %270 = load i32, i32* %23, align 4
  %271 = load i32, i32* %23, align 4
  %272 = load i32, i32* %24, align 4
  %273 = load i32, i32* %24, align 4
  %274 = load i64, i64* %16, align 8
  %275 = load i64, i64* %16, align 8
  %276 = load i32, i32* %27, align 4
  %277 = load i32, i32* %28, align 4
  %278 = call i32 @VSHF_B2_SB(i32 %270, i32 %271, i32 %272, i32 %273, i64 %274, i64 %275, i32 %276, i32 %277)
  %279 = load i32, i32* %25, align 4
  %280 = load i32, i32* %25, align 4
  %281 = load i32, i32* %26, align 4
  %282 = load i32, i32* %26, align 4
  %283 = load i64, i64* %16, align 8
  %284 = load i64, i64* %16, align 8
  %285 = load i32, i32* %29, align 4
  %286 = load i32, i32* %30, align 4
  %287 = call i32 @VSHF_B2_SB(i32 %279, i32 %280, i32 %281, i32 %282, i64 %283, i64 %284, i32 %285, i32 %286)
  %288 = load i32, i32* %27, align 4
  %289 = load i32, i32* %28, align 4
  %290 = load i32, i32* %29, align 4
  %291 = load i32, i32* %30, align 4
  %292 = load i32, i32* %37, align 4
  %293 = load i32, i32* %37, align 4
  %294 = load i32, i32* %37, align 4
  %295 = load i32, i32* %37, align 4
  %296 = load i32, i32* %39, align 4
  %297 = load i32, i32* %40, align 4
  %298 = load i32, i32* %41, align 4
  %299 = load i32, i32* %42, align 4
  %300 = call i32 @DPADD_SB4_SH(i32 %288, i32 %289, i32 %290, i32 %291, i32 %292, i32 %293, i32 %294, i32 %295, i32 %296, i32 %297, i32 %298, i32 %299)
  %301 = load i32, i32* %23, align 4
  %302 = load i32, i32* %23, align 4
  %303 = load i32, i32* %24, align 4
  %304 = load i32, i32* %24, align 4
  %305 = load i64, i64* %15, align 8
  %306 = load i64, i64* %15, align 8
  %307 = load i32, i32* %31, align 4
  %308 = load i32, i32* %32, align 4
  %309 = call i32 @VSHF_B2_SB(i32 %301, i32 %302, i32 %303, i32 %304, i64 %305, i64 %306, i32 %307, i32 %308)
  %310 = load i32, i32* %25, align 4
  %311 = load i32, i32* %25, align 4
  %312 = load i32, i32* %26, align 4
  %313 = load i32, i32* %26, align 4
  %314 = load i64, i64* %15, align 8
  %315 = load i64, i64* %15, align 8
  %316 = load i32, i32* %33, align 4
  %317 = load i32, i32* %34, align 4
  %318 = call i32 @VSHF_B2_SB(i32 %310, i32 %311, i32 %312, i32 %313, i64 %314, i64 %315, i32 %316, i32 %317)
  %319 = load i32, i32* %31, align 4
  %320 = load i32, i32* %32, align 4
  %321 = load i32, i32* %33, align 4
  %322 = load i32, i32* %34, align 4
  %323 = load i32, i32* %36, align 4
  %324 = load i32, i32* %36, align 4
  %325 = load i32, i32* %36, align 4
  %326 = load i32, i32* %36, align 4
  %327 = load i32, i32* %39, align 4
  %328 = load i32, i32* %40, align 4
  %329 = load i32, i32* %41, align 4
  %330 = load i32, i32* %42, align 4
  %331 = call i32 @DPADD_SB4_SH(i32 %319, i32 %320, i32 %321, i32 %322, i32 %323, i32 %324, i32 %325, i32 %326, i32 %327, i32 %328, i32 %329, i32 %330)
  %332 = load i32, i32* %23, align 4
  %333 = load i32, i32* %23, align 4
  %334 = load i32, i32* %24, align 4
  %335 = load i32, i32* %24, align 4
  %336 = load i64, i64* %17, align 8
  %337 = load i64, i64* %17, align 8
  %338 = load i32, i32* %31, align 4
  %339 = load i32, i32* %32, align 4
  %340 = call i32 @VSHF_B2_SB(i32 %332, i32 %333, i32 %334, i32 %335, i64 %336, i64 %337, i32 %338, i32 %339)
  %341 = load i32, i32* %25, align 4
  %342 = load i32, i32* %25, align 4
  %343 = load i32, i32* %26, align 4
  %344 = load i32, i32* %26, align 4
  %345 = load i64, i64* %17, align 8
  %346 = load i64, i64* %17, align 8
  %347 = load i32, i32* %33, align 4
  %348 = load i32, i32* %34, align 4
  %349 = call i32 @VSHF_B2_SB(i32 %341, i32 %342, i32 %343, i32 %344, i64 %345, i64 %346, i32 %347, i32 %348)
  %350 = load i32, i32* %31, align 4
  %351 = load i32, i32* %32, align 4
  %352 = load i32, i32* %33, align 4
  %353 = load i32, i32* %34, align 4
  %354 = load i32, i32* %38, align 4
  %355 = load i32, i32* %38, align 4
  %356 = load i32, i32* %38, align 4
  %357 = load i32, i32* %38, align 4
  %358 = load i32, i32* %39, align 4
  %359 = load i32, i32* %40, align 4
  %360 = load i32, i32* %41, align 4
  %361 = load i32, i32* %42, align 4
  %362 = call i32 @DPADD_SB4_SH(i32 %350, i32 %351, i32 %352, i32 %353, i32 %354, i32 %355, i32 %356, i32 %357, i32 %358, i32 %359, i32 %360, i32 %361)
  %363 = load i32, i32* %39, align 4
  %364 = load i32, i32* %40, align 4
  %365 = load i32, i32* %41, align 4
  %366 = load i32, i32* %42, align 4
  %367 = call i32 @SRARI_H4_SH(i32 %363, i32 %364, i32 %365, i32 %366, i32 6)
  %368 = load i32, i32* %39, align 4
  %369 = load i32, i32* %40, align 4
  %370 = load i32, i32* %41, align 4
  %371 = load i32, i32* %42, align 4
  %372 = call i32 @SAT_SH4_SH(i32 %368, i32 %369, i32 %370, i32 %371, i32 7)
  %373 = load i32, i32* %39, align 4
  %374 = load i32, i32* %40, align 4
  %375 = call i64 @PCKEV_XORI128_UB(i32 %373, i32 %374)
  store i64 %375, i64* %18, align 8
  %376 = load i64, i64* %18, align 8
  %377 = load i32*, i32** %9, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 32
  %379 = call i32 @ST_UB(i64 %376, i32* %378)
  %380 = load i32, i32* %41, align 4
  %381 = load i32, i32* %42, align 4
  %382 = call i64 @PCKEV_XORI128_UB(i32 %380, i32 %381)
  store i64 %382, i64* %18, align 8
  %383 = load i64, i64* %18, align 8
  %384 = load i32*, i32** %9, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 48
  %386 = call i32 @ST_UB(i64 %383, i32* %385)
  %387 = load i32, i32* %10, align 4
  %388 = load i32*, i32** %9, align 8
  %389 = sext i32 %387 to i64
  %390 = getelementptr inbounds i32, i32* %388, i64 %389
  store i32* %390, i32** %9, align 8
  br label %64

391:                                              ; preds = %64
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B8_128_SB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_SB(i32, i32, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @DOTP_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_UB(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
