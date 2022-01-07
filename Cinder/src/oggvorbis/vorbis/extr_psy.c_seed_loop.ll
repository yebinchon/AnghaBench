; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_seed_loop.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_seed_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64*, i64, i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float }

@P_BANDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, float***, float*, float*, float*, float)* @seed_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seed_loop(%struct.TYPE_4__* %0, float*** %1, float* %2, float* %3, float* %4, float %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca float***, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store float*** %1, float**** %8, align 8
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float %5, float* %12, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 6
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %13, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %14, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  %28 = load float, float* %12, align 4
  %29 = fsub float %27, %28
  store float %29, float* %16, align 4
  store i64 0, i64* %15, align 8
  br label %30

30:                                               ; preds = %127, %6
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* %14, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %130

34:                                               ; preds = %30
  %35 = load float*, float** %9, align 8
  %36 = load i64, i64* %15, align 8
  %37 = getelementptr inbounds float, float* %35, i64 %36
  %38 = load float, float* %37, align 4
  store float %38, float* %17, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %15, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %18, align 8
  br label %45

45:                                               ; preds = %76, %34
  %46 = load i64, i64* %15, align 8
  %47 = add nsw i64 %46, 1
  %48 = load i64, i64* %14, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %15, align 8
  %55 = add nsw i64 %54, 1
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %18, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %50, %45
  %61 = phi i1 [ false, %45 ], [ %59, %50 ]
  br i1 %61, label %62, label %77

62:                                               ; preds = %60
  %63 = load i64, i64* %15, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %15, align 8
  %65 = load float*, float** %9, align 8
  %66 = load i64, i64* %15, align 8
  %67 = getelementptr inbounds float, float* %65, i64 %66
  %68 = load float, float* %67, align 4
  %69 = load float, float* %17, align 4
  %70 = fcmp ogt float %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load float*, float** %9, align 8
  %73 = load i64, i64* %15, align 8
  %74 = getelementptr inbounds float, float* %72, i64 %73
  %75 = load float, float* %74, align 4
  store float %75, float* %17, align 4
  br label %76

76:                                               ; preds = %71, %62
  br label %45

77:                                               ; preds = %60
  %78 = load float, float* %17, align 4
  %79 = fadd float %78, 6.000000e+00
  %80 = load float*, float** %10, align 8
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds float, float* %80, i64 %81
  %83 = load float, float* %82, align 4
  %84 = fcmp ogt float %79, %83
  br i1 %84, label %85, label %126

85:                                               ; preds = %77
  %86 = load i64, i64* %18, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = ashr i64 %86, %89
  store i64 %90, i64* %18, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* @P_BANDS, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i64, i64* @P_BANDS, align 8
  %96 = sub nsw i64 %95, 1
  store i64 %96, i64* %18, align 8
  br label %97

97:                                               ; preds = %94, %85
  %98 = load i64, i64* %18, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i64 0, i64* %18, align 8
  br label %101

101:                                              ; preds = %100, %97
  %102 = load float*, float** %11, align 8
  %103 = load float***, float**** %8, align 8
  %104 = load i64, i64* %18, align 8
  %105 = getelementptr inbounds float**, float*** %103, i64 %104
  %106 = load float**, float*** %105, align 8
  %107 = load float, float* %17, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %15, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load float, float* %16, align 4
  %125 = call i32 @seed_curve(float* %102, float** %106, float %107, i64 %117, i32 %120, i32 %123, float %124)
  br label %126

126:                                              ; preds = %101, %77
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %15, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %15, align 8
  br label %30

130:                                              ; preds = %30
  ret void
}

declare dso_local i32 @seed_curve(float*, float**, float, i64, i32, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
