; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_maskedmerge.c_maskedmerge8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_maskedmerge.c_maskedmerge8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* @maskedmerge8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maskedmerge8(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
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
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %86, %12
  %28 = load i32, i32* %26, align 4
  %29 = load i32, i32* %22, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %27
  store i32 0, i32* %25, align 4
  br label %32

32:                                               ; preds = %66, %31
  %33 = load i32, i32* %25, align 4
  %34 = load i32, i32* %21, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %32
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %25, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = load i32, i32* %25, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %25, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %25, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %51, %56
  %58 = mul nsw i32 %46, %57
  %59 = add nsw i32 %58, 128
  %60 = ashr i32 %59, 8
  %61 = add nsw i32 %41, %60
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* %25, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %36
  %67 = load i32, i32* %25, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %25, align 4
  br label %32

69:                                               ; preds = %32
  %70 = load i32, i32* %20, align 4
  %71 = load i32*, i32** %16, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %16, align 8
  %74 = load i32, i32* %17, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %13, align 8
  %78 = load i32, i32* %18, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %14, align 8
  %82 = load i32, i32* %19, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %15, align 8
  br label %86

86:                                               ; preds = %69
  %87 = load i32, i32* %26, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %26, align 4
  br label %27

89:                                               ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
