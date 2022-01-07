; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_threshold.c_threshold8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_threshold.c_threshold8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i64*, i64*, i32, i32, i32, i32, i32, i32, i32)* @threshold8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @threshold8(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i64* %0, i64** %13, align 8
  store i64* %1, i64** %14, align 8
  store i64* %2, i64** %15, align 8
  store i64* %3, i64** %16, align 8
  store i64* %4, i64** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %90, %12
  %28 = load i32, i32* %26, align 4
  %29 = load i32, i32* %24, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %93

31:                                               ; preds = %27
  store i32 0, i32* %25, align 4
  br label %32

32:                                               ; preds = %66, %31
  %33 = load i32, i32* %25, align 4
  %34 = load i32, i32* %23, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %32
  %37 = load i64*, i64** %13, align 8
  %38 = load i32, i32* %25, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %14, align 8
  %43 = load i32, i32* %25, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %41, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load i64*, i64** %15, align 8
  %50 = load i32, i32* %25, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  br label %60

54:                                               ; preds = %36
  %55 = load i64*, i64** %16, align 8
  %56 = load i32, i32* %25, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  br label %60

60:                                               ; preds = %54, %48
  %61 = phi i64 [ %53, %48 ], [ %59, %54 ]
  %62 = load i64*, i64** %17, align 8
  %63 = load i32, i32* %25, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %61, i64* %65, align 8
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %25, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %25, align 4
  br label %32

69:                                               ; preds = %32
  %70 = load i32, i32* %18, align 4
  %71 = load i64*, i64** %13, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64* %73, i64** %13, align 8
  %74 = load i32, i32* %19, align 4
  %75 = load i64*, i64** %14, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64* %77, i64** %14, align 8
  %78 = load i32, i32* %20, align 4
  %79 = load i64*, i64** %15, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  store i64* %81, i64** %15, align 8
  %82 = load i32, i32* %21, align 4
  %83 = load i64*, i64** %16, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64* %85, i64** %16, align 8
  %86 = load i32, i32* %22, align 4
  %87 = load i64*, i64** %17, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  store i64* %89, i64** %17, align 8
  br label %90

90:                                               ; preds = %69
  %91 = load i32, i32* %26, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %26, align 4
  br label %27

93:                                               ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
