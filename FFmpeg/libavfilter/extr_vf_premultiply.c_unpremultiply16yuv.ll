; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_premultiply.c_unpremultiply16yuv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_premultiply.c_unpremultiply16yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* @unpremultiply16yuv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpremultiply16yuv(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
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

31:                                               ; preds = %113, %11
  %32 = load i32, i32* %27, align 4
  %33 = load i32, i32* %19, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %116

35:                                               ; preds = %31
  store i32 0, i32* %26, align 4
  br label %36

36:                                               ; preds = %94, %35
  %37 = load i32, i32* %26, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %97

40:                                               ; preds = %36
  %41 = load i32*, i32** %24, align 8
  %42 = load i32, i32* %26, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %40
  %48 = load i32*, i32** %24, align 8
  %49 = load i32, i32* %26, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %21, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %47
  %56 = load i32*, i32** %23, align 8
  %57 = load i32, i32* %26, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %20, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* %21, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32*, i32** %24, align 8
  %66 = load i32, i32* %26, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %64, %69
  %71 = load i32, i32* %20, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @FFMIN(i32 %70, i32 %72)
  %74 = load i32, i32* %20, align 4
  %75 = sub nsw i32 0, %74
  %76 = call i32 @FFMAX(i32 %73, i32 %75)
  %77 = load i32, i32* %20, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32*, i32** %25, align 8
  %80 = load i32, i32* %26, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  br label %93

83:                                               ; preds = %47, %40
  %84 = load i32*, i32** %23, align 8
  %85 = load i32, i32* %26, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %25, align 8
  %90 = load i32, i32* %26, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %83, %55
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %26, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %26, align 4
  br label %36

97:                                               ; preds = %36
  %98 = load i32, i32* %17, align 4
  %99 = sdiv i32 %98, 2
  %100 = load i32*, i32** %25, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %25, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sdiv i32 %103, 2
  %105 = load i32*, i32** %23, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %23, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sdiv i32 %108, 2
  %110 = load i32*, i32** %24, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %24, align 8
  br label %113

113:                                              ; preds = %97
  %114 = load i32, i32* %27, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %27, align 4
  br label %31

116:                                              ; preds = %31
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
