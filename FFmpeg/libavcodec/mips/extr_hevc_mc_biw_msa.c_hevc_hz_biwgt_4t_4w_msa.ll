; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_4t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_4t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %27 = load i32, i32* %21, align 4
  %28 = icmp eq i32 2, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %13
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i32*, i32** %16, align 8
  %33 = load i32, i32* %17, align 4
  %34 = load i32*, i32** %18, align 8
  %35 = load i32, i32* %19, align 4
  %36 = load i32*, i32** %20, align 8
  %37 = load i32, i32* %22, align 4
  %38 = load i32, i32* %23, align 4
  %39 = load i32, i32* %24, align 4
  %40 = load i32, i32* %25, align 4
  %41 = load i32, i32* %26, align 4
  %42 = call i32 @hevc_hz_biwgt_4t_4x2_msa(i32* %30, i32 %31, i32* %32, i32 %33, i32* %34, i32 %35, i32* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  br label %81

43:                                               ; preds = %13
  %44 = load i32, i32* %21, align 4
  %45 = icmp eq i32 4, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i32*, i32** %16, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32*, i32** %18, align 8
  %52 = load i32, i32* %19, align 4
  %53 = load i32*, i32** %20, align 8
  %54 = load i32, i32* %22, align 4
  %55 = load i32, i32* %23, align 4
  %56 = load i32, i32* %24, align 4
  %57 = load i32, i32* %25, align 4
  %58 = load i32, i32* %26, align 4
  %59 = call i32 @hevc_hz_biwgt_4t_4x4_msa(i32* %47, i32 %48, i32* %49, i32 %50, i32* %51, i32 %52, i32* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  br label %80

60:                                               ; preds = %43
  %61 = load i32, i32* %21, align 4
  %62 = srem i32 %61, 8
  %63 = icmp eq i32 0, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load i32*, i32** %14, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32*, i32** %16, align 8
  %68 = load i32, i32* %17, align 4
  %69 = load i32*, i32** %18, align 8
  %70 = load i32, i32* %19, align 4
  %71 = load i32*, i32** %20, align 8
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %23, align 4
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* %26, align 4
  %78 = call i32 @hevc_hz_biwgt_4t_4x8multiple_msa(i32* %65, i32 %66, i32* %67, i32 %68, i32* %69, i32 %70, i32* %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %64, %60
  br label %80

80:                                               ; preds = %79, %46
  br label %81

81:                                               ; preds = %80, %29
  ret void
}

declare dso_local i32 @hevc_hz_biwgt_4t_4x2_msa(i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hevc_hz_biwgt_4t_4x4_msa(i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hevc_hz_biwgt_4t_4x8multiple_msa(i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
