; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_avc_h_loop_filter_chroma422_mbaff_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_avc_h_loop_filter_chroma422_mbaff_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32*)* @avc_h_loop_filter_chroma422_mbaff_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_h_loop_filter_chroma422_mbaff_msa(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @__msa_fill_b(i32 %18)
  store i64 %19, i64* %15, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @__msa_fill_b(i32 %20)
  store i64 %21, i64* %16, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %71, %5
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %74

25:                                               ; preds = %22
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 4, %36
  %38 = load i32*, i32** %6, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %6, align 8
  br label %71

41:                                               ; preds = %25
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* %17, align 8
  %48 = call i32 @AVC_LPF_H_2BYTE_CHROMA_422(i32* %42, i32 %43, i32 %44, i64 %45, i64 %46, i64 %47)
  %49 = load i64, i64* %17, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @__msa_copy_s_h(i32 %50, i32 0)
  store i32 %51, i32* %13, align 4
  %52 = load i64, i64* %17, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @__msa_copy_s_h(i32 %53, i32 1)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 -1
  %58 = call i32 @SH(i32 %55, i32* %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %6, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 -1
  %66 = call i32 @SH(i32 %63, i32* %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %6, align 8
  br label %71

71:                                               ; preds = %41, %35
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %22

74:                                               ; preds = %22
  ret void
}

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i32 @AVC_LPF_H_2BYTE_CHROMA_422(i32*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @__msa_copy_s_h(i32, i32) #1

declare dso_local i32 @SH(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
