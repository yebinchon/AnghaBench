; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel8_mc20_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel8_mc20_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_h264_qpel8_mc20_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__, align 4
  %12 = alloca %struct.TYPE_14__, align 4
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca %struct.TYPE_14__, align 4
  %15 = alloca %struct.TYPE_14__, align 4
  %16 = alloca %struct.TYPE_14__, align 4
  %17 = alloca %struct.TYPE_14__, align 4
  %18 = alloca %struct.TYPE_14__, align 4
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
  %52 = alloca %struct.TYPE_14__, align 4
  %53 = alloca %struct.TYPE_14__, align 4
  %54 = alloca %struct.TYPE_14__, align 4
  %55 = alloca %struct.TYPE_14__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %56 = bitcast %struct.TYPE_14__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %56, i8 0, i64 4, i1 false)
  %57 = bitcast %struct.TYPE_14__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %57, i8 0, i64 4, i1 false)
  %58 = bitcast %struct.TYPE_14__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %58, i8 0, i64 4, i1 false)
  %59 = bitcast %struct.TYPE_14__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %59, i8 0, i64 4, i1 false)
  %60 = call i32 @__msa_ldi_b(i32 -5)
  store i32 %60, i32* %50, align 4
  %61 = call i32 @__msa_ldi_b(i32 20)
  store i32 %61, i32* %51, align 4
  %62 = load i32*, i32** @luma_mask_arr, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %27, align 4
  %65 = load i32, i32* %28, align 4
  %66 = load i32, i32* %29, align 4
  %67 = call i32 @LD_SB3(i32* %63, i32 16, i32 %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 -2
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %23, align 4
  %76 = load i32, i32* %24, align 4
  %77 = load i32, i32* %25, align 4
  %78 = load i32, i32* %26, align 4
  %79 = call i32 @LD_SB8(i32* %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %24, align 4
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* %26, align 4
  %88 = call i32 @XORI_B8_128_SB(i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %27, align 4
  %94 = load i32, i32* %27, align 4
  %95 = load i32, i32* %30, align 4
  %96 = load i32, i32* %31, align 4
  %97 = call i32 @VSHF_B2_SB(i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %27, align 4
  %103 = load i32, i32* %27, align 4
  %104 = load i32, i32* %32, align 4
  %105 = load i32, i32* %33, align 4
  %106 = call i32 @VSHF_B2_SB(i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %30, align 4
  %108 = load i32, i32* %31, align 4
  %109 = load i32, i32* %32, align 4
  %110 = load i32, i32* %33, align 4
  %111 = load i32, i32* %42, align 4
  %112 = load i32, i32* %43, align 4
  %113 = load i32, i32* %44, align 4
  %114 = load i32, i32* %45, align 4
  %115 = call i32 @HADD_SB4_SH(i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* %28, align 4
  %121 = load i32, i32* %28, align 4
  %122 = load i32, i32* %34, align 4
  %123 = load i32, i32* %35, align 4
  %124 = call i32 @VSHF_B2_SB(i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %22, align 4
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* %28, align 4
  %130 = load i32, i32* %28, align 4
  %131 = load i32, i32* %36, align 4
  %132 = load i32, i32* %37, align 4
  %133 = call i32 @VSHF_B2_SB(i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %34, align 4
  %135 = load i32, i32* %35, align 4
  %136 = load i32, i32* %36, align 4
  %137 = load i32, i32* %37, align 4
  %138 = load i32, i32* %50, align 4
  %139 = load i32, i32* %50, align 4
  %140 = load i32, i32* %50, align 4
  %141 = load i32, i32* %50, align 4
  %142 = load i32, i32* %42, align 4
  %143 = load i32, i32* %43, align 4
  %144 = load i32, i32* %44, align 4
  %145 = load i32, i32* %45, align 4
  %146 = call i32 @DPADD_SB4_SH(i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %20, align 4
  %151 = load i32, i32* %29, align 4
  %152 = load i32, i32* %29, align 4
  %153 = load i32, i32* %38, align 4
  %154 = load i32, i32* %39, align 4
  %155 = call i32 @VSHF_B2_SB(i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* %22, align 4
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %29, align 4
  %161 = load i32, i32* %29, align 4
  %162 = load i32, i32* %40, align 4
  %163 = load i32, i32* %41, align 4
  %164 = call i32 @VSHF_B2_SB(i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* %38, align 4
  %166 = load i32, i32* %39, align 4
  %167 = load i32, i32* %40, align 4
  %168 = load i32, i32* %41, align 4
  %169 = load i32, i32* %51, align 4
  %170 = load i32, i32* %51, align 4
  %171 = load i32, i32* %51, align 4
  %172 = load i32, i32* %51, align 4
  %173 = load i32, i32* %42, align 4
  %174 = load i32, i32* %43, align 4
  %175 = load i32, i32* %44, align 4
  %176 = load i32, i32* %45, align 4
  %177 = call i32 @DPADD_SB4_SH(i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176)
  %178 = load i32, i32* %23, align 4
  %179 = load i32, i32* %23, align 4
  %180 = load i32, i32* %24, align 4
  %181 = load i32, i32* %24, align 4
  %182 = load i32, i32* %27, align 4
  %183 = load i32, i32* %27, align 4
  %184 = load i32, i32* %30, align 4
  %185 = load i32, i32* %31, align 4
  %186 = call i32 @VSHF_B2_SB(i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* %25, align 4
  %188 = load i32, i32* %25, align 4
  %189 = load i32, i32* %26, align 4
  %190 = load i32, i32* %26, align 4
  %191 = load i32, i32* %27, align 4
  %192 = load i32, i32* %27, align 4
  %193 = load i32, i32* %32, align 4
  %194 = load i32, i32* %33, align 4
  %195 = call i32 @VSHF_B2_SB(i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194)
  %196 = load i32, i32* %30, align 4
  %197 = load i32, i32* %31, align 4
  %198 = load i32, i32* %32, align 4
  %199 = load i32, i32* %33, align 4
  %200 = load i32, i32* %46, align 4
  %201 = load i32, i32* %47, align 4
  %202 = load i32, i32* %48, align 4
  %203 = load i32, i32* %49, align 4
  %204 = call i32 @HADD_SB4_SH(i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203)
  %205 = load i32, i32* %23, align 4
  %206 = load i32, i32* %23, align 4
  %207 = load i32, i32* %24, align 4
  %208 = load i32, i32* %24, align 4
  %209 = load i32, i32* %28, align 4
  %210 = load i32, i32* %28, align 4
  %211 = load i32, i32* %34, align 4
  %212 = load i32, i32* %35, align 4
  %213 = call i32 @VSHF_B2_SB(i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212)
  %214 = load i32, i32* %25, align 4
  %215 = load i32, i32* %25, align 4
  %216 = load i32, i32* %26, align 4
  %217 = load i32, i32* %26, align 4
  %218 = load i32, i32* %28, align 4
  %219 = load i32, i32* %28, align 4
  %220 = load i32, i32* %36, align 4
  %221 = load i32, i32* %37, align 4
  %222 = call i32 @VSHF_B2_SB(i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221)
  %223 = load i32, i32* %34, align 4
  %224 = load i32, i32* %35, align 4
  %225 = load i32, i32* %36, align 4
  %226 = load i32, i32* %37, align 4
  %227 = load i32, i32* %50, align 4
  %228 = load i32, i32* %50, align 4
  %229 = load i32, i32* %50, align 4
  %230 = load i32, i32* %50, align 4
  %231 = load i32, i32* %46, align 4
  %232 = load i32, i32* %47, align 4
  %233 = load i32, i32* %48, align 4
  %234 = load i32, i32* %49, align 4
  %235 = call i32 @DPADD_SB4_SH(i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234)
  %236 = load i32, i32* %23, align 4
  %237 = load i32, i32* %23, align 4
  %238 = load i32, i32* %24, align 4
  %239 = load i32, i32* %24, align 4
  %240 = load i32, i32* %29, align 4
  %241 = load i32, i32* %29, align 4
  %242 = load i32, i32* %38, align 4
  %243 = load i32, i32* %39, align 4
  %244 = call i32 @VSHF_B2_SB(i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243)
  %245 = load i32, i32* %25, align 4
  %246 = load i32, i32* %25, align 4
  %247 = load i32, i32* %26, align 4
  %248 = load i32, i32* %26, align 4
  %249 = load i32, i32* %29, align 4
  %250 = load i32, i32* %29, align 4
  %251 = load i32, i32* %40, align 4
  %252 = load i32, i32* %41, align 4
  %253 = call i32 @VSHF_B2_SB(i32 %245, i32 %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252)
  %254 = load i32, i32* %38, align 4
  %255 = load i32, i32* %39, align 4
  %256 = load i32, i32* %40, align 4
  %257 = load i32, i32* %41, align 4
  %258 = load i32, i32* %51, align 4
  %259 = load i32, i32* %51, align 4
  %260 = load i32, i32* %51, align 4
  %261 = load i32, i32* %51, align 4
  %262 = load i32, i32* %46, align 4
  %263 = load i32, i32* %47, align 4
  %264 = load i32, i32* %48, align 4
  %265 = load i32, i32* %49, align 4
  %266 = call i32 @DPADD_SB4_SH(i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265)
  %267 = load i32, i32* %42, align 4
  %268 = load i32, i32* %43, align 4
  %269 = load i32, i32* %44, align 4
  %270 = load i32, i32* %45, align 4
  %271 = call i32 @SRARI_H4_SH(i32 %267, i32 %268, i32 %269, i32 %270, i32 5)
  %272 = load i32, i32* %46, align 4
  %273 = load i32, i32* %47, align 4
  %274 = load i32, i32* %48, align 4
  %275 = load i32, i32* %49, align 4
  %276 = call i32 @SRARI_H4_SH(i32 %272, i32 %273, i32 %274, i32 %275, i32 5)
  %277 = load i32, i32* %42, align 4
  %278 = load i32, i32* %43, align 4
  %279 = load i32, i32* %44, align 4
  %280 = load i32, i32* %45, align 4
  %281 = call i32 @SAT_SH4_SH(i32 %277, i32 %278, i32 %279, i32 %280, i32 7)
  %282 = load i32, i32* %46, align 4
  %283 = load i32, i32* %47, align 4
  %284 = load i32, i32* %48, align 4
  %285 = load i32, i32* %49, align 4
  %286 = call i32 @SAT_SH4_SH(i32 %282, i32 %283, i32 %284, i32 %285, i32 7)
  %287 = load i32, i32* %42, align 4
  %288 = load i32, i32* %43, align 4
  %289 = call i32 @PCKEV_XORI128_UB(i32 %287, i32 %288)
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i32 %289, i32* %290, align 4
  %291 = bitcast %struct.TYPE_14__* %11 to i8*
  %292 = bitcast %struct.TYPE_14__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %291, i8* align 4 %292, i64 4, i1 false)
  %293 = load i32, i32* %44, align 4
  %294 = load i32, i32* %45, align 4
  %295 = call i32 @PCKEV_XORI128_UB(i32 %293, i32 %294)
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  store i32 %295, i32* %296, align 4
  %297 = bitcast %struct.TYPE_14__* %12 to i8*
  %298 = bitcast %struct.TYPE_14__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %297, i8* align 4 %298, i64 4, i1 false)
  %299 = load i32, i32* %46, align 4
  %300 = load i32, i32* %47, align 4
  %301 = call i32 @PCKEV_XORI128_UB(i32 %299, i32 %300)
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store i32 %301, i32* %302, align 4
  %303 = bitcast %struct.TYPE_14__* %15 to i8*
  %304 = bitcast %struct.TYPE_14__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %303, i8* align 4 %304, i64 4, i1 false)
  %305 = load i32, i32* %48, align 4
  %306 = load i32, i32* %49, align 4
  %307 = call i32 @PCKEV_XORI128_UB(i32 %305, i32 %306)
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  store i32 %307, i32* %308, align 4
  %309 = bitcast %struct.TYPE_14__* %16 to i8*
  %310 = bitcast %struct.TYPE_14__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %309, i8* align 4 %310, i64 4, i1 false)
  %311 = load i32*, i32** %4, align 8
  %312 = load i32, i32* %6, align 4
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* %8, align 4
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* %10, align 4
  %317 = call i32 @LD4(i32* %311, i32 %312, i32 %313, i32 %314, i32 %315, i32 %316)
  %318 = load i32, i32* %7, align 4
  %319 = load i32, i32* %8, align 4
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @INSERT_D2_UB(i32 %318, i32 %319, i32 %321)
  %323 = load i32, i32* %9, align 4
  %324 = load i32, i32* %10, align 4
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @INSERT_D2_UB(i32 %323, i32 %324, i32 %326)
  %328 = load i32*, i32** %4, align 8
  %329 = load i32, i32* %6, align 4
  %330 = mul nsw i32 4, %329
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %328, i64 %331
  %333 = load i32, i32* %6, align 4
  %334 = load i32, i32* %7, align 4
  %335 = load i32, i32* %8, align 4
  %336 = load i32, i32* %9, align 4
  %337 = load i32, i32* %10, align 4
  %338 = call i32 @LD4(i32* %332, i32 %333, i32 %334, i32 %335, i32 %336, i32 %337)
  %339 = load i32, i32* %7, align 4
  %340 = load i32, i32* %8, align 4
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @INSERT_D2_UB(i32 %339, i32 %340, i32 %342)
  %344 = load i32, i32* %9, align 4
  %345 = load i32, i32* %10, align 4
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @INSERT_D2_UB(i32 %344, i32 %345, i32 %347)
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @AVER_UB2_UB(i32 %350, i32 %352, i32 %354, i32 %356, i32 %358, i32 %360)
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @AVER_UB2_UB(i32 %363, i32 %365, i32 %367, i32 %369, i32 %371, i32 %373)
  %375 = load i32*, i32** %4, align 8
  %376 = load i32, i32* %6, align 4
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @ST_D8(i32 %378, i32 %380, i32 %382, i32 %384, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %375, i32 %376)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__msa_ldi_b(i32) #2

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @XORI_B8_128_SB(i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @VSHF_B2_SB(i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @HADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @DPADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_D2_UB(i32, i32, i32) #2

declare dso_local i32 @AVER_UB2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
