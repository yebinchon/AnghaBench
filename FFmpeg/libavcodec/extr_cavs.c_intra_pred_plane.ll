; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_intra_pred_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_intra_pred_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_crop_tab = common dso_local global i32* null, align 8
@MAX_NEG_CROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @intra_pred_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intra_pred_plane(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32*, i32** @ff_crop_tab, align 8
  %16 = load i32, i32* @MAX_NEG_CROP, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %14, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %59, %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %62

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 5, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 3, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %30, %36
  %38 = mul nsw i32 %24, %37
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 5, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 3, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %48, %54
  %56 = mul nsw i32 %42, %55
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %22
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %19

62:                                               ; preds = %19
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = shl i32 %69, 4
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = mul nsw i32 17, %71
  %73 = add nsw i32 %72, 16
  %74 = ashr i32 %73, 5
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = mul nsw i32 17, %75
  %77 = add nsw i32 %76, 16
  %78 = ashr i32 %77, 5
  store i32 %78, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %116, %62
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 8
  br i1 %81, label %82, label %119

82:                                               ; preds = %79
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %112, %82
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 8
  br i1 %85, label %86, label %115

86:                                               ; preds = %83
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %89, 3
  %91 = load i32, i32* %12, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %88, %92
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %94, 3
  %96 = load i32, i32* %13, align 4
  %97 = mul nsw i32 %95, %96
  %98 = add nsw i32 %93, %97
  %99 = add nsw i32 %98, 16
  %100 = ashr i32 %99, 5
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %87, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %8, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %104, i64 %110
  store i32 %103, i32* %111, align 4
  br label %112

112:                                              ; preds = %86
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %83

115:                                              ; preds = %83
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %79

119:                                              ; preds = %79
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
