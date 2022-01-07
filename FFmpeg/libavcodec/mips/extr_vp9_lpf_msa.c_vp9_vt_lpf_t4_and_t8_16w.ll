; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_lpf_msa.c_vp9_vt_lpf_t4_and_t8_16w.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_lpf_msa.c_vp9_vt_lpf_t4_and_t8_16w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32, i32, i32)* @vp9_vt_lpf_t4_and_t8_16w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp9_vt_lpf_t4_and_t8_16w(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
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
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
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
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  %61 = alloca i64, align 8
  %62 = alloca i64, align 8
  %63 = alloca i64, align 8
  %64 = alloca %struct.TYPE_14__, align 4
  %65 = alloca i64, align 8
  %66 = alloca i64, align 8
  %67 = alloca i64, align 8
  %68 = alloca i64, align 8
  %69 = alloca i64, align 8
  %70 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %71 = bitcast %struct.TYPE_14__* %64 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %71, i8 0, i64 4, i1 false)
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 -64
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* %19, align 8
  %78 = load i64, i64* %23, align 8
  %79 = load i64, i64* %22, align 8
  %80 = load i64, i64* %21, align 8
  %81 = load i64, i64* %20, align 8
  %82 = call i32 @LD_UB8(i32* %73, i32 16, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81)
  %83 = load i32, i32* %15, align 4
  %84 = call i64 @__msa_fill_b(i32 %83)
  store i64 %84, i64* %33, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @__msa_fill_b(i32 %85)
  store i64 %86, i64* %34, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i64 @__msa_fill_b(i32 %87)
  store i64 %88, i64* %35, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %23, align 8
  %94 = load i64, i64* %22, align 8
  %95 = load i64, i64* %21, align 8
  %96 = load i64, i64* %20, align 8
  %97 = load i64, i64* %35, align 8
  %98 = load i64, i64* %34, align 8
  %99 = load i64, i64* %33, align 8
  %100 = load i64, i64* %32, align 8
  %101 = load i64, i64* %31, align 8
  %102 = load i64, i64* %30, align 8
  %103 = call i32 @LPF_MASK_HEV(i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102)
  %104 = load i64, i64* %16, align 8
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* %19, align 8
  %107 = load i64, i64* %23, align 8
  %108 = load i64, i64* %21, align 8
  %109 = load i64, i64* %20, align 8
  %110 = load i64, i64* %30, align 8
  %111 = call i32 @VP9_FLAT4(i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110)
  %112 = load i64, i64* %18, align 8
  %113 = load i64, i64* %19, align 8
  %114 = load i64, i64* %23, align 8
  %115 = load i64, i64* %22, align 8
  %116 = load i64, i64* %31, align 8
  %117 = load i64, i64* %32, align 8
  %118 = load i64, i64* %25, align 8
  %119 = load i64, i64* %26, align 8
  %120 = load i64, i64* %27, align 8
  %121 = load i64, i64* %28, align 8
  %122 = call i32 @VP9_LPF_FILTER4_4W(i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121)
  %123 = load i64, i64* %30, align 8
  %124 = call i64 @__msa_test_bz_v(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %167

126:                                              ; preds = %7
  %127 = load i64, i64* %26, align 8
  %128 = load i64, i64* %25, align 8
  %129 = load i64, i64* %28, align 8
  %130 = load i64, i64* %27, align 8
  %131 = load i64, i64* %65, align 8
  %132 = load i64, i64* %66, align 8
  %133 = call i32 @ILVR_B2_SH(i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132)
  %134 = load i64, i64* %66, align 8
  %135 = load i64, i64* %65, align 8
  %136 = load i64, i64* %67, align 8
  %137 = load i64, i64* %68, align 8
  %138 = call i32 @ILVRL_H2_SH(i64 %134, i64 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %26, align 8
  %140 = load i64, i64* %25, align 8
  %141 = load i64, i64* %28, align 8
  %142 = load i64, i64* %27, align 8
  %143 = load i64, i64* %65, align 8
  %144 = load i64, i64* %66, align 8
  %145 = call i32 @ILVL_B2_SH(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144)
  %146 = load i64, i64* %66, align 8
  %147 = load i64, i64* %65, align 8
  %148 = load i64, i64* %69, align 8
  %149 = load i64, i64* %70, align 8
  %150 = call i32 @ILVRL_H2_SH(i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i32*, i32** %11, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 -2
  store i32* %152, i32** %11, align 8
  %153 = load i64, i64* %67, align 8
  %154 = load i64, i64* %68, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @ST_W8(i64 %153, i64 %154, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %155, i32 %156)
  %158 = load i64, i64* %69, align 8
  %159 = load i64, i64* %70, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = load i32, i32* %12, align 4
  %162 = mul nsw i32 8, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @ST_W8(i64 %158, i64 %159, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %164, i32 %165)
  store i32 1, i32* %8, align 4
  br label %326

167:                                              ; preds = %7
  %168 = load i64, i64* %16, align 8
  %169 = load i64, i64* %17, align 8
  %170 = load i64, i64* %18, align 8
  %171 = load i64, i64* %19, align 8
  %172 = load i64, i64* %23, align 8
  %173 = load i64, i64* %22, align 8
  %174 = load i64, i64* %21, align 8
  %175 = load i64, i64* %20, align 8
  %176 = load i32, i32* %36, align 4
  %177 = load i32, i32* %37, align 4
  %178 = load i32, i32* %38, align 4
  %179 = load i32, i32* %39, align 4
  %180 = load i32, i32* %40, align 4
  %181 = load i32, i32* %41, align 4
  %182 = load i32, i32* %42, align 4
  %183 = load i32, i32* %43, align 4
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @ILVR_B8_UH(i32 %185, i64 %168, i32 %187, i64 %169, i32 %189, i64 %170, i32 %191, i64 %171, i32 %193, i64 %172, i32 %195, i64 %173, i32 %197, i64 %174, i32 %199, i64 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183)
  %201 = load i32, i32* %36, align 4
  %202 = load i32, i32* %37, align 4
  %203 = load i32, i32* %38, align 4
  %204 = load i32, i32* %39, align 4
  %205 = load i32, i32* %40, align 4
  %206 = load i32, i32* %41, align 4
  %207 = load i32, i32* %42, align 4
  %208 = load i32, i32* %43, align 4
  %209 = load i64, i64* %52, align 8
  %210 = load i64, i64* %53, align 8
  %211 = load i64, i64* %54, align 8
  %212 = load i64, i64* %55, align 8
  %213 = load i64, i64* %56, align 8
  %214 = load i64, i64* %57, align 8
  %215 = call i32 @VP9_FILTER8(i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214)
  %216 = load i64, i64* %16, align 8
  %217 = load i64, i64* %17, align 8
  %218 = load i64, i64* %18, align 8
  %219 = load i64, i64* %19, align 8
  %220 = load i32, i32* %44, align 4
  %221 = load i32, i32* %45, align 4
  %222 = load i32, i32* %46, align 4
  %223 = load i32, i32* %47, align 4
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @ILVL_B4_UH(i32 %225, i64 %216, i32 %227, i64 %217, i32 %229, i64 %218, i32 %231, i64 %219, i32 %220, i32 %221, i32 %222, i32 %223)
  %233 = load i64, i64* %23, align 8
  %234 = load i64, i64* %22, align 8
  %235 = load i64, i64* %21, align 8
  %236 = load i64, i64* %20, align 8
  %237 = load i32, i32* %48, align 4
  %238 = load i32, i32* %49, align 4
  %239 = load i32, i32* %50, align 4
  %240 = load i32, i32* %51, align 4
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @ILVL_B4_UH(i32 %242, i64 %233, i32 %244, i64 %234, i32 %246, i64 %235, i32 %248, i64 %236, i32 %237, i32 %238, i32 %239, i32 %240)
  %250 = load i32, i32* %44, align 4
  %251 = load i32, i32* %45, align 4
  %252 = load i32, i32* %46, align 4
  %253 = load i32, i32* %47, align 4
  %254 = load i32, i32* %48, align 4
  %255 = load i32, i32* %49, align 4
  %256 = load i32, i32* %50, align 4
  %257 = load i32, i32* %51, align 4
  %258 = load i64, i64* %58, align 8
  %259 = load i64, i64* %59, align 8
  %260 = load i64, i64* %60, align 8
  %261 = load i64, i64* %61, align 8
  %262 = load i64, i64* %62, align 8
  %263 = load i64, i64* %63, align 8
  %264 = call i32 @VP9_FILTER8(i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263)
  %265 = load i64, i64* %58, align 8
  %266 = load i64, i64* %52, align 8
  %267 = load i64, i64* %59, align 8
  %268 = load i64, i64* %53, align 8
  %269 = load i64, i64* %60, align 8
  %270 = load i64, i64* %54, align 8
  %271 = load i64, i64* %61, align 8
  %272 = load i64, i64* %55, align 8
  %273 = load i64, i64* %52, align 8
  %274 = load i64, i64* %53, align 8
  %275 = load i64, i64* %54, align 8
  %276 = load i64, i64* %55, align 8
  %277 = call i32 @PCKEV_B4_SH(i64 %265, i64 %266, i64 %267, i64 %268, i64 %269, i64 %270, i64 %271, i64 %272, i64 %273, i64 %274, i64 %275, i64 %276)
  %278 = load i64, i64* %62, align 8
  %279 = load i64, i64* %56, align 8
  %280 = load i64, i64* %63, align 8
  %281 = load i64, i64* %57, align 8
  %282 = load i64, i64* %56, align 8
  %283 = load i64, i64* %57, align 8
  %284 = call i32 @PCKEV_B2_SH(i64 %278, i64 %279, i64 %280, i64 %281, i64 %282, i64 %283)
  %285 = load i64, i64* %17, align 8
  %286 = load i64, i64* %52, align 8
  %287 = load i64, i64* %30, align 8
  %288 = call i64 @__msa_bmnz_v(i64 %285, i64 %286, i64 %287)
  store i64 %288, i64* %24, align 8
  %289 = load i64, i64* %25, align 8
  %290 = load i64, i64* %53, align 8
  %291 = load i64, i64* %30, align 8
  %292 = call i64 @__msa_bmnz_v(i64 %289, i64 %290, i64 %291)
  store i64 %292, i64* %25, align 8
  %293 = load i64, i64* %26, align 8
  %294 = load i64, i64* %54, align 8
  %295 = load i64, i64* %30, align 8
  %296 = call i64 @__msa_bmnz_v(i64 %293, i64 %294, i64 %295)
  store i64 %296, i64* %26, align 8
  %297 = load i64, i64* %27, align 8
  %298 = load i64, i64* %55, align 8
  %299 = load i64, i64* %30, align 8
  %300 = call i64 @__msa_bmnz_v(i64 %297, i64 %298, i64 %299)
  store i64 %300, i64* %27, align 8
  %301 = load i64, i64* %28, align 8
  %302 = load i64, i64* %56, align 8
  %303 = load i64, i64* %30, align 8
  %304 = call i64 @__msa_bmnz_v(i64 %301, i64 %302, i64 %303)
  store i64 %304, i64* %28, align 8
  %305 = load i64, i64* %21, align 8
  %306 = load i64, i64* %57, align 8
  %307 = load i64, i64* %30, align 8
  %308 = call i64 @__msa_bmnz_v(i64 %305, i64 %306, i64 %307)
  store i64 %308, i64* %29, align 8
  %309 = load i64, i64* %24, align 8
  %310 = load i64, i64* %25, align 8
  %311 = load i64, i64* %26, align 8
  %312 = load i64, i64* %27, align 8
  %313 = load i32*, i32** %10, align 8
  %314 = call i32 @ST_UB4(i64 %309, i64 %310, i64 %311, i64 %312, i32* %313, i32 16)
  %315 = load i32*, i32** %10, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 64
  store i32* %316, i32** %10, align 8
  %317 = load i64, i64* %28, align 8
  %318 = load i64, i64* %29, align 8
  %319 = load i32*, i32** %10, align 8
  %320 = call i32 @ST_UB2(i64 %317, i64 %318, i32* %319, i32 16)
  %321 = load i32*, i32** %10, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 32
  store i32* %322, i32** %10, align 8
  %323 = load i64, i64* %30, align 8
  %324 = load i32*, i32** %10, align 8
  %325 = call i32 @ST_UB(i64 %323, i32* %324)
  store i32 0, i32* %8, align 4
  br label %326

326:                                              ; preds = %167, %126
  %327 = load i32, i32* %8, align 4
  ret i32 %327
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @__msa_fill_b(i32) #2

declare dso_local i32 @LPF_MASK_HEV(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @VP9_FLAT4(i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @VP9_LPF_FILTER4_4W(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @__msa_test_bz_v(i64) #2

declare dso_local i32 @ILVR_B2_SH(i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @ILVRL_H2_SH(i64, i64, i64, i64) #2

declare dso_local i32 @ILVL_B2_SH(i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @ST_W8(i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ILVR_B8_UH(i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @VP9_FILTER8(i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @ILVL_B4_UH(i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @PCKEV_B2_SH(i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @__msa_bmnz_v(i64, i64, i64) #2

declare dso_local i32 @ST_UB4(i64, i64, i64, i64, i32*, i32) #2

declare dso_local i32 @ST_UB2(i64, i64, i32*, i32) #2

declare dso_local i32 @ST_UB(i64, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
