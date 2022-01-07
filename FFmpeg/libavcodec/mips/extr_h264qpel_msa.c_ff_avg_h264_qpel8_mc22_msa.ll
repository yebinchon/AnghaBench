; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel8_mc22_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel8_mc22_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_h264_qpel8_mc22_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__, align 4
  %15 = alloca %struct.TYPE_12__, align 4
  %16 = alloca %struct.TYPE_12__, align 4
  %17 = alloca %struct.TYPE_12__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
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
  %67 = alloca i64, align 8
  %68 = alloca i64, align 8
  %69 = alloca i64, align 8
  %70 = alloca i64, align 8
  %71 = alloca i64, align 8
  %72 = alloca %struct.TYPE_12__, align 4
  %73 = alloca %struct.TYPE_12__, align 4
  %74 = alloca %struct.TYPE_12__, align 4
  %75 = alloca %struct.TYPE_12__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -327679, i32* %7, align 4
  store i32 1310740, i32* %8, align 4
  store i32 131067, i32* %9, align 4
  %76 = bitcast %struct.TYPE_12__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %76, i8 0, i64 4, i1 false)
  %77 = bitcast %struct.TYPE_12__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %77, i8 0, i64 4, i1 false)
  %78 = call i64 @__msa_fill_w(i32 -327679)
  store i64 %78, i64* %67, align 8
  %79 = call i64 @__msa_fill_w(i32 1310740)
  store i64 %79, i64* %68, align 8
  %80 = call i64 @__msa_fill_w(i32 131067)
  store i64 %80, i64* %69, align 8
  %81 = load i32*, i32** @luma_mask_arr, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %23, align 4
  %84 = load i32, i32* %24, align 4
  %85 = load i32, i32* %25, align 4
  %86 = call i32 @LD_SB3(i32* %82, i32 16, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = mul nsw i32 2, %87
  %89 = add nsw i32 %88, 2
  %90 = load i32*, i32** %5, align 8
  %91 = sext i32 %89 to i64
  %92 = sub i64 0, %91
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32* %93, i32** %5, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %22, align 4
  %101 = call i32 @LD_SB5(i32* %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %22, align 4
  %107 = call i32 @XORI_B5_128_SB(i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = mul nsw i32 5, %108
  %110 = load i32*, i32** %5, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %5, align 8
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* %25, align 4
  %118 = call i64 @AVC_HORZ_FILTER_SH(i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store i64 %118, i64* %26, align 8
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %23, align 4
  %122 = load i32, i32* %24, align 4
  %123 = load i32, i32* %25, align 4
  %124 = call i64 @AVC_HORZ_FILTER_SH(i32 %119, i32 %120, i32 %121, i32 %122, i32 %123)
  store i64 %124, i64* %27, align 8
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %25, align 4
  %130 = call i64 @AVC_HORZ_FILTER_SH(i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  store i64 %130, i64* %28, align 8
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* %24, align 4
  %135 = load i32, i32* %25, align 4
  %136 = call i64 @AVC_HORZ_FILTER_SH(i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  store i64 %136, i64* %29, align 8
  %137 = load i32, i32* %22, align 4
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* %24, align 4
  %141 = load i32, i32* %25, align 4
  %142 = call i64 @AVC_HORZ_FILTER_SH(i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  store i64 %142, i64* %30, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %21, align 4
  %149 = call i32 @LD_SB4(i32* %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %21, align 4
  %154 = call i32 @XORI_B4_128_SB(i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %6, align 4
  %156 = mul nsw i32 4, %155
  %157 = load i32*, i32** %5, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %5, align 8
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* %23, align 4
  %163 = load i32, i32* %24, align 4
  %164 = load i32, i32* %25, align 4
  %165 = call i64 @AVC_HORZ_FILTER_SH(i32 %160, i32 %161, i32 %162, i32 %163, i32 %164)
  store i64 %165, i64* %31, align 8
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* %24, align 4
  %170 = load i32, i32* %25, align 4
  %171 = call i64 @AVC_HORZ_FILTER_SH(i32 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  store i64 %171, i64* %32, align 8
  %172 = load i32, i32* %20, align 4
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %23, align 4
  %175 = load i32, i32* %24, align 4
  %176 = load i32, i32* %25, align 4
  %177 = call i64 @AVC_HORZ_FILTER_SH(i32 %172, i32 %173, i32 %174, i32 %175, i32 %176)
  store i64 %177, i64* %33, align 8
  %178 = load i32, i32* %21, align 4
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* %23, align 4
  %181 = load i32, i32* %24, align 4
  %182 = load i32, i32* %25, align 4
  %183 = call i64 @AVC_HORZ_FILTER_SH(i32 %178, i32 %179, i32 %180, i32 %181, i32 %182)
  store i64 %183, i64* %34, align 8
  %184 = load i64, i64* %27, align 8
  %185 = load i64, i64* %26, align 8
  %186 = load i64, i64* %28, align 8
  %187 = load i64, i64* %27, align 8
  %188 = load i64, i64* %29, align 8
  %189 = load i64, i64* %28, align 8
  %190 = load i64, i64* %30, align 8
  %191 = load i64, i64* %29, align 8
  %192 = load i64, i64* %39, align 8
  %193 = load i64, i64* %40, align 8
  %194 = load i64, i64* %41, align 8
  %195 = load i64, i64* %42, align 8
  %196 = call i32 @ILVR_H4_SH(i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195)
  %197 = load i64, i64* %27, align 8
  %198 = load i64, i64* %26, align 8
  %199 = load i64, i64* %28, align 8
  %200 = load i64, i64* %27, align 8
  %201 = load i64, i64* %29, align 8
  %202 = load i64, i64* %28, align 8
  %203 = load i64, i64* %30, align 8
  %204 = load i64, i64* %29, align 8
  %205 = load i64, i64* %55, align 8
  %206 = load i64, i64* %56, align 8
  %207 = load i64, i64* %57, align 8
  %208 = load i64, i64* %58, align 8
  %209 = call i32 @ILVL_H4_SH(i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208)
  %210 = load i64, i64* %31, align 8
  %211 = load i64, i64* %30, align 8
  %212 = load i64, i64* %32, align 8
  %213 = load i64, i64* %31, align 8
  %214 = load i64, i64* %33, align 8
  %215 = load i64, i64* %32, align 8
  %216 = load i64, i64* %34, align 8
  %217 = load i64, i64* %33, align 8
  %218 = load i64, i64* %43, align 8
  %219 = load i64, i64* %44, align 8
  %220 = load i64, i64* %45, align 8
  %221 = load i64, i64* %46, align 8
  %222 = call i32 @ILVR_H4_SH(i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221)
  %223 = load i64, i64* %31, align 8
  %224 = load i64, i64* %30, align 8
  %225 = load i64, i64* %32, align 8
  %226 = load i64, i64* %31, align 8
  %227 = load i64, i64* %33, align 8
  %228 = load i64, i64* %32, align 8
  %229 = load i64, i64* %34, align 8
  %230 = load i64, i64* %33, align 8
  %231 = load i64, i64* %59, align 8
  %232 = load i64, i64* %60, align 8
  %233 = load i64, i64* %61, align 8
  %234 = load i64, i64* %62, align 8
  %235 = call i32 @ILVL_H4_SH(i64 %223, i64 %224, i64 %225, i64 %226, i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234)
  %236 = load i64, i64* %39, align 8
  %237 = load i64, i64* %41, align 8
  %238 = load i64, i64* %43, align 8
  %239 = load i64, i64* %67, align 8
  %240 = load i64, i64* %68, align 8
  %241 = load i64, i64* %69, align 8
  %242 = call i64 @AVC_DOT_SW3_SW(i64 %236, i64 %237, i64 %238, i64 %239, i64 %240, i64 %241)
  store i64 %242, i64* %70, align 8
  %243 = load i64, i64* %55, align 8
  %244 = load i64, i64* %57, align 8
  %245 = load i64, i64* %59, align 8
  %246 = load i64, i64* %67, align 8
  %247 = load i64, i64* %68, align 8
  %248 = load i64, i64* %69, align 8
  %249 = call i64 @AVC_DOT_SW3_SW(i64 %243, i64 %244, i64 %245, i64 %246, i64 %247, i64 %248)
  store i64 %249, i64* %71, align 8
  %250 = load i64, i64* %71, align 8
  %251 = load i64, i64* %70, align 8
  %252 = call i64 @__msa_pckev_h(i64 %250, i64 %251)
  store i64 %252, i64* %51, align 8
  %253 = load i64, i64* %40, align 8
  %254 = load i64, i64* %42, align 8
  %255 = load i64, i64* %44, align 8
  %256 = load i64, i64* %67, align 8
  %257 = load i64, i64* %68, align 8
  %258 = load i64, i64* %69, align 8
  %259 = call i64 @AVC_DOT_SW3_SW(i64 %253, i64 %254, i64 %255, i64 %256, i64 %257, i64 %258)
  store i64 %259, i64* %70, align 8
  %260 = load i64, i64* %56, align 8
  %261 = load i64, i64* %58, align 8
  %262 = load i64, i64* %60, align 8
  %263 = load i64, i64* %67, align 8
  %264 = load i64, i64* %68, align 8
  %265 = load i64, i64* %69, align 8
  %266 = call i64 @AVC_DOT_SW3_SW(i64 %260, i64 %261, i64 %262, i64 %263, i64 %264, i64 %265)
  store i64 %266, i64* %71, align 8
  %267 = load i64, i64* %71, align 8
  %268 = load i64, i64* %70, align 8
  %269 = call i64 @__msa_pckev_h(i64 %267, i64 %268)
  store i64 %269, i64* %52, align 8
  %270 = load i64, i64* %41, align 8
  %271 = load i64, i64* %43, align 8
  %272 = load i64, i64* %45, align 8
  %273 = load i64, i64* %67, align 8
  %274 = load i64, i64* %68, align 8
  %275 = load i64, i64* %69, align 8
  %276 = call i64 @AVC_DOT_SW3_SW(i64 %270, i64 %271, i64 %272, i64 %273, i64 %274, i64 %275)
  store i64 %276, i64* %70, align 8
  %277 = load i64, i64* %57, align 8
  %278 = load i64, i64* %59, align 8
  %279 = load i64, i64* %61, align 8
  %280 = load i64, i64* %67, align 8
  %281 = load i64, i64* %68, align 8
  %282 = load i64, i64* %69, align 8
  %283 = call i64 @AVC_DOT_SW3_SW(i64 %277, i64 %278, i64 %279, i64 %280, i64 %281, i64 %282)
  store i64 %283, i64* %71, align 8
  %284 = load i64, i64* %71, align 8
  %285 = load i64, i64* %70, align 8
  %286 = call i64 @__msa_pckev_h(i64 %284, i64 %285)
  store i64 %286, i64* %53, align 8
  %287 = load i64, i64* %42, align 8
  %288 = load i64, i64* %44, align 8
  %289 = load i64, i64* %46, align 8
  %290 = load i64, i64* %67, align 8
  %291 = load i64, i64* %68, align 8
  %292 = load i64, i64* %69, align 8
  %293 = call i64 @AVC_DOT_SW3_SW(i64 %287, i64 %288, i64 %289, i64 %290, i64 %291, i64 %292)
  store i64 %293, i64* %70, align 8
  %294 = load i64, i64* %58, align 8
  %295 = load i64, i64* %60, align 8
  %296 = load i64, i64* %62, align 8
  %297 = load i64, i64* %67, align 8
  %298 = load i64, i64* %68, align 8
  %299 = load i64, i64* %69, align 8
  %300 = call i64 @AVC_DOT_SW3_SW(i64 %294, i64 %295, i64 %296, i64 %297, i64 %298, i64 %299)
  store i64 %300, i64* %71, align 8
  %301 = load i64, i64* %71, align 8
  %302 = load i64, i64* %70, align 8
  %303 = call i64 @__msa_pckev_h(i64 %301, i64 %302)
  store i64 %303, i64* %54, align 8
  %304 = load i32*, i32** %4, align 8
  %305 = load i32, i32* %6, align 4
  %306 = load i32, i32* %10, align 4
  %307 = load i32, i32* %11, align 4
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* %13, align 4
  %310 = call i32 @LD4(i32* %304, i32 %305, i32 %306, i32 %307, i32 %308, i32 %309)
  %311 = load i32, i32* %10, align 4
  %312 = load i32, i32* %11, align 4
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @INSERT_D2_UB(i32 %311, i32 %312, i32 %314)
  %316 = load i32, i32* %12, align 4
  %317 = load i32, i32* %13, align 4
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @INSERT_D2_UB(i32 %316, i32 %317, i32 %319)
  %321 = load i64, i64* %51, align 8
  %322 = load i64, i64* %52, align 8
  %323 = call i32 @PCKEV_XORI128_UB(i64 %321, i64 %322)
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i32 %323, i32* %324, align 4
  %325 = bitcast %struct.TYPE_12__* %14 to i8*
  %326 = bitcast %struct.TYPE_12__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %325, i8* align 4 %326, i64 4, i1 false)
  %327 = load i64, i64* %53, align 8
  %328 = load i64, i64* %54, align 8
  %329 = call i32 @PCKEV_XORI128_UB(i64 %327, i64 %328)
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %329, i32* %330, align 4
  %331 = bitcast %struct.TYPE_12__* %15 to i8*
  %332 = bitcast %struct.TYPE_12__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %331, i8* align 4 %332, i64 4, i1 false)
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @AVER_UB2_UB(i32 %334, i32 %336, i32 %338, i32 %340, i32 %342, i32 %344)
  %346 = load i32*, i32** %4, align 8
  %347 = load i32, i32* %6, align 4
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @ST_D4(i32 %349, i32 %351, i32 0, i32 1, i32 0, i32 1, i32* %346, i32 %347)
  %353 = load i32, i32* %6, align 4
  %354 = mul nsw i32 4, %353
  %355 = load i32*, i32** %4, align 8
  %356 = sext i32 %354 to i64
  %357 = getelementptr inbounds i32, i32* %355, i64 %356
  store i32* %357, i32** %4, align 8
  %358 = load i32*, i32** %5, align 8
  %359 = load i32, i32* %6, align 4
  %360 = load i32, i32* %18, align 4
  %361 = load i32, i32* %19, align 4
  %362 = load i32, i32* %20, align 4
  %363 = load i32, i32* %21, align 4
  %364 = call i32 @LD_SB4(i32* %358, i32 %359, i32 %360, i32 %361, i32 %362, i32 %363)
  %365 = load i32, i32* %18, align 4
  %366 = load i32, i32* %19, align 4
  %367 = load i32, i32* %20, align 4
  %368 = load i32, i32* %21, align 4
  %369 = call i32 @XORI_B4_128_SB(i32 %365, i32 %366, i32 %367, i32 %368)
  %370 = load i32, i32* %18, align 4
  %371 = load i32, i32* %18, align 4
  %372 = load i32, i32* %23, align 4
  %373 = load i32, i32* %24, align 4
  %374 = load i32, i32* %25, align 4
  %375 = call i64 @AVC_HORZ_FILTER_SH(i32 %370, i32 %371, i32 %372, i32 %373, i32 %374)
  store i64 %375, i64* %35, align 8
  %376 = load i32, i32* %19, align 4
  %377 = load i32, i32* %19, align 4
  %378 = load i32, i32* %23, align 4
  %379 = load i32, i32* %24, align 4
  %380 = load i32, i32* %25, align 4
  %381 = call i64 @AVC_HORZ_FILTER_SH(i32 %376, i32 %377, i32 %378, i32 %379, i32 %380)
  store i64 %381, i64* %36, align 8
  %382 = load i32, i32* %20, align 4
  %383 = load i32, i32* %20, align 4
  %384 = load i32, i32* %23, align 4
  %385 = load i32, i32* %24, align 4
  %386 = load i32, i32* %25, align 4
  %387 = call i64 @AVC_HORZ_FILTER_SH(i32 %382, i32 %383, i32 %384, i32 %385, i32 %386)
  store i64 %387, i64* %37, align 8
  %388 = load i32, i32* %21, align 4
  %389 = load i32, i32* %21, align 4
  %390 = load i32, i32* %23, align 4
  %391 = load i32, i32* %24, align 4
  %392 = load i32, i32* %25, align 4
  %393 = call i64 @AVC_HORZ_FILTER_SH(i32 %388, i32 %389, i32 %390, i32 %391, i32 %392)
  store i64 %393, i64* %38, align 8
  %394 = load i64, i64* %35, align 8
  %395 = load i64, i64* %34, align 8
  %396 = load i64, i64* %36, align 8
  %397 = load i64, i64* %35, align 8
  %398 = load i64, i64* %37, align 8
  %399 = load i64, i64* %36, align 8
  %400 = load i64, i64* %38, align 8
  %401 = load i64, i64* %37, align 8
  %402 = load i64, i64* %47, align 8
  %403 = load i64, i64* %48, align 8
  %404 = load i64, i64* %49, align 8
  %405 = load i64, i64* %50, align 8
  %406 = call i32 @ILVR_H4_SH(i64 %394, i64 %395, i64 %396, i64 %397, i64 %398, i64 %399, i64 %400, i64 %401, i64 %402, i64 %403, i64 %404, i64 %405)
  %407 = load i64, i64* %35, align 8
  %408 = load i64, i64* %34, align 8
  %409 = load i64, i64* %36, align 8
  %410 = load i64, i64* %35, align 8
  %411 = load i64, i64* %37, align 8
  %412 = load i64, i64* %36, align 8
  %413 = load i64, i64* %38, align 8
  %414 = load i64, i64* %37, align 8
  %415 = load i64, i64* %63, align 8
  %416 = load i64, i64* %64, align 8
  %417 = load i64, i64* %65, align 8
  %418 = load i64, i64* %66, align 8
  %419 = call i32 @ILVL_H4_SH(i64 %407, i64 %408, i64 %409, i64 %410, i64 %411, i64 %412, i64 %413, i64 %414, i64 %415, i64 %416, i64 %417, i64 %418)
  %420 = load i64, i64* %43, align 8
  %421 = load i64, i64* %45, align 8
  %422 = load i64, i64* %47, align 8
  %423 = load i64, i64* %67, align 8
  %424 = load i64, i64* %68, align 8
  %425 = load i64, i64* %69, align 8
  %426 = call i64 @AVC_DOT_SW3_SW(i64 %420, i64 %421, i64 %422, i64 %423, i64 %424, i64 %425)
  store i64 %426, i64* %70, align 8
  %427 = load i64, i64* %59, align 8
  %428 = load i64, i64* %61, align 8
  %429 = load i64, i64* %63, align 8
  %430 = load i64, i64* %67, align 8
  %431 = load i64, i64* %68, align 8
  %432 = load i64, i64* %69, align 8
  %433 = call i64 @AVC_DOT_SW3_SW(i64 %427, i64 %428, i64 %429, i64 %430, i64 %431, i64 %432)
  store i64 %433, i64* %71, align 8
  %434 = load i64, i64* %71, align 8
  %435 = load i64, i64* %70, align 8
  %436 = call i64 @__msa_pckev_h(i64 %434, i64 %435)
  store i64 %436, i64* %51, align 8
  %437 = load i64, i64* %44, align 8
  %438 = load i64, i64* %46, align 8
  %439 = load i64, i64* %48, align 8
  %440 = load i64, i64* %67, align 8
  %441 = load i64, i64* %68, align 8
  %442 = load i64, i64* %69, align 8
  %443 = call i64 @AVC_DOT_SW3_SW(i64 %437, i64 %438, i64 %439, i64 %440, i64 %441, i64 %442)
  store i64 %443, i64* %70, align 8
  %444 = load i64, i64* %60, align 8
  %445 = load i64, i64* %62, align 8
  %446 = load i64, i64* %64, align 8
  %447 = load i64, i64* %67, align 8
  %448 = load i64, i64* %68, align 8
  %449 = load i64, i64* %69, align 8
  %450 = call i64 @AVC_DOT_SW3_SW(i64 %444, i64 %445, i64 %446, i64 %447, i64 %448, i64 %449)
  store i64 %450, i64* %71, align 8
  %451 = load i64, i64* %71, align 8
  %452 = load i64, i64* %70, align 8
  %453 = call i64 @__msa_pckev_h(i64 %451, i64 %452)
  store i64 %453, i64* %52, align 8
  %454 = load i64, i64* %45, align 8
  %455 = load i64, i64* %47, align 8
  %456 = load i64, i64* %49, align 8
  %457 = load i64, i64* %67, align 8
  %458 = load i64, i64* %68, align 8
  %459 = load i64, i64* %69, align 8
  %460 = call i64 @AVC_DOT_SW3_SW(i64 %454, i64 %455, i64 %456, i64 %457, i64 %458, i64 %459)
  store i64 %460, i64* %70, align 8
  %461 = load i64, i64* %61, align 8
  %462 = load i64, i64* %63, align 8
  %463 = load i64, i64* %65, align 8
  %464 = load i64, i64* %67, align 8
  %465 = load i64, i64* %68, align 8
  %466 = load i64, i64* %69, align 8
  %467 = call i64 @AVC_DOT_SW3_SW(i64 %461, i64 %462, i64 %463, i64 %464, i64 %465, i64 %466)
  store i64 %467, i64* %71, align 8
  %468 = load i64, i64* %71, align 8
  %469 = load i64, i64* %70, align 8
  %470 = call i64 @__msa_pckev_h(i64 %468, i64 %469)
  store i64 %470, i64* %53, align 8
  %471 = load i64, i64* %46, align 8
  %472 = load i64, i64* %48, align 8
  %473 = load i64, i64* %50, align 8
  %474 = load i64, i64* %67, align 8
  %475 = load i64, i64* %68, align 8
  %476 = load i64, i64* %69, align 8
  %477 = call i64 @AVC_DOT_SW3_SW(i64 %471, i64 %472, i64 %473, i64 %474, i64 %475, i64 %476)
  store i64 %477, i64* %70, align 8
  %478 = load i64, i64* %62, align 8
  %479 = load i64, i64* %64, align 8
  %480 = load i64, i64* %66, align 8
  %481 = load i64, i64* %67, align 8
  %482 = load i64, i64* %68, align 8
  %483 = load i64, i64* %69, align 8
  %484 = call i64 @AVC_DOT_SW3_SW(i64 %478, i64 %479, i64 %480, i64 %481, i64 %482, i64 %483)
  store i64 %484, i64* %71, align 8
  %485 = load i64, i64* %71, align 8
  %486 = load i64, i64* %70, align 8
  %487 = call i64 @__msa_pckev_h(i64 %485, i64 %486)
  store i64 %487, i64* %54, align 8
  %488 = load i32*, i32** %4, align 8
  %489 = load i32, i32* %6, align 4
  %490 = load i32, i32* %10, align 4
  %491 = load i32, i32* %11, align 4
  %492 = load i32, i32* %12, align 4
  %493 = load i32, i32* %13, align 4
  %494 = call i32 @LD4(i32* %488, i32 %489, i32 %490, i32 %491, i32 %492, i32 %493)
  %495 = load i32, i32* %10, align 4
  %496 = load i32, i32* %11, align 4
  %497 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  %499 = call i32 @INSERT_D2_UB(i32 %495, i32 %496, i32 %498)
  %500 = load i32, i32* %12, align 4
  %501 = load i32, i32* %13, align 4
  %502 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @INSERT_D2_UB(i32 %500, i32 %501, i32 %503)
  %505 = load i64, i64* %51, align 8
  %506 = load i64, i64* %52, align 8
  %507 = call i32 @PCKEV_XORI128_UB(i64 %505, i64 %506)
  %508 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 %507, i32* %508, align 4
  %509 = bitcast %struct.TYPE_12__* %14 to i8*
  %510 = bitcast %struct.TYPE_12__* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %509, i8* align 4 %510, i64 4, i1 false)
  %511 = load i64, i64* %53, align 8
  %512 = load i64, i64* %54, align 8
  %513 = call i32 @PCKEV_XORI128_UB(i64 %511, i64 %512)
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store i32 %513, i32* %514, align 4
  %515 = bitcast %struct.TYPE_12__* %15 to i8*
  %516 = bitcast %struct.TYPE_12__* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %515, i8* align 4 %516, i64 4, i1 false)
  %517 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %518 = load i32, i32* %517, align 4
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %524 = load i32, i32* %523, align 4
  %525 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %526 = load i32, i32* %525, align 4
  %527 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = call i32 @AVER_UB2_UB(i32 %518, i32 %520, i32 %522, i32 %524, i32 %526, i32 %528)
  %530 = load i32*, i32** %4, align 8
  %531 = load i32, i32* %6, align 4
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @ST_D4(i32 %533, i32 %535, i32 0, i32 1, i32 0, i32 1, i32* %530, i32 %531)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @__msa_fill_w(i32) #2

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @XORI_B5_128_SB(i32, i32, i32, i32, i32) #2

declare dso_local i64 @AVC_HORZ_FILTER_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @ILVL_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @AVC_DOT_SW3_SW(i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @__msa_pckev_h(i64, i64) #2

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
