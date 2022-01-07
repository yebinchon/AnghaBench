; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_hevc_intra_pred_vert_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_hevc_intra_pred_vert_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i64, i64)* @hevc_intra_pred_vert_16x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_intra_pred_vert_16x16_msa(i32* %0, i32* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load i32*, i32** %8, align 8
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @LD_UB(i32* %20)
  store i32* %21, i32** %14, align 8
  store i32 16, i32* %13, align 4
  br label %22

22:                                               ; preds = %26, %5
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %13, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32*, i32** %14, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @ST_UB(i32* %27, i32* %28)
  %30 = load i64, i64* %9, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 %30
  store i32* %32, i32** %12, align 8
  br label %22

33:                                               ; preds = %22
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 0, %34
  br i1 %35, label %36, label %93

36:                                               ; preds = %33
  %37 = load i32*, i32** %7, align 8
  %38 = call i32* @LD_UB(i32* %37)
  store i32* %38, i32** %14, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 -1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__msa_fill_h(i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__msa_fill_h(i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @UNPCK_UB_SH(i32* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @SUB2(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %17, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = ashr i32 %60, 1
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %18, align 4
  %68 = call i32 @ADD2(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @CLIP_SH2_0_255(i32 %69, i32 %70)
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %17, align 4
  %74 = call i64 @__msa_pckev_b(i32 %72, i32 %73)
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %14, align 8
  store i64 0, i64* %11, align 8
  br label %76

76:                                               ; preds = %89, %36
  %77 = load i64, i64* %11, align 8
  %78 = icmp slt i64 %77, 16
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i32*, i32** %14, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %11, align 8
  %87 = mul nsw i64 %85, %86
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %79
  %90 = load i64, i64* %11, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %11, align 8
  br label %76

92:                                               ; preds = %76
  br label %93

93:                                               ; preds = %92, %33
  ret void
}

declare dso_local i32* @LD_UB(i32*) #1

declare dso_local i32 @ST_UB(i32*, i32*) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @UNPCK_UB_SH(i32*, i32, i32) #1

declare dso_local i32 @SUB2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADD2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLIP_SH2_0_255(i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
