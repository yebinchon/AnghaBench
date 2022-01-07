; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_common_vt_2t_8x8mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_common_vt_2t_8x8mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_vt_2t_8x8mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_2t_8x8mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @LD_SH(i32* %39)
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %38, align 4
  %42 = call i64 @__msa_splati_h(i32 %41, i32 0)
  store i64 %42, i64* %31, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @LD_UB(i32* %43)
  store i64 %44, i64* %14, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = ashr i32 %49, 3
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %55, %6
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %13, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %178

55:                                               ; preds = %51
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* %18, align 8
  %62 = load i64, i64* %19, align 8
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %21, align 8
  %65 = load i64, i64* %22, align 8
  %66 = call i32 @LD_UB8(i32* %56, i32 %57, i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65)
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 8, %67
  %69 = load i32*, i32** %7, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %7, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* %17, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* %18, align 8
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* %23, align 8
  %81 = load i64, i64* %24, align 8
  %82 = load i64, i64* %25, align 8
  %83 = load i64, i64* %26, align 8
  %84 = call i32 @ILVR_B4_UB(i64 %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83)
  %85 = load i64, i64* %19, align 8
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* %20, align 8
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %21, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load i64, i64* %22, align 8
  %92 = load i64, i64* %21, align 8
  %93 = load i64, i64* %27, align 8
  %94 = load i64, i64* %28, align 8
  %95 = load i64, i64* %29, align 8
  %96 = load i64, i64* %30, align 8
  %97 = call i32 @ILVR_B4_UB(i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96)
  %98 = load i64, i64* %23, align 8
  %99 = load i64, i64* %24, align 8
  %100 = load i64, i64* %25, align 8
  %101 = load i64, i64* %26, align 8
  %102 = load i64, i64* %31, align 8
  %103 = load i64, i64* %31, align 8
  %104 = load i64, i64* %31, align 8
  %105 = load i64, i64* %31, align 8
  %106 = load i32, i32* %34, align 4
  %107 = load i32, i32* %35, align 4
  %108 = load i32, i32* %36, align 4
  %109 = load i32, i32* %37, align 4
  %110 = call i32 @DOTP_UB4_UH(i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %34, align 4
  %112 = load i32, i32* %35, align 4
  %113 = load i32, i32* %36, align 4
  %114 = load i32, i32* %37, align 4
  %115 = call i32 @SRARI_H4_UH(i32 %111, i32 %112, i32 %113, i32 %114, i32 7)
  %116 = load i32, i32* %34, align 4
  %117 = load i32, i32* %35, align 4
  %118 = load i32, i32* %36, align 4
  %119 = load i32, i32* %37, align 4
  %120 = call i32 @SAT_UH4_UH(i32 %116, i32 %117, i32 %118, i32 %119, i32 7)
  %121 = load i32, i32* %35, align 4
  %122 = load i32, i32* %34, align 4
  %123 = load i32, i32* %37, align 4
  %124 = load i32, i32* %36, align 4
  %125 = load i32, i32* %32, align 4
  %126 = load i32, i32* %33, align 4
  %127 = call i32 @PCKEV_B2_SB(i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %32, align 4
  %129 = load i32, i32* %33, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @ST_D4(i32 %128, i32 %129, i32 0, i32 1, i32 0, i32 1, i32* %130, i32 %131)
  %133 = load i64, i64* %27, align 8
  %134 = load i64, i64* %28, align 8
  %135 = load i64, i64* %29, align 8
  %136 = load i64, i64* %30, align 8
  %137 = load i64, i64* %31, align 8
  %138 = load i64, i64* %31, align 8
  %139 = load i64, i64* %31, align 8
  %140 = load i64, i64* %31, align 8
  %141 = load i32, i32* %34, align 4
  %142 = load i32, i32* %35, align 4
  %143 = load i32, i32* %36, align 4
  %144 = load i32, i32* %37, align 4
  %145 = call i32 @DOTP_UB4_UH(i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %34, align 4
  %147 = load i32, i32* %35, align 4
  %148 = load i32, i32* %36, align 4
  %149 = load i32, i32* %37, align 4
  %150 = call i32 @SRARI_H4_UH(i32 %146, i32 %147, i32 %148, i32 %149, i32 7)
  %151 = load i32, i32* %34, align 4
  %152 = load i32, i32* %35, align 4
  %153 = load i32, i32* %36, align 4
  %154 = load i32, i32* %37, align 4
  %155 = call i32 @SAT_UH4_UH(i32 %151, i32 %152, i32 %153, i32 %154, i32 7)
  %156 = load i32, i32* %35, align 4
  %157 = load i32, i32* %34, align 4
  %158 = load i32, i32* %37, align 4
  %159 = load i32, i32* %36, align 4
  %160 = load i32, i32* %32, align 4
  %161 = load i32, i32* %33, align 4
  %162 = call i32 @PCKEV_B2_SB(i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %32, align 4
  %164 = load i32, i32* %33, align 4
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %10, align 4
  %167 = mul nsw i32 4, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @ST_D4(i32 %163, i32 %164, i32 0, i32 1, i32 0, i32 1, i32* %169, i32 %170)
  %172 = load i32, i32* %10, align 4
  %173 = mul nsw i32 8, %172
  %174 = load i32*, i32** %9, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %9, align 8
  %177 = load i64, i64* %22, align 8
  store i64 %177, i64* %14, align 8
  br label %51

178:                                              ; preds = %51
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B4_UB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_UH4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
