; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_cmds.c_R_IssueRenderCommands.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_cmds.c_R_IssueRenderCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32 (i32, i8*)* }
%struct.TYPE_13__ = type { i32 }

@backEndData = common dso_local global %struct.TYPE_16__** null, align 8
@tr = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@RC_END_OF_LIST = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@renderThreadActive = common dso_local global i64 0, align 8
@c_blockedOnRender = common dso_local global i32 0, align 4
@r_showSmp = common dso_local global %struct.TYPE_14__* null, align 8
@ri = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"R\00", align 1
@c_blockedOnMain = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@r_skipBackEnd = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_IssueRenderCommands(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @backEndData, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %6 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %4, i64 %5
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = call i32 @assert(%struct.TYPE_10__* %9)
  %11 = load i32, i32* @RC_END_OF_LIST, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = inttoptr i64 %18 to i32*
  store i32 %11, i32* %19, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %1
  %25 = load i64, i64* @renderThreadActive, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i32, i32* @c_blockedOnRender, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @c_blockedOnRender, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_showSmp, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ri, i32 0, i32 0), align 8
  %36 = load i32, i32* @PRINT_ALL, align 4
  %37 = call i32 %35(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %27
  br label %51

39:                                               ; preds = %24
  %40 = load i32, i32* @c_blockedOnMain, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @c_blockedOnMain, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_showSmp, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ri, i32 0, i32 0), align 8
  %48 = load i32, i32* @PRINT_ALL, align 4
  %49 = call i32 %47(i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %39
  br label %51

51:                                               ; preds = %50, %38
  %52 = call i32 (...) @GLimp_FrontEndSleep()
  br label %53

53:                                               ; preds = %51, %1
  %54 = load i64, i64* %2, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (...) @R_PerformanceCounters()
  br label %58

58:                                               ; preds = %56, %53
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_skipBackEnd, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glConfig, i32 0, i32 0), align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @RB_ExecuteRenderCommands(i64 %69)
  br label %74

71:                                               ; preds = %63
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = call i32 @GLimp_WakeRenderer(%struct.TYPE_10__* %72)
  br label %74

74:                                               ; preds = %71, %66
  br label %75

75:                                               ; preds = %74, %58
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @GLimp_FrontEndSleep(...) #1

declare dso_local i32 @R_PerformanceCounters(...) #1

declare dso_local i32 @RB_ExecuteRenderCommands(i64) #1

declare dso_local i32 @GLimp_WakeRenderer(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
