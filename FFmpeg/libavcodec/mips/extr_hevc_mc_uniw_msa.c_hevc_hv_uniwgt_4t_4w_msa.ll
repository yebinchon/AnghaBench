; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32)* @hevc_hv_uniwgt_4t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uniwgt_4t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %21 = load i32, i32* %17, align 4
  %22 = icmp eq i32 2, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %10
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32*, i32** %15, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* %20, align 4
  %33 = call i32 @hevc_hv_uniwgt_4t_4x2_msa(i32* %24, i32 %25, i32* %26, i32 %27, i32* %28, i32* %29, i32 %30, i32 %31, i32 %32)
  br label %66

34:                                               ; preds = %10
  %35 = load i32, i32* %17, align 4
  %36 = icmp eq i32 4, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %20, align 4
  %47 = call i32 @hevc_hv_uniwgt_4t_4x4_msa(i32* %38, i32 %39, i32* %40, i32 %41, i32* %42, i32* %43, i32 %44, i32 %45, i32 %46)
  br label %65

48:                                               ; preds = %34
  %49 = load i32, i32* %17, align 4
  %50 = srem i32 %49, 8
  %51 = icmp eq i32 0, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %15, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @hevc_hv_uniwgt_4t_4multx8mult_msa(i32* %53, i32 %54, i32* %55, i32 %56, i32* %57, i32* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %52, %48
  br label %65

65:                                               ; preds = %64, %37
  br label %66

66:                                               ; preds = %65, %23
  ret void
}

declare dso_local i32 @hevc_hv_uniwgt_4t_4x2_msa(i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @hevc_hv_uniwgt_4t_4x4_msa(i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @hevc_hv_uniwgt_4t_4multx8mult_msa(i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
