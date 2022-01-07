; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_packedtogbr24p.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_packedtogbr24p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**, i32*, i32, i32, i32, i32)* @packedtogbr24p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packedtogbr24p(i32* %0, i32 %1, i32** %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [3 x i32*], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32** %2, i32*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load i32**, i32*** %11, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 0
  store i32* %22, i32** %23, align 16
  %24 = load i32**, i32*** %11, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 1
  store i32* %26, i32** %27, align 8
  %28 = load i32**, i32*** %11, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 2
  store i32* %30, i32** %31, align 16
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %8
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %9, align 8
  br label %37

37:                                               ; preds = %34, %8
  store i32 0, i32* %19, align 4
  br label %38

38:                                               ; preds = %109, %37
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %112

42:                                               ; preds = %38
  store i32 0, i32* %18, align 4
  br label %43

43:                                               ; preds = %76, %42
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %43
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 0
  %52 = load i32*, i32** %51, align 16
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 2
  %68 = load i32*, i32** %67, align 16
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %9, align 8
  br label %76

76:                                               ; preds = %47
  %77 = load i32, i32* %18, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %18, align 4
  br label %43

79:                                               ; preds = %43
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %15, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sub nsw i32 %80, %83
  %85 = load i32*, i32** %9, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %9, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 0
  %92 = load i32*, i32** %91, align 16
  %93 = sext i32 %90 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %91, align 16
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 1
  %99 = load i32*, i32** %98, align 8
  %100 = sext i32 %97 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %98, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 2
  %106 = load i32*, i32** %105, align 16
  %107 = sext i32 %104 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %105, align 16
  br label %109

109:                                              ; preds = %79
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  br label %38

112:                                              ; preds = %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
