; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideoencdsp.c_shrink88.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideoencdsp.c_shrink88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i64*, i32, i32, i32)* @shrink88 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shrink88(i64* %0, i32 %1, i64* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  br label %16

16:                                               ; preds = %102, %6
  %17 = load i32, i32* %12, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %105

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %13, align 4
  br label %21

21:                                               ; preds = %84, %19
  %22 = load i32, i32* %13, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %21
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %68, %24
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %71

28:                                               ; preds = %25
  %29 = load i64*, i64** %9, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i64*, i64** %9, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load i64*, i64** %9, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load i64*, i64** %9, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 4
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load i64*, i64** %9, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 5
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i64*, i64** %9, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 6
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load i64*, i64** %9, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 7
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i64*, i64** %9, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64* %67, i64** %9, align 8
  br label %68

68:                                               ; preds = %28
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %25

71:                                               ; preds = %25
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 32
  %74 = ashr i32 %73, 6
  %75 = sext i32 %74 to i64
  %76 = load i64*, i64** %7, align 8
  %77 = getelementptr inbounds i64, i64* %76, i32 1
  store i64* %77, i64** %7, align 8
  store i64 %75, i64* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 8, %78
  %80 = sub nsw i32 8, %79
  %81 = load i64*, i64** %9, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64* %83, i64** %9, align 8
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %13, align 4
  br label %21

87:                                               ; preds = %21
  %88 = load i32, i32* %10, align 4
  %89 = mul nsw i32 8, %88
  %90 = load i32, i32* %11, align 4
  %91 = mul nsw i32 8, %90
  %92 = sub nsw i32 %89, %91
  %93 = load i64*, i64** %9, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64* %95, i64** %9, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i64*, i64** %7, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  store i64* %101, i64** %7, align 8
  br label %102

102:                                              ; preds = %87
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %12, align 4
  br label %16

105:                                              ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
