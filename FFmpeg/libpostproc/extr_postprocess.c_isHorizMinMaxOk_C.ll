; ModuleID = '/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_isHorizMinMaxOk_C.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_isHorizMinMaxOk_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32)* @isHorizMinMaxOk_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isHorizMinMaxOk_C(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %97, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %100

12:                                               ; preds = %9
  %13 = load i64*, i64** %5, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 5
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 2, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 4, %25
  %27 = icmp ugt i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %101

29:                                               ; preds = %12
  %30 = load i32, i32* %6, align 4
  %31 = load i64*, i64** %5, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64* %33, i64** %5, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 7
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 2, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 4, %46
  %48 = icmp ugt i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %101

50:                                               ; preds = %29
  %51 = load i32, i32* %6, align 4
  %52 = load i64*, i64** %5, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64* %54, i64** %5, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %5, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 2, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 4, %67
  %69 = icmp ugt i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %101

71:                                               ; preds = %50
  %72 = load i32, i32* %6, align 4
  %73 = load i64*, i64** %5, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64* %75, i64** %5, align 8
  %76 = load i64*, i64** %5, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 6
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %5, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 3
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 2, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %82, %85
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* %7, align 4
  %89 = mul nsw i32 4, %88
  %90 = icmp ugt i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %101

92:                                               ; preds = %71
  %93 = load i32, i32* %6, align 4
  %94 = load i64*, i64** %5, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64* %96, i64** %5, align 8
  br label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %9

100:                                              ; preds = %9
  store i32 1, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %91, %70, %49, %28
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
