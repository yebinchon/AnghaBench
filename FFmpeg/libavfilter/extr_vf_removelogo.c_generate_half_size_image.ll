; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removelogo.c_generate_half_size_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removelogo.c_generate_half_size_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32, i32*)* @generate_half_size_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_half_size_image(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %117, %7
  %18 = load i32, i32* %16, align 4
  %19 = load i32, i32* %13, align 4
  %20 = sdiv i32 %19, 2
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %120

22:                                               ; preds = %17
  store i32 0, i32* %15, align 4
  br label %23

23:                                               ; preds = %113, %22
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %12, align 4
  %26 = sdiv i32 %25, 2
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %116

28:                                               ; preds = %23
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %16, align 4
  %31 = shl i32 %30, 1
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %15, align 4
  %35 = shl i32 %34, 1
  %36 = add nsw i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %29, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %84, label %41

41:                                               ; preds = %28
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %16, align 4
  %44 = shl i32 %43, 1
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %15, align 4
  %48 = shl i32 %47, 1
  %49 = add nsw i32 %46, %48
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %42, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %41
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %16, align 4
  %58 = shl i32 %57, 1
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %15, align 4
  %63 = shl i32 %62, 1
  %64 = add nsw i32 %61, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %56, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %55
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %16, align 4
  %72 = shl i32 %71, 1
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %15, align 4
  %77 = shl i32 %76, 1
  %78 = add nsw i32 %75, %77
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %70, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %69, %55, %41, %28
  %85 = phi i1 [ true, %55 ], [ true, %41 ], [ true, %28 ], [ %83, %69 ]
  %86 = zext i1 %85 to i32
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %11, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %87, i64 %93
  store i32 %86, i32* %94, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %11, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %95, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @FFMIN(i32 1, i32 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %11, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %105, i64 %111
  store i32 %104, i32* %112, align 4
  br label %113

113:                                              ; preds = %84
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %23

116:                                              ; preds = %23
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %17

120:                                              ; preds = %17
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %12, align 4
  %124 = sdiv i32 %123, 2
  %125 = load i32, i32* %13, align 4
  %126 = sdiv i32 %125, 2
  %127 = load i32*, i32** %14, align 8
  %128 = call i32 @convert_mask_to_strength_mask(i32* %121, i32 %122, i32 %124, i32 %126, i32 0, i32* %127)
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @convert_mask_to_strength_mask(i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
