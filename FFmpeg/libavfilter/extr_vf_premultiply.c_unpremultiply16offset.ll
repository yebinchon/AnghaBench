; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_premultiply.c_unpremultiply16offset.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_premultiply.c_unpremultiply16offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* @unpremultiply16offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpremultiply16offset(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
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
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
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
  %28 = load i32*, i32** %12, align 8
  store i32* %28, i32** %23, align 8
  %29 = load i32*, i32** %13, align 8
  store i32* %29, i32** %24, align 8
  %30 = load i32*, i32** %14, align 8
  store i32* %30, i32** %25, align 8
  store i32 0, i32* %27, align 4
  br label %31

31:                                               ; preds = %111, %11
  %32 = load i32, i32* %27, align 4
  %33 = load i32, i32* %19, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %114

35:                                               ; preds = %31
  store i32 0, i32* %26, align 4
  br label %36

36:                                               ; preds = %92, %35
  %37 = load i32, i32* %26, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %95

40:                                               ; preds = %36
  %41 = load i32*, i32** %24, align 8
  %42 = load i32, i32* %26, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %40
  %48 = load i32*, i32** %24, align 8
  %49 = load i32, i32* %26, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %21, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %47
  %56 = load i32*, i32** %23, align 8
  %57 = load i32, i32* %26, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %22, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @FFMAX(i32 %62, i32 0)
  %64 = load i32, i32* %21, align 4
  %65 = mul i32 %63, %64
  %66 = load i32*, i32** %24, align 8
  %67 = load i32, i32* %26, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = udiv i32 %65, %70
  %72 = load i32, i32* %22, align 4
  %73 = add i32 %71, %72
  %74 = load i32, i32* %21, align 4
  %75 = call i32 @FFMIN(i32 %73, i32 %74)
  %76 = call i32 @FFMAX(i32 %75, i32 0)
  %77 = load i32*, i32** %25, align 8
  %78 = load i32, i32* %26, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %91

81:                                               ; preds = %47, %40
  %82 = load i32*, i32** %23, align 8
  %83 = load i32, i32* %26, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %25, align 8
  %88 = load i32, i32* %26, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %81, %55
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %26, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %26, align 4
  br label %36

95:                                               ; preds = %36
  %96 = load i32, i32* %17, align 4
  %97 = sdiv i32 %96, 2
  %98 = load i32*, i32** %25, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %25, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sdiv i32 %101, 2
  %103 = load i32*, i32** %23, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %23, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sdiv i32 %106, 2
  %108 = load i32*, i32** %24, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %24, align 8
  br label %111

111:                                              ; preds = %95
  %112 = load i32, i32* %27, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %27, align 4
  br label %31

114:                                              ; preds = %31
  ret void
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
