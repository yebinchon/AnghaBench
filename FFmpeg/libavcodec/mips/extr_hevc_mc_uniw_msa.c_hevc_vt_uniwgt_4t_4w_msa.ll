; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_vt_uniwgt_4t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_uniwgt_4t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp eq i32 2, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %9
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %18, align 4
  %30 = call i32 @hevc_vt_uniwgt_4t_4x2_msa(i32* %22, i32 %23, i32* %24, i32 %25, i32* %26, i32 %27, i32 %28, i32 %29)
  br label %61

31:                                               ; preds = %9
  %32 = load i32, i32* %15, align 4
  %33 = icmp eq i32 4, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %18, align 4
  %43 = call i32 @hevc_vt_uniwgt_4t_4x4_msa(i32* %35, i32 %36, i32* %37, i32 %38, i32* %39, i32 %40, i32 %41, i32 %42)
  br label %60

44:                                               ; preds = %31
  %45 = load i32, i32* %15, align 4
  %46 = srem i32 %45, 8
  %47 = icmp eq i32 0, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @hevc_vt_uniwgt_4t_4x8multiple_msa(i32* %49, i32 %50, i32* %51, i32 %52, i32* %53, i32 %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %48, %44
  br label %60

60:                                               ; preds = %59, %34
  br label %61

61:                                               ; preds = %60, %21
  ret void
}

declare dso_local i32 @hevc_vt_uniwgt_4t_4x2_msa(i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @hevc_vt_uniwgt_4t_4x4_msa(i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @hevc_vt_uniwgt_4t_4x8multiple_msa(i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
