; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_stereo3d.c_anaglyph_ic.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_stereo3d.c_anaglyph_ic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*)* @anaglyph_ic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anaglyph_ic(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  store i32 0, i32* %24, align 4
  br label %26

26:                                               ; preds = %104, %11
  %27 = load i32, i32* %24, align 4
  %28 = load i32, i32* %19, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %107

30:                                               ; preds = %26
  store i32 0, i32* %25, align 4
  store i32 0, i32* %23, align 4
  br label %31

31:                                               ; preds = %86, %30
  %32 = load i32, i32* %23, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %91

35:                                               ; preds = %31
  %36 = load i32*, i32** %20, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %25, align 4
  %39 = mul nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %25, align 4
  %44 = mul nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = call i32 @ana_convert(i32* %36, i32* %41, i32* %46)
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %25, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32*, i32** %21, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %25, align 4
  %55 = mul nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %25, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = call i32 @ana_convert(i32* %52, i32* %57, i32* %62)
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %25, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = load i32*, i32** %22, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %25, align 4
  %72 = mul nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32*, i32** %14, align 8
  %76 = load i32, i32* %25, align 4
  %77 = mul nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = call i32 @ana_convert(i32* %69, i32* %74, i32* %79)
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %25, align 4
  %83 = add nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  br label %86

86:                                               ; preds = %35
  %87 = load i32, i32* %23, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %23, align 4
  %89 = load i32, i32* %25, align 4
  %90 = add nsw i32 %89, 3
  store i32 %90, i32* %25, align 4
  br label %31

91:                                               ; preds = %31
  %92 = load i32, i32* %15, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %12, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %13, align 8
  %100 = load i32, i32* %17, align 4
  %101 = load i32*, i32** %14, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %14, align 8
  br label %104

104:                                              ; preds = %91
  %105 = load i32, i32* %24, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %24, align 4
  br label %26

107:                                              ; preds = %26
  ret void
}

declare dso_local i32 @ana_convert(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
