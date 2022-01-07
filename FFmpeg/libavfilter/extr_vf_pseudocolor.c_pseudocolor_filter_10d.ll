; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pseudocolor.c_pseudocolor_filter_10d.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pseudocolor.c_pseudocolor_filter_10d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64*, i64*, i64*, i32, i32, i32, float*)* @pseudocolor_filter_10d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pseudocolor_filter_10d(i32 %0, i32 %1, i32 %2, i64* %3, i64* %4, i64* %5, i32 %6, i32 %7, i32 %8, float* %9) #0 {
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

24:                                               ; preds = %84, %10
  %25 = load i32, i32* %22, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %87

28:                                               ; preds = %24
  store i32 0, i32* %21, align 4
  br label %29

29:                                               ; preds = %68, %28
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = load float*, float** %20, align 8
  %35 = load i64*, i64** %14, align 8
  %36 = load i32, i32* %21, align 4
  %37 = ashr i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds float, float* %34, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fptosi float %42 to i32
  store i32 %43, i32* %23, align 4
  %44 = load i32, i32* %23, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %33
  %47 = load i32, i32* %23, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* %23, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64*, i64** %16, align 8
  %54 = load i32, i32* %21, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %52, i64* %56, align 8
  br label %67

57:                                               ; preds = %46, %33
  %58 = load i64*, i64** %15, align 8
  %59 = load i32, i32* %21, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %16, align 8
  %64 = load i32, i32* %21, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %62, i64* %66, align 8
  br label %67

67:                                               ; preds = %57, %50
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %21, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %21, align 4
  br label %29

71:                                               ; preds = %29
  %72 = load i32, i32* %17, align 4
  %73 = load i64*, i64** %14, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64* %75, i64** %14, align 8
  %76 = load i32, i32* %18, align 4
  %77 = load i64*, i64** %15, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64* %79, i64** %15, align 8
  %80 = load i32, i32* %19, align 4
  %81 = load i64*, i64** %16, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64* %83, i64** %16, align 8
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %22, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %22, align 4
  br label %24

87:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
