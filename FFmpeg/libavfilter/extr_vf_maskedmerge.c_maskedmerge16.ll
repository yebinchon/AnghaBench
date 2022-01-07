; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_maskedmerge.c_maskedmerge16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_maskedmerge.c_maskedmerge16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* @maskedmerge16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maskedmerge16(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %31 = load i32*, i32** %13, align 8
  store i32* %31, i32** %25, align 8
  %32 = load i32*, i32** %14, align 8
  store i32* %32, i32** %26, align 8
  %33 = load i32*, i32** %15, align 8
  store i32* %33, i32** %27, align 8
  %34 = load i32*, i32** %16, align 8
  store i32* %34, i32** %28, align 8
  store i32 0, i32* %30, align 4
  br label %35

35:                                               ; preds = %100, %12
  %36 = load i32, i32* %30, align 4
  %37 = load i32, i32* %22, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %103

39:                                               ; preds = %35
  store i32 0, i32* %29, align 4
  br label %40

40:                                               ; preds = %76, %39
  %41 = load i32, i32* %29, align 4
  %42 = load i32, i32* %21, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %40
  %45 = load i32*, i32** %25, align 8
  %46 = load i32, i32* %29, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %27, align 8
  %51 = load i32, i32* %29, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %26, align 8
  %56 = load i32, i32* %29, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %25, align 8
  %61 = load i32, i32* %29, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %59, %64
  %66 = mul nsw i32 %54, %65
  %67 = load i32, i32* %23, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %24, align 4
  %70 = ashr i32 %68, %69
  %71 = add nsw i32 %49, %70
  %72 = load i32*, i32** %28, align 8
  %73 = load i32, i32* %29, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %44
  %77 = load i32, i32* %29, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %29, align 4
  br label %40

79:                                               ; preds = %40
  %80 = load i32, i32* %20, align 4
  %81 = sdiv i32 %80, 2
  %82 = load i32*, i32** %28, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %28, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sdiv i32 %85, 2
  %87 = load i32*, i32** %25, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %25, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sdiv i32 %90, 2
  %92 = load i32*, i32** %26, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %26, align 8
  %95 = load i32, i32* %19, align 4
  %96 = sdiv i32 %95, 2
  %97 = load i32*, i32** %27, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %27, align 8
  br label %100

100:                                              ; preds = %79
  %101 = load i32, i32* %30, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %30, align 4
  br label %35

103:                                              ; preds = %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
