; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel8_mc01_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel8_mc01_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_h264_qpel8_mc01_msa(i32* %0, i32* %1, i32 %2) #0 {
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
  %14 = alloca %struct.TYPE_15__, align 4
  %15 = alloca %struct.TYPE_15__, align 4
  %16 = alloca %struct.TYPE_15__, align 4
  %17 = alloca %struct.TYPE_15__, align 4
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
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 64257, i32* %11, align 4
  store i32 5140, i32* %12, align 4
  store i32 507, i32* %13, align 4
  %58 = bitcast %struct.TYPE_15__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %58, i8 0, i64 4, i1 false)
  %59 = bitcast %struct.TYPE_15__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %59, i8 0, i64 4, i1 false)
  %60 = bitcast %struct.TYPE_15__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %60, i8 0, i64 4, i1 false)
  %61 = bitcast %struct.TYPE_15__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %61, i8 0, i64 4, i1 false)
  %62 = call i64 @__msa_fill_h(i32 64257)
  store i64 %62, i64* %43, align 8
  %63 = call i64 @__msa_fill_h(i32 5140)
  store i64 %63, i64* %44, align 8
  %64 = call i64 @__msa_fill_h(i32 507)
  store i64 %64, i64* %45, align 8
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %65, 2
  %67 = load i32*, i32** %5, align 8
  %68 = sext i32 %66 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32* %70, i32** %5, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i64, i64* %18, align 8
  %74 = load i64, i64* %19, align 8
  %75 = load i64, i64* %20, align 8
  %76 = load i64, i64* %21, align 8
  %77 = load i64, i64* %22, align 8
  %78 = call i32 @LD_SB5(i32* %71, i32 %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77)
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 5, %79
  %81 = load i32*, i32** %5, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %5, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %19, align 8
  %86 = load i64, i64* %20, align 8
  %87 = load i64, i64* %21, align 8
  %88 = load i64, i64* %22, align 8
  %89 = call i32 @XORI_B5_128_SB(i64 %84, i64 %85, i64 %86, i64 %87, i64 %88)
  %90 = load i64, i64* %19, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %20, align 8
  %93 = load i64, i64* %19, align 8
  %94 = load i64, i64* %21, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load i64, i64* %22, align 8
  %97 = load i64, i64* %21, align 8
  %98 = load i64, i64* %36, align 8
  %99 = load i64, i64* %40, align 8
  %100 = load i64, i64* %37, align 8
  %101 = load i64, i64* %41, align 8
  %102 = call i32 @ILVR_B4_SB(i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i64, i64* %23, align 8
  %106 = load i64, i64* %24, align 8
  %107 = load i64, i64* %25, align 8
  %108 = load i64, i64* %26, align 8
  %109 = load i64, i64* %27, align 8
  %110 = load i64, i64* %28, align 8
  %111 = load i64, i64* %29, align 8
  %112 = load i64, i64* %30, align 8
  %113 = call i32 @LD_SB8(i32* %103, i32 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112)
  %114 = load i64, i64* %23, align 8
  %115 = load i64, i64* %24, align 8
  %116 = load i64, i64* %25, align 8
  %117 = load i64, i64* %26, align 8
  %118 = load i64, i64* %27, align 8
  %119 = load i64, i64* %28, align 8
  %120 = load i64, i64* %29, align 8
  %121 = load i64, i64* %30, align 8
  %122 = call i32 @XORI_B8_128_SB(i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121)
  %123 = load i64, i64* %23, align 8
  %124 = load i64, i64* %22, align 8
  %125 = load i64, i64* %24, align 8
  %126 = load i64, i64* %23, align 8
  %127 = load i64, i64* %25, align 8
  %128 = load i64, i64* %24, align 8
  %129 = load i64, i64* %26, align 8
  %130 = load i64, i64* %25, align 8
  %131 = load i64, i64* %38, align 8
  %132 = load i64, i64* %42, align 8
  %133 = load i64, i64* %39, align 8
  %134 = load i64, i64* %35, align 8
  %135 = call i32 @ILVR_B4_SB(i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  %136 = load i64, i64* %36, align 8
  %137 = load i64, i64* %37, align 8
  %138 = load i64, i64* %38, align 8
  %139 = load i64, i64* %43, align 8
  %140 = load i64, i64* %44, align 8
  %141 = load i64, i64* %45, align 8
  %142 = call i32 @AVC_DOT_SH3_SH(i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141)
  store i32 %142, i32* %50, align 4
  %143 = load i64, i64* %40, align 8
  %144 = load i64, i64* %41, align 8
  %145 = load i64, i64* %42, align 8
  %146 = load i64, i64* %43, align 8
  %147 = load i64, i64* %44, align 8
  %148 = load i64, i64* %45, align 8
  %149 = call i32 @AVC_DOT_SH3_SH(i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148)
  store i32 %149, i32* %51, align 4
  %150 = load i64, i64* %37, align 8
  %151 = load i64, i64* %38, align 8
  %152 = load i64, i64* %39, align 8
  %153 = load i64, i64* %43, align 8
  %154 = load i64, i64* %44, align 8
  %155 = load i64, i64* %45, align 8
  %156 = call i32 @AVC_DOT_SH3_SH(i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155)
  store i32 %156, i32* %52, align 4
  %157 = load i64, i64* %41, align 8
  %158 = load i64, i64* %42, align 8
  %159 = load i64, i64* %35, align 8
  %160 = load i64, i64* %43, align 8
  %161 = load i64, i64* %44, align 8
  %162 = load i64, i64* %45, align 8
  %163 = call i32 @AVC_DOT_SH3_SH(i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162)
  store i32 %163, i32* %53, align 4
  %164 = load i64, i64* %21, align 8
  %165 = load i64, i64* %20, align 8
  %166 = load i64, i64* %23, align 8
  %167 = load i64, i64* %22, align 8
  %168 = load i64, i64* %31, align 8
  %169 = load i64, i64* %32, align 8
  %170 = call i32 @PCKEV_D2_SB(i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169)
  %171 = load i64, i64* %27, align 8
  %172 = load i64, i64* %26, align 8
  %173 = load i64, i64* %28, align 8
  %174 = load i64, i64* %27, align 8
  %175 = load i64, i64* %29, align 8
  %176 = load i64, i64* %28, align 8
  %177 = load i64, i64* %30, align 8
  %178 = load i64, i64* %29, align 8
  %179 = load i64, i64* %36, align 8
  %180 = load i64, i64* %40, align 8
  %181 = load i64, i64* %37, align 8
  %182 = load i64, i64* %41, align 8
  %183 = call i32 @ILVR_B4_SB(i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182)
  %184 = load i64, i64* %38, align 8
  %185 = load i64, i64* %39, align 8
  %186 = load i64, i64* %36, align 8
  %187 = load i64, i64* %43, align 8
  %188 = load i64, i64* %44, align 8
  %189 = load i64, i64* %45, align 8
  %190 = call i32 @AVC_DOT_SH3_SH(i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189)
  store i32 %190, i32* %54, align 4
  %191 = load i64, i64* %42, align 8
  %192 = load i64, i64* %35, align 8
  %193 = load i64, i64* %40, align 8
  %194 = load i64, i64* %43, align 8
  %195 = load i64, i64* %44, align 8
  %196 = load i64, i64* %45, align 8
  %197 = call i32 @AVC_DOT_SH3_SH(i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196)
  store i32 %197, i32* %55, align 4
  %198 = load i64, i64* %39, align 8
  %199 = load i64, i64* %36, align 8
  %200 = load i64, i64* %37, align 8
  %201 = load i64, i64* %43, align 8
  %202 = load i64, i64* %44, align 8
  %203 = load i64, i64* %45, align 8
  %204 = call i32 @AVC_DOT_SH3_SH(i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203)
  store i32 %204, i32* %56, align 4
  %205 = load i64, i64* %35, align 8
  %206 = load i64, i64* %40, align 8
  %207 = load i64, i64* %41, align 8
  %208 = load i64, i64* %43, align 8
  %209 = load i64, i64* %44, align 8
  %210 = load i64, i64* %45, align 8
  %211 = call i32 @AVC_DOT_SH3_SH(i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210)
  store i32 %211, i32* %57, align 4
  %212 = load i64, i64* %25, align 8
  %213 = load i64, i64* %24, align 8
  %214 = load i64, i64* %27, align 8
  %215 = load i64, i64* %26, align 8
  %216 = load i64, i64* %33, align 8
  %217 = load i64, i64* %34, align 8
  %218 = call i32 @PCKEV_D2_SB(i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217)
  %219 = load i32, i32* %50, align 4
  %220 = load i32, i32* %51, align 4
  %221 = load i32, i32* %52, align 4
  %222 = load i32, i32* %53, align 4
  %223 = call i32 @SRARI_H4_SH(i32 %219, i32 %220, i32 %221, i32 %222, i32 5)
  %224 = load i32, i32* %54, align 4
  %225 = load i32, i32* %55, align 4
  %226 = load i32, i32* %56, align 4
  %227 = load i32, i32* %57, align 4
  %228 = call i32 @SRARI_H4_SH(i32 %224, i32 %225, i32 %226, i32 %227, i32 5)
  %229 = load i32, i32* %50, align 4
  %230 = load i32, i32* %51, align 4
  %231 = load i32, i32* %52, align 4
  %232 = load i32, i32* %53, align 4
  %233 = call i32 @SAT_SH4_SH(i32 %229, i32 %230, i32 %231, i32 %232, i32 7)
  %234 = load i32, i32* %54, align 4
  %235 = load i32, i32* %55, align 4
  %236 = load i32, i32* %56, align 4
  %237 = load i32, i32* %57, align 4
  %238 = call i32 @SAT_SH4_SH(i32 %234, i32 %235, i32 %236, i32 %237, i32 7)
  %239 = load i32*, i32** %4, align 8
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @LD4(i32* %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244)
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* %8, align 4
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @INSERT_D2_UB(i32 %246, i32 %247, i32 %249)
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* %10, align 4
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @INSERT_D2_UB(i32 %251, i32 %252, i32 %254)
  %256 = load i32*, i32** %4, align 8
  %257 = load i32, i32* %6, align 4
  %258 = mul nsw i32 4, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  %261 = load i32, i32* %6, align 4
  %262 = load i32, i32* %7, align 4
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* %10, align 4
  %266 = call i32 @LD4(i32* %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265)
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* %8, align 4
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @INSERT_D2_UB(i32 %267, i32 %268, i32 %270)
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* %10, align 4
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @INSERT_D2_UB(i32 %272, i32 %273, i32 %275)
  %277 = load i32, i32* %51, align 4
  %278 = load i32, i32* %50, align 4
  %279 = load i32, i32* %53, align 4
  %280 = load i32, i32* %52, align 4
  %281 = load i64, i64* %46, align 8
  %282 = load i64, i64* %47, align 8
  %283 = call i32 @PCKEV_B2_SB(i32 %277, i32 %278, i32 %279, i32 %280, i64 %281, i64 %282)
  %284 = load i32, i32* %55, align 4
  %285 = load i32, i32* %54, align 4
  %286 = load i32, i32* %57, align 4
  %287 = load i32, i32* %56, align 4
  %288 = load i64, i64* %48, align 8
  %289 = load i64, i64* %49, align 8
  %290 = call i32 @PCKEV_B2_SB(i32 %284, i32 %285, i32 %286, i32 %287, i64 %288, i64 %289)
  %291 = load i64, i64* %46, align 8
  %292 = load i64, i64* %31, align 8
  %293 = call i64 @__msa_aver_s_b(i64 %291, i64 %292)
  store i64 %293, i64* %46, align 8
  %294 = load i64, i64* %47, align 8
  %295 = load i64, i64* %32, align 8
  %296 = call i64 @__msa_aver_s_b(i64 %294, i64 %295)
  store i64 %296, i64* %47, align 8
  %297 = load i64, i64* %48, align 8
  %298 = load i64, i64* %33, align 8
  %299 = call i64 @__msa_aver_s_b(i64 %297, i64 %298)
  store i64 %299, i64* %48, align 8
  %300 = load i64, i64* %49, align 8
  %301 = load i64, i64* %34, align 8
  %302 = call i64 @__msa_aver_s_b(i64 %300, i64 %301)
  store i64 %302, i64* %49, align 8
  %303 = load i64, i64* %46, align 8
  %304 = load i64, i64* %47, align 8
  %305 = load i64, i64* %48, align 8
  %306 = load i64, i64* %49, align 8
  %307 = call i32 @XORI_B4_128_SB(i64 %303, i64 %304, i64 %305, i64 %306)
  %308 = load i64, i64* %46, align 8
  %309 = load i64, i64* %47, align 8
  %310 = load i64, i64* %48, align 8
  %311 = load i64, i64* %49, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @AVER_UB4_UB(i64 %308, i32 %313, i64 %309, i32 %315, i64 %310, i32 %317, i64 %311, i32 %319, i32 %321, i32 %323, i32 %325, i32 %327)
  %329 = load i32*, i32** %4, align 8
  %330 = load i32, i32* %6, align 4
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @ST_D8(i32 %332, i32 %334, i32 %336, i32 %338, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %329, i32 %330)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @__msa_fill_h(i32) #2

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #2

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #2

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @AVC_DOT_SH3_SH(i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @PCKEV_D2_SB(i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_D2_UB(i32, i32, i32) #2

declare dso_local i32 @PCKEV_B2_SB(i32, i32, i32, i32, i64, i64) #2

declare dso_local i64 @__msa_aver_s_b(i64, i64) #2

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #2

declare dso_local i32 @AVER_UB4_UB(i64, i32, i64, i32, i64, i32, i64, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
