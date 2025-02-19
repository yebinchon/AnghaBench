; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_hevc_hv_uni_4t_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_hevc_hv_uni_4t_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, i64, i32*, i32*)* @hevc_hv_uni_4t_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uni_4t_4x4_msa(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
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
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %52 = load i64, i64* @ff_hevc_mask_arr, align 8
  %53 = add nsw i64 %52, 16
  %54 = call i64 @LD_SB(i64 %53)
  store i64 %54, i64* %25, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add nsw i64 %55, 1
  %57 = load i32*, i32** %7, align 8
  %58 = sub i64 0, %56
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @LD_SH(i32* %60)
  store i32 %61, i32* %35, align 4
  %62 = load i32, i32* %35, align 4
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %22, align 4
  %65 = call i32 @SPLATI_H2_SH(i32 %62, i32 0, i32 1, i32 %63, i32 %64)
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @LD_SH(i32* %66)
  store i32 %67, i32* %35, align 4
  %68 = load i32, i32* %35, align 4
  %69 = load i32, i32* %35, align 4
  %70 = call i32 @UNPCK_R_SB_SH(i32 %68, i32 %69)
  %71 = load i32, i32* %35, align 4
  %72 = load i32, i32* %23, align 4
  %73 = load i32, i32* %24, align 4
  %74 = call i32 @SPLATI_W2_SH(i32 %71, i32 0, i32 %72, i32 %73)
  %75 = load i64, i64* %25, align 8
  %76 = add nsw i64 %75, 2
  store i64 %76, i64* %26, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* %16, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* %18, align 8
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* %20, align 8
  %86 = call i32 @LD_SB7(i32* %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85)
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %20, align 8
  %94 = call i32 @XORI_B7_128_SB(i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93)
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* %17, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %25, align 8
  %100 = load i64, i64* %26, align 8
  %101 = load i64, i64* %27, align 8
  %102 = load i64, i64* %28, align 8
  %103 = call i32 @VSHF_B2_SB(i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102)
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %18, align 8
  %108 = load i64, i64* %25, align 8
  %109 = load i64, i64* %26, align 8
  %110 = load i64, i64* %29, align 8
  %111 = load i64, i64* %30, align 8
  %112 = call i32 @VSHF_B2_SB(i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111)
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* %19, align 8
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %19, align 8
  %117 = load i64, i64* %25, align 8
  %118 = load i64, i64* %26, align 8
  %119 = load i64, i64* %31, align 8
  %120 = load i64, i64* %32, align 8
  %121 = call i32 @VSHF_B2_SB(i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120)
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* %20, align 8
  %124 = load i64, i64* %17, align 8
  %125 = load i64, i64* %20, align 8
  %126 = load i64, i64* %25, align 8
  %127 = load i64, i64* %26, align 8
  %128 = load i64, i64* %33, align 8
  %129 = load i64, i64* %34, align 8
  %130 = call i32 @VSHF_B2_SB(i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129)
  %131 = load i64, i64* %27, align 8
  %132 = load i64, i64* %28, align 8
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %22, align 4
  %135 = call i32 @HEVC_FILT_4TAP_SH(i64 %131, i64 %132, i32 %133, i32 %134)
  store i32 %135, i32* %38, align 4
  %136 = load i64, i64* %29, align 8
  %137 = load i64, i64* %30, align 8
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %22, align 4
  %140 = call i32 @HEVC_FILT_4TAP_SH(i64 %136, i64 %137, i32 %138, i32 %139)
  store i32 %140, i32* %39, align 4
  %141 = load i64, i64* %31, align 8
  %142 = load i64, i64* %32, align 8
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %22, align 4
  %145 = call i32 @HEVC_FILT_4TAP_SH(i64 %141, i64 %142, i32 %143, i32 %144)
  store i32 %145, i32* %40, align 4
  %146 = load i64, i64* %33, align 8
  %147 = load i64, i64* %34, align 8
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* %22, align 4
  %150 = call i32 @HEVC_FILT_4TAP_SH(i64 %146, i64 %147, i32 %148, i32 %149)
  store i32 %150, i32* %41, align 4
  %151 = load i32, i32* %39, align 4
  %152 = load i32, i32* %38, align 4
  %153 = load i32, i32* %42, align 4
  %154 = load i32, i32* %46, align 4
  %155 = call i32 @ILVRL_H2_SH(i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %40, align 4
  %157 = load i32, i32* %39, align 4
  %158 = load i32, i32* %45, align 4
  %159 = load i32, i32* %44, align 4
  %160 = call i32 @ILVRL_H2_SH(i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load i32, i32* %41, align 4
  %162 = load i32, i32* %40, align 4
  %163 = load i32, i32* %43, align 4
  %164 = load i32, i32* %47, align 4
  %165 = call i32 @ILVRL_H2_SH(i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %42, align 4
  %167 = load i32, i32* %43, align 4
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* %24, align 4
  %170 = call i32 @HEVC_FILT_4TAP(i32 %166, i32 %167, i32 %168, i32 %169)
  store i32 %170, i32* %48, align 4
  %171 = load i32, i32* %45, align 4
  %172 = load i32, i32* %46, align 4
  %173 = load i32, i32* %23, align 4
  %174 = load i32, i32* %24, align 4
  %175 = call i32 @HEVC_FILT_4TAP(i32 %171, i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %49, align 4
  %176 = load i32, i32* %43, align 4
  %177 = load i32, i32* %44, align 4
  %178 = load i32, i32* %23, align 4
  %179 = load i32, i32* %24, align 4
  %180 = call i32 @HEVC_FILT_4TAP(i32 %176, i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %50, align 4
  %181 = load i32, i32* %46, align 4
  %182 = load i32, i32* %47, align 4
  %183 = load i32, i32* %23, align 4
  %184 = load i32, i32* %24, align 4
  %185 = call i32 @HEVC_FILT_4TAP(i32 %181, i32 %182, i32 %183, i32 %184)
  store i32 %185, i32* %51, align 4
  %186 = load i32, i32* %48, align 4
  %187 = load i32, i32* %49, align 4
  %188 = load i32, i32* %50, align 4
  %189 = load i32, i32* %51, align 4
  %190 = call i32 @SRA_4V(i32 %186, i32 %187, i32 %188, i32 %189, i32 6)
  %191 = load i32, i32* %49, align 4
  %192 = load i32, i32* %48, align 4
  %193 = load i32, i32* %51, align 4
  %194 = load i32, i32* %50, align 4
  %195 = load i32, i32* %36, align 4
  %196 = load i32, i32* %37, align 4
  %197 = call i32 @PCKEV_H2_SH(i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196)
  %198 = load i32, i32* %36, align 4
  %199 = load i32, i32* %37, align 4
  %200 = call i32 @SRARI_H2_SH(i32 %198, i32 %199, i32 6)
  %201 = load i32, i32* %36, align 4
  %202 = load i32, i32* %37, align 4
  %203 = call i32 @SAT_SH2_SH(i32 %201, i32 %202, i32 7)
  %204 = load i32, i32* %36, align 4
  %205 = load i32, i32* %37, align 4
  %206 = call i32 @PCKEV_XORI128_UB(i32 %204, i32 %205)
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %13, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = load i64, i64* %10, align 8
  %210 = call i32 @ST_W4(i32 %207, i32 0, i32 1, i32 2, i32 3, i32* %208, i64 %209)
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B7_128_SB(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @SAT_SH2_SH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
