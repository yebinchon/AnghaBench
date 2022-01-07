; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_extractplanes.c_extract_from_packed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_extractplanes.c_extract_from_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @extract_from_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_from_packed(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %101, %9
  %22 = load i32, i32* %20, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %104

25:                                               ; preds = %21
  %26 = load i32, i32* %16, align 4
  switch i32 %26, label %92 [
    i32 1, label %27
    i32 2, label %50
  ]

27:                                               ; preds = %25
  store i32 0, i32* %19, align 4
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i32, i32* %19, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %19, align 4
  %35 = load i32, i32* %17, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %18, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %33, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %19, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %19, align 4
  br label %28

49:                                               ; preds = %28
  br label %92

50:                                               ; preds = %25
  store i32 0, i32* %19, align 4
  br label %51

51:                                               ; preds = %88, %50
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %51
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %17, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %18, align 4
  %61 = mul nsw i32 %60, 2
  %62 = add nsw i32 %59, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %56, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %19, align 4
  %68 = mul nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %17, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %18, align 4
  %76 = mul nsw i32 %75, 2
  %77 = add nsw i32 %74, %76
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %71, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %19, align 4
  %84 = mul nsw i32 %83, 2
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %55
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %19, align 4
  br label %51

91:                                               ; preds = %51
  br label %92

92:                                               ; preds = %25, %91, %49
  %93 = load i32, i32* %11, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %10, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %12, align 8
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %20, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %20, align 4
  br label %21

104:                                              ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
