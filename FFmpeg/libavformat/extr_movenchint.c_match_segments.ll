; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenchint.c_match_segments.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenchint.c_match_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i64*, i32, i32, i32*, i32*, i32*)* @match_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_segments(i64* %0, i32 %1, i64* %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i64* %0, i64** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64* %2, i64** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %18, align 4
  br label %22

22:                                               ; preds = %107, %8
  %23 = load i32, i32* %18, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %110

26:                                               ; preds = %22
  store i32 0, i32* %19, align 4
  br label %27

27:                                               ; preds = %57, %26
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* %19, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %19, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load i64*, i64** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %19, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %40, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %19, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %47, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %46, %53
  br label %55

55:                                               ; preds = %39, %33, %27
  %56 = phi i1 [ false, %33 ], [ false, %27 ], [ %54, %39 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32, i32* %19, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %19, align 4
  br label %27

60:                                               ; preds = %55
  %61 = load i32, i32* %19, align 4
  %62 = icmp sle i32 %61, 8
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %107

64:                                               ; preds = %60
  %65 = load i32, i32* %18, align 4
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %89, %64
  %68 = load i32, i32* %21, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i32, i32* %20, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load i64*, i64** %12, align 8
  %75 = load i32, i32* %21, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %10, align 8
  %81 = load i32, i32* %20, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %79, %85
  br label %87

87:                                               ; preds = %73, %70, %67
  %88 = phi i1 [ false, %70 ], [ false, %67 ], [ %86, %73 ]
  br i1 %88, label %89, label %96

89:                                               ; preds = %87
  %90 = load i32, i32* %21, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %21, align 4
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %19, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %19, align 4
  br label %67

96:                                               ; preds = %87
  %97 = load i32, i32* %19, align 4
  %98 = icmp sle i32 %97, 14
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %107

100:                                              ; preds = %96
  %101 = load i32, i32* %20, align 4
  %102 = load i32*, i32** %15, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %21, align 4
  %104 = load i32*, i32** %16, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load i32*, i32** %17, align 8
  store i32 %105, i32* %106, align 4
  store i32 0, i32* %9, align 4
  br label %111

107:                                              ; preds = %99, %63
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %18, align 4
  br label %22

110:                                              ; preds = %22
  store i32 -1, i32* %9, align 4
  br label %111

111:                                              ; preds = %110, %100
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
