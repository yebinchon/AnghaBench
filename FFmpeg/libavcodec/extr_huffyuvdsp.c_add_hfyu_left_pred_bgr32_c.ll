; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvdsp.c_add_hfyu_left_pred_bgr32_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvdsp.c_add_hfyu_left_pred_bgr32_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R = common dso_local global i64 0, align 8
@G = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64, i64*)* @add_hfyu_left_pred_bgr32_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_hfyu_left_pred_bgr32_c(i64* %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = load i64, i64* @R, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = load i64, i64* @G, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* @B, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* @A, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %13, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %108, %4
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %111

35:                                               ; preds = %30
  %36 = load i64*, i64** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 4, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @B, align 8
  %41 = add i64 %39, %40
  %42 = getelementptr inbounds i64, i64* %36, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %12, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 4, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @G, align 8
  %51 = add i64 %49, %50
  %52 = getelementptr inbounds i64, i64* %46, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %11, align 8
  %56 = load i64*, i64** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 4, %57
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @R, align 8
  %61 = add i64 %59, %60
  %62 = getelementptr inbounds i64, i64* %56, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %10, align 8
  %66 = load i64*, i64** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 4, %67
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @A, align 8
  %71 = add i64 %69, %70
  %72 = getelementptr inbounds i64, i64* %66, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %13, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64*, i64** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 4, %78
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @B, align 8
  %82 = add i64 %80, %81
  %83 = getelementptr inbounds i64, i64* %77, i64 %82
  store i64 %76, i64* %83, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64*, i64** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 4, %86
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @G, align 8
  %90 = add i64 %88, %89
  %91 = getelementptr inbounds i64, i64* %85, i64 %90
  store i64 %84, i64* %91, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i64*, i64** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 4, %94
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @R, align 8
  %98 = add i64 %96, %97
  %99 = getelementptr inbounds i64, i64* %93, i64 %98
  store i64 %92, i64* %99, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i64*, i64** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 4, %102
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* @A, align 8
  %106 = add i64 %104, %105
  %107 = getelementptr inbounds i64, i64* %101, i64 %106
  store i64 %100, i64* %107, align 8
  br label %108

108:                                              ; preds = %35
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %30

111:                                              ; preds = %30
  %112 = load i64, i64* %12, align 8
  %113 = load i64*, i64** %8, align 8
  %114 = load i64, i64* @B, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %112, i64* %115, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i64*, i64** %8, align 8
  %118 = load i64, i64* @G, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  store i64 %116, i64* %119, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i64*, i64** %8, align 8
  %122 = load i64, i64* @R, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  store i64 %120, i64* %123, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load i64*, i64** %8, align 8
  %126 = load i64, i64* @A, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  store i64 %124, i64* %127, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
