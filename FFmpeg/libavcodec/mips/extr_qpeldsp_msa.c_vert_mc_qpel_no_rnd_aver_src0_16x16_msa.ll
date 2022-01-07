; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_no_rnd_aver_src0_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_no_rnd_aver_src0_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @vert_mc_qpel_no_rnd_aver_src0_16x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vert_mc_qpel_no_rnd_aver_src0_16x16_msa(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %30 = call i32 @__msa_ldi_b(i32 20)
  store i32 %30, i32* %27, align 4
  %31 = call i32 @__msa_ldi_b(i32 6)
  store i32 %31, i32* %28, align 4
  %32 = call i32 @__msa_ldi_b(i32 3)
  store i32 %32, i32* %29, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @LD_UB5(i32* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 5, %41
  %43 = load i32*, i32** %5, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %27, align 4
  %55 = load i32, i32* %28, align 4
  %56 = load i32, i32* %29, align 4
  %57 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %26, align 4
  %58 = load i32, i32* %26, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @__msa_ave_u_b(i32 %58, i32 %59)
  store i32 %60, i32* %26, align 4
  %61 = load i32, i32* %26, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @ST_UB(i32 %61, i32* %62)
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @LD_UB(i32* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %27, align 4
  %83 = load i32, i32* %28, align 4
  %84 = load i32, i32* %29, align 4
  %85 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %26, align 4
  %86 = load i32, i32* %26, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @__msa_ave_u_b(i32 %86, i32 %87)
  store i32 %88, i32* %26, align 4
  %89 = load i32, i32* %26, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @ST_UB(i32 %89, i32* %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %7, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @LD_UB(i32* %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %5, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %27, align 4
  %111 = load i32, i32* %28, align 4
  %112 = load i32, i32* %29, align 4
  %113 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %26, align 4
  %114 = load i32, i32* %26, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @__msa_ave_u_b(i32 %114, i32 %115)
  store i32 %116, i32* %26, align 4
  %117 = load i32, i32* %26, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @ST_UB(i32 %117, i32* %118)
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %7, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @LD_UB(i32* %124)
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %5, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* %28, align 4
  %140 = load i32, i32* %29, align 4
  %141 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %26, align 4
  %142 = load i32, i32* %26, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @__msa_ave_u_b(i32 %142, i32 %143)
  store i32 %144, i32* %26, align 4
  %145 = load i32, i32* %26, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @ST_UB(i32 %145, i32* %146)
  %148 = load i32, i32* %8, align 4
  %149 = load i32*, i32** %7, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %7, align 8
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @LD_UB(i32* %152)
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32*, i32** %5, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32* %157, i32** %5, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %27, align 4
  %167 = load i32, i32* %28, align 4
  %168 = load i32, i32* %29, align 4
  %169 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168)
  store i32 %169, i32* %26, align 4
  %170 = load i32, i32* %26, align 4
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @__msa_ave_u_b(i32 %170, i32 %171)
  store i32 %172, i32* %26, align 4
  %173 = load i32, i32* %26, align 4
  %174 = load i32*, i32** %7, align 8
  %175 = call i32 @ST_UB(i32 %173, i32* %174)
  %176 = load i32, i32* %8, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32* %179, i32** %7, align 8
  %180 = load i32*, i32** %5, align 8
  %181 = call i32 @LD_UB(i32* %180)
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load i32*, i32** %5, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %5, align 8
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %27, align 4
  %195 = load i32, i32* %28, align 4
  %196 = load i32, i32* %29, align 4
  %197 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196)
  store i32 %197, i32* %26, align 4
  %198 = load i32, i32* %26, align 4
  %199 = load i32, i32* %14, align 4
  %200 = call i32 @__msa_ave_u_b(i32 %198, i32 %199)
  store i32 %200, i32* %26, align 4
  %201 = load i32, i32* %26, align 4
  %202 = load i32*, i32** %7, align 8
  %203 = call i32 @ST_UB(i32 %201, i32* %202)
  %204 = load i32, i32* %8, align 4
  %205 = load i32*, i32** %7, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32* %207, i32** %7, align 8
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @LD_UB(i32* %208)
  store i32 %209, i32* %19, align 4
  %210 = load i32, i32* %6, align 4
  %211 = load i32*, i32** %5, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32* %213, i32** %5, align 8
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* %19, align 4
  %222 = load i32, i32* %27, align 4
  %223 = load i32, i32* %28, align 4
  %224 = load i32, i32* %29, align 4
  %225 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224)
  store i32 %225, i32* %26, align 4
  %226 = load i32, i32* %26, align 4
  %227 = load i32, i32* %15, align 4
  %228 = call i32 @__msa_ave_u_b(i32 %226, i32 %227)
  store i32 %228, i32* %26, align 4
  %229 = load i32, i32* %26, align 4
  %230 = load i32*, i32** %7, align 8
  %231 = call i32 @ST_UB(i32 %229, i32* %230)
  %232 = load i32, i32* %8, align 4
  %233 = load i32*, i32** %7, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32* %235, i32** %7, align 8
  %236 = load i32*, i32** %5, align 8
  %237 = call i32 @LD_UB(i32* %236)
  store i32 %237, i32* %20, align 4
  %238 = load i32, i32* %6, align 4
  %239 = load i32*, i32** %5, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %5, align 8
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %15, align 4
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %18, align 4
  %248 = load i32, i32* %19, align 4
  %249 = load i32, i32* %20, align 4
  %250 = load i32, i32* %27, align 4
  %251 = load i32, i32* %28, align 4
  %252 = load i32, i32* %29, align 4
  %253 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252)
  store i32 %253, i32* %26, align 4
  %254 = load i32, i32* %26, align 4
  %255 = load i32, i32* %16, align 4
  %256 = call i32 @__msa_ave_u_b(i32 %254, i32 %255)
  store i32 %256, i32* %26, align 4
  %257 = load i32, i32* %26, align 4
  %258 = load i32*, i32** %7, align 8
  %259 = call i32 @ST_UB(i32 %257, i32* %258)
  %260 = load i32, i32* %8, align 4
  %261 = load i32*, i32** %7, align 8
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  store i32* %263, i32** %7, align 8
  %264 = load i32*, i32** %5, align 8
  %265 = call i32 @LD_UB(i32* %264)
  store i32 %265, i32* %21, align 4
  %266 = load i32, i32* %6, align 4
  %267 = load i32*, i32** %5, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  store i32* %269, i32** %5, align 8
  %270 = load i32, i32* %17, align 4
  %271 = load i32, i32* %16, align 4
  %272 = load i32, i32* %15, align 4
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* %18, align 4
  %275 = load i32, i32* %19, align 4
  %276 = load i32, i32* %20, align 4
  %277 = load i32, i32* %21, align 4
  %278 = load i32, i32* %27, align 4
  %279 = load i32, i32* %28, align 4
  %280 = load i32, i32* %29, align 4
  %281 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280)
  store i32 %281, i32* %26, align 4
  %282 = load i32, i32* %26, align 4
  %283 = load i32, i32* %17, align 4
  %284 = call i32 @__msa_ave_u_b(i32 %282, i32 %283)
  store i32 %284, i32* %26, align 4
  %285 = load i32, i32* %26, align 4
  %286 = load i32*, i32** %7, align 8
  %287 = call i32 @ST_UB(i32 %285, i32* %286)
  %288 = load i32, i32* %8, align 4
  %289 = load i32*, i32** %7, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  store i32* %291, i32** %7, align 8
  %292 = load i32*, i32** %5, align 8
  %293 = call i32 @LD_UB(i32* %292)
  store i32 %293, i32* %22, align 4
  %294 = load i32, i32* %6, align 4
  %295 = load i32*, i32** %5, align 8
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  store i32* %297, i32** %5, align 8
  %298 = load i32, i32* %18, align 4
  %299 = load i32, i32* %17, align 4
  %300 = load i32, i32* %16, align 4
  %301 = load i32, i32* %15, align 4
  %302 = load i32, i32* %19, align 4
  %303 = load i32, i32* %20, align 4
  %304 = load i32, i32* %21, align 4
  %305 = load i32, i32* %22, align 4
  %306 = load i32, i32* %27, align 4
  %307 = load i32, i32* %28, align 4
  %308 = load i32, i32* %29, align 4
  %309 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %298, i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304, i32 %305, i32 %306, i32 %307, i32 %308)
  store i32 %309, i32* %26, align 4
  %310 = load i32, i32* %26, align 4
  %311 = load i32, i32* %18, align 4
  %312 = call i32 @__msa_ave_u_b(i32 %310, i32 %311)
  store i32 %312, i32* %26, align 4
  %313 = load i32, i32* %26, align 4
  %314 = load i32*, i32** %7, align 8
  %315 = call i32 @ST_UB(i32 %313, i32* %314)
  %316 = load i32, i32* %8, align 4
  %317 = load i32*, i32** %7, align 8
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  store i32* %319, i32** %7, align 8
  %320 = load i32*, i32** %5, align 8
  %321 = call i32 @LD_UB(i32* %320)
  store i32 %321, i32* %23, align 4
  %322 = load i32, i32* %6, align 4
  %323 = load i32*, i32** %5, align 8
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  store i32* %325, i32** %5, align 8
  %326 = load i32, i32* %19, align 4
  %327 = load i32, i32* %18, align 4
  %328 = load i32, i32* %17, align 4
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* %20, align 4
  %331 = load i32, i32* %21, align 4
  %332 = load i32, i32* %22, align 4
  %333 = load i32, i32* %23, align 4
  %334 = load i32, i32* %27, align 4
  %335 = load i32, i32* %28, align 4
  %336 = load i32, i32* %29, align 4
  %337 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %326, i32 %327, i32 %328, i32 %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 %335, i32 %336)
  store i32 %337, i32* %26, align 4
  %338 = load i32, i32* %26, align 4
  %339 = load i32, i32* %19, align 4
  %340 = call i32 @__msa_ave_u_b(i32 %338, i32 %339)
  store i32 %340, i32* %26, align 4
  %341 = load i32, i32* %26, align 4
  %342 = load i32*, i32** %7, align 8
  %343 = call i32 @ST_UB(i32 %341, i32* %342)
  %344 = load i32, i32* %8, align 4
  %345 = load i32*, i32** %7, align 8
  %346 = sext i32 %344 to i64
  %347 = getelementptr inbounds i32, i32* %345, i64 %346
  store i32* %347, i32** %7, align 8
  %348 = load i32*, i32** %5, align 8
  %349 = call i32 @LD_UB(i32* %348)
  store i32 %349, i32* %24, align 4
  %350 = load i32, i32* %6, align 4
  %351 = load i32*, i32** %5, align 8
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i32, i32* %351, i64 %352
  store i32* %353, i32** %5, align 8
  %354 = load i32, i32* %20, align 4
  %355 = load i32, i32* %19, align 4
  %356 = load i32, i32* %18, align 4
  %357 = load i32, i32* %17, align 4
  %358 = load i32, i32* %21, align 4
  %359 = load i32, i32* %22, align 4
  %360 = load i32, i32* %23, align 4
  %361 = load i32, i32* %24, align 4
  %362 = load i32, i32* %27, align 4
  %363 = load i32, i32* %28, align 4
  %364 = load i32, i32* %29, align 4
  %365 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %354, i32 %355, i32 %356, i32 %357, i32 %358, i32 %359, i32 %360, i32 %361, i32 %362, i32 %363, i32 %364)
  store i32 %365, i32* %26, align 4
  %366 = load i32, i32* %26, align 4
  %367 = load i32, i32* %20, align 4
  %368 = call i32 @__msa_ave_u_b(i32 %366, i32 %367)
  store i32 %368, i32* %26, align 4
  %369 = load i32, i32* %26, align 4
  %370 = load i32*, i32** %7, align 8
  %371 = call i32 @ST_UB(i32 %369, i32* %370)
  %372 = load i32, i32* %8, align 4
  %373 = load i32*, i32** %7, align 8
  %374 = sext i32 %372 to i64
  %375 = getelementptr inbounds i32, i32* %373, i64 %374
  store i32* %375, i32** %7, align 8
  %376 = load i32*, i32** %5, align 8
  %377 = call i32 @LD_UB(i32* %376)
  store i32 %377, i32* %25, align 4
  %378 = load i32, i32* %21, align 4
  %379 = load i32, i32* %20, align 4
  %380 = load i32, i32* %19, align 4
  %381 = load i32, i32* %18, align 4
  %382 = load i32, i32* %22, align 4
  %383 = load i32, i32* %23, align 4
  %384 = load i32, i32* %24, align 4
  %385 = load i32, i32* %25, align 4
  %386 = load i32, i32* %27, align 4
  %387 = load i32, i32* %28, align 4
  %388 = load i32, i32* %29, align 4
  %389 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %378, i32 %379, i32 %380, i32 %381, i32 %382, i32 %383, i32 %384, i32 %385, i32 %386, i32 %387, i32 %388)
  store i32 %389, i32* %26, align 4
  %390 = load i32, i32* %26, align 4
  %391 = load i32, i32* %21, align 4
  %392 = call i32 @__msa_ave_u_b(i32 %390, i32 %391)
  store i32 %392, i32* %26, align 4
  %393 = load i32, i32* %26, align 4
  %394 = load i32*, i32** %7, align 8
  %395 = call i32 @ST_UB(i32 %393, i32* %394)
  %396 = load i32, i32* %8, align 4
  %397 = load i32*, i32** %7, align 8
  %398 = sext i32 %396 to i64
  %399 = getelementptr inbounds i32, i32* %397, i64 %398
  store i32* %399, i32** %7, align 8
  %400 = load i32, i32* %22, align 4
  %401 = load i32, i32* %21, align 4
  %402 = load i32, i32* %20, align 4
  %403 = load i32, i32* %19, align 4
  %404 = load i32, i32* %23, align 4
  %405 = load i32, i32* %24, align 4
  %406 = load i32, i32* %25, align 4
  %407 = load i32, i32* %25, align 4
  %408 = load i32, i32* %27, align 4
  %409 = load i32, i32* %28, align 4
  %410 = load i32, i32* %29, align 4
  %411 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %400, i32 %401, i32 %402, i32 %403, i32 %404, i32 %405, i32 %406, i32 %407, i32 %408, i32 %409, i32 %410)
  store i32 %411, i32* %26, align 4
  %412 = load i32, i32* %26, align 4
  %413 = load i32, i32* %22, align 4
  %414 = call i32 @__msa_ave_u_b(i32 %412, i32 %413)
  store i32 %414, i32* %26, align 4
  %415 = load i32, i32* %26, align 4
  %416 = load i32*, i32** %7, align 8
  %417 = call i32 @ST_UB(i32 %415, i32* %416)
  %418 = load i32, i32* %8, align 4
  %419 = load i32*, i32** %7, align 8
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds i32, i32* %419, i64 %420
  store i32* %421, i32** %7, align 8
  %422 = load i32, i32* %23, align 4
  %423 = load i32, i32* %22, align 4
  %424 = load i32, i32* %21, align 4
  %425 = load i32, i32* %20, align 4
  %426 = load i32, i32* %24, align 4
  %427 = load i32, i32* %25, align 4
  %428 = load i32, i32* %25, align 4
  %429 = load i32, i32* %24, align 4
  %430 = load i32, i32* %27, align 4
  %431 = load i32, i32* %28, align 4
  %432 = load i32, i32* %29, align 4
  %433 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %422, i32 %423, i32 %424, i32 %425, i32 %426, i32 %427, i32 %428, i32 %429, i32 %430, i32 %431, i32 %432)
  store i32 %433, i32* %26, align 4
  %434 = load i32, i32* %26, align 4
  %435 = load i32, i32* %23, align 4
  %436 = call i32 @__msa_ave_u_b(i32 %434, i32 %435)
  store i32 %436, i32* %26, align 4
  %437 = load i32, i32* %26, align 4
  %438 = load i32*, i32** %7, align 8
  %439 = call i32 @ST_UB(i32 %437, i32* %438)
  %440 = load i32, i32* %8, align 4
  %441 = load i32*, i32** %7, align 8
  %442 = sext i32 %440 to i64
  %443 = getelementptr inbounds i32, i32* %441, i64 %442
  store i32* %443, i32** %7, align 8
  %444 = load i32, i32* %24, align 4
  %445 = load i32, i32* %23, align 4
  %446 = load i32, i32* %22, align 4
  %447 = load i32, i32* %21, align 4
  %448 = load i32, i32* %25, align 4
  %449 = load i32, i32* %25, align 4
  %450 = load i32, i32* %24, align 4
  %451 = load i32, i32* %23, align 4
  %452 = load i32, i32* %27, align 4
  %453 = load i32, i32* %28, align 4
  %454 = load i32, i32* %29, align 4
  %455 = call i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32 %444, i32 %445, i32 %446, i32 %447, i32 %448, i32 %449, i32 %450, i32 %451, i32 %452, i32 %453, i32 %454)
  store i32 %455, i32* %26, align 4
  %456 = load i32, i32* %26, align 4
  %457 = load i32, i32* %24, align 4
  %458 = call i32 @__msa_ave_u_b(i32 %456, i32 %457)
  store i32 %458, i32* %26, align 4
  %459 = load i32, i32* %26, align 4
  %460 = load i32*, i32** %7, align 8
  %461 = call i32 @ST_UB(i32 %459, i32* %460)
  %462 = load i32, i32* %8, align 4
  %463 = load i32*, i32** %7, align 8
  %464 = sext i32 %462 to i64
  %465 = getelementptr inbounds i32, i32* %463, i64 %464
  store i32* %465, i32** %7, align 8
  ret void
}

declare dso_local i32 @__msa_ldi_b(i32) #1

declare dso_local i32 @LD_UB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @APPLY_VERT_QPEL_NO_ROUND_FILTER(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ave_u_b(i32, i32) #1

declare dso_local i32 @ST_UB(i32, i32*) #1

declare dso_local i32 @LD_UB(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
