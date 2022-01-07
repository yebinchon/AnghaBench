; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_team.c_Team_GetLocation.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_team.c_Team_GetLocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { float* }

@level = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @Team_GetLocation(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  store float 0x41A8000000000000, float* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load float*, float** %10, align 8
  %12 = load float*, float** %7, align 8
  %13 = call i32 @VectorCopy(float* %11, float* %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @level, i32 0, i32 0), align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %3, align 8
  br label %15

15:                                               ; preds = %100, %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %104

18:                                               ; preds = %15
  %19 = load float*, float** %7, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  %21 = load float, float* %20, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load float*, float** %24, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load float, float* %26, align 4
  %28 = fsub float %21, %27
  %29 = load float*, float** %7, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  %31 = load float, float* %30, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  %37 = load float, float* %36, align 4
  %38 = fsub float %31, %37
  %39 = fmul float %28, %38
  %40 = load float*, float** %7, align 8
  %41 = getelementptr inbounds float, float* %40, i64 1
  %42 = load float, float* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load float*, float** %45, align 8
  %47 = getelementptr inbounds float, float* %46, i64 1
  %48 = load float, float* %47, align 4
  %49 = fsub float %42, %48
  %50 = load float*, float** %7, align 8
  %51 = getelementptr inbounds float, float* %50, i64 1
  %52 = load float, float* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load float*, float** %55, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  %58 = load float, float* %57, align 4
  %59 = fsub float %52, %58
  %60 = fmul float %49, %59
  %61 = fadd float %39, %60
  %62 = load float*, float** %7, align 8
  %63 = getelementptr inbounds float, float* %62, i64 2
  %64 = load float, float* %63, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load float*, float** %67, align 8
  %69 = getelementptr inbounds float, float* %68, i64 2
  %70 = load float, float* %69, align 4
  %71 = fsub float %64, %70
  %72 = load float*, float** %7, align 8
  %73 = getelementptr inbounds float, float* %72, i64 2
  %74 = load float, float* %73, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load float*, float** %77, align 8
  %79 = getelementptr inbounds float, float* %78, i64 2
  %80 = load float, float* %79, align 4
  %81 = fsub float %74, %80
  %82 = fmul float %71, %81
  %83 = fadd float %61, %82
  store float %83, float* %6, align 4
  %84 = load float, float* %6, align 4
  %85 = load float, float* %5, align 4
  %86 = fcmp ogt float %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %18
  br label %100

88:                                               ; preds = %18
  %89 = load float*, float** %7, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load float*, float** %92, align 8
  %94 = call i32 @trap_InPVS(float* %89, float* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  br label %100

97:                                               ; preds = %88
  %98 = load float, float* %6, align 4
  store float %98, float* %5, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %99, %struct.TYPE_7__** %4, align 8
  br label %100

100:                                              ; preds = %97, %96, %87
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %3, align 8
  br label %15

104:                                              ; preds = %15
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %105
}

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @trap_InPVS(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
