; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motionpixels_tablegen.h_mp_yuv_to_rgb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motionpixels_tablegen.h_mp_yuv_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_crop_tab = common dso_local global i32* null, align 8
@MAX_NEG_CROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @mp_yuv_to_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_yuv_to_rgb(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** @ff_crop_tab, align 8
  %15 = load i32, i32* @MAX_NEG_CROP, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 1000, %18
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 701, %20
  %22 = add nsw i32 %19, %21
  %23 = sdiv i32 %22, 1000
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 1000, %24
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 357, %26
  %28 = sub nsw i32 %25, %27
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 172, %29
  %31 = sub nsw i32 %28, %30
  %32 = sdiv i32 %31, 1000
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 1000, %33
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 886, %35
  %37 = add nsw i32 %34, %36
  %38 = sdiv i32 %37, 1000
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 %43, 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 248
  %49 = shl i32 %48, 7
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = mul nsw i32 %51, 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 248
  %57 = shl i32 %56, 2
  %58 = or i32 %49, %57
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %13, align 4
  %61 = mul nsw i32 %60, 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 3
  %66 = or i32 %58, %65
  store i32 %66, i32* %5, align 4
  br label %85

67:                                               ; preds = %4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ult i32 %68, 32
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = icmp ult i32 %71, 32
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = icmp ult i32 %74, 32
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = shl i32 %77, 10
  %79 = load i32, i32* %12, align 4
  %80 = shl i32 %79, 5
  %81 = or i32 %78, %80
  %82 = load i32, i32* %13, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %5, align 4
  br label %85

84:                                               ; preds = %73, %70, %67
  store i32 32768, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %76, %41
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
