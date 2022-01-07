; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pseudocolor.c_pseudocolor_filter_11d.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pseudocolor.c_pseudocolor_filter_11d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64*, i64*, i64*, i32, i32, i32, float*)* @pseudocolor_filter_11d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pseudocolor_filter_11d(i32 %0, i32 %1, i32 %2, i64* %3, i64* %4, i64* %5, i32 %6, i32 %7, i32 %8, float* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i64* %3, i64** %14, align 8
  store i64* %4, i64** %15, align 8
  store i64* %5, i64** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store float* %9, float** %20, align 8
  store i32 0, i32* %22, align 4
  br label %24

24:                                               ; preds = %85, %10
  %25 = load i32, i32* %22, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %88

28:                                               ; preds = %24
  store i32 0, i32* %21, align 4
  br label %29

29:                                               ; preds = %73, %28
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %29
  %34 = load float*, float** %20, align 8
  %35 = load i64*, i64** %14, align 8
  %36 = load i32, i32* %22, align 4
  %37 = ashr i32 %36, 1
  %38 = load i32, i32* %17, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %21, align 4
  %41 = ashr i32 %40, 1
  %42 = add nsw i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %35, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds float, float* %34, i64 %45
  %47 = load float, float* %46, align 4
  %48 = fptosi float %47 to i32
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %23, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %33
  %52 = load i32, i32* %23, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %23, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64*, i64** %16, align 8
  %59 = load i32, i32* %21, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %57, i64* %61, align 8
  br label %72

62:                                               ; preds = %51, %33
  %63 = load i64*, i64** %15, align 8
  %64 = load i32, i32* %21, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %16, align 8
  %69 = load i32, i32* %21, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 %67, i64* %71, align 8
  br label %72

72:                                               ; preds = %62, %55
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %21, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %21, align 4
  br label %29

76:                                               ; preds = %29
  %77 = load i32, i32* %18, align 4
  %78 = load i64*, i64** %15, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64* %80, i64** %15, align 8
  %81 = load i32, i32* %19, align 4
  %82 = load i64*, i64** %16, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64* %84, i64** %16, align 8
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %22, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %22, align 4
  br label %24

88:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
