; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqxdsp.c_hqx_idct_put.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hqxdsp.c_hqx_idct_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i64*, i32*)* @hqx_idct_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hqx_idct_put(i32* %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %25, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i64*, i64** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @idct_col(i64* %19, i32* %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %12

28:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %39, %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i64*, i64** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %34, 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = call i32 @idct_row(i64* %37)
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %29

42:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %79, %42
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %46, label %82

46:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %70, %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 8
  br i1 %49, label %50, label %73

50:                                               ; preds = %47
  %51 = load i64*, i64** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %53, 8
  %55 = add nsw i32 %52, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %51, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 2048
  %60 = call i32 @av_clip_uintp2(i64 %59, i32 12)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = shl i32 %61, 4
  %63 = load i32, i32* %11, align 4
  %64 = ashr i32 %63, 8
  %65 = or i32 %62, %64
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %50
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %47

73:                                               ; preds = %47
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 1
  %76 = load i32*, i32** %5, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %5, align 8
  br label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %43

82:                                               ; preds = %43
  ret void
}

declare dso_local i32 @idct_col(i64*, i32*) #1

declare dso_local i32 @idct_row(i64*) #1

declare dso_local i32 @av_clip_uintp2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
