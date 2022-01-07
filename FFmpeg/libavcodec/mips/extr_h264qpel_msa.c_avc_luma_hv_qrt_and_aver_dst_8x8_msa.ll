; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_avc_luma_hv_qrt_and_aver_dst_8x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_avc_luma_hv_qrt_and_aver_dst_8x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@luma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @avc_luma_hv_qrt_and_aver_dst_8x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_luma_hv_qrt_and_aver_dst_8x8_msa(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
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
  %16 = alloca %struct.TYPE_12__, align 4
  %17 = alloca %struct.TYPE_12__, align 4
  %18 = alloca %struct.TYPE_12__, align 4
  %19 = alloca %struct.TYPE_12__, align 4
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
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
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
  %64 = alloca i64, align 8
  %65 = alloca i64, align 8
  %66 = alloca i64, align 8
  %67 = alloca %struct.TYPE_12__, align 4
  %68 = alloca %struct.TYPE_12__, align 4
  %69 = alloca %struct.TYPE_12__, align 4
  %70 = alloca %struct.TYPE_12__, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 64257, i32* %9, align 4
  store i32 5140, i32* %10, align 4
  store i32 507, i32* %11, align 4
  %71 = bitcast %struct.TYPE_12__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %71, i8 0, i64 4, i1 false)
  %72 = bitcast %struct.TYPE_12__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %72, i8 0, i64 4, i1 false)
  %73 = call i64 @__msa_fill_h(i32 64257)
  store i64 %73, i64* %52, align 8
  %74 = call i64 @__msa_fill_h(i32 5140)
  store i64 %74, i64* %53, align 8
  %75 = call i64 @__msa_fill_h(i32 507)
  store i64 %75, i64* %54, align 8
  %76 = load i32*, i32** @luma_mask_arr, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i64, i64* %37, align 8
  %79 = load i64, i64* %38, align 8
  %80 = load i64, i64* %39, align 8
  %81 = call i32 @LD_SB3(i32* %77, i32 16, i64 %78, i64 %79, i64 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i64, i64* %24, align 8
  %85 = load i64, i64* %25, align 8
  %86 = load i64, i64* %26, align 8
  %87 = load i64, i64* %27, align 8
  %88 = load i64, i64* %28, align 8
  %89 = call i32 @LD_SB5(i32* %82, i32 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88)
  %90 = load i32, i32* %8, align 4
  %91 = mul nsw i32 5, %90
  %92 = load i32*, i32** %6, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %6, align 8
  %95 = load i64, i64* %24, align 8
  %96 = load i64, i64* %25, align 8
  %97 = load i64, i64* %26, align 8
  %98 = load i64, i64* %27, align 8
  %99 = load i64, i64* %28, align 8
  %100 = call i32 @XORI_B5_128_SB(i64 %95, i64 %96, i64 %97, i64 %98, i64 %99)
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i64, i64* %20, align 8
  %104 = load i64, i64* %21, align 8
  %105 = load i64, i64* %22, align 8
  %106 = load i64, i64* %23, align 8
  %107 = call i32 @LD_SB4(i32* %101, i32 %102, i64 %103, i64 %104, i64 %105, i64 %106)
  %108 = load i64, i64* %20, align 8
  %109 = load i64, i64* %21, align 8
  %110 = load i64, i64* %22, align 8
  %111 = load i64, i64* %23, align 8
  %112 = call i32 @XORI_B4_128_SB(i64 %108, i64 %109, i64 %110, i64 %111)
  %113 = load i32, i32* %8, align 4
  %114 = mul nsw i32 4, %113
  %115 = load i32*, i32** %5, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %5, align 8
  %118 = load i64, i64* %20, align 8
  %119 = load i64, i64* %20, align 8
  %120 = load i64, i64* %37, align 8
  %121 = load i64, i64* %38, align 8
  %122 = load i64, i64* %39, align 8
  %123 = call i64 @AVC_HORZ_FILTER_SH(i64 %118, i64 %119, i64 %120, i64 %121, i64 %122)
  store i64 %123, i64* %55, align 8
  %124 = load i64, i64* %21, align 8
  %125 = load i64, i64* %21, align 8
  %126 = load i64, i64* %37, align 8
  %127 = load i64, i64* %38, align 8
  %128 = load i64, i64* %39, align 8
  %129 = call i64 @AVC_HORZ_FILTER_SH(i64 %124, i64 %125, i64 %126, i64 %127, i64 %128)
  store i64 %129, i64* %56, align 8
  %130 = load i64, i64* %22, align 8
  %131 = load i64, i64* %22, align 8
  %132 = load i64, i64* %37, align 8
  %133 = load i64, i64* %38, align 8
  %134 = load i64, i64* %39, align 8
  %135 = call i64 @AVC_HORZ_FILTER_SH(i64 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  store i64 %135, i64* %57, align 8
  %136 = load i64, i64* %23, align 8
  %137 = load i64, i64* %23, align 8
  %138 = load i64, i64* %37, align 8
  %139 = load i64, i64* %38, align 8
  %140 = load i64, i64* %39, align 8
  %141 = call i64 @AVC_HORZ_FILTER_SH(i64 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  store i64 %141, i64* %58, align 8
  %142 = load i64, i64* %55, align 8
  %143 = load i64, i64* %56, align 8
  %144 = load i64, i64* %57, align 8
  %145 = load i64, i64* %58, align 8
  %146 = call i32 @SRARI_H4_SH(i64 %142, i64 %143, i64 %144, i64 %145, i32 5)
  %147 = load i64, i64* %55, align 8
  %148 = load i64, i64* %56, align 8
  %149 = load i64, i64* %57, align 8
  %150 = load i64, i64* %58, align 8
  %151 = call i32 @SAT_SH4_SH(i64 %147, i64 %148, i64 %149, i64 %150, i32 7)
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i64, i64* %29, align 8
  %155 = load i64, i64* %30, align 8
  %156 = load i64, i64* %31, align 8
  %157 = load i64, i64* %32, align 8
  %158 = call i32 @LD_SB4(i32* %152, i32 %153, i64 %154, i64 %155, i64 %156, i64 %157)
  %159 = load i32, i32* %8, align 4
  %160 = mul nsw i32 4, %159
  %161 = load i32*, i32** %6, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32* %163, i32** %6, align 8
  %164 = load i64, i64* %29, align 8
  %165 = load i64, i64* %30, align 8
  %166 = load i64, i64* %31, align 8
  %167 = load i64, i64* %32, align 8
  %168 = call i32 @XORI_B4_128_SB(i64 %164, i64 %165, i64 %166, i64 %167)
  %169 = load i64, i64* %25, align 8
  %170 = load i64, i64* %24, align 8
  %171 = load i64, i64* %26, align 8
  %172 = load i64, i64* %25, align 8
  %173 = load i64, i64* %27, align 8
  %174 = load i64, i64* %26, align 8
  %175 = load i64, i64* %28, align 8
  %176 = load i64, i64* %27, align 8
  %177 = load i64, i64* %40, align 8
  %178 = load i64, i64* %41, align 8
  %179 = load i64, i64* %42, align 8
  %180 = load i64, i64* %43, align 8
  %181 = call i32 @ILVR_B4_SB(i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180)
  %182 = load i64, i64* %29, align 8
  %183 = load i64, i64* %28, align 8
  %184 = load i64, i64* %30, align 8
  %185 = load i64, i64* %29, align 8
  %186 = load i64, i64* %31, align 8
  %187 = load i64, i64* %30, align 8
  %188 = load i64, i64* %32, align 8
  %189 = load i64, i64* %31, align 8
  %190 = load i64, i64* %44, align 8
  %191 = load i64, i64* %45, align 8
  %192 = load i64, i64* %46, align 8
  %193 = load i64, i64* %47, align 8
  %194 = call i32 @ILVR_B4_SB(i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193)
  %195 = load i64, i64* %40, align 8
  %196 = load i64, i64* %42, align 8
  %197 = load i64, i64* %44, align 8
  %198 = load i64, i64* %52, align 8
  %199 = load i64, i64* %53, align 8
  %200 = load i64, i64* %54, align 8
  %201 = call i64 @AVC_DOT_SH3_SH(i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200)
  store i64 %201, i64* %59, align 8
  %202 = load i64, i64* %41, align 8
  %203 = load i64, i64* %43, align 8
  %204 = load i64, i64* %45, align 8
  %205 = load i64, i64* %52, align 8
  %206 = load i64, i64* %53, align 8
  %207 = load i64, i64* %54, align 8
  %208 = call i64 @AVC_DOT_SH3_SH(i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207)
  store i64 %208, i64* %60, align 8
  %209 = load i64, i64* %42, align 8
  %210 = load i64, i64* %44, align 8
  %211 = load i64, i64* %46, align 8
  %212 = load i64, i64* %52, align 8
  %213 = load i64, i64* %53, align 8
  %214 = load i64, i64* %54, align 8
  %215 = call i64 @AVC_DOT_SH3_SH(i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214)
  store i64 %215, i64* %61, align 8
  %216 = load i64, i64* %43, align 8
  %217 = load i64, i64* %45, align 8
  %218 = load i64, i64* %47, align 8
  %219 = load i64, i64* %52, align 8
  %220 = load i64, i64* %53, align 8
  %221 = load i64, i64* %54, align 8
  %222 = call i64 @AVC_DOT_SH3_SH(i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221)
  store i64 %222, i64* %62, align 8
  %223 = load i64, i64* %59, align 8
  %224 = load i64, i64* %60, align 8
  %225 = load i64, i64* %61, align 8
  %226 = load i64, i64* %62, align 8
  %227 = call i32 @SRARI_H4_SH(i64 %223, i64 %224, i64 %225, i64 %226, i32 5)
  %228 = load i64, i64* %59, align 8
  %229 = load i64, i64* %60, align 8
  %230 = load i64, i64* %61, align 8
  %231 = load i64, i64* %62, align 8
  %232 = call i32 @SAT_SH4_SH(i64 %228, i64 %229, i64 %230, i64 %231, i32 7)
  %233 = load i64, i64* %55, align 8
  %234 = load i64, i64* %59, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i64 @__msa_srari_h(i64 %235, i32 1)
  store i64 %236, i64* %63, align 8
  %237 = load i64, i64* %56, align 8
  %238 = load i64, i64* %60, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i64 @__msa_srari_h(i64 %239, i32 1)
  store i64 %240, i64* %64, align 8
  %241 = load i64, i64* %57, align 8
  %242 = load i64, i64* %61, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i64 @__msa_srari_h(i64 %243, i32 1)
  store i64 %244, i64* %65, align 8
  %245 = load i64, i64* %58, align 8
  %246 = load i64, i64* %62, align 8
  %247 = add nsw i64 %245, %246
  %248 = call i64 @__msa_srari_h(i64 %247, i32 1)
  store i64 %248, i64* %66, align 8
  %249 = load i32*, i32** %5, align 8
  %250 = load i32, i32* %8, align 4
  %251 = load i64, i64* %20, align 8
  %252 = load i64, i64* %21, align 8
  %253 = load i64, i64* %22, align 8
  %254 = load i64, i64* %23, align 8
  %255 = call i32 @LD_SB4(i32* %249, i32 %250, i64 %251, i64 %252, i64 %253, i64 %254)
  %256 = load i64, i64* %20, align 8
  %257 = load i64, i64* %21, align 8
  %258 = load i64, i64* %22, align 8
  %259 = load i64, i64* %23, align 8
  %260 = call i32 @XORI_B4_128_SB(i64 %256, i64 %257, i64 %258, i64 %259)
  %261 = load i32*, i32** %7, align 8
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %13, align 4
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* %15, align 4
  %267 = call i32 @LD4(i32* %261, i32 %262, i32 %263, i32 %264, i32 %265, i32 %266)
  %268 = load i32, i32* %12, align 4
  %269 = load i32, i32* %13, align 4
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @INSERT_D2_UB(i32 %268, i32 %269, i32 %271)
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* %15, align 4
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @INSERT_D2_UB(i32 %273, i32 %274, i32 %276)
  %278 = load i64, i64* %63, align 8
  %279 = load i64, i64* %64, align 8
  %280 = load i64, i64* %65, align 8
  %281 = load i64, i64* %66, align 8
  %282 = call i32 @SAT_SH4_SH(i64 %278, i64 %279, i64 %280, i64 %281, i32 7)
  %283 = load i64, i64* %63, align 8
  %284 = load i64, i64* %64, align 8
  %285 = call i32 @PCKEV_XORI128_UB(i64 %283, i64 %284)
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 %285, i32* %286, align 4
  %287 = bitcast %struct.TYPE_12__* %16 to i8*
  %288 = bitcast %struct.TYPE_12__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %287, i8* align 4 %288, i64 4, i1 false)
  %289 = load i64, i64* %65, align 8
  %290 = load i64, i64* %66, align 8
  %291 = call i32 @PCKEV_XORI128_UB(i64 %289, i64 %290)
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 %291, i32* %292, align 4
  %293 = bitcast %struct.TYPE_12__* %17 to i8*
  %294 = bitcast %struct.TYPE_12__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %293, i8* align 4 %294, i64 4, i1 false)
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @AVER_UB2_UB(i32 %296, i32 %298, i32 %300, i32 %302, i32 %304, i32 %306)
  %308 = load i32*, i32** %7, align 8
  %309 = load i32, i32* %8, align 4
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @ST_D4(i32 %311, i32 %313, i32 0, i32 1, i32 0, i32 1, i32* %308, i32 %309)
  %315 = load i32, i32* %8, align 4
  %316 = mul nsw i32 4, %315
  %317 = load i32*, i32** %7, align 8
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  store i32* %319, i32** %7, align 8
  %320 = load i32*, i32** %6, align 8
  %321 = load i32, i32* %8, align 4
  %322 = load i64, i64* %33, align 8
  %323 = load i64, i64* %34, align 8
  %324 = load i64, i64* %35, align 8
  %325 = load i64, i64* %36, align 8
  %326 = call i32 @LD_SB4(i32* %320, i32 %321, i64 %322, i64 %323, i64 %324, i64 %325)
  %327 = load i64, i64* %33, align 8
  %328 = load i64, i64* %34, align 8
  %329 = load i64, i64* %35, align 8
  %330 = load i64, i64* %36, align 8
  %331 = call i32 @XORI_B4_128_SB(i64 %327, i64 %328, i64 %329, i64 %330)
  %332 = load i64, i64* %20, align 8
  %333 = load i64, i64* %20, align 8
  %334 = load i64, i64* %37, align 8
  %335 = load i64, i64* %38, align 8
  %336 = load i64, i64* %39, align 8
  %337 = call i64 @AVC_HORZ_FILTER_SH(i64 %332, i64 %333, i64 %334, i64 %335, i64 %336)
  store i64 %337, i64* %55, align 8
  %338 = load i64, i64* %21, align 8
  %339 = load i64, i64* %21, align 8
  %340 = load i64, i64* %37, align 8
  %341 = load i64, i64* %38, align 8
  %342 = load i64, i64* %39, align 8
  %343 = call i64 @AVC_HORZ_FILTER_SH(i64 %338, i64 %339, i64 %340, i64 %341, i64 %342)
  store i64 %343, i64* %56, align 8
  %344 = load i64, i64* %22, align 8
  %345 = load i64, i64* %22, align 8
  %346 = load i64, i64* %37, align 8
  %347 = load i64, i64* %38, align 8
  %348 = load i64, i64* %39, align 8
  %349 = call i64 @AVC_HORZ_FILTER_SH(i64 %344, i64 %345, i64 %346, i64 %347, i64 %348)
  store i64 %349, i64* %57, align 8
  %350 = load i64, i64* %23, align 8
  %351 = load i64, i64* %23, align 8
  %352 = load i64, i64* %37, align 8
  %353 = load i64, i64* %38, align 8
  %354 = load i64, i64* %39, align 8
  %355 = call i64 @AVC_HORZ_FILTER_SH(i64 %350, i64 %351, i64 %352, i64 %353, i64 %354)
  store i64 %355, i64* %58, align 8
  %356 = load i64, i64* %55, align 8
  %357 = load i64, i64* %56, align 8
  %358 = load i64, i64* %57, align 8
  %359 = load i64, i64* %58, align 8
  %360 = call i32 @SRARI_H4_SH(i64 %356, i64 %357, i64 %358, i64 %359, i32 5)
  %361 = load i64, i64* %55, align 8
  %362 = load i64, i64* %56, align 8
  %363 = load i64, i64* %57, align 8
  %364 = load i64, i64* %58, align 8
  %365 = call i32 @SAT_SH4_SH(i64 %361, i64 %362, i64 %363, i64 %364, i32 7)
  %366 = load i64, i64* %33, align 8
  %367 = load i64, i64* %32, align 8
  %368 = load i64, i64* %34, align 8
  %369 = load i64, i64* %33, align 8
  %370 = load i64, i64* %35, align 8
  %371 = load i64, i64* %34, align 8
  %372 = load i64, i64* %36, align 8
  %373 = load i64, i64* %35, align 8
  %374 = load i64, i64* %48, align 8
  %375 = load i64, i64* %49, align 8
  %376 = load i64, i64* %50, align 8
  %377 = load i64, i64* %51, align 8
  %378 = call i32 @ILVR_B4_SB(i64 %366, i64 %367, i64 %368, i64 %369, i64 %370, i64 %371, i64 %372, i64 %373, i64 %374, i64 %375, i64 %376, i64 %377)
  %379 = load i64, i64* %44, align 8
  %380 = load i64, i64* %46, align 8
  %381 = load i64, i64* %48, align 8
  %382 = load i64, i64* %52, align 8
  %383 = load i64, i64* %53, align 8
  %384 = load i64, i64* %54, align 8
  %385 = call i64 @AVC_DOT_SH3_SH(i64 %379, i64 %380, i64 %381, i64 %382, i64 %383, i64 %384)
  store i64 %385, i64* %59, align 8
  %386 = load i64, i64* %45, align 8
  %387 = load i64, i64* %47, align 8
  %388 = load i64, i64* %49, align 8
  %389 = load i64, i64* %52, align 8
  %390 = load i64, i64* %53, align 8
  %391 = load i64, i64* %54, align 8
  %392 = call i64 @AVC_DOT_SH3_SH(i64 %386, i64 %387, i64 %388, i64 %389, i64 %390, i64 %391)
  store i64 %392, i64* %60, align 8
  %393 = load i64, i64* %46, align 8
  %394 = load i64, i64* %48, align 8
  %395 = load i64, i64* %50, align 8
  %396 = load i64, i64* %52, align 8
  %397 = load i64, i64* %53, align 8
  %398 = load i64, i64* %54, align 8
  %399 = call i64 @AVC_DOT_SH3_SH(i64 %393, i64 %394, i64 %395, i64 %396, i64 %397, i64 %398)
  store i64 %399, i64* %61, align 8
  %400 = load i64, i64* %47, align 8
  %401 = load i64, i64* %49, align 8
  %402 = load i64, i64* %51, align 8
  %403 = load i64, i64* %52, align 8
  %404 = load i64, i64* %53, align 8
  %405 = load i64, i64* %54, align 8
  %406 = call i64 @AVC_DOT_SH3_SH(i64 %400, i64 %401, i64 %402, i64 %403, i64 %404, i64 %405)
  store i64 %406, i64* %62, align 8
  %407 = load i64, i64* %59, align 8
  %408 = load i64, i64* %60, align 8
  %409 = load i64, i64* %61, align 8
  %410 = load i64, i64* %62, align 8
  %411 = call i32 @SRARI_H4_SH(i64 %407, i64 %408, i64 %409, i64 %410, i32 5)
  %412 = load i64, i64* %59, align 8
  %413 = load i64, i64* %60, align 8
  %414 = load i64, i64* %61, align 8
  %415 = load i64, i64* %62, align 8
  %416 = call i32 @SAT_SH4_SH(i64 %412, i64 %413, i64 %414, i64 %415, i32 7)
  %417 = load i64, i64* %55, align 8
  %418 = load i64, i64* %59, align 8
  %419 = add nsw i64 %417, %418
  %420 = call i64 @__msa_srari_h(i64 %419, i32 1)
  store i64 %420, i64* %63, align 8
  %421 = load i64, i64* %56, align 8
  %422 = load i64, i64* %60, align 8
  %423 = add nsw i64 %421, %422
  %424 = call i64 @__msa_srari_h(i64 %423, i32 1)
  store i64 %424, i64* %64, align 8
  %425 = load i64, i64* %57, align 8
  %426 = load i64, i64* %61, align 8
  %427 = add nsw i64 %425, %426
  %428 = call i64 @__msa_srari_h(i64 %427, i32 1)
  store i64 %428, i64* %65, align 8
  %429 = load i64, i64* %58, align 8
  %430 = load i64, i64* %62, align 8
  %431 = add nsw i64 %429, %430
  %432 = call i64 @__msa_srari_h(i64 %431, i32 1)
  store i64 %432, i64* %66, align 8
  %433 = load i32*, i32** %7, align 8
  %434 = load i32, i32* %8, align 4
  %435 = load i32, i32* %12, align 4
  %436 = load i32, i32* %13, align 4
  %437 = load i32, i32* %14, align 4
  %438 = load i32, i32* %15, align 4
  %439 = call i32 @LD4(i32* %433, i32 %434, i32 %435, i32 %436, i32 %437, i32 %438)
  %440 = load i32, i32* %12, align 4
  %441 = load i32, i32* %13, align 4
  %442 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @INSERT_D2_UB(i32 %440, i32 %441, i32 %443)
  %445 = load i32, i32* %14, align 4
  %446 = load i32, i32* %15, align 4
  %447 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = call i32 @INSERT_D2_UB(i32 %445, i32 %446, i32 %448)
  %450 = load i64, i64* %63, align 8
  %451 = load i64, i64* %64, align 8
  %452 = load i64, i64* %65, align 8
  %453 = load i64, i64* %66, align 8
  %454 = call i32 @SAT_SH4_SH(i64 %450, i64 %451, i64 %452, i64 %453, i32 7)
  %455 = load i64, i64* %63, align 8
  %456 = load i64, i64* %64, align 8
  %457 = call i32 @PCKEV_XORI128_UB(i64 %455, i64 %456)
  %458 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i32 %457, i32* %458, align 4
  %459 = bitcast %struct.TYPE_12__* %16 to i8*
  %460 = bitcast %struct.TYPE_12__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %459, i8* align 4 %460, i64 4, i1 false)
  %461 = load i64, i64* %65, align 8
  %462 = load i64, i64* %66, align 8
  %463 = call i32 @PCKEV_XORI128_UB(i64 %461, i64 %462)
  %464 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %463, i32* %464, align 4
  %465 = bitcast %struct.TYPE_12__* %17 to i8*
  %466 = bitcast %struct.TYPE_12__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %465, i8* align 4 %466, i64 4, i1 false)
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %478 = load i32, i32* %477, align 4
  %479 = call i32 @AVER_UB2_UB(i32 %468, i32 %470, i32 %472, i32 %474, i32 %476, i32 %478)
  %480 = load i32*, i32** %7, align 8
  %481 = load i32, i32* %8, align 4
  %482 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @ST_D4(i32 %483, i32 %485, i32 0, i32 1, i32 0, i32 1, i32* %480, i32 %481)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @__msa_fill_h(i32) #2

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #2

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #2

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #2

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #2

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #2

declare dso_local i64 @AVC_HORZ_FILTER_SH(i64, i64, i64, i64, i64) #2

declare dso_local i32 @SRARI_H4_SH(i64, i64, i64, i64, i32) #2

declare dso_local i32 @SAT_SH4_SH(i64, i64, i64, i64, i32) #2

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @AVC_DOT_SH3_SH(i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @__msa_srari_h(i64, i32) #2

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_D2_UB(i32, i32, i32) #2

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @AVER_UB2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
