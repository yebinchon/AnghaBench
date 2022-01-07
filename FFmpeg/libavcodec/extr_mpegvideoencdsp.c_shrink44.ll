; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideoencdsp.c_shrink44.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideoencdsp.c_shrink44.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32)* @shrink44 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shrink44(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  br label %19

19:                                               ; preds = %132, %6
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %135

22:                                               ; preds = %19
  %23 = load i32*, i32** %9, align 8
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %15, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %16, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %17, align 8
  %36 = load i32*, i32** %7, align 8
  store i32* %36, i32** %18, align 8
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %119, %22
  %39 = load i32, i32* %13, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %122

41:                                               ; preds = %38
  %42 = load i32*, i32** %14, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = load i32*, i32** %14, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = load i32*, i32** %14, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = load i32*, i32** %15, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = load i32*, i32** %15, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = load i32*, i32** %15, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = load i32*, i32** %15, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %68, %71
  %73 = load i32*, i32** %16, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = load i32*, i32** %16, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  %81 = load i32*, i32** %16, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  %85 = load i32*, i32** %16, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %84, %87
  %89 = load i32*, i32** %17, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  %93 = load i32*, i32** %17, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %92, %95
  %97 = load i32*, i32** %17, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %96, %99
  %101 = load i32*, i32** %17, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %100, %103
  %105 = add nsw i32 %104, 8
  %106 = ashr i32 %105, 4
  %107 = load i32*, i32** %18, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 %106, i32* %108, align 4
  %109 = load i32*, i32** %14, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  store i32* %110, i32** %14, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  store i32* %112, i32** %15, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  store i32* %114, i32** %16, align 8
  %115 = load i32*, i32** %17, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  store i32* %116, i32** %17, align 8
  %117 = load i32*, i32** %18, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %18, align 8
  br label %119

119:                                              ; preds = %41
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %13, align 4
  br label %38

122:                                              ; preds = %38
  %123 = load i32, i32* %10, align 4
  %124 = mul nsw i32 4, %123
  %125 = load i32*, i32** %9, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %9, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %7, align 8
  br label %132

132:                                              ; preds = %122
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %12, align 4
  br label %19

135:                                              ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
