; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fieldmatch.c_build_abs_diff_mask.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fieldmatch.c_build_abs_diff_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i64*, i32, i64*, i32, i32, i32)* @build_abs_diff_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_abs_diff_mask(i64* %0, i32 %1, i64* %2, i32 %3, i64* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64* %0, i64** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i64*, i64** %9, align 8
  %21 = sext i32 %19 to i64
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  store i64* %23, i64** %9, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i64*, i64** %11, align 8
  %26 = sext i32 %24 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64* %28, i64** %11, align 8
  store i32 0, i32* %17, align 4
  br label %29

29:                                               ; preds = %71, %8
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  store i32 0, i32* %18, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load i64*, i64** %9, align 8
  %40 = load i32, i32* %18, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %43, %48
  %50 = call i64 @FFABS(i64 %49)
  %51 = load i64*, i64** %13, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %18, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %18, align 4
  br label %34

58:                                               ; preds = %34
  %59 = load i32, i32* %10, align 4
  %60 = load i64*, i64** %9, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  store i64* %62, i64** %9, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i64*, i64** %11, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64* %66, i64** %11, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i64*, i64** %13, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64* %70, i64** %13, align 8
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %29

74:                                               ; preds = %29
  ret void
}

declare dso_local i64 @FFABS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
