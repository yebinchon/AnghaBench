; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdsp.c_put_signed_rect_clamped_8bit_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdsp.c_put_signed_rect_clamped_8bit_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32)* @put_signed_rect_clamped_8bit_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_signed_rect_clamped_8bit_c(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = bitcast i32* %16 to i64*
  store i64* %17, i64** %15, align 8
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %91, %6
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %18
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %78, %22
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %81

27:                                               ; preds = %23
  %28 = load i64*, i64** %15, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 128
  %34 = call i32 @av_clip_uint8(i64 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load i64*, i64** %15, align 8
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 128
  %46 = call i32 @av_clip_uint8(i64 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %46, i32* %51, align 4
  %52 = load i64*, i64** %15, align 8
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 128
  %59 = call i32 @av_clip_uint8(i64 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load i64*, i64** %15, align 8
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 128
  %72 = call i32 @av_clip_uint8(i64 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %72, i32* %77, align 4
  br label %78

78:                                               ; preds = %27
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 4
  store i32 %80, i32* %13, align 4
  br label %23

81:                                               ; preds = %23
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %7, align 8
  %86 = load i32, i32* %10, align 4
  %87 = ashr i32 %86, 1
  %88 = load i64*, i64** %15, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64* %90, i64** %15, align 8
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %18

94:                                               ; preds = %18
  ret void
}

declare dso_local i32 @av_clip_uint8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
