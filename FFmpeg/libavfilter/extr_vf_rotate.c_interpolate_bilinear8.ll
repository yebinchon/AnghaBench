; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_rotate.c_interpolate_bilinear8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_rotate.c_interpolate_bilinear8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i32, i32, i32, i32, i32)* @interpolate_bilinear8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @interpolate_bilinear8(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %30 = load i32, i32* %13, align 4
  %31 = ashr i32 %30, 16
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @av_clip(i32 %31, i32 0, i32 %32)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %14, align 4
  %35 = ashr i32 %34, 16
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @av_clip(i32 %35, i32 0, i32 %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %13, align 4
  %39 = and i32 %38, 65535
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %14, align 4
  %41 = and i32 %40, 65535
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %17, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @FFMIN(i32 %43, i32 %44)
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %18, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @FFMIN(i32 %47, i32 %48)
  store i32 %49, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %50

50:                                               ; preds = %136, %8
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %139

54:                                               ; preds = %50
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %17, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %21, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %18, align 4
  %63 = mul nsw i32 %61, %62
  %64 = add nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %55, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %24, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %22, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %21, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %18, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %68, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %25, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %17, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %21, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %23, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %86, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %81, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %26, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %22, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %21, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %23, align 4
  %102 = mul nsw i32 %100, %101
  %103 = add nsw i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %94, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %27, align 4
  %107 = load i32, i32* %19, align 4
  %108 = sub nsw i32 65536, %107
  %109 = load i32, i32* %24, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %25, align 4
  %113 = mul nsw i32 %111, %112
  %114 = add nsw i32 %110, %113
  store i32 %114, i32* %28, align 4
  %115 = load i32, i32* %19, align 4
  %116 = sub nsw i32 65536, %115
  %117 = load i32, i32* %26, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %27, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %118, %121
  store i32 %122, i32* %29, align 4
  %123 = load i32, i32* %20, align 4
  %124 = sub nsw i32 65536, %123
  %125 = load i32, i32* %28, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %29, align 4
  %129 = mul nsw i32 %127, %128
  %130 = add nsw i32 %126, %129
  %131 = ashr i32 %130, 32
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %21, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %54
  %137 = load i32, i32* %21, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %21, align 4
  br label %50

139:                                              ; preds = %50
  %140 = load i32*, i32** %9, align 8
  ret i32* %140
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
