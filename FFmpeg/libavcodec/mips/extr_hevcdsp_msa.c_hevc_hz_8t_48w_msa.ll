; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_48w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_48w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_8t_48w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_8t_48w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
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
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %44 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %45 = call i64 @LD_SB(i32* %44)
  store i64 %45, i64* %43, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 -3
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @LD_SH(i32* %48)
  store i32 %49, i32* %41, align 4
  %50 = load i32, i32* %41, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %21, align 4
  %55 = call i32 @SPLATI_H4_SH(i32 %50, i32 0, i32 1, i32 2, i32 3, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i64, i64* %43, align 8
  %57 = add nsw i64 %56, 2
  store i64 %57, i64* %22, align 8
  %58 = load i64, i64* %43, align 8
  %59 = add nsw i64 %58, 4
  store i64 %59, i64* %23, align 8
  %60 = load i64, i64* %43, align 8
  %61 = add nsw i64 %60, 6
  store i64 %61, i64* %24, align 8
  %62 = load i64, i64* %43, align 8
  %63 = add nsw i64 %62, 8
  store i64 %63, i64* %25, align 8
  %64 = load i64, i64* %43, align 8
  %65 = add nsw i64 %64, 10
  store i64 %65, i64* %26, align 8
  %66 = load i64, i64* %43, align 8
  %67 = add nsw i64 %66, 12
  store i64 %67, i64* %27, align 8
  %68 = load i64, i64* %43, align 8
  %69 = add nsw i64 %68, 14
  store i64 %69, i64* %28, align 8
  %70 = call i32 @__msa_ldi_h(i32 128)
  store i32 %70, i32* %42, align 4
  %71 = load i32, i32* %42, align 4
  %72 = shl i32 %71, 6
  store i32 %72, i32* %42, align 4
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %78, %6
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %13, align 4
  %77 = icmp ne i32 %75, 0
  br i1 %77, label %78, label %305

78:                                               ; preds = %74
  %79 = load i32*, i32** %7, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %16, align 8
  %83 = call i32 @LD_SB3(i32* %79, i32 16, i64 %80, i64 %81, i64 %82)
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 40
  %86 = call i64 @LD_SB(i32* %85)
  store i64 %86, i64* %17, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %7, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* %17, align 8
  %95 = call i32 @XORI_B4_128_SB(i64 %91, i64 %92, i64 %93, i64 %94)
  %96 = load i32, i32* %42, align 4
  store i32 %96, i32* %35, align 4
  %97 = load i32, i32* %42, align 4
  store i32 %97, i32* %36, align 4
  %98 = load i32, i32* %42, align 4
  store i32 %98, i32* %37, align 4
  %99 = load i32, i32* %42, align 4
  store i32 %99, i32* %38, align 4
  %100 = load i32, i32* %42, align 4
  store i32 %100, i32* %39, align 4
  %101 = load i32, i32* %42, align 4
  store i32 %101, i32* %40, align 4
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %43, align 8
  %107 = load i64, i64* %25, align 8
  %108 = load i64, i64* %29, align 8
  %109 = load i64, i64* %30, align 8
  %110 = call i32 @VSHF_B2_SB(i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109)
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* %43, align 8
  %116 = load i64, i64* %25, align 8
  %117 = load i64, i64* %31, align 8
  %118 = load i64, i64* %32, align 8
  %119 = call i32 @VSHF_B2_SB(i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118)
  %120 = load i64, i64* %29, align 8
  %121 = load i64, i64* %30, align 8
  %122 = load i64, i64* %31, align 8
  %123 = load i64, i64* %32, align 8
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %35, align 4
  %129 = load i32, i32* %36, align 4
  %130 = load i32, i32* %37, align 4
  %131 = load i32, i32* %38, align 4
  %132 = call i32 @DPADD_SB4_SH(i64 %120, i64 %121, i64 %122, i64 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* %14, align 8
  %135 = load i64, i64* %14, align 8
  %136 = load i64, i64* %15, align 8
  %137 = load i64, i64* %22, align 8
  %138 = load i64, i64* %26, align 8
  %139 = load i64, i64* %29, align 8
  %140 = load i64, i64* %30, align 8
  %141 = call i32 @VSHF_B2_SB(i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  %142 = load i64, i64* %15, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* %15, align 8
  %145 = load i64, i64* %16, align 8
  %146 = load i64, i64* %22, align 8
  %147 = load i64, i64* %26, align 8
  %148 = load i64, i64* %31, align 8
  %149 = load i64, i64* %32, align 8
  %150 = call i32 @VSHF_B2_SB(i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i64, i64* %29, align 8
  %152 = load i64, i64* %30, align 8
  %153 = load i64, i64* %31, align 8
  %154 = load i64, i64* %32, align 8
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %35, align 4
  %160 = load i32, i32* %36, align 4
  %161 = load i32, i32* %37, align 4
  %162 = load i32, i32* %38, align 4
  %163 = call i32 @DPADD_SB4_SH(i64 %151, i64 %152, i64 %153, i64 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162)
  %164 = load i64, i64* %14, align 8
  %165 = load i64, i64* %14, align 8
  %166 = load i64, i64* %14, align 8
  %167 = load i64, i64* %15, align 8
  %168 = load i64, i64* %23, align 8
  %169 = load i64, i64* %27, align 8
  %170 = load i64, i64* %29, align 8
  %171 = load i64, i64* %30, align 8
  %172 = call i32 @VSHF_B2_SB(i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171)
  %173 = load i64, i64* %15, align 8
  %174 = load i64, i64* %15, align 8
  %175 = load i64, i64* %15, align 8
  %176 = load i64, i64* %16, align 8
  %177 = load i64, i64* %23, align 8
  %178 = load i64, i64* %27, align 8
  %179 = load i64, i64* %31, align 8
  %180 = load i64, i64* %32, align 8
  %181 = call i32 @VSHF_B2_SB(i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180)
  %182 = load i64, i64* %29, align 8
  %183 = load i64, i64* %30, align 8
  %184 = load i64, i64* %31, align 8
  %185 = load i64, i64* %32, align 8
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* %20, align 4
  %189 = load i32, i32* %20, align 4
  %190 = load i32, i32* %35, align 4
  %191 = load i32, i32* %36, align 4
  %192 = load i32, i32* %37, align 4
  %193 = load i32, i32* %38, align 4
  %194 = call i32 @DPADD_SB4_SH(i64 %182, i64 %183, i64 %184, i64 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i64, i64* %14, align 8
  %196 = load i64, i64* %14, align 8
  %197 = load i64, i64* %14, align 8
  %198 = load i64, i64* %15, align 8
  %199 = load i64, i64* %24, align 8
  %200 = load i64, i64* %28, align 8
  %201 = load i64, i64* %29, align 8
  %202 = load i64, i64* %30, align 8
  %203 = call i32 @VSHF_B2_SB(i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202)
  %204 = load i64, i64* %15, align 8
  %205 = load i64, i64* %15, align 8
  %206 = load i64, i64* %15, align 8
  %207 = load i64, i64* %16, align 8
  %208 = load i64, i64* %24, align 8
  %209 = load i64, i64* %28, align 8
  %210 = load i64, i64* %31, align 8
  %211 = load i64, i64* %32, align 8
  %212 = call i32 @VSHF_B2_SB(i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211)
  %213 = load i64, i64* %29, align 8
  %214 = load i64, i64* %30, align 8
  %215 = load i64, i64* %31, align 8
  %216 = load i64, i64* %32, align 8
  %217 = load i32, i32* %21, align 4
  %218 = load i32, i32* %21, align 4
  %219 = load i32, i32* %21, align 4
  %220 = load i32, i32* %21, align 4
  %221 = load i32, i32* %35, align 4
  %222 = load i32, i32* %36, align 4
  %223 = load i32, i32* %37, align 4
  %224 = load i32, i32* %38, align 4
  %225 = call i32 @DPADD_SB4_SH(i64 %213, i64 %214, i64 %215, i64 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224)
  %226 = load i32, i32* %35, align 4
  %227 = load i32, i32* %36, align 4
  %228 = load i32, i32* %37, align 4
  %229 = load i32, i32* %38, align 4
  %230 = load i32*, i32** %9, align 8
  %231 = call i32 @ST_SH4(i32 %226, i32 %227, i32 %228, i32 %229, i32* %230, i32 8)
  %232 = load i64, i64* %16, align 8
  %233 = load i64, i64* %16, align 8
  %234 = load i64, i64* %17, align 8
  %235 = load i64, i64* %17, align 8
  %236 = load i64, i64* %43, align 8
  %237 = load i64, i64* %43, align 8
  %238 = load i64, i64* %33, align 8
  %239 = load i64, i64* %34, align 8
  %240 = call i32 @VSHF_B2_SB(i64 %232, i64 %233, i64 %234, i64 %235, i64 %236, i64 %237, i64 %238, i64 %239)
  %241 = load i64, i64* %33, align 8
  %242 = load i64, i64* %34, align 8
  %243 = load i32, i32* %18, align 4
  %244 = load i32, i32* %18, align 4
  %245 = load i32, i32* %39, align 4
  %246 = load i32, i32* %40, align 4
  %247 = call i32 @DPADD_SB2_SH(i64 %241, i64 %242, i32 %243, i32 %244, i32 %245, i32 %246)
  %248 = load i64, i64* %16, align 8
  %249 = load i64, i64* %16, align 8
  %250 = load i64, i64* %17, align 8
  %251 = load i64, i64* %17, align 8
  %252 = load i64, i64* %22, align 8
  %253 = load i64, i64* %22, align 8
  %254 = load i64, i64* %33, align 8
  %255 = load i64, i64* %34, align 8
  %256 = call i32 @VSHF_B2_SB(i64 %248, i64 %249, i64 %250, i64 %251, i64 %252, i64 %253, i64 %254, i64 %255)
  %257 = load i64, i64* %33, align 8
  %258 = load i64, i64* %34, align 8
  %259 = load i32, i32* %19, align 4
  %260 = load i32, i32* %19, align 4
  %261 = load i32, i32* %39, align 4
  %262 = load i32, i32* %40, align 4
  %263 = call i32 @DPADD_SB2_SH(i64 %257, i64 %258, i32 %259, i32 %260, i32 %261, i32 %262)
  %264 = load i64, i64* %16, align 8
  %265 = load i64, i64* %16, align 8
  %266 = load i64, i64* %17, align 8
  %267 = load i64, i64* %17, align 8
  %268 = load i64, i64* %23, align 8
  %269 = load i64, i64* %23, align 8
  %270 = load i64, i64* %33, align 8
  %271 = load i64, i64* %34, align 8
  %272 = call i32 @VSHF_B2_SB(i64 %264, i64 %265, i64 %266, i64 %267, i64 %268, i64 %269, i64 %270, i64 %271)
  %273 = load i64, i64* %33, align 8
  %274 = load i64, i64* %34, align 8
  %275 = load i32, i32* %20, align 4
  %276 = load i32, i32* %20, align 4
  %277 = load i32, i32* %39, align 4
  %278 = load i32, i32* %40, align 4
  %279 = call i32 @DPADD_SB2_SH(i64 %273, i64 %274, i32 %275, i32 %276, i32 %277, i32 %278)
  %280 = load i64, i64* %16, align 8
  %281 = load i64, i64* %16, align 8
  %282 = load i64, i64* %17, align 8
  %283 = load i64, i64* %17, align 8
  %284 = load i64, i64* %24, align 8
  %285 = load i64, i64* %24, align 8
  %286 = load i64, i64* %33, align 8
  %287 = load i64, i64* %34, align 8
  %288 = call i32 @VSHF_B2_SB(i64 %280, i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %286, i64 %287)
  %289 = load i64, i64* %33, align 8
  %290 = load i64, i64* %34, align 8
  %291 = load i32, i32* %21, align 4
  %292 = load i32, i32* %21, align 4
  %293 = load i32, i32* %39, align 4
  %294 = load i32, i32* %40, align 4
  %295 = call i32 @DPADD_SB2_SH(i64 %289, i64 %290, i32 %291, i32 %292, i32 %293, i32 %294)
  %296 = load i32, i32* %39, align 4
  %297 = load i32, i32* %40, align 4
  %298 = load i32*, i32** %9, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 32
  %300 = call i32 @ST_SH2(i32 %296, i32 %297, i32* %299, i32 8)
  %301 = load i32, i32* %10, align 4
  %302 = load i32*, i32** %9, align 8
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  store i32* %304, i32** %9, align 8
  br label %74

305:                                              ; preds = %74
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
