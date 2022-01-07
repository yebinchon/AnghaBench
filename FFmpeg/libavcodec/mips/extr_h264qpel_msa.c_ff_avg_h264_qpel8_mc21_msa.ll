; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel8_mc21_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel8_mc21_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_h264_qpel8_mc21_msa(i32* %0, i32* %1, i32 %2) #0 {
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
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
  %72 = alloca i64, align 8
  %73 = alloca i64, align 8
  %74 = alloca i64, align 8
  %75 = alloca i64, align 8
  %76 = alloca i64, align 8
  %77 = alloca i64, align 8
  %78 = alloca i64, align 8
  %79 = alloca i64, align 8
  %80 = alloca %struct.TYPE_12__, align 4
  %81 = alloca %struct.TYPE_12__, align 4
  %82 = alloca %struct.TYPE_12__, align 4
  %83 = alloca %struct.TYPE_12__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -327679, i32* %7, align 4
  store i32 1310740, i32* %8, align 4
  store i32 131067, i32* %9, align 4
  %84 = bitcast %struct.TYPE_12__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %84, i8 0, i64 4, i1 false)
  %85 = bitcast %struct.TYPE_12__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %85, i8 0, i64 4, i1 false)
  %86 = load i32*, i32** @luma_mask_arr, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %31, align 4
  %89 = load i32, i32* %32, align 4
  %90 = load i32, i32* %33, align 4
  %91 = call i32 @LD_SB3(i32* %87, i32 16, i32 %88, i32 %89, i32 %90)
  %92 = call i64 @__msa_fill_w(i32 -327679)
  store i64 %92, i64* %75, align 8
  %93 = call i64 @__msa_fill_w(i32 1310740)
  store i64 %93, i64* %76, align 8
  %94 = call i64 @__msa_fill_w(i32 131067)
  store i64 %94, i64* %77, align 8
  %95 = load i32, i32* %6, align 4
  %96 = mul nsw i32 2, %95
  %97 = add nsw i32 %96, 2
  %98 = load i32*, i32** %5, align 8
  %99 = sext i32 %97 to i64
  %100 = sub i64 0, %99
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32* %101, i32** %5, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %22, align 4
  %109 = call i32 @LD_SB5(i32* %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %22, align 4
  %115 = call i32 @XORI_B5_128_SB(i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = mul nsw i32 5, %116
  %118 = load i32*, i32** %5, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %5, align 8
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %31, align 4
  %124 = load i32, i32* %32, align 4
  %125 = load i32, i32* %33, align 4
  %126 = call i64 @AVC_HORZ_FILTER_SH(i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  store i64 %126, i64* %34, align 8
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %31, align 4
  %130 = load i32, i32* %32, align 4
  %131 = load i32, i32* %33, align 4
  %132 = call i64 @AVC_HORZ_FILTER_SH(i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  store i64 %132, i64* %35, align 8
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %31, align 4
  %136 = load i32, i32* %32, align 4
  %137 = load i32, i32* %33, align 4
  %138 = call i64 @AVC_HORZ_FILTER_SH(i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  store i64 %138, i64* %36, align 8
  %139 = load i32, i32* %21, align 4
  %140 = load i32, i32* %21, align 4
  %141 = load i32, i32* %31, align 4
  %142 = load i32, i32* %32, align 4
  %143 = load i32, i32* %33, align 4
  %144 = call i64 @AVC_HORZ_FILTER_SH(i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  store i64 %144, i64* %37, align 8
  %145 = load i32, i32* %22, align 4
  %146 = load i32, i32* %22, align 4
  %147 = load i32, i32* %31, align 4
  %148 = load i32, i32* %32, align 4
  %149 = load i32, i32* %33, align 4
  %150 = call i64 @AVC_HORZ_FILTER_SH(i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  store i64 %150, i64* %38, align 8
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %23, align 4
  %154 = load i32, i32* %24, align 4
  %155 = load i32, i32* %25, align 4
  %156 = load i32, i32* %26, align 4
  %157 = call i32 @LD_SB4(i32* %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* %6, align 4
  %159 = mul nsw i32 4, %158
  %160 = load i32*, i32** %5, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %5, align 8
  %163 = load i32, i32* %23, align 4
  %164 = load i32, i32* %24, align 4
  %165 = load i32, i32* %25, align 4
  %166 = load i32, i32* %26, align 4
  %167 = call i32 @XORI_B4_128_SB(i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* %31, align 4
  %171 = load i32, i32* %32, align 4
  %172 = load i32, i32* %33, align 4
  %173 = call i64 @AVC_HORZ_FILTER_SH(i32 %168, i32 %169, i32 %170, i32 %171, i32 %172)
  store i64 %173, i64* %39, align 8
  %174 = load i32, i32* %24, align 4
  %175 = load i32, i32* %24, align 4
  %176 = load i32, i32* %31, align 4
  %177 = load i32, i32* %32, align 4
  %178 = load i32, i32* %33, align 4
  %179 = call i64 @AVC_HORZ_FILTER_SH(i32 %174, i32 %175, i32 %176, i32 %177, i32 %178)
  store i64 %179, i64* %40, align 8
  %180 = load i32, i32* %25, align 4
  %181 = load i32, i32* %25, align 4
  %182 = load i32, i32* %31, align 4
  %183 = load i32, i32* %32, align 4
  %184 = load i32, i32* %33, align 4
  %185 = call i64 @AVC_HORZ_FILTER_SH(i32 %180, i32 %181, i32 %182, i32 %183, i32 %184)
  store i64 %185, i64* %41, align 8
  %186 = load i32, i32* %26, align 4
  %187 = load i32, i32* %26, align 4
  %188 = load i32, i32* %31, align 4
  %189 = load i32, i32* %32, align 4
  %190 = load i32, i32* %33, align 4
  %191 = call i64 @AVC_HORZ_FILTER_SH(i32 %186, i32 %187, i32 %188, i32 %189, i32 %190)
  store i64 %191, i64* %42, align 8
  %192 = load i64, i64* %35, align 8
  %193 = load i64, i64* %34, align 8
  %194 = load i64, i64* %36, align 8
  %195 = load i64, i64* %35, align 8
  %196 = load i64, i64* %37, align 8
  %197 = load i64, i64* %36, align 8
  %198 = load i64, i64* %38, align 8
  %199 = load i64, i64* %37, align 8
  %200 = load i64, i64* %47, align 8
  %201 = load i64, i64* %48, align 8
  %202 = load i64, i64* %49, align 8
  %203 = load i64, i64* %50, align 8
  %204 = call i32 @ILVR_H4_SH(i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203)
  %205 = load i64, i64* %35, align 8
  %206 = load i64, i64* %34, align 8
  %207 = load i64, i64* %36, align 8
  %208 = load i64, i64* %35, align 8
  %209 = load i64, i64* %37, align 8
  %210 = load i64, i64* %36, align 8
  %211 = load i64, i64* %38, align 8
  %212 = load i64, i64* %37, align 8
  %213 = load i64, i64* %63, align 8
  %214 = load i64, i64* %64, align 8
  %215 = load i64, i64* %65, align 8
  %216 = load i64, i64* %66, align 8
  %217 = call i32 @ILVL_H4_SH(i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216)
  %218 = load i64, i64* %39, align 8
  %219 = load i64, i64* %38, align 8
  %220 = load i64, i64* %40, align 8
  %221 = load i64, i64* %39, align 8
  %222 = load i64, i64* %41, align 8
  %223 = load i64, i64* %40, align 8
  %224 = load i64, i64* %42, align 8
  %225 = load i64, i64* %41, align 8
  %226 = load i64, i64* %51, align 8
  %227 = load i64, i64* %52, align 8
  %228 = load i64, i64* %53, align 8
  %229 = load i64, i64* %54, align 8
  %230 = call i32 @ILVR_H4_SH(i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227, i64 %228, i64 %229)
  %231 = load i64, i64* %39, align 8
  %232 = load i64, i64* %38, align 8
  %233 = load i64, i64* %40, align 8
  %234 = load i64, i64* %39, align 8
  %235 = load i64, i64* %41, align 8
  %236 = load i64, i64* %40, align 8
  %237 = load i64, i64* %42, align 8
  %238 = load i64, i64* %41, align 8
  %239 = load i64, i64* %67, align 8
  %240 = load i64, i64* %68, align 8
  %241 = load i64, i64* %69, align 8
  %242 = load i64, i64* %70, align 8
  %243 = call i32 @ILVL_H4_SH(i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240, i64 %241, i64 %242)
  %244 = load i64, i64* %47, align 8
  %245 = load i64, i64* %49, align 8
  %246 = load i64, i64* %51, align 8
  %247 = load i64, i64* %75, align 8
  %248 = load i64, i64* %76, align 8
  %249 = load i64, i64* %77, align 8
  %250 = call i64 @AVC_DOT_SW3_SW(i64 %244, i64 %245, i64 %246, i64 %247, i64 %248, i64 %249)
  store i64 %250, i64* %78, align 8
  %251 = load i64, i64* %63, align 8
  %252 = load i64, i64* %65, align 8
  %253 = load i64, i64* %67, align 8
  %254 = load i64, i64* %75, align 8
  %255 = load i64, i64* %76, align 8
  %256 = load i64, i64* %77, align 8
  %257 = call i64 @AVC_DOT_SW3_SW(i64 %251, i64 %252, i64 %253, i64 %254, i64 %255, i64 %256)
  store i64 %257, i64* %79, align 8
  %258 = load i64, i64* %79, align 8
  %259 = load i64, i64* %78, align 8
  %260 = call i64 @__msa_pckev_h(i64 %258, i64 %259)
  store i64 %260, i64* %59, align 8
  %261 = load i64, i64* %48, align 8
  %262 = load i64, i64* %50, align 8
  %263 = load i64, i64* %52, align 8
  %264 = load i64, i64* %75, align 8
  %265 = load i64, i64* %76, align 8
  %266 = load i64, i64* %77, align 8
  %267 = call i64 @AVC_DOT_SW3_SW(i64 %261, i64 %262, i64 %263, i64 %264, i64 %265, i64 %266)
  store i64 %267, i64* %78, align 8
  %268 = load i64, i64* %64, align 8
  %269 = load i64, i64* %66, align 8
  %270 = load i64, i64* %68, align 8
  %271 = load i64, i64* %75, align 8
  %272 = load i64, i64* %76, align 8
  %273 = load i64, i64* %77, align 8
  %274 = call i64 @AVC_DOT_SW3_SW(i64 %268, i64 %269, i64 %270, i64 %271, i64 %272, i64 %273)
  store i64 %274, i64* %79, align 8
  %275 = load i64, i64* %79, align 8
  %276 = load i64, i64* %78, align 8
  %277 = call i64 @__msa_pckev_h(i64 %275, i64 %276)
  store i64 %277, i64* %60, align 8
  %278 = load i64, i64* %49, align 8
  %279 = load i64, i64* %51, align 8
  %280 = load i64, i64* %53, align 8
  %281 = load i64, i64* %75, align 8
  %282 = load i64, i64* %76, align 8
  %283 = load i64, i64* %77, align 8
  %284 = call i64 @AVC_DOT_SW3_SW(i64 %278, i64 %279, i64 %280, i64 %281, i64 %282, i64 %283)
  store i64 %284, i64* %78, align 8
  %285 = load i64, i64* %65, align 8
  %286 = load i64, i64* %67, align 8
  %287 = load i64, i64* %69, align 8
  %288 = load i64, i64* %75, align 8
  %289 = load i64, i64* %76, align 8
  %290 = load i64, i64* %77, align 8
  %291 = call i64 @AVC_DOT_SW3_SW(i64 %285, i64 %286, i64 %287, i64 %288, i64 %289, i64 %290)
  store i64 %291, i64* %79, align 8
  %292 = load i64, i64* %79, align 8
  %293 = load i64, i64* %78, align 8
  %294 = call i64 @__msa_pckev_h(i64 %292, i64 %293)
  store i64 %294, i64* %61, align 8
  %295 = load i64, i64* %50, align 8
  %296 = load i64, i64* %52, align 8
  %297 = load i64, i64* %54, align 8
  %298 = load i64, i64* %75, align 8
  %299 = load i64, i64* %76, align 8
  %300 = load i64, i64* %77, align 8
  %301 = call i64 @AVC_DOT_SW3_SW(i64 %295, i64 %296, i64 %297, i64 %298, i64 %299, i64 %300)
  store i64 %301, i64* %78, align 8
  %302 = load i64, i64* %66, align 8
  %303 = load i64, i64* %68, align 8
  %304 = load i64, i64* %70, align 8
  %305 = load i64, i64* %75, align 8
  %306 = load i64, i64* %76, align 8
  %307 = load i64, i64* %77, align 8
  %308 = call i64 @AVC_DOT_SW3_SW(i64 %302, i64 %303, i64 %304, i64 %305, i64 %306, i64 %307)
  store i64 %308, i64* %79, align 8
  %309 = load i64, i64* %79, align 8
  %310 = load i64, i64* %78, align 8
  %311 = call i64 @__msa_pckev_h(i64 %309, i64 %310)
  store i64 %311, i64* %62, align 8
  %312 = load i64, i64* %36, align 8
  %313 = load i64, i64* %37, align 8
  %314 = load i64, i64* %38, align 8
  %315 = load i64, i64* %39, align 8
  %316 = call i32 @SRARI_H4_SH(i64 %312, i64 %313, i64 %314, i64 %315, i32 5)
  %317 = load i64, i64* %36, align 8
  %318 = load i64, i64* %37, align 8
  %319 = load i64, i64* %38, align 8
  %320 = load i64, i64* %39, align 8
  %321 = call i32 @SAT_SH4_SH(i64 %317, i64 %318, i64 %319, i64 %320, i32 7)
  %322 = load i32*, i32** %4, align 8
  %323 = load i32, i32* %6, align 4
  %324 = load i32, i32* %10, align 4
  %325 = load i32, i32* %11, align 4
  %326 = load i32, i32* %12, align 4
  %327 = load i32, i32* %13, align 4
  %328 = call i32 @LD4(i32* %322, i32 %323, i32 %324, i32 %325, i32 %326, i32 %327)
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* %11, align 4
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @INSERT_D2_UB(i32 %329, i32 %330, i32 %332)
  %334 = load i32, i32* %12, align 4
  %335 = load i32, i32* %13, align 4
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @INSERT_D2_UB(i32 %334, i32 %335, i32 %337)
  %339 = load i64, i64* %59, align 8
  %340 = load i64, i64* %36, align 8
  %341 = call i64 @__msa_aver_s_h(i64 %339, i64 %340)
  store i64 %341, i64* %59, align 8
  %342 = load i64, i64* %60, align 8
  %343 = load i64, i64* %37, align 8
  %344 = call i64 @__msa_aver_s_h(i64 %342, i64 %343)
  store i64 %344, i64* %60, align 8
  %345 = load i64, i64* %61, align 8
  %346 = load i64, i64* %38, align 8
  %347 = call i64 @__msa_aver_s_h(i64 %345, i64 %346)
  store i64 %347, i64* %61, align 8
  %348 = load i64, i64* %62, align 8
  %349 = load i64, i64* %39, align 8
  %350 = call i64 @__msa_aver_s_h(i64 %348, i64 %349)
  store i64 %350, i64* %62, align 8
  %351 = load i64, i64* %59, align 8
  %352 = load i64, i64* %60, align 8
  %353 = call i32 @PCKEV_XORI128_UB(i64 %351, i64 %352)
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 %353, i32* %354, align 4
  %355 = bitcast %struct.TYPE_12__* %16 to i8*
  %356 = bitcast %struct.TYPE_12__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %355, i8* align 4 %356, i64 4, i1 false)
  %357 = load i64, i64* %61, align 8
  %358 = load i64, i64* %62, align 8
  %359 = call i32 @PCKEV_XORI128_UB(i64 %357, i64 %358)
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i32 %359, i32* %360, align 4
  %361 = bitcast %struct.TYPE_12__* %17 to i8*
  %362 = bitcast %struct.TYPE_12__* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %361, i8* align 4 %362, i64 4, i1 false)
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @AVER_UB2_UB(i32 %364, i32 %366, i32 %368, i32 %370, i32 %372, i32 %374)
  %376 = load i32*, i32** %4, align 8
  %377 = load i32, i32* %6, align 4
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @ST_D4(i32 %379, i32 %381, i32 0, i32 1, i32 0, i32 1, i32* %376, i32 %377)
  %383 = load i32, i32* %6, align 4
  %384 = mul nsw i32 4, %383
  %385 = load i32*, i32** %4, align 8
  %386 = sext i32 %384 to i64
  %387 = getelementptr inbounds i32, i32* %385, i64 %386
  store i32* %387, i32** %4, align 8
  %388 = load i32*, i32** %5, align 8
  %389 = load i32, i32* %6, align 4
  %390 = load i32, i32* %27, align 4
  %391 = load i32, i32* %28, align 4
  %392 = load i32, i32* %29, align 4
  %393 = load i32, i32* %30, align 4
  %394 = call i32 @LD_SB4(i32* %388, i32 %389, i32 %390, i32 %391, i32 %392, i32 %393)
  %395 = load i32, i32* %27, align 4
  %396 = load i32, i32* %28, align 4
  %397 = load i32, i32* %29, align 4
  %398 = load i32, i32* %30, align 4
  %399 = call i32 @XORI_B4_128_SB(i32 %395, i32 %396, i32 %397, i32 %398)
  %400 = load i32, i32* %27, align 4
  %401 = load i32, i32* %27, align 4
  %402 = load i32, i32* %31, align 4
  %403 = load i32, i32* %32, align 4
  %404 = load i32, i32* %33, align 4
  %405 = call i64 @AVC_HORZ_FILTER_SH(i32 %400, i32 %401, i32 %402, i32 %403, i32 %404)
  store i64 %405, i64* %43, align 8
  %406 = load i32, i32* %28, align 4
  %407 = load i32, i32* %28, align 4
  %408 = load i32, i32* %31, align 4
  %409 = load i32, i32* %32, align 4
  %410 = load i32, i32* %33, align 4
  %411 = call i64 @AVC_HORZ_FILTER_SH(i32 %406, i32 %407, i32 %408, i32 %409, i32 %410)
  store i64 %411, i64* %44, align 8
  %412 = load i32, i32* %29, align 4
  %413 = load i32, i32* %29, align 4
  %414 = load i32, i32* %31, align 4
  %415 = load i32, i32* %32, align 4
  %416 = load i32, i32* %33, align 4
  %417 = call i64 @AVC_HORZ_FILTER_SH(i32 %412, i32 %413, i32 %414, i32 %415, i32 %416)
  store i64 %417, i64* %45, align 8
  %418 = load i32, i32* %30, align 4
  %419 = load i32, i32* %30, align 4
  %420 = load i32, i32* %31, align 4
  %421 = load i32, i32* %32, align 4
  %422 = load i32, i32* %33, align 4
  %423 = call i64 @AVC_HORZ_FILTER_SH(i32 %418, i32 %419, i32 %420, i32 %421, i32 %422)
  store i64 %423, i64* %46, align 8
  %424 = load i64, i64* %43, align 8
  %425 = load i64, i64* %42, align 8
  %426 = load i64, i64* %44, align 8
  %427 = load i64, i64* %43, align 8
  %428 = load i64, i64* %45, align 8
  %429 = load i64, i64* %44, align 8
  %430 = load i64, i64* %46, align 8
  %431 = load i64, i64* %45, align 8
  %432 = load i64, i64* %55, align 8
  %433 = load i64, i64* %56, align 8
  %434 = load i64, i64* %57, align 8
  %435 = load i64, i64* %58, align 8
  %436 = call i32 @ILVR_H4_SH(i64 %424, i64 %425, i64 %426, i64 %427, i64 %428, i64 %429, i64 %430, i64 %431, i64 %432, i64 %433, i64 %434, i64 %435)
  %437 = load i64, i64* %43, align 8
  %438 = load i64, i64* %42, align 8
  %439 = load i64, i64* %44, align 8
  %440 = load i64, i64* %43, align 8
  %441 = load i64, i64* %45, align 8
  %442 = load i64, i64* %44, align 8
  %443 = load i64, i64* %46, align 8
  %444 = load i64, i64* %45, align 8
  %445 = load i64, i64* %71, align 8
  %446 = load i64, i64* %72, align 8
  %447 = load i64, i64* %73, align 8
  %448 = load i64, i64* %74, align 8
  %449 = call i32 @ILVL_H4_SH(i64 %437, i64 %438, i64 %439, i64 %440, i64 %441, i64 %442, i64 %443, i64 %444, i64 %445, i64 %446, i64 %447, i64 %448)
  %450 = load i64, i64* %51, align 8
  %451 = load i64, i64* %53, align 8
  %452 = load i64, i64* %55, align 8
  %453 = load i64, i64* %75, align 8
  %454 = load i64, i64* %76, align 8
  %455 = load i64, i64* %77, align 8
  %456 = call i64 @AVC_DOT_SW3_SW(i64 %450, i64 %451, i64 %452, i64 %453, i64 %454, i64 %455)
  store i64 %456, i64* %78, align 8
  %457 = load i64, i64* %67, align 8
  %458 = load i64, i64* %69, align 8
  %459 = load i64, i64* %71, align 8
  %460 = load i64, i64* %75, align 8
  %461 = load i64, i64* %76, align 8
  %462 = load i64, i64* %77, align 8
  %463 = call i64 @AVC_DOT_SW3_SW(i64 %457, i64 %458, i64 %459, i64 %460, i64 %461, i64 %462)
  store i64 %463, i64* %79, align 8
  %464 = load i64, i64* %79, align 8
  %465 = load i64, i64* %78, align 8
  %466 = call i64 @__msa_pckev_h(i64 %464, i64 %465)
  store i64 %466, i64* %59, align 8
  %467 = load i64, i64* %52, align 8
  %468 = load i64, i64* %54, align 8
  %469 = load i64, i64* %56, align 8
  %470 = load i64, i64* %75, align 8
  %471 = load i64, i64* %76, align 8
  %472 = load i64, i64* %77, align 8
  %473 = call i64 @AVC_DOT_SW3_SW(i64 %467, i64 %468, i64 %469, i64 %470, i64 %471, i64 %472)
  store i64 %473, i64* %78, align 8
  %474 = load i64, i64* %68, align 8
  %475 = load i64, i64* %70, align 8
  %476 = load i64, i64* %72, align 8
  %477 = load i64, i64* %75, align 8
  %478 = load i64, i64* %76, align 8
  %479 = load i64, i64* %77, align 8
  %480 = call i64 @AVC_DOT_SW3_SW(i64 %474, i64 %475, i64 %476, i64 %477, i64 %478, i64 %479)
  store i64 %480, i64* %79, align 8
  %481 = load i64, i64* %79, align 8
  %482 = load i64, i64* %78, align 8
  %483 = call i64 @__msa_pckev_h(i64 %481, i64 %482)
  store i64 %483, i64* %60, align 8
  %484 = load i64, i64* %53, align 8
  %485 = load i64, i64* %55, align 8
  %486 = load i64, i64* %57, align 8
  %487 = load i64, i64* %75, align 8
  %488 = load i64, i64* %76, align 8
  %489 = load i64, i64* %77, align 8
  %490 = call i64 @AVC_DOT_SW3_SW(i64 %484, i64 %485, i64 %486, i64 %487, i64 %488, i64 %489)
  store i64 %490, i64* %78, align 8
  %491 = load i64, i64* %69, align 8
  %492 = load i64, i64* %71, align 8
  %493 = load i64, i64* %73, align 8
  %494 = load i64, i64* %75, align 8
  %495 = load i64, i64* %76, align 8
  %496 = load i64, i64* %77, align 8
  %497 = call i64 @AVC_DOT_SW3_SW(i64 %491, i64 %492, i64 %493, i64 %494, i64 %495, i64 %496)
  store i64 %497, i64* %79, align 8
  %498 = load i64, i64* %79, align 8
  %499 = load i64, i64* %78, align 8
  %500 = call i64 @__msa_pckev_h(i64 %498, i64 %499)
  store i64 %500, i64* %61, align 8
  %501 = load i64, i64* %54, align 8
  %502 = load i64, i64* %56, align 8
  %503 = load i64, i64* %58, align 8
  %504 = load i64, i64* %75, align 8
  %505 = load i64, i64* %76, align 8
  %506 = load i64, i64* %77, align 8
  %507 = call i64 @AVC_DOT_SW3_SW(i64 %501, i64 %502, i64 %503, i64 %504, i64 %505, i64 %506)
  store i64 %507, i64* %78, align 8
  %508 = load i64, i64* %70, align 8
  %509 = load i64, i64* %72, align 8
  %510 = load i64, i64* %74, align 8
  %511 = load i64, i64* %75, align 8
  %512 = load i64, i64* %76, align 8
  %513 = load i64, i64* %77, align 8
  %514 = call i64 @AVC_DOT_SW3_SW(i64 %508, i64 %509, i64 %510, i64 %511, i64 %512, i64 %513)
  store i64 %514, i64* %79, align 8
  %515 = load i64, i64* %79, align 8
  %516 = load i64, i64* %78, align 8
  %517 = call i64 @__msa_pckev_h(i64 %515, i64 %516)
  store i64 %517, i64* %62, align 8
  %518 = load i64, i64* %40, align 8
  %519 = load i64, i64* %41, align 8
  %520 = load i64, i64* %42, align 8
  %521 = load i64, i64* %43, align 8
  %522 = call i32 @SRARI_H4_SH(i64 %518, i64 %519, i64 %520, i64 %521, i32 5)
  %523 = load i64, i64* %40, align 8
  %524 = load i64, i64* %41, align 8
  %525 = load i64, i64* %42, align 8
  %526 = load i64, i64* %43, align 8
  %527 = call i32 @SAT_SH4_SH(i64 %523, i64 %524, i64 %525, i64 %526, i32 7)
  %528 = load i32*, i32** %4, align 8
  %529 = load i32, i32* %6, align 4
  %530 = load i32, i32* %10, align 4
  %531 = load i32, i32* %11, align 4
  %532 = load i32, i32* %12, align 4
  %533 = load i32, i32* %13, align 4
  %534 = call i32 @LD4(i32* %528, i32 %529, i32 %530, i32 %531, i32 %532, i32 %533)
  %535 = load i32, i32* %10, align 4
  %536 = load i32, i32* %11, align 4
  %537 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %538 = load i32, i32* %537, align 4
  %539 = call i32 @INSERT_D2_UB(i32 %535, i32 %536, i32 %538)
  %540 = load i32, i32* %12, align 4
  %541 = load i32, i32* %13, align 4
  %542 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %543 = load i32, i32* %542, align 4
  %544 = call i32 @INSERT_D2_UB(i32 %540, i32 %541, i32 %543)
  %545 = load i64, i64* %59, align 8
  %546 = load i64, i64* %40, align 8
  %547 = call i64 @__msa_aver_s_h(i64 %545, i64 %546)
  store i64 %547, i64* %59, align 8
  %548 = load i64, i64* %60, align 8
  %549 = load i64, i64* %41, align 8
  %550 = call i64 @__msa_aver_s_h(i64 %548, i64 %549)
  store i64 %550, i64* %60, align 8
  %551 = load i64, i64* %61, align 8
  %552 = load i64, i64* %42, align 8
  %553 = call i64 @__msa_aver_s_h(i64 %551, i64 %552)
  store i64 %553, i64* %61, align 8
  %554 = load i64, i64* %62, align 8
  %555 = load i64, i64* %43, align 8
  %556 = call i64 @__msa_aver_s_h(i64 %554, i64 %555)
  store i64 %556, i64* %62, align 8
  %557 = load i64, i64* %59, align 8
  %558 = load i64, i64* %60, align 8
  %559 = call i32 @PCKEV_XORI128_UB(i64 %557, i64 %558)
  %560 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store i32 %559, i32* %560, align 4
  %561 = bitcast %struct.TYPE_12__* %16 to i8*
  %562 = bitcast %struct.TYPE_12__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %561, i8* align 4 %562, i64 4, i1 false)
  %563 = load i64, i64* %61, align 8
  %564 = load i64, i64* %62, align 8
  %565 = call i32 @PCKEV_XORI128_UB(i64 %563, i64 %564)
  %566 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32 %565, i32* %566, align 4
  %567 = bitcast %struct.TYPE_12__* %17 to i8*
  %568 = bitcast %struct.TYPE_12__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %567, i8* align 4 %568, i64 4, i1 false)
  %569 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %570 = load i32, i32* %569, align 4
  %571 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %572 = load i32, i32* %571, align 4
  %573 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %574 = load i32, i32* %573, align 4
  %575 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %576 = load i32, i32* %575, align 4
  %577 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %578 = load i32, i32* %577, align 4
  %579 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %580 = load i32, i32* %579, align 4
  %581 = call i32 @AVER_UB2_UB(i32 %570, i32 %572, i32 %574, i32 %576, i32 %578, i32 %580)
  %582 = load i32*, i32** %4, align 8
  %583 = load i32, i32* %6, align 4
  %584 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %585 = load i32, i32* %584, align 4
  %586 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %587 = load i32, i32* %586, align 4
  %588 = call i32 @ST_D4(i32 %585, i32 %587, i32 0, i32 1, i32 0, i32 1, i32* %582, i32 %583)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #2

declare dso_local i64 @__msa_fill_w(i32) #2

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @XORI_B5_128_SB(i32, i32, i32, i32, i32) #2

declare dso_local i64 @AVC_HORZ_FILTER_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @ILVL_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @AVC_DOT_SW3_SW(i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @__msa_pckev_h(i64, i64) #2

declare dso_local i32 @SRARI_H4_SH(i64, i64, i64, i64, i32) #2

declare dso_local i32 @SAT_SH4_SH(i64, i64, i64, i64, i32) #2

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_D2_UB(i32, i32, i32) #2

declare dso_local i64 @__msa_aver_s_h(i64, i64) #2

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
