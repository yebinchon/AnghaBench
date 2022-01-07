; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__vertical_flip.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__vertical_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @stbi__vertical_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbi__vertical_flip(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [2048 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %18, %20
  store i64 %21, i64* %10, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %12, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %79, %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 1
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %24
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %10, align 8
  %34 = mul i64 %32, %33
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %10, align 8
  %43 = mul i64 %41, %42
  %44 = getelementptr inbounds i32, i32* %36, i64 %43
  store i32* %44, i32** %14, align 8
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* %15, align 8
  br label %46

46:                                               ; preds = %55, %29
  %47 = load i64, i64* %15, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %46
  %50 = load i64, i64* %15, align 8
  %51 = icmp ult i64 %50, 8192
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i64, i64* %15, align 8
  br label %55

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i64 [ %53, %52 ], [ 8192, %54 ]
  store i64 %56, i64* %16, align 8
  %57 = getelementptr inbounds [2048 x i32], [2048 x i32]* %11, i64 0, i64 0
  %58 = load i32*, i32** %13, align 8
  %59 = load i64, i64* %16, align 8
  %60 = call i32 @memcpy(i32* %57, i32* %58, i64 %59)
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load i64, i64* %16, align 8
  %64 = call i32 @memcpy(i32* %61, i32* %62, i64 %63)
  %65 = load i32*, i32** %14, align 8
  %66 = getelementptr inbounds [2048 x i32], [2048 x i32]* %11, i64 0, i64 0
  %67 = load i64, i64* %16, align 8
  %68 = call i32 @memcpy(i32* %65, i32* %66, i64 %67)
  %69 = load i64, i64* %16, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 %69
  store i32* %71, i32** %13, align 8
  %72 = load i64, i64* %16, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 %72
  store i32* %74, i32** %14, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* %15, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %15, align 8
  br label %46

78:                                               ; preds = %46
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %24

82:                                               ; preds = %24
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
