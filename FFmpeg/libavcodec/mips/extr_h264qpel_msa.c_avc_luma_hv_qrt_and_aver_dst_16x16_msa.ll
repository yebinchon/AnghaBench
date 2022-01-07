; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_avc_luma_hv_qrt_and_aver_dst_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_avc_luma_hv_qrt_and_aver_dst_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@luma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @avc_luma_hv_qrt_and_aver_dst_16x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_luma_hv_qrt_and_aver_dst_16x16_msa(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_12__, align 4
  %22 = alloca %struct.TYPE_12__, align 4
  %23 = alloca %struct.TYPE_12__, align 4
  %24 = alloca %struct.TYPE_12__, align 4
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
  %64 = alloca %struct.TYPE_12__, align 4
  %65 = alloca %struct.TYPE_12__, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 64257, i32* %9, align 4
  store i32 5140, i32* %10, align 4
  store i32 507, i32* %11, align 4
  %66 = load i32*, i32** %5, align 8
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %6, align 8
  store i32* %67, i32** %13, align 8
  %68 = load i32*, i32** %7, align 8
  store i32* %68, i32** %14, align 8
  %69 = bitcast %struct.TYPE_12__* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %69, i8 0, i64 4, i1 false)
  %70 = bitcast %struct.TYPE_12__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %70, i8 0, i64 4, i1 false)
  %71 = call i64 @__msa_fill_h(i32 64257)
  store i64 %71, i64* %49, align 8
  %72 = call i64 @__msa_fill_h(i32 5140)
  store i64 %72, i64* %50, align 8
  %73 = call i64 @__msa_fill_h(i32 507)
  store i64 %73, i64* %51, align 8
  %74 = load i32*, i32** @luma_mask_arr, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i64, i64* %29, align 8
  %77 = load i64, i64* %30, align 8
  %78 = load i64, i64* %31, align 8
  %79 = call i32 @LD_SB3(i32* %75, i32 16, i64 %76, i64 %77, i64 %78)
  store i32 2, i32* %15, align 4
  br label %80

80:                                               ; preds = %324, %4
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %15, align 4
  %83 = icmp ne i32 %81, 0
  br i1 %83, label %84, label %331

84:                                               ; preds = %80
  %85 = load i32*, i32** %12, align 8
  store i32* %85, i32** %5, align 8
  %86 = load i32*, i32** %13, align 8
  store i32* %86, i32** %6, align 8
  %87 = load i32*, i32** %14, align 8
  store i32* %87, i32** %7, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i64, i64* %32, align 8
  %91 = load i64, i64* %33, align 8
  %92 = load i64, i64* %34, align 8
  %93 = load i64, i64* %35, align 8
  %94 = load i64, i64* %36, align 8
  %95 = call i32 @LD_SB5(i32* %88, i32 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94)
  %96 = load i32, i32* %8, align 4
  %97 = mul nsw i32 5, %96
  %98 = load i32*, i32** %6, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %6, align 8
  %101 = load i64, i64* %32, align 8
  %102 = load i64, i64* %33, align 8
  %103 = load i64, i64* %34, align 8
  %104 = load i64, i64* %35, align 8
  %105 = load i64, i64* %36, align 8
  %106 = call i32 @XORI_B5_128_SB(i64 %101, i64 %102, i64 %103, i64 %104, i64 %105)
  store i32 4, i32* %16, align 4
  br label %107

107:                                              ; preds = %111, %84
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %16, align 4
  %110 = icmp ne i32 %108, 0
  br i1 %110, label %111, label %324

111:                                              ; preds = %107
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i64, i64* %25, align 8
  %115 = load i64, i64* %26, align 8
  %116 = load i64, i64* %27, align 8
  %117 = load i64, i64* %28, align 8
  %118 = call i32 @LD_SB4(i32* %112, i32 %113, i64 %114, i64 %115, i64 %116, i64 %117)
  %119 = load i64, i64* %25, align 8
  %120 = load i64, i64* %26, align 8
  %121 = load i64, i64* %27, align 8
  %122 = load i64, i64* %28, align 8
  %123 = call i32 @XORI_B4_128_SB(i64 %119, i64 %120, i64 %121, i64 %122)
  %124 = load i32, i32* %8, align 4
  %125 = mul nsw i32 4, %124
  %126 = load i32*, i32** %5, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %5, align 8
  %129 = load i64, i64* %25, align 8
  %130 = load i64, i64* %25, align 8
  %131 = load i64, i64* %29, align 8
  %132 = load i64, i64* %30, align 8
  %133 = load i64, i64* %31, align 8
  %134 = call i64 @AVC_HORZ_FILTER_SH(i64 %129, i64 %130, i64 %131, i64 %132, i64 %133)
  store i64 %134, i64* %52, align 8
  %135 = load i64, i64* %26, align 8
  %136 = load i64, i64* %26, align 8
  %137 = load i64, i64* %29, align 8
  %138 = load i64, i64* %30, align 8
  %139 = load i64, i64* %31, align 8
  %140 = call i64 @AVC_HORZ_FILTER_SH(i64 %135, i64 %136, i64 %137, i64 %138, i64 %139)
  store i64 %140, i64* %53, align 8
  %141 = load i64, i64* %27, align 8
  %142 = load i64, i64* %27, align 8
  %143 = load i64, i64* %29, align 8
  %144 = load i64, i64* %30, align 8
  %145 = load i64, i64* %31, align 8
  %146 = call i64 @AVC_HORZ_FILTER_SH(i64 %141, i64 %142, i64 %143, i64 %144, i64 %145)
  store i64 %146, i64* %54, align 8
  %147 = load i64, i64* %28, align 8
  %148 = load i64, i64* %28, align 8
  %149 = load i64, i64* %29, align 8
  %150 = load i64, i64* %30, align 8
  %151 = load i64, i64* %31, align 8
  %152 = call i64 @AVC_HORZ_FILTER_SH(i64 %147, i64 %148, i64 %149, i64 %150, i64 %151)
  store i64 %152, i64* %55, align 8
  %153 = load i64, i64* %52, align 8
  %154 = load i64, i64* %53, align 8
  %155 = load i64, i64* %54, align 8
  %156 = load i64, i64* %55, align 8
  %157 = call i32 @SRARI_H4_SH(i64 %153, i64 %154, i64 %155, i64 %156, i32 5)
  %158 = load i64, i64* %52, align 8
  %159 = load i64, i64* %53, align 8
  %160 = load i64, i64* %54, align 8
  %161 = load i64, i64* %55, align 8
  %162 = call i32 @SAT_SH4_SH(i64 %158, i64 %159, i64 %160, i64 %161, i32 7)
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i64, i64* %37, align 8
  %166 = load i64, i64* %38, align 8
  %167 = load i64, i64* %39, align 8
  %168 = load i64, i64* %40, align 8
  %169 = call i32 @LD_SB4(i32* %163, i32 %164, i64 %165, i64 %166, i64 %167, i64 %168)
  %170 = load i32, i32* %8, align 4
  %171 = mul nsw i32 4, %170
  %172 = load i32*, i32** %6, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %6, align 8
  %175 = load i64, i64* %37, align 8
  %176 = load i64, i64* %38, align 8
  %177 = load i64, i64* %39, align 8
  %178 = load i64, i64* %40, align 8
  %179 = call i32 @XORI_B4_128_SB(i64 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i64, i64* %33, align 8
  %181 = load i64, i64* %32, align 8
  %182 = load i64, i64* %34, align 8
  %183 = load i64, i64* %33, align 8
  %184 = load i64, i64* %35, align 8
  %185 = load i64, i64* %34, align 8
  %186 = load i64, i64* %36, align 8
  %187 = load i64, i64* %35, align 8
  %188 = load i64, i64* %41, align 8
  %189 = load i64, i64* %42, align 8
  %190 = load i64, i64* %43, align 8
  %191 = load i64, i64* %44, align 8
  %192 = call i32 @ILVR_B4_SB(i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191)
  %193 = load i64, i64* %37, align 8
  %194 = load i64, i64* %36, align 8
  %195 = load i64, i64* %38, align 8
  %196 = load i64, i64* %37, align 8
  %197 = load i64, i64* %39, align 8
  %198 = load i64, i64* %38, align 8
  %199 = load i64, i64* %40, align 8
  %200 = load i64, i64* %39, align 8
  %201 = load i64, i64* %45, align 8
  %202 = load i64, i64* %46, align 8
  %203 = load i64, i64* %47, align 8
  %204 = load i64, i64* %48, align 8
  %205 = call i32 @ILVR_B4_SB(i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204)
  %206 = load i64, i64* %41, align 8
  %207 = load i64, i64* %43, align 8
  %208 = load i64, i64* %45, align 8
  %209 = load i64, i64* %49, align 8
  %210 = load i64, i64* %50, align 8
  %211 = load i64, i64* %51, align 8
  %212 = call i64 @AVC_DOT_SH3_SH(i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211)
  store i64 %212, i64* %56, align 8
  %213 = load i64, i64* %42, align 8
  %214 = load i64, i64* %44, align 8
  %215 = load i64, i64* %46, align 8
  %216 = load i64, i64* %49, align 8
  %217 = load i64, i64* %50, align 8
  %218 = load i64, i64* %51, align 8
  %219 = call i64 @AVC_DOT_SH3_SH(i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218)
  store i64 %219, i64* %57, align 8
  %220 = load i64, i64* %43, align 8
  %221 = load i64, i64* %45, align 8
  %222 = load i64, i64* %47, align 8
  %223 = load i64, i64* %49, align 8
  %224 = load i64, i64* %50, align 8
  %225 = load i64, i64* %51, align 8
  %226 = call i64 @AVC_DOT_SH3_SH(i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225)
  store i64 %226, i64* %58, align 8
  %227 = load i64, i64* %44, align 8
  %228 = load i64, i64* %46, align 8
  %229 = load i64, i64* %48, align 8
  %230 = load i64, i64* %49, align 8
  %231 = load i64, i64* %50, align 8
  %232 = load i64, i64* %51, align 8
  %233 = call i64 @AVC_DOT_SH3_SH(i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232)
  store i64 %233, i64* %59, align 8
  %234 = load i64, i64* %56, align 8
  %235 = load i64, i64* %57, align 8
  %236 = load i64, i64* %58, align 8
  %237 = load i64, i64* %59, align 8
  %238 = call i32 @SRARI_H4_SH(i64 %234, i64 %235, i64 %236, i64 %237, i32 5)
  %239 = load i64, i64* %56, align 8
  %240 = load i64, i64* %57, align 8
  %241 = load i64, i64* %58, align 8
  %242 = load i64, i64* %59, align 8
  %243 = call i32 @SAT_SH4_SH(i64 %239, i64 %240, i64 %241, i64 %242, i32 7)
  %244 = load i64, i64* %52, align 8
  %245 = load i64, i64* %56, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i64 @__msa_srari_h(i64 %246, i32 1)
  store i64 %247, i64* %60, align 8
  %248 = load i64, i64* %53, align 8
  %249 = load i64, i64* %57, align 8
  %250 = add nsw i64 %248, %249
  %251 = call i64 @__msa_srari_h(i64 %250, i32 1)
  store i64 %251, i64* %61, align 8
  %252 = load i64, i64* %54, align 8
  %253 = load i64, i64* %58, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i64 @__msa_srari_h(i64 %254, i32 1)
  store i64 %255, i64* %62, align 8
  %256 = load i64, i64* %55, align 8
  %257 = load i64, i64* %59, align 8
  %258 = add nsw i64 %256, %257
  %259 = call i64 @__msa_srari_h(i64 %258, i32 1)
  store i64 %259, i64* %63, align 8
  %260 = load i32*, i32** %7, align 8
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* %18, align 4
  %264 = load i32, i32* %19, align 4
  %265 = load i32, i32* %20, align 4
  %266 = call i32 @LD4(i32* %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265)
  %267 = load i32, i32* %17, align 4
  %268 = load i32, i32* %18, align 4
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @INSERT_D2_UB(i32 %267, i32 %268, i32 %270)
  %272 = load i32, i32* %19, align 4
  %273 = load i32, i32* %20, align 4
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @INSERT_D2_UB(i32 %272, i32 %273, i32 %275)
  %277 = load i64, i64* %60, align 8
  %278 = load i64, i64* %61, align 8
  %279 = load i64, i64* %62, align 8
  %280 = load i64, i64* %63, align 8
  %281 = call i32 @SAT_SH4_SH(i64 %277, i64 %278, i64 %279, i64 %280, i32 7)
  %282 = load i64, i64* %60, align 8
  %283 = load i64, i64* %61, align 8
  %284 = call i32 @PCKEV_XORI128_UB(i64 %282, i64 %283)
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32 %284, i32* %285, align 4
  %286 = bitcast %struct.TYPE_12__* %21 to i8*
  %287 = bitcast %struct.TYPE_12__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %286, i8* align 4 %287, i64 4, i1 false)
  %288 = load i64, i64* %62, align 8
  %289 = load i64, i64* %63, align 8
  %290 = call i32 @PCKEV_XORI128_UB(i64 %288, i64 %289)
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i32 %290, i32* %291, align 4
  %292 = bitcast %struct.TYPE_12__* %22 to i8*
  %293 = bitcast %struct.TYPE_12__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %292, i8* align 4 %293, i64 4, i1 false)
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @AVER_UB2_UB(i32 %295, i32 %297, i32 %299, i32 %301, i32 %303, i32 %305)
  %307 = load i32*, i32** %7, align 8
  %308 = load i32, i32* %8, align 4
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @ST_D4(i32 %310, i32 %312, i32 0, i32 1, i32 0, i32 1, i32* %307, i32 %308)
  %314 = load i32, i32* %8, align 4
  %315 = mul nsw i32 4, %314
  %316 = load i32*, i32** %7, align 8
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32* %318, i32** %7, align 8
  %319 = load i64, i64* %36, align 8
  store i64 %319, i64* %32, align 8
  %320 = load i64, i64* %37, align 8
  store i64 %320, i64* %33, align 8
  %321 = load i64, i64* %38, align 8
  store i64 %321, i64* %34, align 8
  %322 = load i64, i64* %39, align 8
  store i64 %322, i64* %35, align 8
  %323 = load i64, i64* %40, align 8
  store i64 %323, i64* %36, align 8
  br label %107

324:                                              ; preds = %107
  %325 = load i32*, i32** %12, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 8
  store i32* %326, i32** %12, align 8
  %327 = load i32*, i32** %13, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 8
  store i32* %328, i32** %13, align 8
  %329 = load i32*, i32** %14, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 8
  store i32* %330, i32** %14, align 8
  br label %80

331:                                              ; preds = %80
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
