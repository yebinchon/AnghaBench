; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_draw_bar_rgb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_draw_bar_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32** }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, float*, float*, %struct.TYPE_7__*, i32, float)* @draw_bar_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_bar_rgb(%struct.TYPE_8__* %0, float* %1, float* %2, %struct.TYPE_7__* %3, i32 %4, float %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sitofp i32 %26 to float
  %28 = fdiv float 1.000000e+00, %27
  store float %28, float* %18, align 4
  %29 = load float, float* %12, align 4
  %30 = fdiv float 1.000000e+00, %29
  store float %30, float* %19, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %20, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %22, align 4
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %145, %6
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %148

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %14, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sitofp i32 %48 to float
  %50 = load float, float* %18, align 4
  %51 = fmul float %49, %50
  store float %51, float* %17, align 4
  %52 = load i32*, i32** %20, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %22, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32* %57, i32** %21, align 8
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %141, %45
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %144

62:                                               ; preds = %58
  %63 = load float*, float** %8, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float, float* %17, align 4
  %69 = fcmp ole float %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load i32*, i32** %21, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %21, align 8
  store i32 0, i32* %71, align 4
  %73 = load i32*, i32** %21, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %21, align 8
  store i32 0, i32* %73, align 4
  %75 = load i32*, i32** %21, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %21, align 8
  store i32 0, i32* %75, align 4
  br label %140

77:                                               ; preds = %62
  %78 = load float*, float** %8, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %78, i64 %80
  %82 = load float, float* %81, align 4
  %83 = load float, float* %17, align 4
  %84 = fsub float %82, %83
  %85 = load float*, float** %9, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  %89 = load float, float* %88, align 4
  %90 = fmul float %84, %89
  store float %90, float* %16, align 4
  %91 = load float, float* %16, align 4
  %92 = load float, float* %12, align 4
  %93 = fcmp olt float %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %77
  %95 = load float, float* %16, align 4
  %96 = load float, float* %19, align 4
  %97 = fmul float %95, %96
  br label %99

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98, %94
  %100 = phi float [ %97, %94 ], [ 1.000000e+00, %98 ]
  store float %100, float* %16, align 4
  %101 = load float, float* %16, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load float, float* %107, align 4
  %109 = fmul float %101, %108
  %110 = call i8* @lrintf(float %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load i32*, i32** %21, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %21, align 8
  store i32 %111, i32* %112, align 4
  %114 = load float, float* %16, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load float, float* %120, align 4
  %122 = fmul float %114, %121
  %123 = call i8* @lrintf(float %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load i32*, i32** %21, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %21, align 8
  store i32 %124, i32* %125, align 4
  %127 = load float, float* %16, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load float, float* %133, align 4
  %135 = fmul float %127, %134
  %136 = call i8* @lrintf(float %135)
  %137 = ptrtoint i8* %136 to i32
  %138 = load i32*, i32** %21, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %21, align 8
  store i32 %137, i32* %138, align 4
  br label %140

140:                                              ; preds = %99, %70
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %58

144:                                              ; preds = %58
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %41

148:                                              ; preds = %41
  ret void
}

declare dso_local i8* @lrintf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
