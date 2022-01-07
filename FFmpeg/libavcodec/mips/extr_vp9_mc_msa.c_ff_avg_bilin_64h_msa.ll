; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_avg_bilin_64h_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_avg_bilin_64h_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vp9_bilinear_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_bilin_64h_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %48 = load i32**, i32*** @vp9_bilinear_filters_msa, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %16, align 8
  %54 = load i32*, i32** @mc_filt_mask_arr, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @LD_SB(i32* %55)
  store i32 %56, i32* %25, align 4
  %57 = load i32*, i32** %16, align 8
  %58 = call i64 @LD_UH(i32* %57)
  store i64 %58, i64* %47, align 8
  %59 = load i64, i64* %47, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @__msa_splati_h(i32 %60, i32 0)
  store i64 %61, i64* %26, align 8
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %67, %7
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %15, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %67, label %196

67:                                               ; preds = %63
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %23, align 4
  %73 = call i32 @LD_SB4(i32* %68, i32 16, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 56
  %76 = call i32 @LD_SB(i32* %75)
  store i32 %76, i32* %24, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %23, align 4
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %22, align 4
  %86 = call i32 @SLDI_B3_SB(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 8, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %10, align 8
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %25, align 4
  %96 = load i32, i32* %25, align 4
  %97 = load i64, i64* %31, align 8
  %98 = load i64, i64* %32, align 8
  %99 = call i32 @VSHF_B2_UB(i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i64 %97, i64 %98)
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %25, align 4
  %105 = load i32, i32* %25, align 4
  %106 = load i64, i64* %33, align 8
  %107 = load i64, i64* %34, align 8
  %108 = call i32 @VSHF_B2_UB(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i64 %106, i64 %107)
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %22, align 4
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %25, align 4
  %115 = load i64, i64* %35, align 8
  %116 = load i64, i64* %36, align 8
  %117 = call i32 @VSHF_B2_UB(i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i64 %115, i64 %116)
  %118 = load i32, i32* %23, align 4
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* %24, align 4
  %121 = load i32, i32* %24, align 4
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %25, align 4
  %124 = load i64, i64* %37, align 8
  %125 = load i64, i64* %38, align 8
  %126 = call i32 @VSHF_B2_UB(i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i64 %124, i64 %125)
  %127 = load i64, i64* %31, align 8
  %128 = load i64, i64* %32, align 8
  %129 = load i64, i64* %33, align 8
  %130 = load i64, i64* %34, align 8
  %131 = load i64, i64* %26, align 8
  %132 = load i64, i64* %26, align 8
  %133 = load i64, i64* %26, align 8
  %134 = load i64, i64* %26, align 8
  %135 = load i64, i64* %39, align 8
  %136 = load i64, i64* %40, align 8
  %137 = load i64, i64* %41, align 8
  %138 = load i64, i64* %42, align 8
  %139 = call i32 @DOTP_UB4_UH(i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138)
  %140 = load i64, i64* %35, align 8
  %141 = load i64, i64* %36, align 8
  %142 = load i64, i64* %37, align 8
  %143 = load i64, i64* %38, align 8
  %144 = load i64, i64* %26, align 8
  %145 = load i64, i64* %26, align 8
  %146 = load i64, i64* %26, align 8
  %147 = load i64, i64* %26, align 8
  %148 = load i64, i64* %43, align 8
  %149 = load i64, i64* %44, align 8
  %150 = load i64, i64* %45, align 8
  %151 = load i64, i64* %46, align 8
  %152 = call i32 @DOTP_UB4_UH(i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151)
  %153 = load i64, i64* %39, align 8
  %154 = load i64, i64* %40, align 8
  %155 = load i64, i64* %41, align 8
  %156 = load i64, i64* %42, align 8
  %157 = call i32 @SRARI_H4_UH(i64 %153, i64 %154, i64 %155, i64 %156, i32 7)
  %158 = load i64, i64* %43, align 8
  %159 = load i64, i64* %44, align 8
  %160 = load i64, i64* %45, align 8
  %161 = load i64, i64* %46, align 8
  %162 = call i32 @SRARI_H4_UH(i64 %158, i64 %159, i64 %160, i64 %161, i32 7)
  %163 = load i32*, i32** %8, align 8
  %164 = load i64, i64* %27, align 8
  %165 = load i64, i64* %28, align 8
  %166 = load i64, i64* %29, align 8
  %167 = load i64, i64* %30, align 8
  %168 = call i32 @LD_UB4(i32* %163, i32 16, i64 %164, i64 %165, i64 %166, i64 %167)
  %169 = load i64, i64* %40, align 8
  %170 = load i64, i64* %39, align 8
  %171 = load i64, i64* %27, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = call i32 @PCKEV_AVG_ST_UB(i64 %169, i64 %170, i64 %171, i32* %172)
  %174 = load i64, i64* %42, align 8
  %175 = load i64, i64* %41, align 8
  %176 = load i64, i64* %28, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 16
  %179 = call i32 @PCKEV_AVG_ST_UB(i64 %174, i64 %175, i64 %176, i32* %178)
  %180 = load i64, i64* %44, align 8
  %181 = load i64, i64* %43, align 8
  %182 = load i64, i64* %29, align 8
  %183 = load i32*, i32** %8, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 32
  %185 = call i32 @PCKEV_AVG_ST_UB(i64 %180, i64 %181, i64 %182, i32* %184)
  %186 = load i64, i64* %46, align 8
  %187 = load i64, i64* %45, align 8
  %188 = load i64, i64* %30, align 8
  %189 = load i32*, i32** %8, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 48
  %191 = call i32 @PCKEV_AVG_ST_UB(i64 %186, i64 %187, i64 %188, i32* %190)
  %192 = load i32, i32* %9, align 4
  %193 = load i32*, i32** %8, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32* %195, i32** %8, align 8
  br label %63

196:                                              ; preds = %63
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SLDI_B3_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_UB(i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @PCKEV_AVG_ST_UB(i64, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
