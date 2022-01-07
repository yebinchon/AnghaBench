; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_GetTeamColor.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_GetTeamColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@cg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_GetTeamColor(float** %0) #0 {
  %2 = alloca float**, align 8
  store float** %0, float*** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* @PERS_TEAM, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TEAM_RED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load float**, float*** %2, align 8
  %14 = load float*, float** %13, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  store float 1.000000e+00, float* %15, align 4
  %16 = load float**, float*** %2, align 8
  %17 = load float*, float** %16, align 8
  %18 = getelementptr inbounds float, float* %17, i64 3
  store float 2.500000e-01, float* %18, align 4
  %19 = load float**, float*** %2, align 8
  %20 = load float*, float** %19, align 8
  %21 = getelementptr inbounds float, float* %20, i64 2
  store float 0.000000e+00, float* %21, align 4
  %22 = load float**, float*** %2, align 8
  %23 = load float*, float** %22, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  store float 0.000000e+00, float* %24, align 4
  br label %62

25:                                               ; preds = %1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @PERS_TEAM, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TEAM_BLUE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %25
  %36 = load float**, float*** %2, align 8
  %37 = load float*, float** %36, align 8
  %38 = getelementptr inbounds float, float* %37, i64 1
  store float 0.000000e+00, float* %38, align 4
  %39 = load float**, float*** %2, align 8
  %40 = load float*, float** %39, align 8
  %41 = getelementptr inbounds float, float* %40, i64 0
  store float 0.000000e+00, float* %41, align 4
  %42 = load float**, float*** %2, align 8
  %43 = load float*, float** %42, align 8
  %44 = getelementptr inbounds float, float* %43, i64 2
  store float 1.000000e+00, float* %44, align 4
  %45 = load float**, float*** %2, align 8
  %46 = load float*, float** %45, align 8
  %47 = getelementptr inbounds float, float* %46, i64 3
  store float 2.500000e-01, float* %47, align 4
  br label %61

48:                                               ; preds = %25
  %49 = load float**, float*** %2, align 8
  %50 = load float*, float** %49, align 8
  %51 = getelementptr inbounds float, float* %50, i64 2
  store float 0.000000e+00, float* %51, align 4
  %52 = load float**, float*** %2, align 8
  %53 = load float*, float** %52, align 8
  %54 = getelementptr inbounds float, float* %53, i64 0
  store float 0.000000e+00, float* %54, align 4
  %55 = load float**, float*** %2, align 8
  %56 = load float*, float** %55, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  store float 0x3FC5C28F60000000, float* %57, align 4
  %58 = load float**, float*** %2, align 8
  %59 = load float*, float** %58, align 8
  %60 = getelementptr inbounds float, float* %59, i64 3
  store float 2.500000e-01, float* %60, align 4
  br label %61

61:                                               ; preds = %48, %35
  br label %62

62:                                               ; preds = %61, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
