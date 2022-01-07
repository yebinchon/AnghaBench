; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_lpf_msa.c_ff_vp8_h_loop_filter8uv_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_lpf_msa.c_ff_vp8_h_loop_filter8uv_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp8_h_loop_filter8uv_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
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
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @__msa_fill_b(i32 %51)
  store i64 %52, i64* %26, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @__msa_fill_b(i32 %53)
  store i64 %54, i64* %25, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @__msa_fill_b(i32 %55)
  store i64 %56, i64* %24, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 -4
  %59 = load i32, i32* %9, align 4
  %60 = load i64, i64* %27, align 8
  %61 = load i64, i64* %28, align 8
  %62 = load i64, i64* %29, align 8
  %63 = load i64, i64* %30, align 8
  %64 = load i64, i64* %31, align 8
  %65 = load i64, i64* %32, align 8
  %66 = load i64, i64* %33, align 8
  %67 = load i64, i64* %34, align 8
  %68 = call i32 @LD_UB8(i32* %58, i32 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67)
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 -4
  %71 = load i32, i32* %9, align 4
  %72 = load i64, i64* %35, align 8
  %73 = load i64, i64* %36, align 8
  %74 = load i64, i64* %37, align 8
  %75 = load i64, i64* %38, align 8
  %76 = load i64, i64* %39, align 8
  %77 = load i64, i64* %40, align 8
  %78 = load i64, i64* %41, align 8
  %79 = load i64, i64* %42, align 8
  %80 = call i32 @LD_UB8(i32* %70, i32 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79)
  %81 = load i64, i64* %27, align 8
  %82 = load i64, i64* %28, align 8
  %83 = load i64, i64* %29, align 8
  %84 = load i64, i64* %30, align 8
  %85 = load i64, i64* %31, align 8
  %86 = load i64, i64* %32, align 8
  %87 = load i64, i64* %33, align 8
  %88 = load i64, i64* %34, align 8
  %89 = load i64, i64* %35, align 8
  %90 = load i64, i64* %36, align 8
  %91 = load i64, i64* %37, align 8
  %92 = load i64, i64* %38, align 8
  %93 = load i64, i64* %39, align 8
  %94 = load i64, i64* %40, align 8
  %95 = load i64, i64* %41, align 8
  %96 = load i64, i64* %42, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* %18, align 8
  %104 = load i64, i64* %17, align 8
  %105 = call i32 @TRANSPOSE16x8_UB_UB(i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104)
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %16, align 8
  %110 = load i64, i64* %20, align 8
  %111 = load i64, i64* %19, align 8
  %112 = load i64, i64* %18, align 8
  %113 = load i64, i64* %17, align 8
  %114 = load i64, i64* %25, align 8
  %115 = load i64, i64* %26, align 8
  %116 = load i64, i64* %24, align 8
  %117 = load i64, i64* %22, align 8
  %118 = load i64, i64* %21, align 8
  %119 = load i64, i64* %23, align 8
  %120 = call i32 @LPF_MASK_HEV(i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119)
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* %18, align 8
  %127 = load i64, i64* %21, align 8
  %128 = load i64, i64* %22, align 8
  %129 = call i32 @VP8_MBFILTER(i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128)
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %20, align 8
  %133 = load i64, i64* %16, align 8
  %134 = load i32, i32* %43, align 4
  %135 = load i32, i32* %44, align 4
  %136 = call i32 @ILVR_B2_SH(i64 %130, i64 %131, i64 %132, i64 %133, i32 %134, i32 %135)
  %137 = load i32, i32* %44, align 4
  %138 = load i32, i32* %43, align 4
  %139 = load i32, i32* %46, align 4
  %140 = load i32, i32* %47, align 4
  %141 = call i32 @ILVRL_H2_SH(i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i64, i64* %15, align 8
  %143 = load i64, i64* %14, align 8
  %144 = load i64, i64* %20, align 8
  %145 = load i64, i64* %16, align 8
  %146 = load i32, i32* %43, align 4
  %147 = load i32, i32* %44, align 4
  %148 = call i32 @ILVL_B2_SH(i64 %142, i64 %143, i64 %144, i64 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %44, align 4
  %150 = load i32, i32* %43, align 4
  %151 = load i32, i32* %49, align 4
  %152 = load i32, i32* %50, align 4
  %153 = call i32 @ILVRL_H2_SH(i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load i64, i64* %18, align 8
  %155 = load i64, i64* %19, align 8
  %156 = load i32, i32* %45, align 4
  %157 = load i32, i32* %48, align 4
  %158 = call i32 @ILVRL_B2_SH(i64 %154, i64 %155, i32 %156, i32 %157)
  %159 = load i32*, i32** %7, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 -3
  store i32* %160, i32** %7, align 8
  %161 = load i32, i32* %46, align 4
  %162 = load i32, i32* %45, align 4
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @VP8_ST6x1_UB(i32 %161, i32 0, i32 %162, i32 0, i32* %163, i32 4)
  %165 = load i32, i32* %9, align 4
  %166 = load i32*, i32** %7, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %7, align 8
  %169 = load i32, i32* %46, align 4
  %170 = load i32, i32* %45, align 4
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @VP8_ST6x1_UB(i32 %169, i32 1, i32 %170, i32 1, i32* %171, i32 4)
  %173 = load i32, i32* %9, align 4
  %174 = load i32*, i32** %7, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %7, align 8
  %177 = load i32, i32* %46, align 4
  %178 = load i32, i32* %45, align 4
  %179 = load i32*, i32** %7, align 8
  %180 = call i32 @VP8_ST6x1_UB(i32 %177, i32 2, i32 %178, i32 2, i32* %179, i32 4)
  %181 = load i32, i32* %9, align 4
  %182 = load i32*, i32** %7, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %7, align 8
  %185 = load i32, i32* %46, align 4
  %186 = load i32, i32* %45, align 4
  %187 = load i32*, i32** %7, align 8
  %188 = call i32 @VP8_ST6x1_UB(i32 %185, i32 3, i32 %186, i32 3, i32* %187, i32 4)
  %189 = load i32, i32* %9, align 4
  %190 = load i32*, i32** %7, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32* %192, i32** %7, align 8
  %193 = load i32, i32* %47, align 4
  %194 = load i32, i32* %45, align 4
  %195 = load i32*, i32** %7, align 8
  %196 = call i32 @VP8_ST6x1_UB(i32 %193, i32 0, i32 %194, i32 4, i32* %195, i32 4)
  %197 = load i32, i32* %9, align 4
  %198 = load i32*, i32** %7, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %7, align 8
  %201 = load i32, i32* %47, align 4
  %202 = load i32, i32* %45, align 4
  %203 = load i32*, i32** %7, align 8
  %204 = call i32 @VP8_ST6x1_UB(i32 %201, i32 1, i32 %202, i32 5, i32* %203, i32 4)
  %205 = load i32, i32* %9, align 4
  %206 = load i32*, i32** %7, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32* %208, i32** %7, align 8
  %209 = load i32, i32* %47, align 4
  %210 = load i32, i32* %45, align 4
  %211 = load i32*, i32** %7, align 8
  %212 = call i32 @VP8_ST6x1_UB(i32 %209, i32 2, i32 %210, i32 6, i32* %211, i32 4)
  %213 = load i32, i32* %9, align 4
  %214 = load i32*, i32** %7, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32* %216, i32** %7, align 8
  %217 = load i32, i32* %47, align 4
  %218 = load i32, i32* %45, align 4
  %219 = load i32*, i32** %7, align 8
  %220 = call i32 @VP8_ST6x1_UB(i32 %217, i32 3, i32 %218, i32 7, i32* %219, i32 4)
  %221 = load i32*, i32** %8, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 -3
  store i32* %222, i32** %8, align 8
  %223 = load i32, i32* %49, align 4
  %224 = load i32, i32* %48, align 4
  %225 = load i32*, i32** %8, align 8
  %226 = call i32 @VP8_ST6x1_UB(i32 %223, i32 0, i32 %224, i32 0, i32* %225, i32 4)
  %227 = load i32, i32* %9, align 4
  %228 = load i32*, i32** %8, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32* %230, i32** %8, align 8
  %231 = load i32, i32* %49, align 4
  %232 = load i32, i32* %48, align 4
  %233 = load i32*, i32** %8, align 8
  %234 = call i32 @VP8_ST6x1_UB(i32 %231, i32 1, i32 %232, i32 1, i32* %233, i32 4)
  %235 = load i32, i32* %9, align 4
  %236 = load i32*, i32** %8, align 8
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  store i32* %238, i32** %8, align 8
  %239 = load i32, i32* %49, align 4
  %240 = load i32, i32* %48, align 4
  %241 = load i32*, i32** %8, align 8
  %242 = call i32 @VP8_ST6x1_UB(i32 %239, i32 2, i32 %240, i32 2, i32* %241, i32 4)
  %243 = load i32, i32* %9, align 4
  %244 = load i32*, i32** %8, align 8
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32* %246, i32** %8, align 8
  %247 = load i32, i32* %49, align 4
  %248 = load i32, i32* %48, align 4
  %249 = load i32*, i32** %8, align 8
  %250 = call i32 @VP8_ST6x1_UB(i32 %247, i32 3, i32 %248, i32 3, i32* %249, i32 4)
  %251 = load i32, i32* %9, align 4
  %252 = load i32*, i32** %8, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  store i32* %254, i32** %8, align 8
  %255 = load i32, i32* %50, align 4
  %256 = load i32, i32* %48, align 4
  %257 = load i32*, i32** %8, align 8
  %258 = call i32 @VP8_ST6x1_UB(i32 %255, i32 0, i32 %256, i32 4, i32* %257, i32 4)
  %259 = load i32, i32* %9, align 4
  %260 = load i32*, i32** %8, align 8
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  store i32* %262, i32** %8, align 8
  %263 = load i32, i32* %50, align 4
  %264 = load i32, i32* %48, align 4
  %265 = load i32*, i32** %8, align 8
  %266 = call i32 @VP8_ST6x1_UB(i32 %263, i32 1, i32 %264, i32 5, i32* %265, i32 4)
  %267 = load i32, i32* %9, align 4
  %268 = load i32*, i32** %8, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32* %270, i32** %8, align 8
  %271 = load i32, i32* %50, align 4
  %272 = load i32, i32* %48, align 4
  %273 = load i32*, i32** %8, align 8
  %274 = call i32 @VP8_ST6x1_UB(i32 %271, i32 2, i32 %272, i32 6, i32* %273, i32 4)
  %275 = load i32, i32* %9, align 4
  %276 = load i32*, i32** %8, align 8
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32* %278, i32** %8, align 8
  %279 = load i32, i32* %50, align 4
  %280 = load i32, i32* %48, align 4
  %281 = load i32*, i32** %8, align 8
  %282 = call i32 @VP8_ST6x1_UB(i32 %279, i32 3, i32 %280, i32 7, i32* %281, i32 4)
  ret void
}

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @TRANSPOSE16x8_UB_UB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LPF_MASK_HEV(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VP8_MBFILTER(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B2_SH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_B2_SH(i64, i64, i32, i32) #1

declare dso_local i32 @VP8_ST6x1_UB(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
