; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hv_bil_no_rnd_8x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hv_bil_no_rnd_8x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @common_hv_bil_no_rnd_8x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_bil_no_rnd_8x16_msa(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
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
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @LD_UB8(i32* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %22, align 4
  %80 = load i32, i32* %23, align 4
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %25, align 4
  %83 = call i32 @LD_UB8(i32* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = mul nsw i32 8, %84
  %86 = load i32*, i32** %5, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %5, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @LD_UB(i32* %89)
  store i32 %90, i32* %17, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = call i32 @LD_UB(i32* %92)
  store i32 %93, i32* %26, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i64, i64* %27, align 8
  %97 = load i64, i64* %36, align 8
  %98 = call i32 @ILVRL_B2_UH(i32 %94, i32 %95, i64 %96, i64 %97)
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i64, i64* %28, align 8
  %102 = load i64, i64* %37, align 8
  %103 = call i32 @ILVRL_B2_UH(i32 %99, i32 %100, i64 %101, i64 %102)
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i64, i64* %29, align 8
  %107 = load i64, i64* %38, align 8
  %108 = call i32 @ILVRL_B2_UH(i32 %104, i32 %105, i64 %106, i64 %107)
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i64, i64* %30, align 8
  %112 = load i64, i64* %39, align 8
  %113 = call i32 @ILVRL_B2_UH(i32 %109, i32 %110, i64 %111, i64 %112)
  %114 = load i32, i32* %22, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i64, i64* %31, align 8
  %117 = load i64, i64* %40, align 8
  %118 = call i32 @ILVRL_B2_UH(i32 %114, i32 %115, i64 %116, i64 %117)
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i64, i64* %32, align 8
  %122 = load i64, i64* %41, align 8
  %123 = call i32 @ILVRL_B2_UH(i32 %119, i32 %120, i64 %121, i64 %122)
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i64, i64* %33, align 8
  %127 = load i64, i64* %42, align 8
  %128 = call i32 @ILVRL_B2_UH(i32 %124, i32 %125, i64 %126, i64 %127)
  %129 = load i32, i32* %25, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load i64, i64* %34, align 8
  %132 = load i64, i64* %43, align 8
  %133 = call i32 @ILVRL_B2_UH(i32 %129, i32 %130, i64 %131, i64 %132)
  %134 = load i32, i32* %26, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i64, i64* %35, align 8
  %137 = load i64, i64* %44, align 8
  %138 = call i32 @ILVRL_B2_UH(i32 %134, i32 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %27, align 8
  %140 = load i64, i64* %28, align 8
  %141 = load i64, i64* %29, align 8
  %142 = load i64, i64* %27, align 8
  %143 = load i64, i64* %28, align 8
  %144 = load i64, i64* %29, align 8
  %145 = call i32 @HADD_UB3_UH(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144)
  %146 = load i64, i64* %30, align 8
  %147 = load i64, i64* %31, align 8
  %148 = load i64, i64* %32, align 8
  %149 = load i64, i64* %30, align 8
  %150 = load i64, i64* %31, align 8
  %151 = load i64, i64* %32, align 8
  %152 = call i32 @HADD_UB3_UH(i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151)
  %153 = load i64, i64* %33, align 8
  %154 = load i64, i64* %34, align 8
  %155 = load i64, i64* %35, align 8
  %156 = load i64, i64* %33, align 8
  %157 = load i64, i64* %34, align 8
  %158 = load i64, i64* %35, align 8
  %159 = call i32 @HADD_UB3_UH(i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158)
  %160 = load i64, i64* %36, align 8
  %161 = load i64, i64* %37, align 8
  %162 = load i64, i64* %38, align 8
  %163 = load i64, i64* %36, align 8
  %164 = load i64, i64* %37, align 8
  %165 = load i64, i64* %38, align 8
  %166 = call i32 @HADD_UB3_UH(i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165)
  %167 = load i64, i64* %39, align 8
  %168 = load i64, i64* %40, align 8
  %169 = load i64, i64* %41, align 8
  %170 = load i64, i64* %39, align 8
  %171 = load i64, i64* %40, align 8
  %172 = load i64, i64* %41, align 8
  %173 = call i32 @HADD_UB3_UH(i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172)
  %174 = load i64, i64* %42, align 8
  %175 = load i64, i64* %43, align 8
  %176 = load i64, i64* %44, align 8
  %177 = load i64, i64* %42, align 8
  %178 = load i64, i64* %43, align 8
  %179 = load i64, i64* %44, align 8
  %180 = call i32 @HADD_UB3_UH(i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179)
  %181 = load i64, i64* %27, align 8
  %182 = load i64, i64* %28, align 8
  %183 = add nsw i64 %181, %182
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %45, align 8
  %185 = load i64, i64* %28, align 8
  %186 = load i64, i64* %29, align 8
  %187 = add nsw i64 %185, %186
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %46, align 8
  %189 = load i64, i64* %29, align 8
  %190 = load i64, i64* %30, align 8
  %191 = add nsw i64 %189, %190
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %47, align 8
  %193 = load i64, i64* %30, align 8
  %194 = load i64, i64* %31, align 8
  %195 = add nsw i64 %193, %194
  %196 = add nsw i64 %195, 1
  store i64 %196, i64* %48, align 8
  %197 = load i64, i64* %31, align 8
  %198 = load i64, i64* %32, align 8
  %199 = add nsw i64 %197, %198
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %49, align 8
  %201 = load i64, i64* %32, align 8
  %202 = load i64, i64* %33, align 8
  %203 = add nsw i64 %201, %202
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %50, align 8
  %205 = load i64, i64* %33, align 8
  %206 = load i64, i64* %34, align 8
  %207 = add nsw i64 %205, %206
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %51, align 8
  %209 = load i64, i64* %34, align 8
  %210 = load i64, i64* %35, align 8
  %211 = add nsw i64 %209, %210
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %52, align 8
  %213 = load i64, i64* %36, align 8
  %214 = load i64, i64* %37, align 8
  %215 = add nsw i64 %213, %214
  %216 = add nsw i64 %215, 1
  store i64 %216, i64* %53, align 8
  %217 = load i64, i64* %37, align 8
  %218 = load i64, i64* %38, align 8
  %219 = add nsw i64 %217, %218
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %54, align 8
  %221 = load i64, i64* %38, align 8
  %222 = load i64, i64* %39, align 8
  %223 = add nsw i64 %221, %222
  %224 = add nsw i64 %223, 1
  store i64 %224, i64* %55, align 8
  %225 = load i64, i64* %39, align 8
  %226 = load i64, i64* %40, align 8
  %227 = add nsw i64 %225, %226
  %228 = add nsw i64 %227, 1
  store i64 %228, i64* %56, align 8
  %229 = load i64, i64* %40, align 8
  %230 = load i64, i64* %41, align 8
  %231 = add nsw i64 %229, %230
  %232 = add nsw i64 %231, 1
  store i64 %232, i64* %57, align 8
  %233 = load i64, i64* %41, align 8
  %234 = load i64, i64* %42, align 8
  %235 = add nsw i64 %233, %234
  %236 = add nsw i64 %235, 1
  store i64 %236, i64* %58, align 8
  %237 = load i64, i64* %42, align 8
  %238 = load i64, i64* %43, align 8
  %239 = add nsw i64 %237, %238
  %240 = add nsw i64 %239, 1
  store i64 %240, i64* %59, align 8
  %241 = load i64, i64* %43, align 8
  %242 = load i64, i64* %44, align 8
  %243 = add nsw i64 %241, %242
  %244 = add nsw i64 %243, 1
  store i64 %244, i64* %60, align 8
  %245 = load i64, i64* %45, align 8
  %246 = load i64, i64* %46, align 8
  %247 = load i64, i64* %47, align 8
  %248 = load i64, i64* %48, align 8
  %249 = call i32 @SRA_4V(i64 %245, i64 %246, i64 %247, i64 %248, i32 2)
  %250 = load i64, i64* %49, align 8
  %251 = load i64, i64* %50, align 8
  %252 = load i64, i64* %51, align 8
  %253 = load i64, i64* %52, align 8
  %254 = call i32 @SRA_4V(i64 %250, i64 %251, i64 %252, i64 %253, i32 2)
  %255 = load i64, i64* %53, align 8
  %256 = load i64, i64* %54, align 8
  %257 = load i64, i64* %55, align 8
  %258 = load i64, i64* %56, align 8
  %259 = call i32 @SRA_4V(i64 %255, i64 %256, i64 %257, i64 %258, i32 2)
  %260 = load i64, i64* %57, align 8
  %261 = load i64, i64* %58, align 8
  %262 = load i64, i64* %59, align 8
  %263 = load i64, i64* %60, align 8
  %264 = call i32 @SRA_4V(i64 %260, i64 %261, i64 %262, i64 %263, i32 2)
  %265 = load i64, i64* %53, align 8
  %266 = load i64, i64* %45, align 8
  %267 = load i64, i64* %54, align 8
  %268 = load i64, i64* %46, align 8
  %269 = load i64, i64* %55, align 8
  %270 = load i64, i64* %47, align 8
  %271 = load i64, i64* %56, align 8
  %272 = load i64, i64* %48, align 8
  %273 = load i32*, i32** %7, align 8
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @PCKEV_ST_SB4(i64 %265, i64 %266, i64 %267, i64 %268, i64 %269, i64 %270, i64 %271, i64 %272, i32* %273, i32 %274)
  %276 = load i32, i32* %8, align 4
  %277 = mul nsw i32 4, %276
  %278 = load i32*, i32** %7, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32* %280, i32** %7, align 8
  %281 = load i64, i64* %57, align 8
  %282 = load i64, i64* %49, align 8
  %283 = load i64, i64* %58, align 8
  %284 = load i64, i64* %50, align 8
  %285 = load i64, i64* %59, align 8
  %286 = load i64, i64* %51, align 8
  %287 = load i64, i64* %60, align 8
  %288 = load i64, i64* %52, align 8
  %289 = load i32*, i32** %7, align 8
  %290 = load i32, i32* %8, align 4
  %291 = call i32 @PCKEV_ST_SB4(i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %286, i64 %287, i64 %288, i32* %289, i32 %290)
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_UB(i32*) #1

declare dso_local i32 @ILVRL_B2_UH(i32, i32, i64, i64) #1

declare dso_local i32 @HADD_UB3_UH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRA_4V(i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_ST_SB4(i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
