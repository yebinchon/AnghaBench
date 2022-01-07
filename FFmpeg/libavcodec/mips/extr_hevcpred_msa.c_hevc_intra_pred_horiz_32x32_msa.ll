; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_hevc_intra_pred_horiz_32x32_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_hevc_intra_pred_horiz_32x32_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @hevc_intra_pred_horiz_32x32_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_intra_pred_horiz_32x32_msa(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %89, %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %92

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %29, 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 4
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %43, 4
  %45 = add nsw i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @__msa_fill_b(i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @__msa_fill_b(i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @__msa_fill_b(i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @__msa_fill_b(i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @ST_SB2(i32 %57, i32 %58, i32* %59, i32 16)
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %7, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @ST_SB2(i32 %65, i32 %66, i32* %67, i32 16)
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %7, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @ST_SB2(i32 %73, i32 %74, i32* %75, i32 16)
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %7, align 8
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @ST_SB2(i32 %81, i32 %82, i32* %83, i32 16)
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %7, align 8
  br label %89

89:                                               ; preds = %21
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %18

92:                                               ; preds = %18
  ret void
}

declare dso_local i32 @__msa_fill_b(i32) #1

declare dso_local i32 @ST_SB2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
