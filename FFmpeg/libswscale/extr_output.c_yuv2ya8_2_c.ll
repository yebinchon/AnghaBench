; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2ya8_2_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2ya8_2_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i32**, i32**, i32**, i32*, i32, i32, i32, i32)* @yuv2ya8_2_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yuv2ya8_2_c(i32* %0, i32** %1, i32** %2, i32** %3, i32** %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32** %1, i32*** %12, align 8
  store i32** %2, i32*** %13, align 8
  store i32** %3, i32*** %14, align 8
  store i32** %4, i32*** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %30 = load i32**, i32*** %15, align 8
  %31 = icmp ne i32** %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %10
  %33 = load i32**, i32*** %15, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32**, i32*** %15, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br label %42

42:                                               ; preds = %37, %32, %10
  %43 = phi i1 [ false, %32 ], [ false, %10 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %21, align 4
  %45 = load i32**, i32*** %12, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %22, align 8
  %48 = load i32**, i32*** %12, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %23, align 8
  %51 = load i32, i32* %21, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i32**, i32*** %15, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  br label %58

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i32* [ %56, %53 ], [ null, %57 ]
  store i32* %59, i32** %24, align 8
  %60 = load i32, i32* %21, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32**, i32*** %15, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  %65 = load i32*, i32** %64, align 8
  br label %67

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32* [ %65, %62 ], [ null, %66 ]
  store i32* %68, i32** %25, align 8
  %69 = load i32, i32* %18, align 4
  %70 = sub nsw i32 4096, %69
  store i32 %70, i32* %26, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp ule i32 %71, 4096
  %73 = zext i1 %72 to i32
  %74 = call i32 @av_assert2(i32 %73)
  store i32 0, i32* %27, align 4
  br label %75

75:                                               ; preds = %139, %67
  %76 = load i32, i32* %27, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %142

79:                                               ; preds = %75
  %80 = load i32*, i32** %22, align 8
  %81 = load i32, i32* %27, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %26, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32*, i32** %23, align 8
  %88 = load i32, i32* %27, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %18, align 4
  %93 = mul nsw i32 %91, %92
  %94 = add nsw i32 %86, %93
  %95 = ashr i32 %94, 19
  store i32 %95, i32* %28, align 4
  %96 = load i32, i32* %28, align 4
  %97 = call i32 @av_clip_uint8(i32 %96)
  store i32 %97, i32* %28, align 4
  %98 = load i32, i32* %21, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %79
  %101 = load i32*, i32** %24, align 8
  %102 = load i32, i32* %27, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %26, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32*, i32** %25, align 8
  %109 = load i32, i32* %27, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %18, align 4
  %114 = mul nsw i32 %112, %113
  %115 = add nsw i32 %107, %114
  %116 = ashr i32 %115, 19
  store i32 %116, i32* %29, align 4
  %117 = load i32, i32* %29, align 4
  %118 = call i32 @av_clip_uint8(i32 %117)
  store i32 %118, i32* %29, align 4
  br label %119

119:                                              ; preds = %100, %79
  %120 = load i32, i32* %28, align 4
  %121 = load i32*, i32** %16, align 8
  %122 = load i32, i32* %27, align 4
  %123 = mul nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 %120, i32* %125, align 4
  %126 = load i32, i32* %21, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = load i32, i32* %29, align 4
  br label %131

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i32 [ %129, %128 ], [ 255, %130 ]
  %133 = load i32*, i32** %16, align 8
  %134 = load i32, i32* %27, align 4
  %135 = mul nsw i32 %134, 2
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %131
  %140 = load i32, i32* %27, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %27, align 4
  br label %75

142:                                              ; preds = %75
  ret void
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
