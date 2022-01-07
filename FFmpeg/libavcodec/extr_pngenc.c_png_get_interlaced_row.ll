; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngenc.c_png_get_interlaced_row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngenc.c_png_get_interlaced_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@png_get_interlaced_row.masks = internal constant [7 x i32] [i32 128, i32 8, i32 136, i32 34, i32 170, i32 85, i32 255], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32*, i32)* @png_get_interlaced_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_get_interlaced_row(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [7 x i32], [7 x i32]* @png_get_interlaced_row.masks, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %72 [
    i32 1, label %26
  ]

26:                                               ; preds = %6
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @memset(i32* %27, i32 0, i32 %28)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %68, %26
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  %36 = and i32 %35, 7
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %16, align 4
  %39 = shl i32 %37, %38
  %40 = and i32 %39, 128
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %34
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %13, align 4
  %45 = ashr i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %16, align 4
  %50 = sub nsw i32 7, %49
  %51 = ashr i32 %48, %50
  %52 = and i32 %51, 1
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %15, align 4
  %55 = and i32 %54, 7
  %56 = sub nsw i32 7, %55
  %57 = shl i32 %53, %56
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %15, align 4
  %60 = ashr i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %57
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %42, %34
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %30

71:                                               ; preds = %30
  br label %107

72:                                               ; preds = %6
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 3
  store i32 %74, i32* %18, align 4
  %75 = load i32*, i32** %7, align 8
  store i32* %75, i32** %19, align 8
  %76 = load i32*, i32** %11, align 8
  store i32* %76, i32** %20, align 8
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %103, %72
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = and i32 %82, 7
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %16, align 4
  %86 = shl i32 %84, %85
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load i32*, i32** %19, align 8
  %91 = load i32*, i32** %20, align 8
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @memcpy(i32* %90, i32* %91, i32 %92)
  %94 = load i32, i32* %18, align 4
  %95 = load i32*, i32** %19, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %19, align 8
  br label %98

98:                                               ; preds = %89, %81
  %99 = load i32, i32* %18, align 4
  %100 = load i32*, i32** %20, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %20, align 8
  br label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %77

106:                                              ; preds = %77
  br label %107

107:                                              ; preds = %106, %71
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
