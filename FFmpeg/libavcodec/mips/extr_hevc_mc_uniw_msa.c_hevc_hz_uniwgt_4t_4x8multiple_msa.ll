; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_4x8multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_4x8multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_hz_uniwgt_4t_4x8multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_uniwgt_4t_4x8multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
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
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %52 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 16
  %54 = call i64 @LD_SB(i32* %53)
  store i64 %54, i64* %51, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 -1
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @LD_SH(i32* %57)
  store i32 %58, i32* %45, align 4
  %59 = load i32, i32* %45, align 4
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* %23, align 4
  %62 = call i32 @SPLATI_H2_SH(i32 %59, i32 0, i32 1, i32 %60, i32 %61)
  %63 = load i32, i32* %16, align 4
  %64 = and i32 %63, 65535
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @__msa_fill_w(i32 %65)
  store i32 %66, i32* %49, align 4
  %67 = load i32, i32* %18, align 4
  %68 = call i32 @__msa_fill_w(i32 %67)
  store i32 %68, i32* %50, align 4
  %69 = load i32, i32* %16, align 4
  %70 = mul nsw i32 %69, 128
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sub nsw i32 %71, 6
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @__msa_fill_h(i32 %73)
  store i32 %74, i32* %46, align 4
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @__msa_fill_h(i32 %75)
  store i32 %76, i32* %47, align 4
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @__msa_fill_h(i32 %77)
  store i32 %78, i32* %48, align 4
  %79 = load i32, i32* %46, align 4
  %80 = load i32, i32* %48, align 4
  %81 = call i32 @__msa_srar_h(i32 %79, i32 %80)
  store i32 %81, i32* %46, align 4
  %82 = load i32, i32* %47, align 4
  %83 = load i32, i32* %46, align 4
  %84 = call i32 @__msa_adds_s_h(i32 %82, i32 %83)
  store i32 %84, i32* %47, align 4
  %85 = load i64, i64* %51, align 8
  %86 = add nsw i64 %85, 2
  store i64 %86, i64* %32, align 8
  %87 = load i32, i32* %15, align 4
  %88 = ashr i32 %87, 3
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %93, %9
  %90 = load i32, i32* %19, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %19, align 4
  %92 = icmp ne i32 %90, 0
  br i1 %92, label %93, label %204

93:                                               ; preds = %89
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i64, i64* %24, align 8
  %97 = load i64, i64* %25, align 8
  %98 = load i64, i64* %26, align 8
  %99 = load i64, i64* %27, align 8
  %100 = load i64, i64* %28, align 8
  %101 = load i64, i64* %29, align 8
  %102 = load i64, i64* %30, align 8
  %103 = load i64, i64* %31, align 8
  %104 = call i32 @LD_SB8(i32* %94, i32 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103)
  %105 = load i32, i32* %11, align 4
  %106 = mul nsw i32 8, %105
  %107 = load i32*, i32** %10, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %10, align 8
  %110 = load i64, i64* %24, align 8
  %111 = load i64, i64* %25, align 8
  %112 = load i64, i64* %26, align 8
  %113 = load i64, i64* %27, align 8
  %114 = load i64, i64* %28, align 8
  %115 = load i64, i64* %29, align 8
  %116 = load i64, i64* %30, align 8
  %117 = load i64, i64* %31, align 8
  %118 = call i32 @XORI_B8_128_SB(i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117)
  %119 = load i64, i64* %24, align 8
  %120 = load i64, i64* %25, align 8
  %121 = load i64, i64* %24, align 8
  %122 = load i64, i64* %25, align 8
  %123 = load i64, i64* %51, align 8
  %124 = load i64, i64* %32, align 8
  %125 = load i64, i64* %33, align 8
  %126 = load i64, i64* %34, align 8
  %127 = call i32 @VSHF_B2_SB(i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126)
  %128 = load i64, i64* %26, align 8
  %129 = load i64, i64* %27, align 8
  %130 = load i64, i64* %26, align 8
  %131 = load i64, i64* %27, align 8
  %132 = load i64, i64* %51, align 8
  %133 = load i64, i64* %32, align 8
  %134 = load i64, i64* %35, align 8
  %135 = load i64, i64* %36, align 8
  %136 = call i32 @VSHF_B2_SB(i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135)
  %137 = load i64, i64* %28, align 8
  %138 = load i64, i64* %29, align 8
  %139 = load i64, i64* %28, align 8
  %140 = load i64, i64* %29, align 8
  %141 = load i64, i64* %51, align 8
  %142 = load i64, i64* %32, align 8
  %143 = load i64, i64* %37, align 8
  %144 = load i64, i64* %38, align 8
  %145 = call i32 @VSHF_B2_SB(i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144)
  %146 = load i64, i64* %30, align 8
  %147 = load i64, i64* %31, align 8
  %148 = load i64, i64* %30, align 8
  %149 = load i64, i64* %31, align 8
  %150 = load i64, i64* %51, align 8
  %151 = load i64, i64* %32, align 8
  %152 = load i64, i64* %39, align 8
  %153 = load i64, i64* %40, align 8
  %154 = call i32 @VSHF_B2_SB(i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153)
  %155 = load i64, i64* %33, align 8
  %156 = load i64, i64* %34, align 8
  %157 = load i32, i32* %22, align 4
  %158 = load i32, i32* %23, align 4
  %159 = call i32 @HEVC_FILT_4TAP_SH(i64 %155, i64 %156, i32 %157, i32 %158)
  store i32 %159, i32* %41, align 4
  %160 = load i64, i64* %35, align 8
  %161 = load i64, i64* %36, align 8
  %162 = load i32, i32* %22, align 4
  %163 = load i32, i32* %23, align 4
  %164 = call i32 @HEVC_FILT_4TAP_SH(i64 %160, i64 %161, i32 %162, i32 %163)
  store i32 %164, i32* %42, align 4
  %165 = load i64, i64* %37, align 8
  %166 = load i64, i64* %38, align 8
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %23, align 4
  %169 = call i32 @HEVC_FILT_4TAP_SH(i64 %165, i64 %166, i32 %167, i32 %168)
  store i32 %169, i32* %43, align 4
  %170 = load i64, i64* %39, align 8
  %171 = load i64, i64* %40, align 8
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %23, align 4
  %174 = call i32 @HEVC_FILT_4TAP_SH(i64 %170, i64 %171, i32 %172, i32 %173)
  store i32 %174, i32* %44, align 4
  %175 = load i32, i32* %41, align 4
  %176 = load i32, i32* %42, align 4
  %177 = load i32, i32* %43, align 4
  %178 = load i32, i32* %44, align 4
  %179 = load i32, i32* %49, align 4
  %180 = load i32, i32* %47, align 4
  %181 = load i32, i32* %50, align 4
  %182 = load i32, i32* %41, align 4
  %183 = load i32, i32* %42, align 4
  %184 = load i32, i32* %43, align 4
  %185 = load i32, i32* %44, align 4
  %186 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* %42, align 4
  %188 = load i32, i32* %41, align 4
  %189 = load i32, i32* %44, align 4
  %190 = load i32, i32* %43, align 4
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* %21, align 4
  %193 = call i32 @PCKEV_B2_UB(i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* %21, align 4
  %196 = load i32*, i32** %12, align 8
  %197 = load i32, i32* %13, align 4
  %198 = call i32 @ST_W8(i32 %194, i32 %195, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %196, i32 %197)
  %199 = load i32, i32* %13, align 4
  %200 = mul nsw i32 8, %199
  %201 = load i32*, i32** %12, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32* %203, i32** %12, align 8
  br label %89

204:                                              ; preds = %89
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
