; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_find_tongue.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_find_tongue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32, i32, i32*, i32*, i32*)* @find_tongue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_tongue(i64* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64* %0, i64** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %38, %7
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i64*, i64** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %15, align 4
  %28 = mul nsw i32 %27, 4
  %29 = add nsw i32 %26, %28
  %30 = add nsw i32 %29, 0
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %23, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br label %35

35:                                               ; preds = %22, %18
  %36 = phi i1 [ false, %18 ], [ %34, %22 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  br label %18

41:                                               ; preds = %35
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32*, i32** %12, align 8
  store i32 0, i32* %46, align 4
  br label %80

47:                                               ; preds = %41
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %17, align 4
  %49 = load i32*, i32** %12, align 8
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %72, %47
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load i64*, i64** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %16, align 4
  %62 = mul nsw i32 %61, 4
  %63 = add nsw i32 %60, %62
  %64 = add nsw i32 %63, 0
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %57, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br label %69

69:                                               ; preds = %56, %52
  %70 = phi i1 [ false, %52 ], [ %68, %56 ]
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %16, align 4
  br label %52

75:                                               ; preds = %69
  %76 = load i32, i32* %16, align 4
  %77 = load i32*, i32** %14, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %45
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
