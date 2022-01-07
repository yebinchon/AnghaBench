; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_stereo3d.c_anaglyph.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_stereo3d.c_anaglyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*)* @anaglyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anaglyph(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9, i32* %10) #0 {
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

26:                                               ; preds = %98, %11
  %27 = load i32, i32* %24, align 4
  %28 = load i32, i32* %19, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %101

30:                                               ; preds = %26
  store i32 0, i32* %25, align 4
  store i32 0, i32* %23, align 4
  br label %31

31:                                               ; preds = %80, %30
  %32 = load i32, i32* %23, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %85

35:                                               ; preds = %31
  %36 = load i32*, i32** %20, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %25, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %25, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @ana_convert(i32* %36, i32* %40, i32* %44)
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %25, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i32*, i32** %21, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %25, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* %25, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @ana_convert(i32* %50, i32* %54, i32* %58)
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %25, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load i32*, i32** %22, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %25, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* %25, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i32 @ana_convert(i32* %65, i32* %69, i32* %73)
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %25, align 4
  %77 = add nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32 %74, i32* %79, align 4
  br label %80

80:                                               ; preds = %35
  %81 = load i32, i32* %23, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %23, align 4
  %83 = load i32, i32* %25, align 4
  %84 = add nsw i32 %83, 3
  store i32 %84, i32* %25, align 4
  br label %31

85:                                               ; preds = %31
  %86 = load i32, i32* %15, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %12, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i32*, i32** %13, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %13, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %14, align 8
  br label %98

98:                                               ; preds = %85
  %99 = load i32, i32* %24, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %24, align 4
  br label %26

101:                                              ; preds = %26
  ret void
}

declare dso_local i32 @ana_convert(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
