; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_premultiply.c_premultiply16offset.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_premultiply.c_premultiply16offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* @premultiply16offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @premultiply16offset(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
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

31:                                               ; preds = %91, %11
  %32 = load i32, i32* %27, align 4
  %33 = load i32, i32* %19, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %94

35:                                               ; preds = %31
  store i32 0, i32* %26, align 4
  br label %36

36:                                               ; preds = %72, %35
  %37 = load i32, i32* %26, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %36
  %41 = load i32*, i32** %23, align 8
  %42 = load i32, i32* %26, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %22, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load i32*, i32** %24, align 8
  %49 = load i32, i32* %26, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 1
  %54 = and i32 %53, 1
  %55 = load i32*, i32** %24, align 8
  %56 = load i32, i32* %26, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %54, %59
  %61 = mul nsw i32 %47, %60
  %62 = load i32, i32* %20, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %21, align 4
  %65 = ashr i32 %63, %64
  %66 = load i32, i32* %22, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32*, i32** %25, align 8
  %69 = load i32, i32* %26, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %40
  %73 = load i32, i32* %26, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %26, align 4
  br label %36

75:                                               ; preds = %36
  %76 = load i32, i32* %17, align 4
  %77 = sdiv i32 %76, 2
  %78 = load i32*, i32** %25, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %25, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sdiv i32 %81, 2
  %83 = load i32*, i32** %23, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %23, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sdiv i32 %86, 2
  %88 = load i32*, i32** %24, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %24, align 8
  br label %91

91:                                               ; preds = %75
  %92 = load i32, i32* %27, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %27, align 4
  br label %31

94:                                               ; preds = %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
