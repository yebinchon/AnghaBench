; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_init.c_R_GetModeInfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_init.c_R_GetModeInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { float }
%struct.TYPE_6__ = type { i32, i32, float }

@qfalse = common dso_local global i32 0, align 4
@s_numVidModes = common dso_local global i32 0, align 4
@r_customwidth = common dso_local global %struct.TYPE_7__* null, align 8
@r_customheight = common dso_local global %struct.TYPE_8__* null, align 8
@r_customaspect = common dso_local global %struct.TYPE_9__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@r_vidModes = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_GetModeInfo(i32* %0, i32* %1, float* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @qfalse, align 4
  store i32 %14, i32* %5, align 4
  br label %66

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @s_numVidModes, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @qfalse, align 4
  store i32 %20, i32* %5, align 4
  br label %66

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_customwidth, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_customheight, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_customaspect, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %8, align 8
  store float %35, float* %36, align 4
  %37 = load i32, i32* @qtrue, align 4
  store i32 %37, i32* %5, align 4
  br label %66

38:                                               ; preds = %21
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_vidModes, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %10, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sitofp i32 %53 to float
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sitofp i32 %57 to float
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load float, float* %60, align 4
  %62 = fmul float %58, %61
  %63 = fdiv float %54, %62
  %64 = load float*, float** %8, align 8
  store float %63, float* %64, align 4
  %65 = load i32, i32* @qtrue, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %38, %24, %19, %13
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
