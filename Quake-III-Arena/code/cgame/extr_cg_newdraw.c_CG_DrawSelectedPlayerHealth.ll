; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_DrawSelectedPlayerHealth.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_DrawSelectedPlayerHealth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i64 }

@cgs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@sortedTeamPlayers = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float, i32*, i64, i32)* @CG_DrawSelectedPlayerHealth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawSelectedPlayerHealth(%struct.TYPE_5__* %0, float %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [16 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store float %1, float* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %15 = load i32*, i32** @sortedTeamPlayers, align 8
  %16 = call i64 (...) @CG_GetSelectedPlayer()
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %19
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %11, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %77

23:                                               ; preds = %5
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @trap_R_SetColor(i32* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @CG_DrawPic(i64 %31, i64 %34, i32 %37, i64 %40, i64 %41)
  %43 = call i32 @trap_R_SetColor(i32* null)
  br label %76

44:                                               ; preds = %23
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @Com_sprintf(i8* %45, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %51 = load float, float* %7, align 4
  %52 = call i32 @CG_Text_Width(i8* %50, float %51, i32 0)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sdiv i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %55, %62
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load float, float* %7, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @CG_Text_Paint(i64 %63, i64 %70, float %71, i32* %72, i8* %73, i32 0, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %44, %26
  br label %77

77:                                               ; preds = %76, %5
  ret void
}

declare dso_local i64 @CG_GetSelectedPlayer(...) #1

declare dso_local i32 @trap_R_SetColor(i32*) #1

declare dso_local i32 @CG_DrawPic(i64, i64, i32, i64, i64) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @CG_Text_Width(i8*, float, i32) #1

declare dso_local i32 @CG_Text_Paint(i64, i64, float, i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
