; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_4t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_4t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
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
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %41 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = call i64 @LD_SB(i32* %42)
  store i64 %43, i64* %27, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 -1
  store i32* %45, i32** %9, align 8
  %46 = call i32 @__msa_ldi_h(i32 128)
  store i32 %46, i32* %40, align 4
  %47 = load i32, i32* %40, align 4
  %48 = shl i32 %47, 6
  store i32 %48, i32* %40, align 4
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @LD_SH(i32* %49)
  store i32 %50, i32* %39, align 4
  %51 = load i32, i32* %39, align 4
  %52 = load i32, i32* %25, align 4
  %53 = load i32, i32* %26, align 4
  %54 = call i32 @SPLATI_H2_SH(i32 %51, i32 0, i32 1, i32 %52, i32 %53)
  %55 = load i64, i64* %27, align 8
  %56 = add nsw i64 %55, 2
  store i64 %56, i64* %28, align 8
  %57 = load i64, i64* %27, align 8
  %58 = add nsw i64 %57, 8
  store i64 %58, i64* %29, align 8
  %59 = load i64, i64* %27, align 8
  %60 = add nsw i64 %59, 10
  store i64 %60, i64* %30, align 8
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %66, %8
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %17, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %186

66:                                               ; preds = %62
  %67 = load i32*, i32** %9, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load i64, i64* %19, align 8
  %70 = call i32 @LD_SB2(i32* %67, i32 16, i64 %68, i64 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 24
  %73 = call i64 @LD_SB(i32* %72)
  store i64 %73, i64* %20, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %9, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %22, align 4
  %81 = load i32, i32* %23, align 4
  %82 = load i32, i32* %24, align 4
  %83 = call i32 @LD_SH4(i32* %78, i32 8, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %11, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* %19, align 8
  %90 = load i64, i64* %20, align 8
  %91 = call i32 @XORI_B3_128_SB(i64 %88, i64 %89, i64 %90)
  %92 = load i32, i32* %40, align 4
  store i32 %92, i32* %31, align 4
  %93 = load i32, i32* %40, align 4
  store i32 %93, i32* %32, align 4
  %94 = load i32, i32* %40, align 4
  store i32 %94, i32* %33, align 4
  %95 = load i32, i32* %40, align 4
  store i32 %95, i32* %34, align 4
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* %18, align 8
  %98 = load i64, i64* %18, align 8
  %99 = load i64, i64* %19, align 8
  %100 = load i64, i64* %27, align 8
  %101 = load i64, i64* %29, align 8
  %102 = load i64, i64* %35, align 8
  %103 = load i64, i64* %36, align 8
  %104 = call i32 @VSHF_B2_SB(i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103)
  %105 = load i64, i64* %19, align 8
  %106 = load i64, i64* %19, align 8
  %107 = load i64, i64* %20, align 8
  %108 = load i64, i64* %20, align 8
  %109 = load i64, i64* %27, align 8
  %110 = load i64, i64* %27, align 8
  %111 = load i64, i64* %37, align 8
  %112 = load i64, i64* %38, align 8
  %113 = call i32 @VSHF_B2_SB(i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112)
  %114 = load i64, i64* %35, align 8
  %115 = load i64, i64* %36, align 8
  %116 = load i64, i64* %37, align 8
  %117 = load i64, i64* %38, align 8
  %118 = load i32, i32* %25, align 4
  %119 = load i32, i32* %25, align 4
  %120 = load i32, i32* %25, align 4
  %121 = load i32, i32* %25, align 4
  %122 = load i32, i32* %31, align 4
  %123 = load i32, i32* %32, align 4
  %124 = load i32, i32* %33, align 4
  %125 = load i32, i32* %34, align 4
  %126 = call i32 @DPADD_SB4_SH(i64 %114, i64 %115, i64 %116, i64 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load i64, i64* %18, align 8
  %128 = load i64, i64* %18, align 8
  %129 = load i64, i64* %18, align 8
  %130 = load i64, i64* %19, align 8
  %131 = load i64, i64* %28, align 8
  %132 = load i64, i64* %30, align 8
  %133 = load i64, i64* %35, align 8
  %134 = load i64, i64* %36, align 8
  %135 = call i32 @VSHF_B2_SB(i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  %136 = load i64, i64* %19, align 8
  %137 = load i64, i64* %19, align 8
  %138 = load i64, i64* %20, align 8
  %139 = load i64, i64* %20, align 8
  %140 = load i64, i64* %28, align 8
  %141 = load i64, i64* %28, align 8
  %142 = load i64, i64* %37, align 8
  %143 = load i64, i64* %38, align 8
  %144 = call i32 @VSHF_B2_SB(i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143)
  %145 = load i64, i64* %35, align 8
  %146 = load i64, i64* %36, align 8
  %147 = load i64, i64* %37, align 8
  %148 = load i64, i64* %38, align 8
  %149 = load i32, i32* %26, align 4
  %150 = load i32, i32* %26, align 4
  %151 = load i32, i32* %26, align 4
  %152 = load i32, i32* %26, align 4
  %153 = load i32, i32* %31, align 4
  %154 = load i32, i32* %32, align 4
  %155 = load i32, i32* %33, align 4
  %156 = load i32, i32* %34, align 4
  %157 = call i32 @DPADD_SB4_SH(i64 %145, i64 %146, i64 %147, i64 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %23, align 4
  %161 = load i32, i32* %24, align 4
  %162 = load i32, i32* %31, align 4
  %163 = load i32, i32* %32, align 4
  %164 = load i32, i32* %33, align 4
  %165 = load i32, i32* %34, align 4
  %166 = load i32, i32* %31, align 4
  %167 = load i32, i32* %32, align 4
  %168 = load i32, i32* %33, align 4
  %169 = load i32, i32* %34, align 4
  %170 = call i32 @HEVC_BI_RND_CLIP4(i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 7, i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = load i32, i32* %32, align 4
  %172 = load i32, i32* %31, align 4
  %173 = load i32, i32* %34, align 4
  %174 = load i32, i32* %33, align 4
  %175 = load i32, i32* %31, align 4
  %176 = load i32, i32* %32, align 4
  %177 = call i32 @PCKEV_B2_SH(i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176)
  %178 = load i32, i32* %31, align 4
  %179 = load i32, i32* %32, align 4
  %180 = load i32*, i32** %13, align 8
  %181 = call i32 @ST_SH2(i32 %178, i32 %179, i32* %180, i32 16)
  %182 = load i32, i32* %14, align 4
  %183 = load i32*, i32** %13, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %13, align 8
  br label %62

186:                                              ; preds = %62
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

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
