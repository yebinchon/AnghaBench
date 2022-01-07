; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_scoreboard.c_CG_TeamScoreboard.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_scoreboard.c_CG_TeamScoreboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@cg = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@cgs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SB_NORMAL_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, float, i32, i32)* @CG_TeamScoreboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CG_TeamScoreboard(i32 %0, i64 %1, float %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca [4 x float], align 16
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store float %2, float* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 2
  store float 1.000000e+00, float* %16, align 8
  %17 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 1
  store float 1.000000e+00, float* %17, align 4
  %18 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 0
  store float 1.000000e+00, float* %18, align 16
  %19 = load float, float* %8, align 4
  %20 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 3
  store float %19, float* %20, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %63, %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  br i1 %30, label %31, label %66

31:                                               ; preds = %29
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %12, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cgs, i32 0, i32 0), align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %39
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %15, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %63

47:                                               ; preds = %31
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %14, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %48, %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %54 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 0
  %55 = load float, float* %8, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @SB_NORMAL_HEIGHT, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @CG_DrawClientScore(i32 %52, %struct.TYPE_6__* %53, float* %54, float %55, i32 %59)
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %47, %46
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %21

66:                                               ; preds = %29
  %67 = load i32, i32* %14, align 4
  ret i32 %67
}

declare dso_local i32 @CG_DrawClientScore(i32, %struct.TYPE_6__*, float*, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
