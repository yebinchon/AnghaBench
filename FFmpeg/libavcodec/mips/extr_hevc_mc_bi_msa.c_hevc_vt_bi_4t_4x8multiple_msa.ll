; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_4x8multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_4x8multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_bi_4t_4x8multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_bi_4t_4x8multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = sext i32 %58 to i64
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %9, align 8
  %63 = call i32 @__msa_ldi_h(i32 128)
  store i32 %63, i32* %57, align 4
  %64 = load i32, i32* %57, align 4
  %65 = shl i32 %64, 6
  store i32 %65, i32* %57, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @LD_SH(i32* %66)
  store i32 %67, i32* %56, align 4
  %68 = load i32, i32* %56, align 4
  %69 = load i32, i32* %54, align 4
  %70 = load i32, i32* %55, align 4
  %71 = call i32 @SPLATI_H2_SH(i32 %68, i32 0, i32 1, i32 %69, i32 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* %19, align 8
  %76 = load i64, i64* %20, align 8
  %77 = call i32 @LD_SB3(i32* %72, i32 %73, i64 %74, i64 %75, i64 %76)
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 3, %78
  %80 = load i32*, i32** %9, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %9, align 8
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %20, align 8
  %86 = load i64, i64* %19, align 8
  %87 = load i64, i64* %36, align 8
  %88 = load i64, i64* %41, align 8
  %89 = call i32 @ILVR_B2_SB(i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88)
  %90 = load i64, i64* %41, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i64, i64* %36, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i64 @__msa_ilvr_d(i32 %91, i32 %93)
  store i64 %94, i64* %46, align 8
  %95 = load i64, i64* %46, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i64 @__msa_xori_b(i32 %96, i32 128)
  store i64 %97, i64* %46, align 8
  %98 = load i32, i32* %16, align 4
  %99 = ashr i32 %98, 3
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %104, %8
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %17, align 4
  %103 = icmp ne i32 %101, 0
  br i1 %103, label %104, label %270

104:                                              ; preds = %100
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i64, i64* %21, align 8
  %108 = load i64, i64* %22, align 8
  %109 = load i64, i64* %23, align 8
  %110 = load i64, i64* %32, align 8
  %111 = load i64, i64* %33, align 8
  %112 = load i64, i64* %34, align 8
  %113 = call i32 @LD_SB6(i32* %105, i32 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112)
  %114 = load i32, i32* %10, align 4
  %115 = mul nsw i32 6, %114
  %116 = load i32*, i32** %9, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %9, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %24, align 4
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* %27, align 4
  %125 = load i32, i32* %28, align 4
  %126 = load i32, i32* %29, align 4
  %127 = load i32, i32* %30, align 4
  %128 = load i32, i32* %31, align 4
  %129 = call i32 @LD_SH8(i32* %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = mul nsw i32 8, %130
  %132 = load i32*, i32** %11, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %11, align 8
  %135 = load i32, i32* %25, align 4
  %136 = load i32, i32* %24, align 4
  %137 = load i32, i32* %27, align 4
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* %24, align 4
  %140 = load i32, i32* %25, align 4
  %141 = call i32 @ILVR_D2_SH(i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %29, align 4
  %143 = load i32, i32* %28, align 4
  %144 = load i32, i32* %31, align 4
  %145 = load i32, i32* %30, align 4
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %27, align 4
  %148 = call i32 @ILVR_D2_SH(i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i64, i64* %21, align 8
  %150 = load i64, i64* %20, align 8
  %151 = load i64, i64* %22, align 8
  %152 = load i64, i64* %21, align 8
  %153 = load i64, i64* %23, align 8
  %154 = load i64, i64* %22, align 8
  %155 = load i64, i64* %32, align 8
  %156 = load i64, i64* %23, align 8
  %157 = load i64, i64* %37, align 8
  %158 = load i64, i64* %42, align 8
  %159 = load i64, i64* %38, align 8
  %160 = load i64, i64* %43, align 8
  %161 = call i32 @ILVR_B4_SB(i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160)
  %162 = load i64, i64* %33, align 8
  %163 = load i64, i64* %32, align 8
  %164 = load i64, i64* %34, align 8
  %165 = load i64, i64* %33, align 8
  %166 = load i64, i64* %39, align 8
  %167 = load i64, i64* %44, align 8
  %168 = call i32 @ILVR_B2_SB(i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167)
  %169 = load i64, i64* %42, align 8
  %170 = load i64, i64* %37, align 8
  %171 = load i64, i64* %43, align 8
  %172 = load i64, i64* %38, align 8
  %173 = load i64, i64* %44, align 8
  %174 = load i64, i64* %39, align 8
  %175 = load i64, i64* %47, align 8
  %176 = load i64, i64* %48, align 8
  %177 = load i64, i64* %49, align 8
  %178 = call i32 @ILVR_D3_SB(i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177)
  %179 = load i64, i64* %47, align 8
  %180 = load i64, i64* %48, align 8
  %181 = load i64, i64* %49, align 8
  %182 = call i32 @XORI_B3_128_SB(i64 %179, i64 %180, i64 %181)
  %183 = load i32, i32* %57, align 4
  store i32 %183, i32* %50, align 4
  %184 = load i64, i64* %46, align 8
  %185 = load i64, i64* %47, align 8
  %186 = load i32, i32* %54, align 4
  %187 = load i32, i32* %55, align 4
  %188 = load i32, i32* %50, align 4
  %189 = load i32, i32* %50, align 4
  %190 = call i32 @DPADD_SB2_SH(i64 %184, i64 %185, i32 %186, i32 %187, i32 %188, i32 %189)
  %191 = load i32, i32* %57, align 4
  store i32 %191, i32* %51, align 4
  %192 = load i64, i64* %47, align 8
  %193 = load i64, i64* %48, align 8
  %194 = load i32, i32* %54, align 4
  %195 = load i32, i32* %55, align 4
  %196 = load i32, i32* %51, align 4
  %197 = load i32, i32* %51, align 4
  %198 = call i32 @DPADD_SB2_SH(i64 %192, i64 %193, i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i32, i32* %57, align 4
  store i32 %199, i32* %52, align 4
  %200 = load i64, i64* %48, align 8
  %201 = load i64, i64* %49, align 8
  %202 = load i32, i32* %54, align 4
  %203 = load i32, i32* %55, align 4
  %204 = load i32, i32* %52, align 4
  %205 = load i32, i32* %52, align 4
  %206 = call i32 @DPADD_SB2_SH(i64 %200, i64 %201, i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load i64, i64* %35, align 8
  %210 = load i64, i64* %20, align 8
  %211 = call i32 @LD_SB2(i32* %207, i32 %208, i64 %209, i64 %210)
  %212 = load i32, i32* %10, align 4
  %213 = mul nsw i32 2, %212
  %214 = load i32*, i32** %9, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32* %216, i32** %9, align 8
  %217 = load i64, i64* %35, align 8
  %218 = load i64, i64* %34, align 8
  %219 = load i64, i64* %20, align 8
  %220 = load i64, i64* %35, align 8
  %221 = load i64, i64* %40, align 8
  %222 = load i64, i64* %45, align 8
  %223 = call i32 @ILVR_B2_SB(i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222)
  %224 = load i64, i64* %45, align 8
  %225 = trunc i64 %224 to i32
  %226 = load i64, i64* %40, align 8
  %227 = trunc i64 %226 to i32
  %228 = call i64 @__msa_ilvr_d(i32 %225, i32 %227)
  store i64 %228, i64* %46, align 8
  %229 = load i64, i64* %46, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i64 @__msa_xori_b(i32 %230, i32 128)
  store i64 %231, i64* %46, align 8
  %232 = load i32, i32* %57, align 4
  store i32 %232, i32* %53, align 4
  %233 = load i64, i64* %49, align 8
  %234 = load i64, i64* %46, align 8
  %235 = load i32, i32* %54, align 4
  %236 = load i32, i32* %55, align 4
  %237 = load i32, i32* %53, align 4
  %238 = load i32, i32* %53, align 4
  %239 = call i32 @DPADD_SB2_SH(i64 %233, i64 %234, i32 %235, i32 %236, i32 %237, i32 %238)
  %240 = load i32, i32* %24, align 4
  %241 = load i32, i32* %25, align 4
  %242 = load i32, i32* %26, align 4
  %243 = load i32, i32* %27, align 4
  %244 = load i32, i32* %50, align 4
  %245 = load i32, i32* %51, align 4
  %246 = load i32, i32* %52, align 4
  %247 = load i32, i32* %53, align 4
  %248 = load i32, i32* %50, align 4
  %249 = load i32, i32* %51, align 4
  %250 = load i32, i32* %52, align 4
  %251 = load i32, i32* %53, align 4
  %252 = call i32 @HEVC_BI_RND_CLIP4(i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 7, i32 %248, i32 %249, i32 %250, i32 %251)
  %253 = load i32, i32* %51, align 4
  %254 = load i32, i32* %50, align 4
  %255 = load i32, i32* %53, align 4
  %256 = load i32, i32* %52, align 4
  %257 = load i32, i32* %50, align 4
  %258 = load i32, i32* %52, align 4
  %259 = call i32 @PCKEV_B2_SH(i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258)
  %260 = load i32, i32* %50, align 4
  %261 = load i32, i32* %52, align 4
  %262 = load i32*, i32** %13, align 8
  %263 = load i32, i32* %14, align 4
  %264 = call i32 @ST_W8(i32 %260, i32 %261, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %262, i32 %263)
  %265 = load i32, i32* %14, align 4
  %266 = mul nsw i32 8, %265
  %267 = load i32*, i32** %13, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  store i32* %269, i32** %13, align 8
  br label %100

270:                                              ; preds = %100
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i64 @__msa_xori_b(i32, i32) #1

declare dso_local i32 @LD_SB6(i32*, i32, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D3_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
