; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_avg_bilin_32h_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_ff_avg_bilin_32h_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vp9_bilinear_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_bilin_32h_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %68, %7
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %15, align 4
  %67 = icmp ne i32 %65, 0
  br i1 %67, label %68, label %209

68:                                               ; preds = %64
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @LD_SB(i32* %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 16
  %73 = call i32 @LD_SB(i32* %72)
  store i32 %73, i32* %19, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 24
  %76 = call i32 @LD_SB(i32* %75)
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @__msa_sldi_b(i32 %77, i32 %78, i32 8)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %10, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @LD_SB(i32* %84)
  store i32 %85, i32* %21, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 16
  %88 = call i32 @LD_SB(i32* %87)
  store i32 %88, i32* %23, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 24
  %91 = call i32 @LD_SB(i32* %90)
  store i32 %91, i32* %24, align 4
  %92 = load i32, i32* %23, align 4
  %93 = load i32, i32* %21, align 4
  %94 = call i32 @__msa_sldi_b(i32 %92, i32 %93, i32 8)
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %10, align 8
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* %25, align 4
  %105 = load i64, i64* %31, align 8
  %106 = load i64, i64* %32, align 8
  %107 = call i32 @VSHF_B2_UB(i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i64 %105, i64 %106)
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %25, align 4
  %113 = load i32, i32* %25, align 4
  %114 = load i64, i64* %33, align 8
  %115 = load i64, i64* %34, align 8
  %116 = call i32 @VSHF_B2_UB(i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i64 %114, i64 %115)
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* %25, align 4
  %122 = load i32, i32* %25, align 4
  %123 = load i64, i64* %35, align 8
  %124 = load i64, i64* %36, align 8
  %125 = call i32 @VSHF_B2_UB(i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i64 %123, i64 %124)
  %126 = load i32, i32* %23, align 4
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %24, align 4
  %130 = load i32, i32* %25, align 4
  %131 = load i32, i32* %25, align 4
  %132 = load i64, i64* %37, align 8
  %133 = load i64, i64* %38, align 8
  %134 = call i32 @VSHF_B2_UB(i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i64 %132, i64 %133)
  %135 = load i64, i64* %31, align 8
  %136 = load i64, i64* %32, align 8
  %137 = load i64, i64* %33, align 8
  %138 = load i64, i64* %34, align 8
  %139 = load i64, i64* %26, align 8
  %140 = load i64, i64* %26, align 8
  %141 = load i64, i64* %26, align 8
  %142 = load i64, i64* %26, align 8
  %143 = load i64, i64* %39, align 8
  %144 = load i64, i64* %40, align 8
  %145 = load i64, i64* %41, align 8
  %146 = load i64, i64* %42, align 8
  %147 = call i32 @DOTP_UB4_UH(i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146)
  %148 = load i64, i64* %35, align 8
  %149 = load i64, i64* %36, align 8
  %150 = load i64, i64* %37, align 8
  %151 = load i64, i64* %38, align 8
  %152 = load i64, i64* %26, align 8
  %153 = load i64, i64* %26, align 8
  %154 = load i64, i64* %26, align 8
  %155 = load i64, i64* %26, align 8
  %156 = load i64, i64* %43, align 8
  %157 = load i64, i64* %44, align 8
  %158 = load i64, i64* %45, align 8
  %159 = load i64, i64* %46, align 8
  %160 = call i32 @DOTP_UB4_UH(i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159)
  %161 = load i64, i64* %39, align 8
  %162 = load i64, i64* %40, align 8
  %163 = load i64, i64* %41, align 8
  %164 = load i64, i64* %42, align 8
  %165 = call i32 @SRARI_H4_UH(i64 %161, i64 %162, i64 %163, i64 %164, i32 7)
  %166 = load i64, i64* %43, align 8
  %167 = load i64, i64* %44, align 8
  %168 = load i64, i64* %45, align 8
  %169 = load i64, i64* %46, align 8
  %170 = call i32 @SRARI_H4_UH(i64 %166, i64 %167, i64 %168, i64 %169, i32 7)
  %171 = load i32*, i32** %8, align 8
  %172 = load i64, i64* %27, align 8
  %173 = load i64, i64* %28, align 8
  %174 = call i32 @LD_UB2(i32* %171, i32 16, i64 %172, i64 %173)
  %175 = load i64, i64* %40, align 8
  %176 = load i64, i64* %39, align 8
  %177 = load i64, i64* %27, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = call i32 @PCKEV_AVG_ST_UB(i64 %175, i64 %176, i64 %177, i32* %178)
  %180 = load i64, i64* %42, align 8
  %181 = load i64, i64* %41, align 8
  %182 = load i64, i64* %28, align 8
  %183 = load i32*, i32** %8, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 16
  %185 = call i32 @PCKEV_AVG_ST_UB(i64 %180, i64 %181, i64 %182, i32* %184)
  %186 = load i32, i32* %9, align 4
  %187 = load i32*, i32** %8, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %8, align 8
  %190 = load i32*, i32** %8, align 8
  %191 = load i64, i64* %29, align 8
  %192 = load i64, i64* %30, align 8
  %193 = call i32 @LD_UB2(i32* %190, i32 16, i64 %191, i64 %192)
  %194 = load i64, i64* %44, align 8
  %195 = load i64, i64* %43, align 8
  %196 = load i64, i64* %29, align 8
  %197 = load i32*, i32** %8, align 8
  %198 = call i32 @PCKEV_AVG_ST_UB(i64 %194, i64 %195, i64 %196, i32* %197)
  %199 = load i64, i64* %46, align 8
  %200 = load i64, i64* %45, align 8
  %201 = load i64, i64* %30, align 8
  %202 = load i32*, i32** %8, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 16
  %204 = call i32 @PCKEV_AVG_ST_UB(i64 %199, i64 %200, i64 %201, i32* %203)
  %205 = load i32, i32* %9, align 4
  %206 = load i32*, i32** %8, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32* %208, i32** %8, align 8
  br label %64

209:                                              ; preds = %64
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @__msa_sldi_b(i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_UB(i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #1

declare dso_local i32 @PCKEV_AVG_ST_UB(i64, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
