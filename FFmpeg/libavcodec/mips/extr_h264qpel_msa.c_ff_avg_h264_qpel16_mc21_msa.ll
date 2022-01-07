; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel16_mc21_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel16_mc21_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_h264_qpel16_mc21_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__, align 4
  %19 = alloca %struct.TYPE_8__, align 4
  %20 = alloca %struct.TYPE_8__, align 4
  %21 = alloca %struct.TYPE_8__, align 4
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
  %72 = alloca %struct.TYPE_8__, align 4
  %73 = alloca %struct.TYPE_8__, align 4
  %74 = alloca %struct.TYPE_8__, align 4
  %75 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %76 = load i32*, i32** %4, align 8
  store i32* %76, i32** %11, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = mul nsw i32 2, %78
  %80 = sext i32 %79 to i64
  %81 = sub i64 0, %80
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = getelementptr inbounds i32, i32* %82, i64 -2
  store i32* %83, i32** %12, align 8
  store i32 -327679, i32* %15, align 4
  store i32 1310740, i32* %16, align 4
  store i32 131067, i32* %17, align 4
  %84 = bitcast %struct.TYPE_8__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %84, i8 0, i64 4, i1 false)
  %85 = bitcast %struct.TYPE_8__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %85, i8 0, i64 4, i1 false)
  %86 = call i64 @__msa_fill_w(i32 -327679)
  store i64 %86, i64* %67, align 8
  %87 = call i64 @__msa_fill_w(i32 1310740)
  store i64 %87, i64* %68, align 8
  %88 = call i64 @__msa_fill_w(i32 131067)
  store i64 %88, i64* %69, align 8
  %89 = load i32*, i32** @luma_mask_arr, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %31, align 4
  %92 = load i32, i32* %32, align 4
  %93 = load i32, i32* %33, align 4
  %94 = call i32 @LD_SB3(i32* %90, i32 16, i32 %91, i32 %92, i32 %93)
  store i32 2, i32* %13, align 4
  br label %95

95:                                               ; preds = %427, %3
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %13, align 4
  %98 = icmp ne i32 %96, 0
  br i1 %98, label %99, label %432

99:                                               ; preds = %95
  %100 = load i32*, i32** %11, align 8
  store i32* %100, i32** %4, align 8
  %101 = load i32*, i32** %12, align 8
  store i32* %101, i32** %5, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %22, align 4
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* %24, align 4
  %107 = load i32, i32* %25, align 4
  %108 = load i32, i32* %26, align 4
  %109 = call i32 @LD_SB5(i32* %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %23, align 4
  %112 = load i32, i32* %24, align 4
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %26, align 4
  %115 = call i32 @XORI_B5_128_SB(i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = mul nsw i32 5, %116
  %118 = load i32*, i32** %5, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %5, align 8
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* %31, align 4
  %124 = load i32, i32* %32, align 4
  %125 = load i32, i32* %33, align 4
  %126 = call i64 @AVC_HORZ_FILTER_SH(i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  store i64 %126, i64* %34, align 8
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* %31, align 4
  %130 = load i32, i32* %32, align 4
  %131 = load i32, i32* %33, align 4
  %132 = call i64 @AVC_HORZ_FILTER_SH(i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  store i64 %132, i64* %35, align 8
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* %24, align 4
  %135 = load i32, i32* %31, align 4
  %136 = load i32, i32* %32, align 4
  %137 = load i32, i32* %33, align 4
  %138 = call i64 @AVC_HORZ_FILTER_SH(i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  store i64 %138, i64* %36, align 8
  %139 = load i32, i32* %25, align 4
  %140 = load i32, i32* %25, align 4
  %141 = load i32, i32* %31, align 4
  %142 = load i32, i32* %32, align 4
  %143 = load i32, i32* %33, align 4
  %144 = call i64 @AVC_HORZ_FILTER_SH(i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  store i64 %144, i64* %37, align 8
  %145 = load i32, i32* %26, align 4
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %31, align 4
  %148 = load i32, i32* %32, align 4
  %149 = load i32, i32* %33, align 4
  %150 = call i64 @AVC_HORZ_FILTER_SH(i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  store i64 %150, i64* %38, align 8
  store i32 4, i32* %14, align 4
  br label %151

151:                                              ; preds = %155, %99
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %14, align 4
  %154 = icmp ne i32 %152, 0
  br i1 %154, label %155, label %427

155:                                              ; preds = %151
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %27, align 4
  %159 = load i32, i32* %28, align 4
  %160 = call i32 @LD_SB2(i32* %156, i32 %157, i32 %158, i32 %159)
  %161 = load i32, i32* %6, align 4
  %162 = mul nsw i32 2, %161
  %163 = load i32*, i32** %5, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32* %165, i32** %5, align 8
  %166 = load i32, i32* %27, align 4
  %167 = load i32, i32* %28, align 4
  %168 = call i32 @XORI_B2_128_SB(i32 %166, i32 %167)
  %169 = load i32, i32* %27, align 4
  %170 = load i32, i32* %27, align 4
  %171 = load i32, i32* %31, align 4
  %172 = load i32, i32* %32, align 4
  %173 = load i32, i32* %33, align 4
  %174 = call i64 @AVC_HORZ_FILTER_SH(i32 %169, i32 %170, i32 %171, i32 %172, i32 %173)
  store i64 %174, i64* %39, align 8
  %175 = load i32, i32* %28, align 4
  %176 = load i32, i32* %28, align 4
  %177 = load i32, i32* %31, align 4
  %178 = load i32, i32* %32, align 4
  %179 = load i32, i32* %33, align 4
  %180 = call i64 @AVC_HORZ_FILTER_SH(i32 %175, i32 %176, i32 %177, i32 %178, i32 %179)
  store i64 %180, i64* %40, align 8
  %181 = load i64, i64* %35, align 8
  %182 = load i64, i64* %34, align 8
  %183 = load i64, i64* %36, align 8
  %184 = load i64, i64* %35, align 8
  %185 = load i64, i64* %37, align 8
  %186 = load i64, i64* %36, align 8
  %187 = load i64, i64* %38, align 8
  %188 = load i64, i64* %37, align 8
  %189 = load i64, i64* %51, align 8
  %190 = load i64, i64* %52, align 8
  %191 = load i64, i64* %53, align 8
  %192 = load i64, i64* %54, align 8
  %193 = call i32 @ILVR_H4_SH(i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  %194 = load i64, i64* %35, align 8
  %195 = load i64, i64* %34, align 8
  %196 = load i64, i64* %36, align 8
  %197 = load i64, i64* %35, align 8
  %198 = load i64, i64* %37, align 8
  %199 = load i64, i64* %36, align 8
  %200 = load i64, i64* %38, align 8
  %201 = load i64, i64* %37, align 8
  %202 = load i64, i64* %59, align 8
  %203 = load i64, i64* %60, align 8
  %204 = load i64, i64* %61, align 8
  %205 = load i64, i64* %62, align 8
  %206 = call i32 @ILVL_H4_SH(i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205)
  %207 = load i64, i64* %39, align 8
  %208 = load i64, i64* %38, align 8
  %209 = load i64, i64* %40, align 8
  %210 = load i64, i64* %39, align 8
  %211 = load i64, i64* %55, align 8
  %212 = load i64, i64* %56, align 8
  %213 = call i32 @ILVR_H2_SH(i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212)
  %214 = load i64, i64* %39, align 8
  %215 = load i64, i64* %38, align 8
  %216 = load i64, i64* %40, align 8
  %217 = load i64, i64* %39, align 8
  %218 = load i64, i64* %63, align 8
  %219 = load i64, i64* %64, align 8
  %220 = call i32 @ILVL_H2_SH(i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219)
  %221 = load i64, i64* %51, align 8
  %222 = load i64, i64* %53, align 8
  %223 = load i64, i64* %55, align 8
  %224 = load i64, i64* %67, align 8
  %225 = load i64, i64* %68, align 8
  %226 = load i64, i64* %69, align 8
  %227 = call i64 @AVC_DOT_SW3_SW(i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226)
  store i64 %227, i64* %70, align 8
  %228 = load i64, i64* %59, align 8
  %229 = load i64, i64* %61, align 8
  %230 = load i64, i64* %63, align 8
  %231 = load i64, i64* %67, align 8
  %232 = load i64, i64* %68, align 8
  %233 = load i64, i64* %69, align 8
  %234 = call i64 @AVC_DOT_SW3_SW(i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233)
  store i64 %234, i64* %71, align 8
  %235 = load i64, i64* %71, align 8
  %236 = load i64, i64* %70, align 8
  %237 = call i64 @__msa_pckev_h(i64 %235, i64 %236)
  store i64 %237, i64* %43, align 8
  %238 = load i64, i64* %52, align 8
  %239 = load i64, i64* %54, align 8
  %240 = load i64, i64* %56, align 8
  %241 = load i64, i64* %67, align 8
  %242 = load i64, i64* %68, align 8
  %243 = load i64, i64* %69, align 8
  %244 = call i64 @AVC_DOT_SW3_SW(i64 %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243)
  store i64 %244, i64* %70, align 8
  %245 = load i64, i64* %60, align 8
  %246 = load i64, i64* %62, align 8
  %247 = load i64, i64* %64, align 8
  %248 = load i64, i64* %67, align 8
  %249 = load i64, i64* %68, align 8
  %250 = load i64, i64* %69, align 8
  %251 = call i64 @AVC_DOT_SW3_SW(i64 %245, i64 %246, i64 %247, i64 %248, i64 %249, i64 %250)
  store i64 %251, i64* %71, align 8
  %252 = load i64, i64* %71, align 8
  %253 = load i64, i64* %70, align 8
  %254 = call i64 @__msa_pckev_h(i64 %252, i64 %253)
  store i64 %254, i64* %45, align 8
  %255 = load i64, i64* %36, align 8
  %256 = call i64 @__msa_srari_h(i64 %255, i32 5)
  store i64 %256, i64* %44, align 8
  %257 = load i64, i64* %37, align 8
  %258 = call i64 @__msa_srari_h(i64 %257, i32 5)
  store i64 %258, i64* %46, align 8
  %259 = load i64, i64* %44, align 8
  %260 = load i64, i64* %46, align 8
  %261 = call i32 @SAT_SH2_SH(i64 %259, i64 %260, i32 7)
  %262 = load i64, i64* %43, align 8
  %263 = load i64, i64* %44, align 8
  %264 = call i64 @__msa_aver_s_h(i64 %262, i64 %263)
  store i64 %264, i64* %43, align 8
  %265 = load i64, i64* %45, align 8
  %266 = load i64, i64* %46, align 8
  %267 = call i64 @__msa_aver_s_h(i64 %265, i64 %266)
  store i64 %267, i64* %44, align 8
  %268 = load i32*, i32** %4, align 8
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* %7, align 4
  %271 = load i32, i32* %8, align 4
  %272 = call i32 @LD2(i32* %268, i32 %269, i32 %270, i32 %271)
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* %8, align 4
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @INSERT_D2_UB(i32 %273, i32 %274, i32 %276)
  %278 = load i64, i64* %43, align 8
  %279 = load i64, i64* %44, align 8
  %280 = call i32 @PCKEV_XORI128_UB(i64 %278, i64 %279)
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 %280, i32* %281, align 4
  %282 = bitcast %struct.TYPE_8__* %18 to i8*
  %283 = bitcast %struct.TYPE_8__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %282, i8* align 4 %283, i64 4, i1 false)
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @__msa_aver_u_b(i32 %285, i32 %287)
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %288, i32* %289, align 4
  %290 = bitcast %struct.TYPE_8__* %20 to i8*
  %291 = bitcast %struct.TYPE_8__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %290, i8* align 4 %291, i64 4, i1 false)
  %292 = load i32*, i32** %4, align 8
  %293 = load i32, i32* %6, align 4
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @ST_D2(i32 %295, i32 0, i32 1, i32* %292, i32 %293)
  %297 = load i32, i32* %6, align 4
  %298 = mul nsw i32 2, %297
  %299 = load i32*, i32** %4, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32* %301, i32** %4, align 8
  %302 = load i32*, i32** %5, align 8
  %303 = load i32, i32* %6, align 4
  %304 = load i32, i32* %29, align 4
  %305 = load i32, i32* %30, align 4
  %306 = call i32 @LD_SB2(i32* %302, i32 %303, i32 %304, i32 %305)
  %307 = load i32, i32* %6, align 4
  %308 = mul nsw i32 2, %307
  %309 = load i32*, i32** %5, align 8
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  store i32* %311, i32** %5, align 8
  %312 = load i32, i32* %29, align 4
  %313 = load i32, i32* %30, align 4
  %314 = call i32 @XORI_B2_128_SB(i32 %312, i32 %313)
  %315 = load i32, i32* %29, align 4
  %316 = load i32, i32* %29, align 4
  %317 = load i32, i32* %31, align 4
  %318 = load i32, i32* %32, align 4
  %319 = load i32, i32* %33, align 4
  %320 = call i64 @AVC_HORZ_FILTER_SH(i32 %315, i32 %316, i32 %317, i32 %318, i32 %319)
  store i64 %320, i64* %41, align 8
  %321 = load i32, i32* %30, align 4
  %322 = load i32, i32* %30, align 4
  %323 = load i32, i32* %31, align 4
  %324 = load i32, i32* %32, align 4
  %325 = load i32, i32* %33, align 4
  %326 = call i64 @AVC_HORZ_FILTER_SH(i32 %321, i32 %322, i32 %323, i32 %324, i32 %325)
  store i64 %326, i64* %42, align 8
  %327 = load i64, i64* %41, align 8
  %328 = load i64, i64* %40, align 8
  %329 = load i64, i64* %42, align 8
  %330 = load i64, i64* %41, align 8
  %331 = load i64, i64* %57, align 8
  %332 = load i64, i64* %58, align 8
  %333 = call i32 @ILVR_H2_SH(i64 %327, i64 %328, i64 %329, i64 %330, i64 %331, i64 %332)
  %334 = load i64, i64* %41, align 8
  %335 = load i64, i64* %40, align 8
  %336 = load i64, i64* %42, align 8
  %337 = load i64, i64* %41, align 8
  %338 = load i64, i64* %65, align 8
  %339 = load i64, i64* %66, align 8
  %340 = call i32 @ILVL_H2_SH(i64 %334, i64 %335, i64 %336, i64 %337, i64 %338, i64 %339)
  %341 = load i64, i64* %53, align 8
  %342 = load i64, i64* %55, align 8
  %343 = load i64, i64* %57, align 8
  %344 = load i64, i64* %67, align 8
  %345 = load i64, i64* %68, align 8
  %346 = load i64, i64* %69, align 8
  %347 = call i64 @AVC_DOT_SW3_SW(i64 %341, i64 %342, i64 %343, i64 %344, i64 %345, i64 %346)
  store i64 %347, i64* %70, align 8
  %348 = load i64, i64* %61, align 8
  %349 = load i64, i64* %63, align 8
  %350 = load i64, i64* %65, align 8
  %351 = load i64, i64* %67, align 8
  %352 = load i64, i64* %68, align 8
  %353 = load i64, i64* %69, align 8
  %354 = call i64 @AVC_DOT_SW3_SW(i64 %348, i64 %349, i64 %350, i64 %351, i64 %352, i64 %353)
  store i64 %354, i64* %71, align 8
  %355 = load i64, i64* %71, align 8
  %356 = load i64, i64* %70, align 8
  %357 = call i64 @__msa_pckev_h(i64 %355, i64 %356)
  store i64 %357, i64* %47, align 8
  %358 = load i64, i64* %54, align 8
  %359 = load i64, i64* %56, align 8
  %360 = load i64, i64* %58, align 8
  %361 = load i64, i64* %67, align 8
  %362 = load i64, i64* %68, align 8
  %363 = load i64, i64* %69, align 8
  %364 = call i64 @AVC_DOT_SW3_SW(i64 %358, i64 %359, i64 %360, i64 %361, i64 %362, i64 %363)
  store i64 %364, i64* %70, align 8
  %365 = load i64, i64* %62, align 8
  %366 = load i64, i64* %64, align 8
  %367 = load i64, i64* %66, align 8
  %368 = load i64, i64* %67, align 8
  %369 = load i64, i64* %68, align 8
  %370 = load i64, i64* %69, align 8
  %371 = call i64 @AVC_DOT_SW3_SW(i64 %365, i64 %366, i64 %367, i64 %368, i64 %369, i64 %370)
  store i64 %371, i64* %71, align 8
  %372 = load i64, i64* %71, align 8
  %373 = load i64, i64* %70, align 8
  %374 = call i64 @__msa_pckev_h(i64 %372, i64 %373)
  store i64 %374, i64* %49, align 8
  %375 = load i64, i64* %38, align 8
  %376 = call i64 @__msa_srari_h(i64 %375, i32 5)
  store i64 %376, i64* %48, align 8
  %377 = load i64, i64* %39, align 8
  %378 = call i64 @__msa_srari_h(i64 %377, i32 5)
  store i64 %378, i64* %50, align 8
  %379 = load i64, i64* %48, align 8
  %380 = load i64, i64* %50, align 8
  %381 = call i32 @SAT_SH2_SH(i64 %379, i64 %380, i32 7)
  %382 = load i64, i64* %47, align 8
  %383 = load i64, i64* %48, align 8
  %384 = call i64 @__msa_aver_s_h(i64 %382, i64 %383)
  store i64 %384, i64* %45, align 8
  %385 = load i64, i64* %49, align 8
  %386 = load i64, i64* %50, align 8
  %387 = call i64 @__msa_aver_s_h(i64 %385, i64 %386)
  store i64 %387, i64* %46, align 8
  %388 = load i32*, i32** %4, align 8
  %389 = load i32, i32* %6, align 4
  %390 = load i32, i32* %9, align 4
  %391 = load i32, i32* %10, align 4
  %392 = call i32 @LD2(i32* %388, i32 %389, i32 %390, i32 %391)
  %393 = load i32, i32* %9, align 4
  %394 = load i32, i32* %10, align 4
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @INSERT_D2_UB(i32 %393, i32 %394, i32 %396)
  %398 = load i64, i64* %45, align 8
  %399 = load i64, i64* %46, align 8
  %400 = call i32 @PCKEV_XORI128_UB(i64 %398, i64 %399)
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 %400, i32* %401, align 4
  %402 = bitcast %struct.TYPE_8__* %19 to i8*
  %403 = bitcast %struct.TYPE_8__* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %402, i8* align 4 %403, i64 4, i1 false)
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @__msa_aver_u_b(i32 %405, i32 %407)
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %408, i32* %409, align 4
  %410 = bitcast %struct.TYPE_8__* %21 to i8*
  %411 = bitcast %struct.TYPE_8__* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %410, i8* align 4 %411, i64 4, i1 false)
  %412 = load i32*, i32** %4, align 8
  %413 = load i32, i32* %6, align 4
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @ST_D2(i32 %415, i32 0, i32 1, i32* %412, i32 %413)
  %417 = load i32, i32* %6, align 4
  %418 = mul nsw i32 2, %417
  %419 = load i32*, i32** %4, align 8
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds i32, i32* %419, i64 %420
  store i32* %421, i32** %4, align 8
  %422 = load i64, i64* %38, align 8
  store i64 %422, i64* %34, align 8
  %423 = load i64, i64* %39, align 8
  store i64 %423, i64* %35, align 8
  %424 = load i64, i64* %40, align 8
  store i64 %424, i64* %36, align 8
  %425 = load i64, i64* %41, align 8
  store i64 %425, i64* %37, align 8
  %426 = load i64, i64* %42, align 8
  store i64 %426, i64* %38, align 8
  br label %151

427:                                              ; preds = %151
  %428 = load i32*, i32** %12, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 8
  store i32* %429, i32** %12, align 8
  %430 = load i32*, i32** %11, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 8
  store i32* %431, i32** %11, align 8
  br label %95

432:                                              ; preds = %95
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @__msa_fill_w(i32) #2

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @XORI_B5_128_SB(i32, i32, i32, i32, i32) #2

declare dso_local i64 @AVC_HORZ_FILTER_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #2

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #2

declare dso_local i32 @ILVR_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @ILVL_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @ILVR_H2_SH(i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @ILVL_H2_SH(i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @AVC_DOT_SW3_SW(i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @__msa_pckev_h(i64, i64) #2

declare dso_local i64 @__msa_srari_h(i64, i32) #2

declare dso_local i32 @SAT_SH2_SH(i64, i64, i32) #2

declare dso_local i64 @__msa_aver_s_h(i64, i64) #2

declare dso_local i32 @LD2(i32*, i32, i32, i32) #2

declare dso_local i32 @INSERT_D2_UB(i32, i32, i32) #2

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__msa_aver_u_b(i32, i32) #2

declare dso_local i32 @ST_D2(i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
