; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2ya8_1_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2ya8_1_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32)* @yuv2ya8_1_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yuv2ya8_1_c(i32* %0, i32* %1, i32** %2, i32** %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32** %2, i32*** %12, align 8
  store i32** %3, i32*** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load i32*, i32** %14, align 8
  %24 = icmp ne i32* %23, null
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %28

28:                                               ; preds = %79, %9
  %29 = load i32, i32* %20, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %28
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %20, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 64
  %39 = ashr i32 %38, 7
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* %21, align 4
  %41 = call i32 @av_clip_uint8(i32 %40)
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %19, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %32
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %20, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 64
  %51 = ashr i32 %50, 7
  store i32 %51, i32* %22, align 4
  %52 = load i32, i32* %22, align 4
  %53 = and i32 %52, 256
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* %22, align 4
  %57 = call i32 @av_clip_uint8(i32 %56)
  store i32 %57, i32* %22, align 4
  br label %58

58:                                               ; preds = %55, %44
  br label %59

59:                                               ; preds = %58, %32
  %60 = load i32, i32* %21, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %20, align 4
  %63 = mul nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %22, align 4
  br label %71

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 255, %70 ]
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %20, align 4
  %75 = mul nsw i32 %74, 2
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  store i32 %72, i32* %78, align 4
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %20, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %20, align 4
  br label %28

82:                                               ; preds = %28
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
