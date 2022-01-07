; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_residual_interp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_residual_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PITCH_MAX = common dso_local global i32 0, align 4
@FRAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32*)* @residual_interp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @residual_interp(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %5
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @PITCH_MAX, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %12, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %38, %15
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 3
  %33 = ashr i32 %32, 2
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %20

41:                                               ; preds = %20
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @FRAME_LEN, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32 @av_memcpy_backptr(i32* %45, i32 %49, i32 %55)
  br label %89

57:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %77, %57
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @FRAME_LEN, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 521
  %66 = add nsw i32 %65, 259
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %68, %70
  %72 = ashr i32 %71, 15
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %58

80:                                               ; preds = %58
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @FRAME_LEN, align 4
  %83 = load i32, i32* @PITCH_MAX, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memset(i32* %81, i32 0, i32 %87)
  br label %89

89:                                               ; preds = %80, %41
  ret void
}

declare dso_local i32 @av_memcpy_backptr(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
