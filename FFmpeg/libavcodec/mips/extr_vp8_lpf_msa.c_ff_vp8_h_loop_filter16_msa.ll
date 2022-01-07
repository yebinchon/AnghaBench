; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_lpf_msa.c_ff_vp8_h_loop_filter16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_lpf_msa.c_ff_vp8_h_loop_filter16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp8_h_loop_filter16_msa(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
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
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @__msa_fill_b(i32 %50)
  store i64 %51, i64* %25, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @__msa_fill_b(i32 %52)
  store i64 %53, i64* %24, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @__msa_fill_b(i32 %54)
  store i64 %55, i64* %23, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 -4
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i64, i64* %26, align 8
  %61 = load i64, i64* %27, align 8
  %62 = load i64, i64* %28, align 8
  %63 = load i64, i64* %29, align 8
  %64 = load i64, i64* %30, align 8
  %65 = load i64, i64* %31, align 8
  %66 = load i64, i64* %32, align 8
  %67 = load i64, i64* %33, align 8
  %68 = call i32 @LD_UB8(i32* %58, i32 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 8, %69
  %71 = load i32*, i32** %11, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i64, i64* %34, align 8
  %77 = load i64, i64* %35, align 8
  %78 = load i64, i64* %36, align 8
  %79 = load i64, i64* %37, align 8
  %80 = load i64, i64* %38, align 8
  %81 = load i64, i64* %39, align 8
  %82 = load i64, i64* %40, align 8
  %83 = load i64, i64* %41, align 8
  %84 = call i32 @LD_UB8(i32* %74, i32 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83)
  %85 = load i64, i64* %26, align 8
  %86 = load i64, i64* %27, align 8
  %87 = load i64, i64* %28, align 8
  %88 = load i64, i64* %29, align 8
  %89 = load i64, i64* %30, align 8
  %90 = load i64, i64* %31, align 8
  %91 = load i64, i64* %32, align 8
  %92 = load i64, i64* %33, align 8
  %93 = load i64, i64* %34, align 8
  %94 = load i64, i64* %35, align 8
  %95 = load i64, i64* %36, align 8
  %96 = load i64, i64* %37, align 8
  %97 = load i64, i64* %38, align 8
  %98 = load i64, i64* %39, align 8
  %99 = load i64, i64* %40, align 8
  %100 = load i64, i64* %41, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* %19, align 8
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* %16, align 8
  %109 = call i32 @TRANSPOSE16x8_UB_UB(i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* %19, align 8
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %17, align 8
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* %24, align 8
  %119 = load i64, i64* %25, align 8
  %120 = load i64, i64* %23, align 8
  %121 = load i64, i64* %21, align 8
  %122 = load i64, i64* %20, align 8
  %123 = load i64, i64* %22, align 8
  %124 = call i32 @LPF_MASK_HEV(i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %19, align 8
  %129 = load i64, i64* %18, align 8
  %130 = load i64, i64* %17, align 8
  %131 = load i64, i64* %20, align 8
  %132 = load i64, i64* %21, align 8
  %133 = call i32 @VP8_MBFILTER(i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132)
  %134 = load i64, i64* %14, align 8
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %19, align 8
  %137 = load i64, i64* %15, align 8
  %138 = load i32, i32* %42, align 4
  %139 = load i32, i32* %43, align 4
  %140 = call i32 @ILVR_B2_SH(i64 %134, i64 %135, i64 %136, i64 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %43, align 4
  %142 = load i32, i32* %42, align 4
  %143 = load i32, i32* %45, align 4
  %144 = load i32, i32* %46, align 4
  %145 = call i32 @ILVRL_H2_SH(i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* %19, align 8
  %149 = load i64, i64* %15, align 8
  %150 = load i32, i32* %42, align 4
  %151 = load i32, i32* %43, align 4
  %152 = call i32 @ILVL_B2_SH(i64 %146, i64 %147, i64 %148, i64 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %43, align 4
  %154 = load i32, i32* %42, align 4
  %155 = load i32, i32* %48, align 4
  %156 = load i32, i32* %49, align 4
  %157 = call i32 @ILVRL_H2_SH(i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load i64, i64* %17, align 8
  %159 = load i64, i64* %18, align 8
  %160 = load i32, i32* %44, align 4
  %161 = load i32, i32* %47, align 4
  %162 = call i32 @ILVRL_B2_SH(i64 %158, i64 %159, i32 %160, i32 %161)
  %163 = load i32*, i32** %6, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 -3
  store i32* %164, i32** %11, align 8
  %165 = load i32, i32* %45, align 4
  %166 = load i32, i32* %44, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = call i32 @VP8_ST6x1_UB(i32 %165, i32 0, i32 %166, i32 0, i32* %167, i32 4)
  %169 = load i32, i32* %7, align 4
  %170 = load i32*, i32** %11, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %11, align 8
  %173 = load i32, i32* %45, align 4
  %174 = load i32, i32* %44, align 4
  %175 = load i32*, i32** %11, align 8
  %176 = call i32 @VP8_ST6x1_UB(i32 %173, i32 1, i32 %174, i32 1, i32* %175, i32 4)
  %177 = load i32, i32* %7, align 4
  %178 = load i32*, i32** %11, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %11, align 8
  %181 = load i32, i32* %45, align 4
  %182 = load i32, i32* %44, align 4
  %183 = load i32*, i32** %11, align 8
  %184 = call i32 @VP8_ST6x1_UB(i32 %181, i32 2, i32 %182, i32 2, i32* %183, i32 4)
  %185 = load i32, i32* %7, align 4
  %186 = load i32*, i32** %11, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %11, align 8
  %189 = load i32, i32* %45, align 4
  %190 = load i32, i32* %44, align 4
  %191 = load i32*, i32** %11, align 8
  %192 = call i32 @VP8_ST6x1_UB(i32 %189, i32 3, i32 %190, i32 3, i32* %191, i32 4)
  %193 = load i32, i32* %7, align 4
  %194 = load i32*, i32** %11, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32* %196, i32** %11, align 8
  %197 = load i32, i32* %46, align 4
  %198 = load i32, i32* %44, align 4
  %199 = load i32*, i32** %11, align 8
  %200 = call i32 @VP8_ST6x1_UB(i32 %197, i32 0, i32 %198, i32 4, i32* %199, i32 4)
  %201 = load i32, i32* %7, align 4
  %202 = load i32*, i32** %11, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32* %204, i32** %11, align 8
  %205 = load i32, i32* %46, align 4
  %206 = load i32, i32* %44, align 4
  %207 = load i32*, i32** %11, align 8
  %208 = call i32 @VP8_ST6x1_UB(i32 %205, i32 1, i32 %206, i32 5, i32* %207, i32 4)
  %209 = load i32, i32* %7, align 4
  %210 = load i32*, i32** %11, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32* %212, i32** %11, align 8
  %213 = load i32, i32* %46, align 4
  %214 = load i32, i32* %44, align 4
  %215 = load i32*, i32** %11, align 8
  %216 = call i32 @VP8_ST6x1_UB(i32 %213, i32 2, i32 %214, i32 6, i32* %215, i32 4)
  %217 = load i32, i32* %7, align 4
  %218 = load i32*, i32** %11, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32* %220, i32** %11, align 8
  %221 = load i32, i32* %46, align 4
  %222 = load i32, i32* %44, align 4
  %223 = load i32*, i32** %11, align 8
  %224 = call i32 @VP8_ST6x1_UB(i32 %221, i32 3, i32 %222, i32 7, i32* %223, i32 4)
  %225 = load i32, i32* %7, align 4
  %226 = load i32*, i32** %11, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %11, align 8
  %229 = load i32, i32* %48, align 4
  %230 = load i32, i32* %47, align 4
  %231 = load i32*, i32** %11, align 8
  %232 = call i32 @VP8_ST6x1_UB(i32 %229, i32 0, i32 %230, i32 0, i32* %231, i32 4)
  %233 = load i32, i32* %7, align 4
  %234 = load i32*, i32** %11, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32* %236, i32** %11, align 8
  %237 = load i32, i32* %48, align 4
  %238 = load i32, i32* %47, align 4
  %239 = load i32*, i32** %11, align 8
  %240 = call i32 @VP8_ST6x1_UB(i32 %237, i32 1, i32 %238, i32 1, i32* %239, i32 4)
  %241 = load i32, i32* %7, align 4
  %242 = load i32*, i32** %11, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  store i32* %244, i32** %11, align 8
  %245 = load i32, i32* %48, align 4
  %246 = load i32, i32* %47, align 4
  %247 = load i32*, i32** %11, align 8
  %248 = call i32 @VP8_ST6x1_UB(i32 %245, i32 2, i32 %246, i32 2, i32* %247, i32 4)
  %249 = load i32, i32* %7, align 4
  %250 = load i32*, i32** %11, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32* %252, i32** %11, align 8
  %253 = load i32, i32* %48, align 4
  %254 = load i32, i32* %47, align 4
  %255 = load i32*, i32** %11, align 8
  %256 = call i32 @VP8_ST6x1_UB(i32 %253, i32 3, i32 %254, i32 3, i32* %255, i32 4)
  %257 = load i32, i32* %7, align 4
  %258 = load i32*, i32** %11, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32* %260, i32** %11, align 8
  %261 = load i32, i32* %49, align 4
  %262 = load i32, i32* %47, align 4
  %263 = load i32*, i32** %11, align 8
  %264 = call i32 @VP8_ST6x1_UB(i32 %261, i32 0, i32 %262, i32 4, i32* %263, i32 4)
  %265 = load i32, i32* %7, align 4
  %266 = load i32*, i32** %11, align 8
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  store i32* %268, i32** %11, align 8
  %269 = load i32, i32* %49, align 4
  %270 = load i32, i32* %47, align 4
  %271 = load i32*, i32** %11, align 8
  %272 = call i32 @VP8_ST6x1_UB(i32 %269, i32 1, i32 %270, i32 5, i32* %271, i32 4)
  %273 = load i32, i32* %7, align 4
  %274 = load i32*, i32** %11, align 8
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  store i32* %276, i32** %11, align 8
  %277 = load i32, i32* %49, align 4
  %278 = load i32, i32* %47, align 4
  %279 = load i32*, i32** %11, align 8
  %280 = call i32 @VP8_ST6x1_UB(i32 %277, i32 2, i32 %278, i32 6, i32* %279, i32 4)
  %281 = load i32, i32* %7, align 4
  %282 = load i32*, i32** %11, align 8
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  store i32* %284, i32** %11, align 8
  %285 = load i32, i32* %49, align 4
  %286 = load i32, i32* %47, align 4
  %287 = load i32*, i32** %11, align 8
  %288 = call i32 @VP8_ST6x1_UB(i32 %285, i32 3, i32 %286, i32 7, i32* %287, i32 4)
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
