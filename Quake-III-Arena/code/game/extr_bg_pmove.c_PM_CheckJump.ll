; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_CheckJump.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_CheckJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_7__ = type { i8*, i8* }

@pm = common dso_local global %struct.TYPE_8__* null, align 8
@PMF_RESPAWNED = common dso_local global i32 0, align 4
@qfalse = common dso_local global i8* null, align 8
@PMF_JUMP_HELD = common dso_local global i32 0, align 4
@pml = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@JUMP_VELOCITY = common dso_local global i32 0, align 4
@EV_JUMP = common dso_local global i32 0, align 4
@LEGS_JUMP = common dso_local global i32 0, align 4
@PMF_BACKWARDS_JUMP = common dso_local global i32 0, align 4
@LEGS_JUMPB = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @PM_CheckJump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @PM_CheckJump() #0 {
  %1 = alloca i8*, align 8
  %2 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %3 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @PMF_RESPAWNED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i8*, i8** @qfalse, align 8
  store i8* %11, i8** %1, align 8
  br label %86

12:                                               ; preds = %0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i8*, i8** @qfalse, align 8
  store i8* %19, i8** %1, align 8
  br label %86

20:                                               ; preds = %12
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PMF_JUMP_HELD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i8*, i8** @qfalse, align 8
  store i8* %33, i8** %1, align 8
  br label %86

34:                                               ; preds = %20
  %35 = load i8*, i8** @qfalse, align 8
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pml, i32 0, i32 1), align 8
  %36 = load i8*, i8** @qfalse, align 8
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pml, i32 0, i32 0), align 8
  %37 = load i32, i32* @PMF_JUMP_HELD, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @ENTITYNUM_NONE, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 8
  %49 = load i32, i32* @JUMP_VELOCITY, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %49, i32* %55, align 4
  %56 = load i32, i32* @EV_JUMP, align 4
  %57 = call i32 @PM_AddEvent(i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %34
  %64 = load i32, i32* @LEGS_JUMP, align 4
  %65 = call i32 @PM_ForceLegsAnim(i32 %64)
  %66 = load i32, i32* @PMF_BACKWARDS_JUMP, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %67
  store i32 %73, i32* %71, align 8
  br label %84

74:                                               ; preds = %34
  %75 = load i32, i32* @LEGS_JUMPB, align 4
  %76 = call i32 @PM_ForceLegsAnim(i32 %75)
  %77 = load i32, i32* @PMF_BACKWARDS_JUMP, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %77
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %74, %63
  %85 = load i8*, i8** @qtrue, align 8
  store i8* %85, i8** %1, align 8
  br label %86

86:                                               ; preds = %84, %29, %18, %10
  %87 = load i8*, i8** %1, align 8
  ret i8* %87
}

declare dso_local i32 @PM_AddEvent(i32) #1

declare dso_local i32 @PM_ForceLegsAnim(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
