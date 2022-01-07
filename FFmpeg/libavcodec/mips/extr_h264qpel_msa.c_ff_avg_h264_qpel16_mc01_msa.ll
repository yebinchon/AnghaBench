; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel16_mc01_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel16_mc01_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_h264_qpel16_mc01_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
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
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 64257, i32* %8, align 4
  store i32 5140, i32* %9, align 4
  store i32 507, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @__msa_fill_h(i32 %55)
  store i64 %56, i64* %44, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @__msa_fill_h(i32 %57)
  store i64 %58, i64* %45, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @__msa_fill_h(i32 %59)
  store i64 %60, i64* %46, align 8
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %61, 2
  %63 = load i32*, i32** %5, align 8
  %64 = sext i32 %62 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %5, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* %20, align 8
  %71 = load i64, i64* %21, align 8
  %72 = load i64, i64* %22, align 8
  %73 = load i64, i64* %23, align 8
  %74 = call i32 @LD_SB5(i32* %67, i32 %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73)
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 5, %75
  %77 = load i32*, i32** %5, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %5, align 8
  %80 = load i64, i64* %19, align 8
  %81 = load i64, i64* %20, align 8
  %82 = load i64, i64* %21, align 8
  %83 = load i64, i64* %22, align 8
  %84 = load i64, i64* %23, align 8
  %85 = call i32 @XORI_B5_128_SB(i64 %80, i64 %81, i64 %82, i64 %83, i64 %84)
  %86 = load i64, i64* %20, align 8
  %87 = load i64, i64* %19, align 8
  %88 = load i64, i64* %21, align 8
  %89 = load i64, i64* %20, align 8
  %90 = load i64, i64* %22, align 8
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* %23, align 8
  %93 = load i64, i64* %22, align 8
  %94 = load i64, i64* %28, align 8
  %95 = load i64, i64* %32, align 8
  %96 = load i64, i64* %29, align 8
  %97 = load i64, i64* %33, align 8
  %98 = call i32 @ILVR_B4_SB(i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97)
  %99 = load i64, i64* %20, align 8
  %100 = load i64, i64* %19, align 8
  %101 = load i64, i64* %21, align 8
  %102 = load i64, i64* %20, align 8
  %103 = load i64, i64* %22, align 8
  %104 = load i64, i64* %21, align 8
  %105 = load i64, i64* %23, align 8
  %106 = load i64, i64* %22, align 8
  %107 = load i64, i64* %36, align 8
  %108 = load i64, i64* %40, align 8
  %109 = load i64, i64* %37, align 8
  %110 = load i64, i64* %41, align 8
  %111 = call i32 @ILVL_B4_SB(i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110)
  store i32 4, i32* %7, align 4
  br label %112

112:                                              ; preds = %116, %3
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %7, align 4
  %115 = icmp ne i32 %113, 0
  br i1 %115, label %116, label %310

116:                                              ; preds = %112
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i64, i64* %24, align 8
  %120 = load i64, i64* %25, align 8
  %121 = load i64, i64* %26, align 8
  %122 = load i64, i64* %27, align 8
  %123 = call i32 @LD_SB4(i32* %117, i32 %118, i64 %119, i64 %120, i64 %121, i64 %122)
  %124 = load i32, i32* %6, align 4
  %125 = mul nsw i32 4, %124
  %126 = load i32*, i32** %5, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %5, align 8
  %129 = load i64, i64* %24, align 8
  %130 = load i64, i64* %25, align 8
  %131 = load i64, i64* %26, align 8
  %132 = load i64, i64* %27, align 8
  %133 = call i32 @XORI_B4_128_SB(i64 %129, i64 %130, i64 %131, i64 %132)
  %134 = load i64, i64* %24, align 8
  %135 = load i64, i64* %23, align 8
  %136 = load i64, i64* %25, align 8
  %137 = load i64, i64* %24, align 8
  %138 = load i64, i64* %26, align 8
  %139 = load i64, i64* %25, align 8
  %140 = load i64, i64* %27, align 8
  %141 = load i64, i64* %26, align 8
  %142 = load i64, i64* %30, align 8
  %143 = load i64, i64* %34, align 8
  %144 = load i64, i64* %31, align 8
  %145 = load i64, i64* %35, align 8
  %146 = call i32 @ILVR_B4_SB(i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145)
  %147 = load i64, i64* %24, align 8
  %148 = load i64, i64* %23, align 8
  %149 = load i64, i64* %25, align 8
  %150 = load i64, i64* %24, align 8
  %151 = load i64, i64* %26, align 8
  %152 = load i64, i64* %25, align 8
  %153 = load i64, i64* %27, align 8
  %154 = load i64, i64* %26, align 8
  %155 = load i64, i64* %38, align 8
  %156 = load i64, i64* %42, align 8
  %157 = load i64, i64* %39, align 8
  %158 = load i64, i64* %43, align 8
  %159 = call i32 @ILVL_B4_SB(i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158)
  %160 = load i64, i64* %28, align 8
  %161 = load i64, i64* %29, align 8
  %162 = load i64, i64* %30, align 8
  %163 = load i64, i64* %44, align 8
  %164 = load i64, i64* %45, align 8
  %165 = load i64, i64* %46, align 8
  %166 = call i32 @AVC_DOT_SH3_SH(i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165)
  store i32 %166, i32* %47, align 4
  %167 = load i64, i64* %32, align 8
  %168 = load i64, i64* %33, align 8
  %169 = load i64, i64* %34, align 8
  %170 = load i64, i64* %44, align 8
  %171 = load i64, i64* %45, align 8
  %172 = load i64, i64* %46, align 8
  %173 = call i32 @AVC_DOT_SH3_SH(i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172)
  store i32 %173, i32* %48, align 4
  %174 = load i64, i64* %29, align 8
  %175 = load i64, i64* %30, align 8
  %176 = load i64, i64* %31, align 8
  %177 = load i64, i64* %44, align 8
  %178 = load i64, i64* %45, align 8
  %179 = load i64, i64* %46, align 8
  %180 = call i32 @AVC_DOT_SH3_SH(i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179)
  store i32 %180, i32* %49, align 4
  %181 = load i64, i64* %33, align 8
  %182 = load i64, i64* %34, align 8
  %183 = load i64, i64* %35, align 8
  %184 = load i64, i64* %44, align 8
  %185 = load i64, i64* %45, align 8
  %186 = load i64, i64* %46, align 8
  %187 = call i32 @AVC_DOT_SH3_SH(i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186)
  store i32 %187, i32* %50, align 4
  %188 = load i64, i64* %36, align 8
  %189 = load i64, i64* %37, align 8
  %190 = load i64, i64* %38, align 8
  %191 = load i64, i64* %44, align 8
  %192 = load i64, i64* %45, align 8
  %193 = load i64, i64* %46, align 8
  %194 = call i32 @AVC_DOT_SH3_SH(i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193)
  store i32 %194, i32* %51, align 4
  %195 = load i64, i64* %40, align 8
  %196 = load i64, i64* %41, align 8
  %197 = load i64, i64* %42, align 8
  %198 = load i64, i64* %44, align 8
  %199 = load i64, i64* %45, align 8
  %200 = load i64, i64* %46, align 8
  %201 = call i32 @AVC_DOT_SH3_SH(i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200)
  store i32 %201, i32* %52, align 4
  %202 = load i64, i64* %37, align 8
  %203 = load i64, i64* %38, align 8
  %204 = load i64, i64* %39, align 8
  %205 = load i64, i64* %44, align 8
  %206 = load i64, i64* %45, align 8
  %207 = load i64, i64* %46, align 8
  %208 = call i32 @AVC_DOT_SH3_SH(i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207)
  store i32 %208, i32* %53, align 4
  %209 = load i64, i64* %41, align 8
  %210 = load i64, i64* %42, align 8
  %211 = load i64, i64* %43, align 8
  %212 = load i64, i64* %44, align 8
  %213 = load i64, i64* %45, align 8
  %214 = load i64, i64* %46, align 8
  %215 = call i32 @AVC_DOT_SH3_SH(i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214)
  store i32 %215, i32* %54, align 4
  %216 = load i32, i32* %47, align 4
  %217 = load i32, i32* %48, align 4
  %218 = load i32, i32* %49, align 4
  %219 = load i32, i32* %50, align 4
  %220 = call i32 @SRARI_H4_SH(i32 %216, i32 %217, i32 %218, i32 %219, i32 5)
  %221 = load i32, i32* %47, align 4
  %222 = load i32, i32* %48, align 4
  %223 = load i32, i32* %49, align 4
  %224 = load i32, i32* %50, align 4
  %225 = call i32 @SAT_SH4_SH(i32 %221, i32 %222, i32 %223, i32 %224, i32 7)
  %226 = load i32, i32* %51, align 4
  %227 = load i32, i32* %52, align 4
  %228 = load i32, i32* %53, align 4
  %229 = load i32, i32* %54, align 4
  %230 = call i32 @SRARI_H4_SH(i32 %226, i32 %227, i32 %228, i32 %229, i32 5)
  %231 = load i32, i32* %51, align 4
  %232 = load i32, i32* %52, align 4
  %233 = load i32, i32* %53, align 4
  %234 = load i32, i32* %54, align 4
  %235 = call i32 @SAT_SH4_SH(i32 %231, i32 %232, i32 %233, i32 %234, i32 7)
  %236 = load i32, i32* %51, align 4
  %237 = load i32, i32* %47, align 4
  %238 = load i32, i32* %52, align 4
  %239 = load i32, i32* %48, align 4
  %240 = load i32, i32* %53, align 4
  %241 = load i32, i32* %49, align 4
  %242 = load i32, i32* %54, align 4
  %243 = load i32, i32* %50, align 4
  %244 = load i64, i64* %11, align 8
  %245 = load i64, i64* %12, align 8
  %246 = load i64, i64* %13, align 8
  %247 = load i64, i64* %14, align 8
  %248 = call i32 @PCKEV_B4_UB(i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i64 %244, i64 %245, i64 %246, i64 %247)
  %249 = load i64, i64* %11, align 8
  %250 = load i64, i64* %21, align 8
  %251 = call i64 @__msa_aver_s_b(i64 %249, i64 %250)
  store i64 %251, i64* %11, align 8
  %252 = load i64, i64* %12, align 8
  %253 = load i64, i64* %22, align 8
  %254 = call i64 @__msa_aver_s_b(i64 %252, i64 %253)
  store i64 %254, i64* %12, align 8
  %255 = load i64, i64* %13, align 8
  %256 = load i64, i64* %23, align 8
  %257 = call i64 @__msa_aver_s_b(i64 %255, i64 %256)
  store i64 %257, i64* %13, align 8
  %258 = load i64, i64* %14, align 8
  %259 = load i64, i64* %24, align 8
  %260 = call i64 @__msa_aver_s_b(i64 %258, i64 %259)
  store i64 %260, i64* %14, align 8
  %261 = load i32*, i32** %4, align 8
  %262 = load i32, i32* %6, align 4
  %263 = load i64, i64* %15, align 8
  %264 = load i64, i64* %16, align 8
  %265 = load i64, i64* %17, align 8
  %266 = load i64, i64* %18, align 8
  %267 = call i32 @LD_UB4(i32* %261, i32 %262, i64 %263, i64 %264, i64 %265, i64 %266)
  %268 = load i64, i64* %11, align 8
  %269 = load i64, i64* %12, align 8
  %270 = load i64, i64* %13, align 8
  %271 = load i64, i64* %14, align 8
  %272 = call i32 @XORI_B4_128_UB(i64 %268, i64 %269, i64 %270, i64 %271)
  %273 = load i64, i64* %11, align 8
  %274 = load i64, i64* %15, align 8
  %275 = load i64, i64* %12, align 8
  %276 = load i64, i64* %16, align 8
  %277 = load i64, i64* %15, align 8
  %278 = load i64, i64* %16, align 8
  %279 = call i32 @AVER_UB2_UB(i64 %273, i64 %274, i64 %275, i64 %276, i64 %277, i64 %278)
  %280 = load i64, i64* %13, align 8
  %281 = load i64, i64* %17, align 8
  %282 = load i64, i64* %14, align 8
  %283 = load i64, i64* %18, align 8
  %284 = load i64, i64* %17, align 8
  %285 = load i64, i64* %18, align 8
  %286 = call i32 @AVER_UB2_UB(i64 %280, i64 %281, i64 %282, i64 %283, i64 %284, i64 %285)
  %287 = load i64, i64* %15, align 8
  %288 = load i64, i64* %16, align 8
  %289 = load i64, i64* %17, align 8
  %290 = load i64, i64* %18, align 8
  %291 = load i32*, i32** %4, align 8
  %292 = load i32, i32* %6, align 4
  %293 = call i32 @ST_UB4(i64 %287, i64 %288, i64 %289, i64 %290, i32* %291, i32 %292)
  %294 = load i32, i32* %6, align 4
  %295 = mul nsw i32 4, %294
  %296 = load i32*, i32** %4, align 8
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  store i32* %298, i32** %4, align 8
  %299 = load i64, i64* %30, align 8
  store i64 %299, i64* %28, align 8
  %300 = load i64, i64* %31, align 8
  store i64 %300, i64* %29, align 8
  %301 = load i64, i64* %34, align 8
  store i64 %301, i64* %32, align 8
  %302 = load i64, i64* %35, align 8
  store i64 %302, i64* %33, align 8
  %303 = load i64, i64* %38, align 8
  store i64 %303, i64* %36, align 8
  %304 = load i64, i64* %39, align 8
  store i64 %304, i64* %37, align 8
  %305 = load i64, i64* %42, align 8
  store i64 %305, i64* %40, align 8
  %306 = load i64, i64* %43, align 8
  store i64 %306, i64* %41, align 8
  %307 = load i64, i64* %25, align 8
  store i64 %307, i64* %21, align 8
  %308 = load i64, i64* %26, align 8
  store i64 %308, i64* %22, align 8
  %309 = load i64, i64* %27, align 8
  store i64 %309, i64* %23, align 8
  br label %112

310:                                              ; preds = %112
  ret void
}

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @AVC_DOT_SH3_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_aver_s_b(i64, i64) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_UB(i64, i64, i64, i64) #1

declare dso_local i32 @AVER_UB2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ST_UB4(i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
