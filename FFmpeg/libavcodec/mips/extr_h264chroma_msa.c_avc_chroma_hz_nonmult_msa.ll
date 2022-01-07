; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hz_nonmult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hz_nonmult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chroma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32)* @avc_chroma_hz_nonmult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_chroma_hz_nonmult_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @__msa_fill_b(i32 %28)
  store i32 %29, i32* %25, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @__msa_fill_b(i32 %30)
  store i32 %31, i32* %26, align 4
  %32 = load i32, i32* %25, align 4
  %33 = load i32, i32* %26, align 4
  %34 = call i64 @__msa_ilvr_b(i32 %32, i32 %33)
  store i64 %34, i64* %27, align 8
  %35 = load i32*, i32** @chroma_mask_arr, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 32
  %37 = call i32 @LD_SB(i32* %36)
  store i32 %37, i32* %24, align 4
  %38 = load i32, i32* %12, align 4
  %39 = ashr i32 %38, 2
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %44, %6
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %13, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %120

44:                                               ; preds = %40
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %16, align 8
  %50 = load i64, i64* %17, align 8
  %51 = call i32 @LD_UB4(i32* %45, i32 %46, i64 %47, i64 %48, i64 %49, i64 %50)
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 4, %52
  %54 = load i32*, i32** %7, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %7, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* %24, align 4
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %15, align 8
  %65 = call i32 @VSHF_B2_UB(i64 %57, i64 %58, i64 %59, i64 %60, i32 %61, i32 %62, i64 %63, i64 %64)
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i32, i32* %24, align 4
  %71 = load i32, i32* %24, align 4
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* %17, align 8
  %74 = call i32 @VSHF_B2_UB(i64 %66, i64 %67, i64 %68, i64 %69, i32 %70, i32 %71, i64 %72, i64 %73)
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %27, align 8
  %80 = load i64, i64* %27, align 8
  %81 = load i64, i64* %27, align 8
  %82 = load i64, i64* %27, align 8
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* %23, align 4
  %87 = call i32 @DOTP_UB4_UH(i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %23, align 4
  %92 = call i32 @SLLI_4V(i32 %88, i32 %89, i32 %90, i32 %91, i32 3)
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %23, align 4
  %97 = call i32 @SRARI_H4_UH(i32 %93, i32 %94, i32 %95, i32 %96, i32 6)
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %23, align 4
  %102 = call i32 @SAT_UH4_UH(i32 %98, i32 %99, i32 %100, i32 %101, i32 7)
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* %22, align 4
  %107 = load i64, i64* %18, align 8
  %108 = load i64, i64* %19, align 8
  %109 = call i32 @PCKEV_B2_UB(i32 %103, i32 %104, i32 %105, i32 %106, i64 %107, i64 %108)
  %110 = load i64, i64* %18, align 8
  %111 = load i64, i64* %19, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @ST_D4(i64 %110, i64 %111, i32 0, i32 1, i32 0, i32 1, i32* %112, i32 %113)
  %115 = load i32, i32* %9, align 4
  %116 = mul nsw i32 4, %115
  %117 = load i32*, i32** %8, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %8, align 8
  br label %40

120:                                              ; preds = %40
  %121 = load i32, i32* %12, align 4
  %122 = srem i32 %121, 4
  %123 = icmp ne i32 0, %122
  br i1 %123, label %124, label %166

124:                                              ; preds = %120
  %125 = load i32, i32* %12, align 4
  %126 = srem i32 %125, 4
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %131, %124
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %13, align 4
  %130 = icmp ne i32 %128, 0
  br i1 %130, label %131, label %165

131:                                              ; preds = %127
  %132 = load i32*, i32** %7, align 8
  %133 = call i64 @LD_UB(i32* %132)
  store i64 %133, i64* %14, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %7, align 8
  %138 = load i32, i32* %24, align 4
  %139 = load i64, i64* %14, align 8
  %140 = trunc i64 %139 to i32
  %141 = load i64, i64* %14, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i64 @__msa_vshf_b(i32 %138, i32 %140, i32 %142)
  store i64 %143, i64* %14, align 8
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* %27, align 8
  %146 = call i32 @__msa_dotp_u_h(i64 %144, i64 %145)
  store i32 %146, i32* %20, align 4
  %147 = load i32, i32* %20, align 4
  %148 = shl i32 %147, 3
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %20, align 4
  %150 = call i64 @__msa_srari_h(i32 %149, i32 6)
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %20, align 4
  %152 = load i32, i32* %20, align 4
  %153 = call i32 @__msa_sat_u_h(i32 %152, i32 7)
  store i32 %153, i32* %20, align 4
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %20, align 4
  %156 = call i64 @__msa_pckev_b(i32 %154, i32 %155)
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %20, align 4
  %158 = load i32, i32* %20, align 4
  %159 = load i32*, i32** %8, align 8
  %160 = call i32 @ST_D1(i32 %158, i32 0, i32* %159)
  %161 = load i32, i32* %9, align 4
  %162 = load i32*, i32** %8, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %8, align 8
  br label %127

165:                                              ; preds = %127
  br label %166

166:                                              ; preds = %165, %120
  ret void
}

declare dso_local i32 @__msa_fill_b(i32) #1

declare dso_local i64 @__msa_ilvr_b(i32, i32) #1

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_UB(i64, i64, i64, i64, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_UH4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ST_D4(i64, i64, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i64 @__msa_vshf_b(i32, i32, i32) #1

declare dso_local i32 @__msa_dotp_u_h(i64, i64) #1

declare dso_local i64 @__msa_srari_h(i32, i32) #1

declare dso_local i32 @__msa_sat_u_h(i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i32 @ST_D1(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
