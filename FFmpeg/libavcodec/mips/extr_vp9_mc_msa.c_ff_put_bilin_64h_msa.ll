; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_put_bilin_64h_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_put_bilin_64h_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vp9_bilinear_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_bilin_64h_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %63, %7
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %15, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %187

63:                                               ; preds = %59
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @LD_SB(i32* %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 16
  %68 = call i32 @LD_SB(i32* %67)
  store i32 %68, i32* %19, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 32
  %71 = call i32 @LD_SB(i32* %70)
  store i32 %71, i32* %21, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 48
  %74 = call i32 @LD_SB(i32* %73)
  store i32 %74, i32* %23, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 56
  %77 = call i32 @LD_SB(i32* %76)
  store i32 %77, i32* %24, align 4
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %23, align 4
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %22, align 4
  %87 = call i32 @SLDI_B3_SB(i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 8, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %10, align 8
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %25, align 4
  %97 = load i32, i32* %25, align 4
  %98 = load i64, i64* %27, align 8
  %99 = load i64, i64* %28, align 8
  %100 = call i32 @VSHF_B2_UB(i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i64 %98, i64 %99)
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %25, align 4
  %106 = load i32, i32* %25, align 4
  %107 = load i64, i64* %29, align 8
  %108 = load i64, i64* %30, align 8
  %109 = call i32 @VSHF_B2_UB(i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i64 %107, i64 %108)
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %22, align 4
  %114 = load i32, i32* %25, align 4
  %115 = load i32, i32* %25, align 4
  %116 = load i64, i64* %31, align 8
  %117 = load i64, i64* %32, align 8
  %118 = call i32 @VSHF_B2_UB(i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i64 %116, i64 %117)
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* %23, align 4
  %121 = load i32, i32* %24, align 4
  %122 = load i32, i32* %24, align 4
  %123 = load i32, i32* %25, align 4
  %124 = load i32, i32* %25, align 4
  %125 = load i64, i64* %33, align 8
  %126 = load i64, i64* %34, align 8
  %127 = call i32 @VSHF_B2_UB(i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i64 %125, i64 %126)
  %128 = load i64, i64* %27, align 8
  %129 = load i64, i64* %28, align 8
  %130 = load i64, i64* %29, align 8
  %131 = load i64, i64* %30, align 8
  %132 = load i64, i64* %26, align 8
  %133 = load i64, i64* %26, align 8
  %134 = load i64, i64* %26, align 8
  %135 = load i64, i64* %26, align 8
  %136 = load i64, i64* %35, align 8
  %137 = load i64, i64* %36, align 8
  %138 = load i64, i64* %37, align 8
  %139 = load i64, i64* %38, align 8
  %140 = call i32 @DOTP_UB4_UH(i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139)
  %141 = load i64, i64* %31, align 8
  %142 = load i64, i64* %32, align 8
  %143 = load i64, i64* %33, align 8
  %144 = load i64, i64* %34, align 8
  %145 = load i64, i64* %26, align 8
  %146 = load i64, i64* %26, align 8
  %147 = load i64, i64* %26, align 8
  %148 = load i64, i64* %26, align 8
  %149 = load i64, i64* %39, align 8
  %150 = load i64, i64* %40, align 8
  %151 = load i64, i64* %41, align 8
  %152 = load i64, i64* %42, align 8
  %153 = call i32 @DOTP_UB4_UH(i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152)
  %154 = load i64, i64* %35, align 8
  %155 = load i64, i64* %36, align 8
  %156 = load i64, i64* %37, align 8
  %157 = load i64, i64* %38, align 8
  %158 = call i32 @SRARI_H4_UH(i64 %154, i64 %155, i64 %156, i64 %157, i32 7)
  %159 = load i64, i64* %39, align 8
  %160 = load i64, i64* %40, align 8
  %161 = load i64, i64* %41, align 8
  %162 = load i64, i64* %42, align 8
  %163 = call i32 @SRARI_H4_UH(i64 %159, i64 %160, i64 %161, i64 %162, i32 7)
  %164 = load i64, i64* %35, align 8
  %165 = load i64, i64* %36, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = call i32 @PCKEV_ST_SB(i64 %164, i64 %165, i32* %166)
  %168 = load i64, i64* %37, align 8
  %169 = load i64, i64* %38, align 8
  %170 = load i32*, i32** %8, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 16
  %172 = call i32 @PCKEV_ST_SB(i64 %168, i64 %169, i32* %171)
  %173 = load i64, i64* %39, align 8
  %174 = load i64, i64* %40, align 8
  %175 = load i32*, i32** %8, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 32
  %177 = call i32 @PCKEV_ST_SB(i64 %173, i64 %174, i32* %176)
  %178 = load i64, i64* %41, align 8
  %179 = load i64, i64* %42, align 8
  %180 = load i32*, i32** %8, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 48
  %182 = call i32 @PCKEV_ST_SB(i64 %178, i64 %179, i32* %181)
  %183 = load i32, i32* %9, align 4
  %184 = load i32*, i32** %8, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32* %186, i32** %8, align 8
  br label %59

187:                                              ; preds = %59
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @SLDI_B3_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

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
