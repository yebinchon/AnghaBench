; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_idct_msa.c_vp9_iadst_idct_16x16_add_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_idct_msa.c_vp9_iadst_idct_16x16_add_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @vp9_iadst_idct_16x16_add_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp9_iadst_idct_16x16_add_msa(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i32], align 16
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  store i32* %12, i32** %11, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %28, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 %18, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 %23, 7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = call i32 @vp9_iadst16_1d_columns_msa(i32* %21, i32* %26)
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %13

31:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 %37, 3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 %42, 3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @vp9_idct16_1d_columns_addblk_msa(i32* %40, i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %32

51:                                               ; preds = %32
  ret void
}

declare dso_local i32 @vp9_iadst16_1d_columns_msa(i32*, i32*) #1

declare dso_local i32 @vp9_idct16_1d_columns_addblk_msa(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
