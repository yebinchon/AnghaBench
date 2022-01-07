; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c_ccv_convnet_input_formation.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c_ccv_convnet_input_formation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float, float }
%struct.TYPE_9__ = type { float, float }

@CCV_32F = common dso_local global i32 0, align 4
@CCV_INTER_AREA = common dso_local global i32 0, align 4
@CCV_INTER_CUBIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_convnet_input_formation(<2 x float> %0, %struct.TYPE_10__* %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = bitcast %struct.TYPE_9__* %4 to <2 x float>*
  store <2 x float> %0, <2 x float>* %7, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %12 = load float, float* %11, align 4
  %13 = fcmp ogt float %10, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load float, float* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %19 = load float, float* %18, align 4
  %20 = fcmp ogt float %17, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %14
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %24 = load i32, i32* @CCV_32F, align 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %26 = load float, float* %25, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %31 = load float, float* %30, align 4
  %32 = fmul float %29, %31
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load float, float* %34, align 4
  %36 = fdiv float %32, %35
  %37 = fpext float %36 to double
  %38 = fadd double %37, 5.000000e-01
  %39 = fptosi double %38 to i32
  %40 = call i32 @ccv_max(float %26, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %42 = load float, float* %41, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load float, float* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %47 = load float, float* %46, align 4
  %48 = fmul float %45, %47
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = fdiv float %48, %51
  %53 = fpext float %52 to double
  %54 = fadd double %53, 5.000000e-01
  %55 = fptosi double %54 to i32
  %56 = call i32 @ccv_max(float %42, i32 %55)
  %57 = load i32, i32* @CCV_INTER_AREA, align 4
  %58 = call i32 @ccv_resample(%struct.TYPE_10__* %22, %struct.TYPE_10__** %23, i32 %24, i32 %40, i32 %56, i32 %57)
  br label %118

59:                                               ; preds = %14, %3
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load float, float* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %64 = load float, float* %63, align 4
  %65 = fcmp olt float %62, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load float, float* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %71 = load float, float* %70, align 4
  %72 = fcmp olt float %69, %71
  br i1 %72, label %73, label %111

73:                                               ; preds = %66, %59
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %76 = load i32, i32* @CCV_32F, align 4
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %78 = load float, float* %77, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load float, float* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %83 = load float, float* %82, align 4
  %84 = fmul float %81, %83
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load float, float* %86, align 4
  %88 = fdiv float %84, %87
  %89 = fpext float %88 to double
  %90 = fadd double %89, 5.000000e-01
  %91 = fptosi double %90 to i32
  %92 = call i32 @ccv_max(float %78, i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load float, float* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %99 = load float, float* %98, align 4
  %100 = fmul float %97, %99
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load float, float* %102, align 4
  %104 = fdiv float %100, %103
  %105 = fpext float %104 to double
  %106 = fadd double %105, 5.000000e-01
  %107 = fptosi double %106 to i32
  %108 = call i32 @ccv_max(float %94, i32 %107)
  %109 = load i32, i32* @CCV_INTER_CUBIC, align 4
  %110 = call i32 @ccv_resample(%struct.TYPE_10__* %74, %struct.TYPE_10__** %75, i32 %76, i32 %92, i32 %108, i32 %109)
  br label %117

111:                                              ; preds = %66
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %114 = bitcast %struct.TYPE_10__** %113 to i32**
  %115 = load i32, i32* @CCV_32F, align 4
  %116 = call i32 @ccv_shift(%struct.TYPE_10__* %112, i32** %114, i32 %115, i32 0, i32 0)
  br label %117

117:                                              ; preds = %111, %73
  br label %118

118:                                              ; preds = %117, %21
  ret void
}

declare dso_local i32 @ccv_resample(%struct.TYPE_10__*, %struct.TYPE_10__**, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_max(float, i32) #1

declare dso_local i32 @ccv_shift(%struct.TYPE_10__*, i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
