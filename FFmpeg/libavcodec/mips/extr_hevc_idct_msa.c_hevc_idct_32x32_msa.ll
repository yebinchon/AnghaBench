; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_idct_msa.c_hevc_idct_32x32_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_idct_msa.c_hevc_idct_32x32_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @hevc_idct_32x32_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_idct_32x32_msa(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [287 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  store i32* %10, i32** %5, align 8
  %11 = getelementptr inbounds [287 x i32], [287 x i32]* %6, i64 0, i64 0
  %12 = getelementptr inbounds i32, i32* %11, i64 31
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = ptrtoint i32* %13 to i64
  %15 = and i64 %14, -64
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %7, align 8
  store i32 7, i32* %8, align 4
  store i32 32, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %29, %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %22, 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @hevc_idct_8x32_column_msa(i32* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %17

32:                                               ; preds = %17
  store i32 12, i32* %8, align 4
  store i32 8, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 256, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @hevc_idct_transpose_32x8_to_8x32(i32* %42, i32* %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @hevc_idct_8x32_column_msa(i32* %45, i32 %46, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @hevc_idct_transpose_8x32_to_32x8(i32* %49, i32* %50)
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %33

55:                                               ; preds = %33
  ret void
}

declare dso_local i32 @hevc_idct_8x32_column_msa(i32*, i32, i32) #1

declare dso_local i32 @hevc_idct_transpose_32x8_to_8x32(i32*, i32*) #1

declare dso_local i32 @hevc_idct_transpose_8x32_to_32x8(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
