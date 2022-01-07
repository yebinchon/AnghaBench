; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_put_bilin_32h_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_put_bilin_32h_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vp9_bilinear_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_bilin_32h_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
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
  %43 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %44 = load i32**, i32*** @vp9_bilinear_filters_msa, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %44, i64 %47
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %16, align 8
  %50 = load i32*, i32** @mc_filt_mask_arr, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i32 @LD_SB(i32* %51)
  store i32 %52, i32* %25, align 4
  %53 = load i32*, i32** %16, align 8
  %54 = call i64 @LD_UH(i32* %53)
  store i64 %54, i64* %43, align 8
  %55 = load i64, i64* %43, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i64 @__msa_splati_h(i32 %56, i32 0)
  store i64 %57, i64* %26, align 8
  %58 = load i32, i32* %12, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %64, %7
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %15, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %193

64:                                               ; preds = %60
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @LD_SB(i32* %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 16
  %69 = call i32 @LD_SB(i32* %68)
  store i32 %69, i32* %19, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 24
  %72 = call i32 @LD_SB(i32* %71)
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @__msa_sldi_b(i32 %73, i32 %74, i32 8)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @LD_SB(i32* %80)
  store i32 %81, i32* %21, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 16
  %84 = call i32 @LD_SB(i32* %83)
  store i32 %84, i32* %23, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 24
  %87 = call i32 @LD_SB(i32* %86)
  store i32 %87, i32* %24, align 4
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %21, align 4
  %90 = call i32 @__msa_sldi_b(i32 %88, i32 %89, i32 8)
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %10, align 8
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %25, align 4
  %100 = load i32, i32* %25, align 4
  %101 = load i64, i64* %27, align 8
  %102 = load i64, i64* %28, align 8
  %103 = call i32 @VSHF_B2_UB(i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i64 %101, i64 %102)
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* %25, align 4
  %109 = load i32, i32* %25, align 4
  %110 = load i64, i64* %29, align 8
  %111 = load i64, i64* %30, align 8
  %112 = call i32 @VSHF_B2_UB(i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i64 %110, i64 %111)
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %22, align 4
  %117 = load i32, i32* %25, align 4
  %118 = load i32, i32* %25, align 4
  %119 = load i64, i64* %31, align 8
  %120 = load i64, i64* %32, align 8
  %121 = call i32 @VSHF_B2_UB(i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i64 %119, i64 %120)
  %122 = load i32, i32* %23, align 4
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* %24, align 4
  %126 = load i32, i32* %25, align 4
  %127 = load i32, i32* %25, align 4
  %128 = load i64, i64* %33, align 8
  %129 = load i64, i64* %34, align 8
  %130 = call i32 @VSHF_B2_UB(i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i64 %128, i64 %129)
  %131 = load i64, i64* %27, align 8
  %132 = load i64, i64* %28, align 8
  %133 = load i64, i64* %29, align 8
  %134 = load i64, i64* %30, align 8
  %135 = load i64, i64* %26, align 8
  %136 = load i64, i64* %26, align 8
  %137 = load i64, i64* %26, align 8
  %138 = load i64, i64* %26, align 8
  %139 = load i64, i64* %35, align 8
  %140 = load i64, i64* %36, align 8
  %141 = load i64, i64* %37, align 8
  %142 = load i64, i64* %38, align 8
  %143 = call i32 @DOTP_UB4_UH(i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142)
  %144 = load i64, i64* %31, align 8
  %145 = load i64, i64* %32, align 8
  %146 = load i64, i64* %33, align 8
  %147 = load i64, i64* %34, align 8
  %148 = load i64, i64* %26, align 8
  %149 = load i64, i64* %26, align 8
  %150 = load i64, i64* %26, align 8
  %151 = load i64, i64* %26, align 8
  %152 = load i64, i64* %39, align 8
  %153 = load i64, i64* %40, align 8
  %154 = load i64, i64* %41, align 8
  %155 = load i64, i64* %42, align 8
  %156 = call i32 @DOTP_UB4_UH(i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155)
  %157 = load i64, i64* %35, align 8
  %158 = load i64, i64* %36, align 8
  %159 = load i64, i64* %37, align 8
  %160 = load i64, i64* %38, align 8
  %161 = call i32 @SRARI_H4_UH(i64 %157, i64 %158, i64 %159, i64 %160, i32 7)
  %162 = load i64, i64* %39, align 8
  %163 = load i64, i64* %40, align 8
  %164 = load i64, i64* %41, align 8
  %165 = load i64, i64* %42, align 8
  %166 = call i32 @SRARI_H4_UH(i64 %162, i64 %163, i64 %164, i64 %165, i32 7)
  %167 = load i64, i64* %35, align 8
  %168 = load i64, i64* %36, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @PCKEV_ST_SB(i64 %167, i64 %168, i32* %169)
  %171 = load i64, i64* %37, align 8
  %172 = load i64, i64* %38, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 16
  %175 = call i32 @PCKEV_ST_SB(i64 %171, i64 %172, i32* %174)
  %176 = load i32, i32* %9, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32* %179, i32** %8, align 8
  %180 = load i64, i64* %39, align 8
  %181 = load i64, i64* %40, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = call i32 @PCKEV_ST_SB(i64 %180, i64 %181, i32* %182)
  %184 = load i64, i64* %41, align 8
  %185 = load i64, i64* %42, align 8
  %186 = load i32*, i32** %8, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 16
  %188 = call i32 @PCKEV_ST_SB(i64 %184, i64 %185, i32* %187)
  %189 = load i32, i32* %9, align 4
  %190 = load i32*, i32** %8, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32* %192, i32** %8, align 8
  br label %60

193:                                              ; preds = %60
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @__msa_sldi_b(i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_UB(i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_ST_SB(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
