; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_premultiply.c_unpremultiply8offset.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_premultiply.c_unpremultiply8offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* @unpremultiply8offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpremultiply8offset(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
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
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %98, %11
  %26 = load i32, i32* %24, align 4
  %27 = load i32, i32* %19, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %101

29:                                               ; preds = %25
  store i32 0, i32* %23, align 4
  br label %30

30:                                               ; preds = %82, %29
  %31 = load i32, i32* %23, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %85

34:                                               ; preds = %30
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %23, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %34
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %23, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 255
  br i1 %47, label %48, label %71

48:                                               ; preds = %41
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %23, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %22, align 4
  %55 = sub nsw i32 %53, %54
  %56 = call i32 @FFMAX(i32 %55, i32 0)
  %57 = mul nsw i32 %56, 255
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %23, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %57, %62
  %64 = load i32, i32* %22, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @FFMIN(i32 %65, i32 255)
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %23, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %81

71:                                               ; preds = %41, %34
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %23, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %23, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %71, %48
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %23, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %23, align 4
  br label %30

85:                                               ; preds = %30
  %86 = load i32, i32* %17, align 4
  %87 = load i32*, i32** %14, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %14, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %12, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %13, align 8
  br label %98

98:                                               ; preds = %85
  %99 = load i32, i32* %24, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %24, align 4
  br label %25

101:                                              ; preds = %25
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
