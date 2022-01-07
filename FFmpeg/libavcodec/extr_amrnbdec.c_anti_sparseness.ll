; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_anti_sparseness.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_anti_sparseness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double*, double, i32, i32, i64 }

@MODE_7k4 = common dso_local global i64 0, align 8
@MODE_10k2 = common dso_local global i64 0, align 8
@MODE_7k95 = common dso_local global i64 0, align 8
@ir_filters_lookup_MODE_7k95 = common dso_local global i32* null, align 8
@ir_filters_lookup = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (%struct.TYPE_3__*, i32*, float*, float, float*)* @anti_sparseness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @anti_sparseness(%struct.TYPE_3__* %0, i32* %1, float* %2, float %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store float* %2, float** %8, align 8
  store float %3, float* %9, align 4
  store float* %4, float** %10, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load double*, double** %15, align 8
  %17 = getelementptr inbounds double, double* %16, i64 4
  %18 = load double, double* %17, align 8
  %19 = fcmp olt double %18, 6.000000e-01
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %31

21:                                               ; preds = %5
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load double*, double** %23, align 8
  %25 = getelementptr inbounds double, double* %24, i64 4
  %26 = load double, double* %25, align 8
  %27 = fcmp olt double %26, 9.000000e-01
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %11, align 4
  br label %30

29:                                               ; preds = %21
  store i32 2, i32* %11, align 4
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %30, %20
  %32 = load float, float* %9, align 4
  %33 = fpext float %32 to double
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = fmul double 2.000000e+00, %36
  %38 = fcmp ogt double %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i32 2, i32* %41, align 8
  br label %53

42:                                               ; preds = %31
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %39
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %93, label %58

58:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 5
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load double*, double** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %65, i64 %67
  %69 = load double, double* %68, align 8
  %70 = fcmp olt double %69, 6.000000e-01
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %71, %62
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %59

78:                                               ; preds = %59
  %79 = load i32, i32* %13, align 4
  %80 = icmp sgt i32 %79, 2
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %81, %78
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  %88 = icmp sgt i32 %83, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %89, %82
  br label %100

93:                                               ; preds = %53
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 2
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %92
  %101 = load float, float* %9, align 4
  %102 = fpext float %101 to double
  %103 = fcmp olt double %102, 5.000000e+00
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 2, i32* %11, align 4
  br label %105

105:                                              ; preds = %104, %100
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MODE_7k4, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %140

111:                                              ; preds = %105
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @MODE_10k2, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %111
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 2
  br i1 %119, label %120, label %140

120:                                              ; preds = %117
  %121 = load float*, float** %10, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MODE_7k95, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32*, i32** @ir_filters_lookup_MODE_7k95, align 8
  br label %132

130:                                              ; preds = %120
  %131 = load i32*, i32** @ir_filters_lookup, align 8
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32* [ %129, %128 ], [ %131, %130 ]
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @apply_ir_filter(float* %121, i32* %122, i32 %137)
  %139 = load float*, float** %10, align 8
  store float* %139, float** %8, align 8
  br label %140

140:                                              ; preds = %132, %117, %111, %105
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load float, float* %9, align 4
  %145 = fpext float %144 to double
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store double %145, double* %147, align 8
  %148 = load float*, float** %8, align 8
  ret float* %148
}

declare dso_local i32 @apply_ir_filter(float*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
