; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pseudocolor.c_pseudocolor_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pseudocolor.c_pseudocolor_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64*, i64*, i64*, i32, i32, i32, float*)* @pseudocolor_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pseudocolor_filter(i32 %0, i32 %1, i32 %2, i64* %3, i64* %4, i64* %5, i32 %6, i32 %7, i32 %8, float* %9) #0 {
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

24:                                               ; preds = %83, %10
  %25 = load i32, i32* %22, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %86

28:                                               ; preds = %24
  store i32 0, i32* %21, align 4
  br label %29

29:                                               ; preds = %67, %28
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %29
  %34 = load float*, float** %20, align 8
  %35 = load i64*, i64** %14, align 8
  %36 = load i32, i32* %21, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds float, float* %34, i64 %39
  %41 = load float, float* %40, align 4
  %42 = fptosi float %41 to i32
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %23, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %33
  %46 = load i32, i32* %23, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* %23, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64*, i64** %16, align 8
  %53 = load i32, i32* %21, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 %51, i64* %55, align 8
  br label %66

56:                                               ; preds = %45, %33
  %57 = load i64*, i64** %15, align 8
  %58 = load i32, i32* %21, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %16, align 8
  %63 = load i32, i32* %21, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %61, i64* %65, align 8
  br label %66

66:                                               ; preds = %56, %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %21, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %21, align 4
  br label %29

70:                                               ; preds = %29
  %71 = load i32, i32* %17, align 4
  %72 = load i64*, i64** %14, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64* %74, i64** %14, align 8
  %75 = load i32, i32* %18, align 4
  %76 = load i64*, i64** %15, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64* %78, i64** %15, align 8
  %79 = load i32, i32* %19, align 4
  %80 = load i64*, i64** %16, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64* %82, i64** %16, align 8
  br label %83

83:                                               ; preds = %70
  %84 = load i32, i32* %22, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %22, align 4
  br label %24

86:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
