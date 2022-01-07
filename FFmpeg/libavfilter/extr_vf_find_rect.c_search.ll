; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_find_rect.c_search.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_find_rect.c_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32*, i32*, float)* @search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @search(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8, float %9) #0 {
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store float %9, float* %20, align 4
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* %13, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %10
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = ashr i32 %35, 1
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, 1
  %39 = ashr i32 %38, 1
  %40 = load i32, i32* %16, align 4
  %41 = ashr i32 %40, 1
  %42 = load i32, i32* %17, align 4
  %43 = add nsw i32 %42, 1
  %44 = ashr i32 %43, 1
  %45 = call float @search(%struct.TYPE_3__* %31, i32 %33, i32 %34, i32 %36, i32 %39, i32 %41, i32 %44, i32* %23, i32* %24, float 1.000000e+00)
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %23, align 4
  %48 = mul nsw i32 2, %47
  %49 = sub nsw i32 %48, 4
  %50 = call i32 @FFMAX(i32 %46, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %23, align 4
  %53 = mul nsw i32 2, %52
  %54 = add nsw i32 %53, 4
  %55 = call i32 @FFMIN(i32 %51, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %24, align 4
  %58 = mul nsw i32 2, %57
  %59 = sub nsw i32 %58, 4
  %60 = call i32 @FFMAX(i32 %56, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %24, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %63, 4
  %65 = call i32 @FFMIN(i32 %61, i32 %64)
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %30, %10
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %22, align 4
  br label %68

68:                                               ; preds = %114, %66
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %117

72:                                               ; preds = %68
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %21, align 4
  br label %74

74:                                               ; preds = %110, %72
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %113

78:                                               ; preds = %74
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* %22, align 4
  %95 = call float @compare(i32 %85, i32 %92, i32 %93, i32 %94)
  store float %95, float* %25, align 4
  %96 = load float, float* %25, align 4
  %97 = fcmp une float %96, 0.000000e+00
  %98 = zext i1 %97 to i32
  %99 = call i32 @av_assert0(i32 %98)
  %100 = load float, float* %25, align 4
  %101 = load float, float* %20, align 4
  %102 = fcmp olt float %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %78
  %104 = load float, float* %25, align 4
  store float %104, float* %20, align 4
  %105 = load i32, i32* %21, align 4
  %106 = load i32*, i32** %18, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %22, align 4
  %108 = load i32*, i32** %19, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %78
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %21, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %21, align 4
  br label %74

113:                                              ; preds = %74
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %22, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %22, align 4
  br label %68

117:                                              ; preds = %68
  %118 = load float, float* %20, align 4
  ret float %118
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local float @compare(i32, i32, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
