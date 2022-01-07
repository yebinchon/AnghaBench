; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_4t_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_4t_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
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
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %40 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i64 @LD_SB(i32* %41)
  store i64 %42, i64* %36, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 -1
  store i32* %44, i32** %9, align 8
  %45 = call i32 @__msa_ldi_h(i32 128)
  store i32 %45, i32* %39, align 4
  %46 = load i32, i32* %39, align 4
  %47 = shl i32 %46, 6
  store i32 %47, i32* %39, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = call i32 @LD_SH(i32* %48)
  store i32 %49, i32* %38, align 4
  %50 = load i32, i32* %38, align 4
  %51 = load i32, i32* %34, align 4
  %52 = load i32, i32* %35, align 4
  %53 = call i32 @SPLATI_H2_SH(i32 %50, i32 0, i32 1, i32 %51, i32 %52)
  %54 = load i64, i64* %36, align 8
  %55 = add nsw i64 %54, 2
  store i64 %55, i64* %37, align 8
  %56 = load i32, i32* %16, align 4
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %62, %8
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %17, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %196

62:                                               ; preds = %58
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i64, i64* %18, align 8
  %66 = load i64, i64* %20, align 8
  %67 = call i32 @LD_SB2(i32* %63, i32 %64, i64 %65, i64 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  %70 = load i32, i32* %10, align 4
  %71 = load i64, i64* %19, align 8
  %72 = load i64, i64* %21, align 8
  %73 = call i32 @LD_SB2(i32* %69, i32 %70, i64 %71, i64 %72)
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 2, %74
  %76 = load i32*, i32** %9, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %9, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %26, align 4
  %82 = load i32, i32* %28, align 4
  %83 = call i32 @LD_SH2(i32* %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %27, align 4
  %88 = load i32, i32* %29, align 4
  %89 = call i32 @LD_SH2(i32* %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 2, %90
  %92 = load i32*, i32** %11, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %11, align 8
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %20, align 8
  %98 = load i64, i64* %21, align 8
  %99 = call i32 @XORI_B4_128_SB(i64 %95, i64 %96, i64 %97, i64 %98)
  %100 = load i32, i32* %39, align 4
  store i32 %100, i32* %30, align 4
  %101 = load i32, i32* %39, align 4
  store i32 %101, i32* %31, align 4
  %102 = load i32, i32* %39, align 4
  store i32 %102, i32* %32, align 4
  %103 = load i32, i32* %39, align 4
  store i32 %103, i32* %33, align 4
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %19, align 8
  %107 = load i64, i64* %19, align 8
  %108 = load i64, i64* %36, align 8
  %109 = load i64, i64* %36, align 8
  %110 = load i64, i64* %22, align 8
  %111 = load i64, i64* %23, align 8
  %112 = call i32 @VSHF_B2_SB(i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111)
  %113 = load i64, i64* %20, align 8
  %114 = load i64, i64* %20, align 8
  %115 = load i64, i64* %21, align 8
  %116 = load i64, i64* %21, align 8
  %117 = load i64, i64* %36, align 8
  %118 = load i64, i64* %36, align 8
  %119 = load i64, i64* %24, align 8
  %120 = load i64, i64* %25, align 8
  %121 = call i32 @VSHF_B2_SB(i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120)
  %122 = load i64, i64* %22, align 8
  %123 = load i64, i64* %23, align 8
  %124 = load i64, i64* %24, align 8
  %125 = load i64, i64* %25, align 8
  %126 = load i32, i32* %34, align 4
  %127 = load i32, i32* %34, align 4
  %128 = load i32, i32* %34, align 4
  %129 = load i32, i32* %34, align 4
  %130 = load i32, i32* %30, align 4
  %131 = load i32, i32* %31, align 4
  %132 = load i32, i32* %32, align 4
  %133 = load i32, i32* %33, align 4
  %134 = call i32 @DPADD_SB4_SH(i64 %122, i64 %123, i64 %124, i64 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %18, align 8
  %137 = load i64, i64* %19, align 8
  %138 = load i64, i64* %19, align 8
  %139 = load i64, i64* %37, align 8
  %140 = load i64, i64* %37, align 8
  %141 = load i64, i64* %22, align 8
  %142 = load i64, i64* %23, align 8
  %143 = call i32 @VSHF_B2_SB(i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142)
  %144 = load i64, i64* %20, align 8
  %145 = load i64, i64* %20, align 8
  %146 = load i64, i64* %21, align 8
  %147 = load i64, i64* %21, align 8
  %148 = load i64, i64* %37, align 8
  %149 = load i64, i64* %37, align 8
  %150 = load i64, i64* %24, align 8
  %151 = load i64, i64* %25, align 8
  %152 = call i32 @VSHF_B2_SB(i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151)
  %153 = load i64, i64* %22, align 8
  %154 = load i64, i64* %23, align 8
  %155 = load i64, i64* %24, align 8
  %156 = load i64, i64* %25, align 8
  %157 = load i32, i32* %35, align 4
  %158 = load i32, i32* %35, align 4
  %159 = load i32, i32* %35, align 4
  %160 = load i32, i32* %35, align 4
  %161 = load i32, i32* %30, align 4
  %162 = load i32, i32* %31, align 4
  %163 = load i32, i32* %32, align 4
  %164 = load i32, i32* %33, align 4
  %165 = call i32 @DPADD_SB4_SH(i64 %153, i64 %154, i64 %155, i64 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %26, align 4
  %167 = load i32, i32* %27, align 4
  %168 = load i32, i32* %28, align 4
  %169 = load i32, i32* %29, align 4
  %170 = load i32, i32* %30, align 4
  %171 = load i32, i32* %31, align 4
  %172 = load i32, i32* %32, align 4
  %173 = load i32, i32* %33, align 4
  %174 = load i32, i32* %30, align 4
  %175 = load i32, i32* %31, align 4
  %176 = load i32, i32* %32, align 4
  %177 = load i32, i32* %33, align 4
  %178 = call i32 @HEVC_BI_RND_CLIP4(i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 7, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %31, align 4
  %180 = load i32, i32* %30, align 4
  %181 = load i32, i32* %33, align 4
  %182 = load i32, i32* %32, align 4
  %183 = load i32, i32* %30, align 4
  %184 = load i32, i32* %31, align 4
  %185 = call i32 @PCKEV_B2_SH(i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184)
  %186 = load i32, i32* %30, align 4
  %187 = load i32, i32* %31, align 4
  %188 = load i32*, i32** %13, align 8
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @ST_SH2(i32 %186, i32 %187, i32* %188, i32 %189)
  %191 = load i32, i32* %14, align 4
  %192 = mul nsw i32 2, %191
  %193 = load i32*, i32** %13, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32* %195, i32** %13, align 8
  br label %58

196:                                              ; preds = %58
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
