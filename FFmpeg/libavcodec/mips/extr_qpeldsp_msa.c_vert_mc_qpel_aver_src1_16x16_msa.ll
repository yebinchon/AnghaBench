; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_aver_src1_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_aver_src1_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @vert_mc_qpel_aver_src1_16x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vert_mc_qpel_aver_src1_16x16_msa(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
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
  %39 = call i32 @LD_UB4(i32* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 4, %40
  %42 = load i32*, i32** %5, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @LD_UB(i32* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %27, align 4
  %60 = load i32, i32* %28, align 4
  %61 = load i32, i32* %29, align 4
  %62 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %26, align 4
  %63 = load i32, i32* %26, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @__msa_aver_u_b(i32 %63, i32 %64)
  store i32 %65, i32* %26, align 4
  %66 = load i32, i32* %26, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @ST_UB(i32 %66, i32* %67)
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %7, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @LD_UB(i32* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %27, align 4
  %88 = load i32, i32* %28, align 4
  %89 = load i32, i32* %29, align 4
  %90 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %26, align 4
  %91 = load i32, i32* %26, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @__msa_aver_u_b(i32 %91, i32 %92)
  store i32 %93, i32* %26, align 4
  %94 = load i32, i32* %26, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @ST_UB(i32 %94, i32* %95)
  %97 = load i32, i32* %8, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %7, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @LD_UB(i32* %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %5, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %27, align 4
  %116 = load i32, i32* %28, align 4
  %117 = load i32, i32* %29, align 4
  %118 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %26, align 4
  %119 = load i32, i32* %26, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @__msa_aver_u_b(i32 %119, i32 %120)
  store i32 %121, i32* %26, align 4
  %122 = load i32, i32* %26, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @ST_UB(i32 %122, i32* %123)
  %125 = load i32, i32* %8, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %7, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @LD_UB(i32* %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %5, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %27, align 4
  %144 = load i32, i32* %28, align 4
  %145 = load i32, i32* %29, align 4
  %146 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  store i32 %146, i32* %26, align 4
  %147 = load i32, i32* %26, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @__msa_aver_u_b(i32 %147, i32 %148)
  store i32 %149, i32* %26, align 4
  %150 = load i32, i32* %26, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @ST_UB(i32 %150, i32* %151)
  %153 = load i32, i32* %8, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %7, align 8
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @LD_UB(i32* %157)
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32*, i32** %5, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %5, align 8
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %27, align 4
  %172 = load i32, i32* %28, align 4
  %173 = load i32, i32* %29, align 4
  %174 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173)
  store i32 %174, i32* %26, align 4
  %175 = load i32, i32* %26, align 4
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @__msa_aver_u_b(i32 %175, i32 %176)
  store i32 %177, i32* %26, align 4
  %178 = load i32, i32* %26, align 4
  %179 = load i32*, i32** %7, align 8
  %180 = call i32 @ST_UB(i32 %178, i32* %179)
  %181 = load i32, i32* %8, align 4
  %182 = load i32*, i32** %7, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %7, align 8
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 @LD_UB(i32* %185)
  store i32 %186, i32* %18, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load i32*, i32** %5, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32* %190, i32** %5, align 8
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %16, align 4
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* %27, align 4
  %200 = load i32, i32* %28, align 4
  %201 = load i32, i32* %29, align 4
  %202 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %26, align 4
  %203 = load i32, i32* %26, align 4
  %204 = load i32, i32* %15, align 4
  %205 = call i32 @__msa_aver_u_b(i32 %203, i32 %204)
  store i32 %205, i32* %26, align 4
  %206 = load i32, i32* %26, align 4
  %207 = load i32*, i32** %7, align 8
  %208 = call i32 @ST_UB(i32 %206, i32* %207)
  %209 = load i32, i32* %8, align 4
  %210 = load i32*, i32** %7, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32* %212, i32** %7, align 8
  %213 = load i32*, i32** %5, align 8
  %214 = call i32 @LD_UB(i32* %213)
  store i32 %214, i32* %19, align 4
  %215 = load i32, i32* %6, align 4
  %216 = load i32*, i32** %5, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %5, align 8
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %16, align 4
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* %19, align 4
  %227 = load i32, i32* %27, align 4
  %228 = load i32, i32* %28, align 4
  %229 = load i32, i32* %29, align 4
  %230 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229)
  store i32 %230, i32* %26, align 4
  %231 = load i32, i32* %26, align 4
  %232 = load i32, i32* %16, align 4
  %233 = call i32 @__msa_aver_u_b(i32 %231, i32 %232)
  store i32 %233, i32* %26, align 4
  %234 = load i32, i32* %26, align 4
  %235 = load i32*, i32** %7, align 8
  %236 = call i32 @ST_UB(i32 %234, i32* %235)
  %237 = load i32, i32* %8, align 4
  %238 = load i32*, i32** %7, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  store i32* %240, i32** %7, align 8
  %241 = load i32*, i32** %5, align 8
  %242 = call i32 @LD_UB(i32* %241)
  store i32 %242, i32* %20, align 4
  %243 = load i32, i32* %6, align 4
  %244 = load i32*, i32** %5, align 8
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32* %246, i32** %5, align 8
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* %17, align 4
  %252 = load i32, i32* %18, align 4
  %253 = load i32, i32* %19, align 4
  %254 = load i32, i32* %20, align 4
  %255 = load i32, i32* %27, align 4
  %256 = load i32, i32* %28, align 4
  %257 = load i32, i32* %29, align 4
  %258 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257)
  store i32 %258, i32* %26, align 4
  %259 = load i32, i32* %26, align 4
  %260 = load i32, i32* %17, align 4
  %261 = call i32 @__msa_aver_u_b(i32 %259, i32 %260)
  store i32 %261, i32* %26, align 4
  %262 = load i32, i32* %26, align 4
  %263 = load i32*, i32** %7, align 8
  %264 = call i32 @ST_UB(i32 %262, i32* %263)
  %265 = load i32, i32* %8, align 4
  %266 = load i32*, i32** %7, align 8
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  store i32* %268, i32** %7, align 8
  %269 = load i32*, i32** %5, align 8
  %270 = call i32 @LD_UB(i32* %269)
  store i32 %270, i32* %21, align 4
  %271 = load i32, i32* %6, align 4
  %272 = load i32*, i32** %5, align 8
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  store i32* %274, i32** %5, align 8
  %275 = load i32, i32* %17, align 4
  %276 = load i32, i32* %16, align 4
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* %14, align 4
  %279 = load i32, i32* %18, align 4
  %280 = load i32, i32* %19, align 4
  %281 = load i32, i32* %20, align 4
  %282 = load i32, i32* %21, align 4
  %283 = load i32, i32* %27, align 4
  %284 = load i32, i32* %28, align 4
  %285 = load i32, i32* %29, align 4
  %286 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %285)
  store i32 %286, i32* %26, align 4
  %287 = load i32, i32* %26, align 4
  %288 = load i32, i32* %18, align 4
  %289 = call i32 @__msa_aver_u_b(i32 %287, i32 %288)
  store i32 %289, i32* %26, align 4
  %290 = load i32, i32* %26, align 4
  %291 = load i32*, i32** %7, align 8
  %292 = call i32 @ST_UB(i32 %290, i32* %291)
  %293 = load i32, i32* %8, align 4
  %294 = load i32*, i32** %7, align 8
  %295 = sext i32 %293 to i64
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  store i32* %296, i32** %7, align 8
  %297 = load i32*, i32** %5, align 8
  %298 = call i32 @LD_UB(i32* %297)
  store i32 %298, i32* %22, align 4
  %299 = load i32, i32* %6, align 4
  %300 = load i32*, i32** %5, align 8
  %301 = sext i32 %299 to i64
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  store i32* %302, i32** %5, align 8
  %303 = load i32, i32* %18, align 4
  %304 = load i32, i32* %17, align 4
  %305 = load i32, i32* %16, align 4
  %306 = load i32, i32* %15, align 4
  %307 = load i32, i32* %19, align 4
  %308 = load i32, i32* %20, align 4
  %309 = load i32, i32* %21, align 4
  %310 = load i32, i32* %22, align 4
  %311 = load i32, i32* %27, align 4
  %312 = load i32, i32* %28, align 4
  %313 = load i32, i32* %29, align 4
  %314 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %303, i32 %304, i32 %305, i32 %306, i32 %307, i32 %308, i32 %309, i32 %310, i32 %311, i32 %312, i32 %313)
  store i32 %314, i32* %26, align 4
  %315 = load i32, i32* %26, align 4
  %316 = load i32, i32* %19, align 4
  %317 = call i32 @__msa_aver_u_b(i32 %315, i32 %316)
  store i32 %317, i32* %26, align 4
  %318 = load i32, i32* %26, align 4
  %319 = load i32*, i32** %7, align 8
  %320 = call i32 @ST_UB(i32 %318, i32* %319)
  %321 = load i32, i32* %8, align 4
  %322 = load i32*, i32** %7, align 8
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  store i32* %324, i32** %7, align 8
  %325 = load i32*, i32** %5, align 8
  %326 = call i32 @LD_UB(i32* %325)
  store i32 %326, i32* %23, align 4
  %327 = load i32, i32* %6, align 4
  %328 = load i32*, i32** %5, align 8
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  store i32* %330, i32** %5, align 8
  %331 = load i32, i32* %19, align 4
  %332 = load i32, i32* %18, align 4
  %333 = load i32, i32* %17, align 4
  %334 = load i32, i32* %16, align 4
  %335 = load i32, i32* %20, align 4
  %336 = load i32, i32* %21, align 4
  %337 = load i32, i32* %22, align 4
  %338 = load i32, i32* %23, align 4
  %339 = load i32, i32* %27, align 4
  %340 = load i32, i32* %28, align 4
  %341 = load i32, i32* %29, align 4
  %342 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %331, i32 %332, i32 %333, i32 %334, i32 %335, i32 %336, i32 %337, i32 %338, i32 %339, i32 %340, i32 %341)
  store i32 %342, i32* %26, align 4
  %343 = load i32, i32* %26, align 4
  %344 = load i32, i32* %20, align 4
  %345 = call i32 @__msa_aver_u_b(i32 %343, i32 %344)
  store i32 %345, i32* %26, align 4
  %346 = load i32, i32* %26, align 4
  %347 = load i32*, i32** %7, align 8
  %348 = call i32 @ST_UB(i32 %346, i32* %347)
  %349 = load i32, i32* %8, align 4
  %350 = load i32*, i32** %7, align 8
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  store i32* %352, i32** %7, align 8
  %353 = load i32*, i32** %5, align 8
  %354 = call i32 @LD_UB(i32* %353)
  store i32 %354, i32* %24, align 4
  %355 = load i32, i32* %6, align 4
  %356 = load i32*, i32** %5, align 8
  %357 = sext i32 %355 to i64
  %358 = getelementptr inbounds i32, i32* %356, i64 %357
  store i32* %358, i32** %5, align 8
  %359 = load i32, i32* %20, align 4
  %360 = load i32, i32* %19, align 4
  %361 = load i32, i32* %18, align 4
  %362 = load i32, i32* %17, align 4
  %363 = load i32, i32* %21, align 4
  %364 = load i32, i32* %22, align 4
  %365 = load i32, i32* %23, align 4
  %366 = load i32, i32* %24, align 4
  %367 = load i32, i32* %27, align 4
  %368 = load i32, i32* %28, align 4
  %369 = load i32, i32* %29, align 4
  %370 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %359, i32 %360, i32 %361, i32 %362, i32 %363, i32 %364, i32 %365, i32 %366, i32 %367, i32 %368, i32 %369)
  store i32 %370, i32* %26, align 4
  %371 = load i32, i32* %26, align 4
  %372 = load i32, i32* %21, align 4
  %373 = call i32 @__msa_aver_u_b(i32 %371, i32 %372)
  store i32 %373, i32* %26, align 4
  %374 = load i32, i32* %26, align 4
  %375 = load i32*, i32** %7, align 8
  %376 = call i32 @ST_UB(i32 %374, i32* %375)
  %377 = load i32, i32* %8, align 4
  %378 = load i32*, i32** %7, align 8
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds i32, i32* %378, i64 %379
  store i32* %380, i32** %7, align 8
  %381 = load i32*, i32** %5, align 8
  %382 = call i32 @LD_UB(i32* %381)
  store i32 %382, i32* %25, align 4
  %383 = load i32, i32* %21, align 4
  %384 = load i32, i32* %20, align 4
  %385 = load i32, i32* %19, align 4
  %386 = load i32, i32* %18, align 4
  %387 = load i32, i32* %22, align 4
  %388 = load i32, i32* %23, align 4
  %389 = load i32, i32* %24, align 4
  %390 = load i32, i32* %25, align 4
  %391 = load i32, i32* %27, align 4
  %392 = load i32, i32* %28, align 4
  %393 = load i32, i32* %29, align 4
  %394 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %383, i32 %384, i32 %385, i32 %386, i32 %387, i32 %388, i32 %389, i32 %390, i32 %391, i32 %392, i32 %393)
  store i32 %394, i32* %26, align 4
  %395 = load i32, i32* %26, align 4
  %396 = load i32, i32* %22, align 4
  %397 = call i32 @__msa_aver_u_b(i32 %395, i32 %396)
  store i32 %397, i32* %26, align 4
  %398 = load i32, i32* %26, align 4
  %399 = load i32*, i32** %7, align 8
  %400 = call i32 @ST_UB(i32 %398, i32* %399)
  %401 = load i32, i32* %8, align 4
  %402 = load i32*, i32** %7, align 8
  %403 = sext i32 %401 to i64
  %404 = getelementptr inbounds i32, i32* %402, i64 %403
  store i32* %404, i32** %7, align 8
  %405 = load i32, i32* %22, align 4
  %406 = load i32, i32* %21, align 4
  %407 = load i32, i32* %20, align 4
  %408 = load i32, i32* %19, align 4
  %409 = load i32, i32* %23, align 4
  %410 = load i32, i32* %24, align 4
  %411 = load i32, i32* %25, align 4
  %412 = load i32, i32* %25, align 4
  %413 = load i32, i32* %27, align 4
  %414 = load i32, i32* %28, align 4
  %415 = load i32, i32* %29, align 4
  %416 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %405, i32 %406, i32 %407, i32 %408, i32 %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 %415)
  store i32 %416, i32* %26, align 4
  %417 = load i32, i32* %26, align 4
  %418 = load i32, i32* %23, align 4
  %419 = call i32 @__msa_aver_u_b(i32 %417, i32 %418)
  store i32 %419, i32* %26, align 4
  %420 = load i32, i32* %26, align 4
  %421 = load i32*, i32** %7, align 8
  %422 = call i32 @ST_UB(i32 %420, i32* %421)
  %423 = load i32, i32* %8, align 4
  %424 = load i32*, i32** %7, align 8
  %425 = sext i32 %423 to i64
  %426 = getelementptr inbounds i32, i32* %424, i64 %425
  store i32* %426, i32** %7, align 8
  %427 = load i32, i32* %23, align 4
  %428 = load i32, i32* %22, align 4
  %429 = load i32, i32* %21, align 4
  %430 = load i32, i32* %20, align 4
  %431 = load i32, i32* %24, align 4
  %432 = load i32, i32* %25, align 4
  %433 = load i32, i32* %25, align 4
  %434 = load i32, i32* %24, align 4
  %435 = load i32, i32* %27, align 4
  %436 = load i32, i32* %28, align 4
  %437 = load i32, i32* %29, align 4
  %438 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %427, i32 %428, i32 %429, i32 %430, i32 %431, i32 %432, i32 %433, i32 %434, i32 %435, i32 %436, i32 %437)
  store i32 %438, i32* %26, align 4
  %439 = load i32, i32* %26, align 4
  %440 = load i32, i32* %24, align 4
  %441 = call i32 @__msa_aver_u_b(i32 %439, i32 %440)
  store i32 %441, i32* %26, align 4
  %442 = load i32, i32* %26, align 4
  %443 = load i32*, i32** %7, align 8
  %444 = call i32 @ST_UB(i32 %442, i32* %443)
  %445 = load i32, i32* %8, align 4
  %446 = load i32*, i32** %7, align 8
  %447 = sext i32 %445 to i64
  %448 = getelementptr inbounds i32, i32* %446, i64 %447
  store i32* %448, i32** %7, align 8
  %449 = load i32, i32* %24, align 4
  %450 = load i32, i32* %23, align 4
  %451 = load i32, i32* %22, align 4
  %452 = load i32, i32* %21, align 4
  %453 = load i32, i32* %25, align 4
  %454 = load i32, i32* %25, align 4
  %455 = load i32, i32* %24, align 4
  %456 = load i32, i32* %23, align 4
  %457 = load i32, i32* %27, align 4
  %458 = load i32, i32* %28, align 4
  %459 = load i32, i32* %29, align 4
  %460 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %449, i32 %450, i32 %451, i32 %452, i32 %453, i32 %454, i32 %455, i32 %456, i32 %457, i32 %458, i32 %459)
  store i32 %460, i32* %26, align 4
  %461 = load i32, i32* %26, align 4
  %462 = load i32, i32* %25, align 4
  %463 = call i32 @__msa_aver_u_b(i32 %461, i32 %462)
  store i32 %463, i32* %26, align 4
  %464 = load i32, i32* %26, align 4
  %465 = load i32*, i32** %7, align 8
  %466 = call i32 @ST_UB(i32 %464, i32* %465)
  ret void
}

declare dso_local i32 @__msa_ldi_b(i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_UB(i32*) #1

declare dso_local i32 @APPLY_VERT_QPEL_FILTER(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_aver_u_b(i32, i32) #1

declare dso_local i32 @ST_UB(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
