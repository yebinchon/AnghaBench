; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fic.c_fic_idct_put.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fic.c_fic_idct_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @fic_idct_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fic_idct_put(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  store i32* %10, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %9, align 8
  %13 = call i32 @fic_idct(i32* %11, i32 8, i32 13, i32 135168)
  store i32 1, i32* %7, align 4
  br label %14

14:                                               ; preds = %22, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @fic_idct(i32* %18, i32 8, i32 13, i32 4096)
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %9, align 8
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %14

25:                                               ; preds = %14
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %35, %25
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @fic_idct(i32* %31, i32 1, i32 20, i32 0)
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 8
  store i32* %34, i32** %9, align 8
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %27

38:                                               ; preds = %27
  %39 = load i32*, i32** %6, align 8
  store i32* %39, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %68, %38
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @av_clip_uint8(i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %44

61:                                               ; preds = %44
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %4, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  store i32* %67, i32** %9, align 8
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %40

71:                                               ; preds = %40
  ret void
}

declare dso_local i32 @fic_idct(i32*, i32, i32, i32) #1

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
