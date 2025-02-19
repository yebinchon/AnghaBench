; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hv_biwgt_4t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hv_biwgt_4t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hv_biwgt_4t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_biwgt_4t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32* %2, i32** %17, align 8
  store i32 %3, i32* %18, align 4
  store i32* %4, i32** %19, align 8
  store i32 %5, i32* %20, align 4
  store i32* %6, i32** %21, align 8
  store i32* %7, i32** %22, align 8
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  %29 = load i32, i32* %23, align 4
  %30 = icmp eq i32 2, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %14
  %32 = load i32*, i32** %15, align 8
  %33 = load i32, i32* %16, align 4
  %34 = load i32*, i32** %17, align 8
  %35 = load i32, i32* %18, align 4
  %36 = load i32*, i32** %19, align 8
  %37 = load i32, i32* %20, align 4
  %38 = load i32*, i32** %21, align 8
  %39 = load i32*, i32** %22, align 8
  %40 = load i32, i32* %24, align 4
  %41 = load i32, i32* %25, align 4
  %42 = load i32, i32* %26, align 4
  %43 = load i32, i32* %27, align 4
  %44 = load i32, i32* %28, align 4
  %45 = call i32 @hevc_hv_biwgt_4t_4x2_msa(i32* %32, i32 %33, i32* %34, i32 %35, i32* %36, i32 %37, i32* %38, i32* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  br label %86

46:                                               ; preds = %14
  %47 = load i32, i32* %23, align 4
  %48 = icmp eq i32 4, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i32*, i32** %15, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load i32*, i32** %17, align 8
  %53 = load i32, i32* %18, align 4
  %54 = load i32*, i32** %19, align 8
  %55 = load i32, i32* %20, align 4
  %56 = load i32*, i32** %21, align 8
  %57 = load i32*, i32** %22, align 8
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* %25, align 4
  %60 = load i32, i32* %26, align 4
  %61 = load i32, i32* %27, align 4
  %62 = load i32, i32* %28, align 4
  %63 = call i32 @hevc_hv_biwgt_4t_4x4_msa(i32* %50, i32 %51, i32* %52, i32 %53, i32* %54, i32 %55, i32* %56, i32* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  br label %85

64:                                               ; preds = %46
  %65 = load i32, i32* %23, align 4
  %66 = srem i32 %65, 8
  %67 = icmp eq i32 0, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load i32*, i32** %17, align 8
  %72 = load i32, i32* %18, align 4
  %73 = load i32*, i32** %19, align 8
  %74 = load i32, i32* %20, align 4
  %75 = load i32*, i32** %21, align 8
  %76 = load i32*, i32** %22, align 8
  %77 = load i32, i32* %23, align 4
  %78 = load i32, i32* %24, align 4
  %79 = load i32, i32* %25, align 4
  %80 = load i32, i32* %26, align 4
  %81 = load i32, i32* %27, align 4
  %82 = load i32, i32* %28, align 4
  %83 = call i32 @hevc_hv_biwgt_4t_4multx8mult_msa(i32* %69, i32 %70, i32* %71, i32 %72, i32* %73, i32 %74, i32* %75, i32* %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %68, %64
  br label %85

85:                                               ; preds = %84, %49
  br label %86

86:                                               ; preds = %85, %31
  ret void
}

declare dso_local i32 @hevc_hv_biwgt_4t_4x2_msa(i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hevc_hv_biwgt_4t_4x4_msa(i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hevc_hv_biwgt_4t_4multx8mult_msa(i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
