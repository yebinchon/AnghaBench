; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_cmds.c_RE_SetColor.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_cmds.c_RE_SetColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { float*, i32 }

@tr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@RC_SET_COLOR = common dso_local global i32 0, align 4
@RE_SetColor.colorWhite = internal global [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_SetColor(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store float* %0, float** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %48

7:                                                ; preds = %1
  %8 = call %struct.TYPE_4__* @R_GetCommandBuffer(i32 16)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  br label %48

12:                                               ; preds = %7
  %13 = load i32, i32* @RC_SET_COLOR, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load float*, float** %2, align 8
  %17 = icmp ne float* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store float* getelementptr inbounds ([4 x float], [4 x float]* @RE_SetColor.colorWhite, i64 0, i64 0), float** %2, align 8
  br label %19

19:                                               ; preds = %18, %12
  %20 = load float*, float** %2, align 8
  %21 = getelementptr inbounds float, float* %20, i64 0
  %22 = load float, float* %21, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load float*, float** %24, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  store float %22, float* %26, align 4
  %27 = load float*, float** %2, align 8
  %28 = getelementptr inbounds float, float* %27, i64 1
  %29 = load float, float* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load float*, float** %31, align 8
  %33 = getelementptr inbounds float, float* %32, i64 1
  store float %29, float* %33, align 4
  %34 = load float*, float** %2, align 8
  %35 = getelementptr inbounds float, float* %34, i64 2
  %36 = load float, float* %35, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load float*, float** %38, align 8
  %40 = getelementptr inbounds float, float* %39, i64 2
  store float %36, float* %40, align 4
  %41 = load float*, float** %2, align 8
  %42 = getelementptr inbounds float, float* %41, i64 3
  %43 = load float, float* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load float*, float** %45, align 8
  %47 = getelementptr inbounds float, float* %46, i64 3
  store float %43, float* %47, align 4
  br label %48

48:                                               ; preds = %19, %11, %6
  ret void
}

declare dso_local %struct.TYPE_4__* @R_GetCommandBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
