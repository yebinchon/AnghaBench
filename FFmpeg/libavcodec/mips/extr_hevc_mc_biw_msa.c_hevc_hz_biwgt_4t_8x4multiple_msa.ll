; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_8x4multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_8x4multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_4t_8x4multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_4t_8x4multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
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
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %53 = load i32, i32* @ff_hevc_mask_arr, align 4
  %54 = call i64 @LD_SB(i32 %53)
  store i64 %54, i64* %37, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 -1
  store i32* %56, i32** %14, align 8
  %57 = load i32*, i32** %20, align 8
  %58 = call i32 @LD_SH(i32* %57)
  store i32 %58, i32* %49, align 4
  %59 = load i32, i32* %49, align 4
  %60 = load i32, i32* %31, align 4
  %61 = load i32, i32* %32, align 4
  %62 = call i32 @SPLATI_H2_SH(i32 %59, i32 0, i32 1, i32 %60, i32 %61)
  %63 = load i32, i32* %24, align 4
  %64 = load i32, i32* %25, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %26, align 4
  %67 = shl i32 %65, %66
  store i32 %67, i32* %28, align 4
  %68 = load i32, i32* %22, align 4
  %69 = and i32 %68, 65535
  store i32 %69, i32* %22, align 4
  %70 = load i32, i32* %22, align 4
  %71 = load i32, i32* %23, align 4
  %72 = shl i32 %71, 16
  %73 = or i32 %70, %72
  store i32 %73, i32* %29, align 4
  %74 = load i32, i32* %23, align 4
  %75 = mul nsw i32 128, %74
  store i32 %75, i32* %30, align 4
  %76 = load i32, i32* %30, align 4
  %77 = shl i32 %76, 6
  store i32 %77, i32* %30, align 4
  %78 = load i32, i32* %30, align 4
  %79 = load i32, i32* %28, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %28, align 4
  %81 = load i32, i32* %28, align 4
  %82 = call i32 @__msa_fill_w(i32 %81)
  store i32 %82, i32* %51, align 4
  %83 = load i32, i32* %29, align 4
  %84 = call i32 @__msa_fill_w(i32 %83)
  store i32 %84, i32* %50, align 4
  %85 = load i32, i32* %26, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @__msa_fill_w(i32 %86)
  store i32 %87, i32* %52, align 4
  %88 = load i64, i64* %37, align 8
  %89 = add nsw i64 %88, 2
  store i64 %89, i64* %38, align 8
  %90 = load i32, i32* %21, align 4
  %91 = ashr i32 %90, 2
  store i32 %91, i32* %27, align 4
  br label %92

92:                                               ; preds = %96, %13
  %93 = load i32, i32* %27, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %27, align 4
  %95 = icmp ne i32 %93, 0
  br i1 %95, label %96, label %215

96:                                               ; preds = %92
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i64, i64* %33, align 8
  %100 = load i64, i64* %34, align 8
  %101 = load i64, i64* %35, align 8
  %102 = load i64, i64* %36, align 8
  %103 = call i32 @LD_SB4(i32* %97, i32 %98, i64 %99, i64 %100, i64 %101, i64 %102)
  %104 = load i32, i32* %15, align 4
  %105 = mul nsw i32 4, %104
  %106 = load i32*, i32** %14, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %14, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %41, align 4
  %112 = load i32, i32* %42, align 4
  %113 = load i32, i32* %43, align 4
  %114 = load i32, i32* %44, align 4
  %115 = call i32 @LD_SH4(i32* %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %17, align 4
  %117 = mul nsw i32 4, %116
  %118 = load i32*, i32** %16, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %16, align 8
  %121 = load i64, i64* %33, align 8
  %122 = load i64, i64* %34, align 8
  %123 = load i64, i64* %35, align 8
  %124 = load i64, i64* %36, align 8
  %125 = call i32 @XORI_B4_128_SB(i64 %121, i64 %122, i64 %123, i64 %124)
  %126 = load i64, i64* %33, align 8
  %127 = load i64, i64* %33, align 8
  %128 = load i64, i64* %33, align 8
  %129 = load i64, i64* %33, align 8
  %130 = load i64, i64* %37, align 8
  %131 = load i64, i64* %38, align 8
  %132 = load i64, i64* %39, align 8
  %133 = load i64, i64* %40, align 8
  %134 = call i32 @VSHF_B2_SB(i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133)
  %135 = load i64, i64* %39, align 8
  %136 = load i64, i64* %40, align 8
  %137 = load i32, i32* %31, align 4
  %138 = load i32, i32* %32, align 4
  %139 = call i32 @HEVC_FILT_4TAP_SH(i64 %135, i64 %136, i32 %137, i32 %138)
  store i32 %139, i32* %45, align 4
  %140 = load i64, i64* %34, align 8
  %141 = load i64, i64* %34, align 8
  %142 = load i64, i64* %34, align 8
  %143 = load i64, i64* %34, align 8
  %144 = load i64, i64* %37, align 8
  %145 = load i64, i64* %38, align 8
  %146 = load i64, i64* %39, align 8
  %147 = load i64, i64* %40, align 8
  %148 = call i32 @VSHF_B2_SB(i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i64, i64* %39, align 8
  %150 = load i64, i64* %40, align 8
  %151 = load i32, i32* %31, align 4
  %152 = load i32, i32* %32, align 4
  %153 = call i32 @HEVC_FILT_4TAP_SH(i64 %149, i64 %150, i32 %151, i32 %152)
  store i32 %153, i32* %46, align 4
  %154 = load i64, i64* %35, align 8
  %155 = load i64, i64* %35, align 8
  %156 = load i64, i64* %35, align 8
  %157 = load i64, i64* %35, align 8
  %158 = load i64, i64* %37, align 8
  %159 = load i64, i64* %38, align 8
  %160 = load i64, i64* %39, align 8
  %161 = load i64, i64* %40, align 8
  %162 = call i32 @VSHF_B2_SB(i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161)
  %163 = load i64, i64* %39, align 8
  %164 = load i64, i64* %40, align 8
  %165 = load i32, i32* %31, align 4
  %166 = load i32, i32* %32, align 4
  %167 = call i32 @HEVC_FILT_4TAP_SH(i64 %163, i64 %164, i32 %165, i32 %166)
  store i32 %167, i32* %47, align 4
  %168 = load i64, i64* %36, align 8
  %169 = load i64, i64* %36, align 8
  %170 = load i64, i64* %36, align 8
  %171 = load i64, i64* %36, align 8
  %172 = load i64, i64* %37, align 8
  %173 = load i64, i64* %38, align 8
  %174 = load i64, i64* %39, align 8
  %175 = load i64, i64* %40, align 8
  %176 = call i32 @VSHF_B2_SB(i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175)
  %177 = load i64, i64* %39, align 8
  %178 = load i64, i64* %40, align 8
  %179 = load i32, i32* %31, align 4
  %180 = load i32, i32* %32, align 4
  %181 = call i32 @HEVC_FILT_4TAP_SH(i64 %177, i64 %178, i32 %179, i32 %180)
  store i32 %181, i32* %48, align 4
  %182 = load i32, i32* %45, align 4
  %183 = load i32, i32* %46, align 4
  %184 = load i32, i32* %47, align 4
  %185 = load i32, i32* %48, align 4
  %186 = load i32, i32* %41, align 4
  %187 = load i32, i32* %42, align 4
  %188 = load i32, i32* %43, align 4
  %189 = load i32, i32* %44, align 4
  %190 = load i32, i32* %50, align 4
  %191 = load i32, i32* %52, align 4
  %192 = load i32, i32* %51, align 4
  %193 = load i32, i32* %45, align 4
  %194 = load i32, i32* %46, align 4
  %195 = load i32, i32* %47, align 4
  %196 = load i32, i32* %48, align 4
  %197 = call i32 @HEVC_BIW_RND_CLIP4(i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196)
  %198 = load i32, i32* %46, align 4
  %199 = load i32, i32* %45, align 4
  %200 = load i32, i32* %48, align 4
  %201 = load i32, i32* %47, align 4
  %202 = load i32, i32* %45, align 4
  %203 = load i32, i32* %46, align 4
  %204 = call i32 @PCKEV_B2_SH(i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203)
  %205 = load i32, i32* %45, align 4
  %206 = load i32, i32* %46, align 4
  %207 = load i32*, i32** %18, align 8
  %208 = load i32, i32* %19, align 4
  %209 = call i32 @ST_D4(i32 %205, i32 %206, i32 0, i32 1, i32 0, i32 1, i32* %207, i32 %208)
  %210 = load i32, i32* %19, align 4
  %211 = mul nsw i32 4, %210
  %212 = load i32*, i32** %18, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  store i32* %214, i32** %18, align 8
  br label %92

215:                                              ; preds = %92
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
