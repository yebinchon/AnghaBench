; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_8x6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_8x6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_4t_8x6_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_4t_8x6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %45 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i64 @LD_SB(i32* %46)
  store i64 %47, i64* %31, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 -1
  store i32* %49, i32** %9, align 8
  %50 = call i32 @__msa_ldi_h(i32 128)
  store i32 %50, i32* %44, align 4
  %51 = load i32, i32* %44, align 4
  %52 = shl i32 %51, 6
  store i32 %52, i32* %44, align 4
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @LD_SH(i32* %53)
  store i32 %54, i32* %43, align 4
  %55 = load i32, i32* %43, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @SPLATI_H2_SH(i32 %55, i32 0, i32 1, i32 %56, i32 %57)
  %59 = load i64, i64* %31, align 8
  %60 = add nsw i64 %59, 2
  store i64 %60, i64* %32, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i64, i64* %19, align 8
  %64 = load i64, i64* %20, align 8
  %65 = load i64, i64* %21, align 8
  %66 = load i64, i64* %22, align 8
  %67 = load i64, i64* %23, align 8
  %68 = load i64, i64* %24, align 8
  %69 = call i32 @LD_SB6(i32* %61, i32 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68)
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %25, align 4
  %73 = load i32, i32* %26, align 4
  %74 = load i32, i32* %27, align 4
  %75 = load i32, i32* %28, align 4
  %76 = call i32 @LD_SH4(i32* %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = mul nsw i32 4, %77
  %79 = load i32*, i32** %11, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %11, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %29, align 4
  %85 = load i32, i32* %30, align 4
  %86 = call i32 @LD_SH2(i32* %82, i32 %83, i32 %84, i32 %85)
  %87 = load i64, i64* %19, align 8
  %88 = load i64, i64* %20, align 8
  %89 = load i64, i64* %21, align 8
  %90 = load i64, i64* %22, align 8
  %91 = load i64, i64* %23, align 8
  %92 = load i64, i64* %24, align 8
  %93 = call i32 @XORI_B6_128_SB(i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92)
  %94 = load i32, i32* %44, align 4
  store i32 %94, i32* %37, align 4
  %95 = load i32, i32* %44, align 4
  store i32 %95, i32* %38, align 4
  %96 = load i32, i32* %44, align 4
  store i32 %96, i32* %39, align 4
  %97 = load i32, i32* %44, align 4
  store i32 %97, i32* %40, align 4
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* %19, align 8
  %100 = load i64, i64* %20, align 8
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* %31, align 8
  %103 = load i64, i64* %31, align 8
  %104 = load i64, i64* %33, align 8
  %105 = load i64, i64* %34, align 8
  %106 = call i32 @VSHF_B2_SB(i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105)
  %107 = load i64, i64* %21, align 8
  %108 = load i64, i64* %21, align 8
  %109 = load i64, i64* %22, align 8
  %110 = load i64, i64* %22, align 8
  %111 = load i64, i64* %31, align 8
  %112 = load i64, i64* %31, align 8
  %113 = load i64, i64* %35, align 8
  %114 = load i64, i64* %36, align 8
  %115 = call i32 @VSHF_B2_SB(i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114)
  %116 = load i64, i64* %33, align 8
  %117 = load i64, i64* %34, align 8
  %118 = load i64, i64* %35, align 8
  %119 = load i64, i64* %36, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %37, align 4
  %125 = load i32, i32* %38, align 4
  %126 = load i32, i32* %39, align 4
  %127 = load i32, i32* %40, align 4
  %128 = call i32 @DPADD_SB4_SH(i64 %116, i64 %117, i64 %118, i64 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* %19, align 8
  %131 = load i64, i64* %20, align 8
  %132 = load i64, i64* %20, align 8
  %133 = load i64, i64* %32, align 8
  %134 = load i64, i64* %32, align 8
  %135 = load i64, i64* %33, align 8
  %136 = load i64, i64* %34, align 8
  %137 = call i32 @VSHF_B2_SB(i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %21, align 8
  %139 = load i64, i64* %21, align 8
  %140 = load i64, i64* %22, align 8
  %141 = load i64, i64* %22, align 8
  %142 = load i64, i64* %32, align 8
  %143 = load i64, i64* %32, align 8
  %144 = load i64, i64* %35, align 8
  %145 = load i64, i64* %36, align 8
  %146 = call i32 @VSHF_B2_SB(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145)
  %147 = load i64, i64* %33, align 8
  %148 = load i64, i64* %34, align 8
  %149 = load i64, i64* %35, align 8
  %150 = load i64, i64* %36, align 8
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %37, align 4
  %156 = load i32, i32* %38, align 4
  %157 = load i32, i32* %39, align 4
  %158 = load i32, i32* %40, align 4
  %159 = call i32 @DPADD_SB4_SH(i64 %147, i64 %148, i64 %149, i64 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %44, align 4
  store i32 %160, i32* %41, align 4
  %161 = load i32, i32* %44, align 4
  store i32 %161, i32* %42, align 4
  %162 = load i64, i64* %23, align 8
  %163 = load i64, i64* %23, align 8
  %164 = load i64, i64* %24, align 8
  %165 = load i64, i64* %24, align 8
  %166 = load i64, i64* %31, align 8
  %167 = load i64, i64* %31, align 8
  %168 = load i64, i64* %33, align 8
  %169 = load i64, i64* %34, align 8
  %170 = call i32 @VSHF_B2_SB(i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169)
  %171 = load i64, i64* %23, align 8
  %172 = load i64, i64* %23, align 8
  %173 = load i64, i64* %24, align 8
  %174 = load i64, i64* %24, align 8
  %175 = load i64, i64* %32, align 8
  %176 = load i64, i64* %32, align 8
  %177 = load i64, i64* %35, align 8
  %178 = load i64, i64* %36, align 8
  %179 = call i32 @VSHF_B2_SB(i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i64, i64* %33, align 8
  %181 = load i64, i64* %34, align 8
  %182 = load i64, i64* %35, align 8
  %183 = load i64, i64* %36, align 8
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %18, align 4
  %188 = load i32, i32* %41, align 4
  %189 = load i32, i32* %42, align 4
  %190 = load i32, i32* %41, align 4
  %191 = load i32, i32* %42, align 4
  %192 = call i32 @DPADD_SB4_SH(i64 %180, i64 %181, i64 %182, i64 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191)
  %193 = load i32, i32* %25, align 4
  %194 = load i32, i32* %26, align 4
  %195 = load i32, i32* %27, align 4
  %196 = load i32, i32* %28, align 4
  %197 = load i32, i32* %37, align 4
  %198 = load i32, i32* %38, align 4
  %199 = load i32, i32* %39, align 4
  %200 = load i32, i32* %40, align 4
  %201 = load i32, i32* %37, align 4
  %202 = load i32, i32* %38, align 4
  %203 = load i32, i32* %39, align 4
  %204 = load i32, i32* %40, align 4
  %205 = call i32 @HEVC_BI_RND_CLIP4(i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 7, i32 %201, i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %29, align 4
  %207 = load i32, i32* %30, align 4
  %208 = load i32, i32* %41, align 4
  %209 = load i32, i32* %42, align 4
  %210 = load i32, i32* %41, align 4
  %211 = load i32, i32* %42, align 4
  %212 = call i32 @HEVC_BI_RND_CLIP2(i32 %206, i32 %207, i32 %208, i32 %209, i32 7, i32 %210, i32 %211)
  %213 = load i32, i32* %38, align 4
  %214 = load i32, i32* %37, align 4
  %215 = load i32, i32* %40, align 4
  %216 = load i32, i32* %39, align 4
  %217 = load i32, i32* %37, align 4
  %218 = load i32, i32* %38, align 4
  %219 = call i32 @PCKEV_B2_SH(i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218)
  %220 = load i32, i32* %42, align 4
  %221 = sext i32 %220 to i64
  %222 = load i32, i32* %41, align 4
  %223 = sext i32 %222 to i64
  %224 = call i64 @__msa_pckev_b(i64 %221, i64 %223)
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %39, align 4
  %226 = load i32, i32* %37, align 4
  %227 = load i32, i32* %38, align 4
  %228 = load i32*, i32** %13, align 8
  %229 = load i32, i32* %14, align 4
  %230 = call i32 @ST_D4(i32 %226, i32 %227, i32 0, i32 1, i32 0, i32 1, i32* %228, i32 %229)
  %231 = load i32, i32* %39, align 4
  %232 = load i32*, i32** %13, align 8
  %233 = load i32, i32* %14, align 4
  %234 = mul nsw i32 4, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %14, align 4
  %238 = call i32 @ST_D2(i32 %231, i32 0, i32 1, i32* %236, i32 %237)
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB6(i32*, i32, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SH2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B6_128_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP2(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_D2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
